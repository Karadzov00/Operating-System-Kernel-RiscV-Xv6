
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8b013103          	ld	sp,-1872(sp) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	531010ef          	jal	ra,80001d4c <start>

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
    80001080:	2b1000ef          	jal	ra,80001b30 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00113c23          	sd	ra,24(sp)
    8000112c:	00813823          	sd	s0,16(sp)
    80001130:	00913423          	sd	s1,8(sp)
    80001134:	01213023          	sd	s2,0(sp)
    80001138:	02010413          	addi	s0,sp,32
    8000113c:	00050493          	mv	s1,a0
    80001140:	00068913          	mv	s2,a3
        body(body),
        timeSlice(timeSlice),
        finished(false)
    80001144:	00b53023          	sd	a1,0(a0)
    80001148:	02c53023          	sd	a2,32(a0)
    8000114c:	02050423          	sb	zero,40(a0)
{
    stack = (body!= nullptr ? (uint64*)MemoryAllocator::kmem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64)): nullptr);
    80001150:	06058663          	beqz	a1,800011bc <_ZN7_threadC1EPFvPvEmS0_+0x98>
    80001154:	00008537          	lui	a0,0x8
    80001158:	00001097          	auipc	ra,0x1
    8000115c:	a78080e7          	jalr	-1416(ra) # 80001bd0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001160:	00a4b423          	sd	a0,8(s1)
    context = {(uint64)&threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001164:	06050063          	beqz	a0,800011c4 <_ZN7_threadC1EPFvPvEmS0_+0xa0>
    80001168:	000087b7          	lui	a5,0x8
    8000116c:	00f50533          	add	a0,a0,a5
    context = {(uint64)&threadWrapper,
    80001170:	00000797          	auipc	a5,0x0
    80001174:	0bc78793          	addi	a5,a5,188 # 8000122c <_ZN7_thread13threadWrapperEv>
    80001178:	00f4b823          	sd	a5,16(s1)
    8000117c:	00a4bc23          	sd	a0,24(s1)
    };
    status = Status::NEW;
    80001180:	00100793          	li	a5,1
    80001184:	04f4a023          	sw	a5,64(s1)
    id = globalId++;
    80001188:	00004717          	auipc	a4,0x4
    8000118c:	78870713          	addi	a4,a4,1928 # 80005910 <_ZN7_thread8globalIdE>
    80001190:	00073783          	ld	a5,0(a4)
    80001194:	00178693          	addi	a3,a5,1
    80001198:	00d73023          	sd	a3,0(a4)
    8000119c:	02f4bc23          	sd	a5,56(s1)
    this->arg=arg;
    800011a0:	0324b823          	sd	s2,48(s1)
}
    800011a4:	01813083          	ld	ra,24(sp)
    800011a8:	01013403          	ld	s0,16(sp)
    800011ac:	00813483          	ld	s1,8(sp)
    800011b0:	00013903          	ld	s2,0(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret
    stack = (body!= nullptr ? (uint64*)MemoryAllocator::kmem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64)): nullptr);
    800011bc:	00000513          	li	a0,0
    800011c0:	fa1ff06f          	j	80001160 <_ZN7_threadC1EPFvPvEmS0_+0x3c>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    800011c4:	00000513          	li	a0,0
    800011c8:	fa9ff06f          	j	80001170 <_ZN7_threadC1EPFvPvEmS0_+0x4c>

00000000800011cc <_ZN7_thread5startEv>:
//    if(status==Status::FINISHED)return;
//    if(status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    status=Status::READY;
    if(body!= nullptr)
    800011cc:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    800011d0:	02078663          	beqz	a5,800011fc <_ZN7_thread5startEv+0x30>
void _thread::start() {
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00113423          	sd	ra,8(sp)
    800011dc:	00813023          	sd	s0,0(sp)
    800011e0:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    800011e4:	00000097          	auipc	ra,0x0
    800011e8:	47c080e7          	jalr	1148(ra) # 80001660 <_ZN9Scheduler3putEP7_thread>
}
    800011ec:	00813083          	ld	ra,8(sp)
    800011f0:	00013403          	ld	s0,0(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret
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
    80001244:	8d0080e7          	jalr	-1840(ra) # 80001b10 <_ZN5Riscv10popSppSpieEv>
    running->body(&running->arg);   //call the function with argument arg
    80001248:	00004497          	auipc	s1,0x4
    8000124c:	6c848493          	addi	s1,s1,1736 # 80005910 <_ZN7_thread8globalIdE>
    80001250:	0084b503          	ld	a0,8(s1)
    80001254:	00053783          	ld	a5,0(a0)
    80001258:	03050513          	addi	a0,a0,48
    8000125c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001260:	0084b783          	ld	a5,8(s1)
public:
    ~_thread() { MemoryAllocator::kmem_free(stack); }

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
    800012a0:	67c4b483          	ld	s1,1660(s1) # 80005918 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    800012a4:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a8:	02078c63          	beqz	a5,800012e0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	34c080e7          	jalr	844(ra) # 800015f8 <_ZN9Scheduler3getEv>
    800012b4:	00004797          	auipc	a5,0x4
    800012b8:	66a7b223          	sd	a0,1636(a5) # 80005918 <_ZN7_thread7runningE>
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
    800012e8:	37c080e7          	jalr	892(ra) # 80001660 <_ZN9Scheduler3putEP7_thread>
    800012ec:	fc1ff06f          	j	800012ac <_ZN7_thread8dispatchEv+0x24>

00000000800012f0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001300:	00001097          	auipc	ra,0x1
    80001304:	8d0080e7          	jalr	-1840(ra) # 80001bd0 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000132c:	8a8080e7          	jalr	-1880(ra) # 80001bd0 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001354:	8a8080e7          	jalr	-1880(ra) # 80001bf8 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013cc:	640080e7          	jalr	1600(ra) # 80006a08 <_Unwind_Resume>
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
    80001400:	00000097          	auipc	ra,0x0
    80001404:	7f8080e7          	jalr	2040(ra) # 80001bf8 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    uint64* ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001510:	00050793          	mv	a5,a0

    _thread* ptr = (_thread*)ret;
    handle = &ptr;
    return 0;


    80001514:	00000513          	li	a0,0
    80001518:	02813083          	ld	ra,40(sp)
    8000151c:	02013403          	ld	s0,32(sp)
    80001520:	03010113          	addi	sp,sp,48
    80001524:	00008067          	ret

0000000080001528 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    80001528:	fe010113          	addi	sp,sp,-32
    8000152c:	00113c23          	sd	ra,24(sp)
    80001530:	00813823          	sd	s0,16(sp)
    80001534:	00913423          	sd	s1,8(sp)
    80001538:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    8000153c:	00004797          	auipc	a5,0x4
    80001540:	36c7b783          	ld	a5,876(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001544:	10579073          	csrw	stvec,a5
//    else{
//        printString("not freed \n");
//    }


    _thread* ptr = _thread::createThread(workerBodyA, nullptr);
    80001548:	00000593          	li	a1,0
    8000154c:	00004517          	auipc	a0,0x4
    80001550:	36c53503          	ld	a0,876(a0) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001554:	00000097          	auipc	ra,0x0
    80001558:	e14080e7          	jalr	-492(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
    8000155c:	00050493          	mv	s1,a0
    if(ptr!= nullptr){
    80001560:	04050263          	beqz	a0,800015a4 <main+0x7c>
        printString("thread created");
    80001564:	00004517          	auipc	a0,0x4
    80001568:	a9c50513          	addi	a0,a0,-1380 # 80005000 <kvmincrease+0xeb0>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	6b4080e7          	jalr	1716(ra) # 80001c20 <_Z11printStringPKc>
    } else{
        printString("error");
    }
    _thread::running=ptr;
    80001574:	00004797          	auipc	a5,0x4
    80001578:	32c7b783          	ld	a5,812(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000157c:	0097b023          	sd	s1,0(a5)

    ptr->start();
    80001580:	00048513          	mv	a0,s1
    80001584:	00000097          	auipc	ra,0x0
    80001588:	c48080e7          	jalr	-952(ra) # 800011cc <_ZN7_thread5startEv>

    return 0;
}
    8000158c:	00000513          	li	a0,0
    80001590:	01813083          	ld	ra,24(sp)
    80001594:	01013403          	ld	s0,16(sp)
    80001598:	00813483          	ld	s1,8(sp)
    8000159c:	02010113          	addi	sp,sp,32
    800015a0:	00008067          	ret
        printString("error");
    800015a4:	00004517          	auipc	a0,0x4
    800015a8:	a6c50513          	addi	a0,a0,-1428 # 80005010 <kvmincrease+0xec0>
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	674080e7          	jalr	1652(ra) # 80001c20 <_Z11printStringPKc>
    800015b4:	fc1ff06f          	j	80001574 <main+0x4c>

00000000800015b8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800015b8:	ff010113          	addi	sp,sp,-16
    800015bc:	00813423          	sd	s0,8(sp)
    800015c0:	01010413          	addi	s0,sp,16
    800015c4:	00100793          	li	a5,1
    800015c8:	00f50863          	beq	a0,a5,800015d8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret
    800015d8:	000107b7          	lui	a5,0x10
    800015dc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015e0:	fef596e3          	bne	a1,a5,800015cc <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015e4:	00004797          	auipc	a5,0x4
    800015e8:	34478793          	addi	a5,a5,836 # 80005928 <_ZN9Scheduler16readyThreadQueueE>
    800015ec:	0007b023          	sd	zero,0(a5)
    800015f0:	0007b423          	sd	zero,8(a5)
    800015f4:	fd9ff06f          	j	800015cc <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800015f8 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800015f8:	fe010113          	addi	sp,sp,-32
    800015fc:	00113c23          	sd	ra,24(sp)
    80001600:	00813823          	sd	s0,16(sp)
    80001604:	00913423          	sd	s1,8(sp)
    80001608:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	31c53503          	ld	a0,796(a0) # 80005928 <_ZN9Scheduler16readyThreadQueueE>
    80001614:	04050263          	beqz	a0,80001658 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00004717          	auipc	a4,0x4
    80001620:	30f73623          	sd	a5,780(a4) # 80005928 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001624:	02078463          	beqz	a5,8000164c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001628:	00053483          	ld	s1,0(a0)
        delete elem;
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	124080e7          	jalr	292(ra) # 80001750 <_ZdlPv>
}
    80001634:	00048513          	mv	a0,s1
    80001638:	01813083          	ld	ra,24(sp)
    8000163c:	01013403          	ld	s0,16(sp)
    80001640:	00813483          	ld	s1,8(sp)
    80001644:	02010113          	addi	sp,sp,32
    80001648:	00008067          	ret
        if (!head) { tail = 0; }
    8000164c:	00004797          	auipc	a5,0x4
    80001650:	2e07b223          	sd	zero,740(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001654:	fd5ff06f          	j	80001628 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001658:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000165c:	fd9ff06f          	j	80001634 <_ZN9Scheduler3getEv+0x3c>

0000000080001660 <_ZN9Scheduler3putEP7_thread>:
{
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	02010413          	addi	s0,sp,32
    80001674:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001678:	01000513          	li	a0,16
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	084080e7          	jalr	132(ra) # 80001700 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001684:	00953023          	sd	s1,0(a0)
    80001688:	00053423          	sd	zero,8(a0)
        if (tail)
    8000168c:	00004797          	auipc	a5,0x4
    80001690:	2a47b783          	ld	a5,676(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001694:	02078263          	beqz	a5,800016b8 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001698:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000169c:	00004797          	auipc	a5,0x4
    800016a0:	28a7ba23          	sd	a0,660(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret
            head = tail = elem;
    800016b8:	00004797          	auipc	a5,0x4
    800016bc:	27078793          	addi	a5,a5,624 # 80005928 <_ZN9Scheduler16readyThreadQueueE>
    800016c0:	00a7b423          	sd	a0,8(a5)
    800016c4:	00a7b023          	sd	a0,0(a5)
    800016c8:	fddff06f          	j	800016a4 <_ZN9Scheduler3putEP7_thread+0x44>

00000000800016cc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	000105b7          	lui	a1,0x10
    800016e0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016e4:	00100513          	li	a0,1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	ed0080e7          	jalr	-304(ra) # 800015b8 <_Z41__static_initialization_and_destruction_0ii>
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001710:	00000097          	auipc	ra,0x0
    80001714:	d44080e7          	jalr	-700(ra) # 80001454 <_Z9mem_allocm>
}
    80001718:	00813083          	ld	ra,8(sp)
    8000171c:	00013403          	ld	s0,0(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_Znam>:

void* operator new[](size_t n){
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00113423          	sd	ra,8(sp)
    80001730:	00813023          	sd	s0,0(sp)
    80001734:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	d1c080e7          	jalr	-740(ra) # 80001454 <_Z9mem_allocm>
}
    80001740:	00813083          	ld	ra,8(sp)
    80001744:	00013403          	ld	s0,0(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret

0000000080001750 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00113423          	sd	ra,8(sp)
    80001758:	00813023          	sd	s0,0(sp)
    8000175c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001760:	00000097          	auipc	ra,0x0
    80001764:	d40080e7          	jalr	-704(ra) # 800014a0 <_Z8mem_freePv>
}
    80001768:	00813083          	ld	ra,8(sp)
    8000176c:	00013403          	ld	s0,0(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00008067          	ret

0000000080001778 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001778:	ff010113          	addi	sp,sp,-16
    8000177c:	00113423          	sd	ra,8(sp)
    80001780:	00813023          	sd	s0,0(sp)
    80001784:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	d18080e7          	jalr	-744(ra) # 800014a0 <_Z8mem_freePv>

}
    80001790:	00813083          	ld	ra,8(sp)
    80001794:	00013403          	ld	s0,0(sp)
    80001798:	01010113          	addi	sp,sp,16
    8000179c:	00008067          	ret

00000000800017a0 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    800017a0:	fe010113          	addi	sp,sp,-32
    800017a4:	00113c23          	sd	ra,24(sp)
    800017a8:	00813823          	sd	s0,16(sp)
    800017ac:	00913423          	sd	s1,8(sp)
    800017b0:	01213023          	sd	s2,0(sp)
    800017b4:	02010413          	addi	s0,sp,32
    800017b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800017bc:	00100793          	li	a5,1
    800017c0:	02a7f663          	bgeu	a5,a0,800017ec <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    800017c4:	00357793          	andi	a5,a0,3
    800017c8:	02078e63          	beqz	a5,80001804 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800017cc:	fff48513          	addi	a0,s1,-1
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	fd0080e7          	jalr	-48(ra) # 800017a0 <_ZL9fibonaccim>
    800017d8:	00050913          	mv	s2,a0
    800017dc:	ffe48513          	addi	a0,s1,-2
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	fc0080e7          	jalr	-64(ra) # 800017a0 <_ZL9fibonaccim>
    800017e8:	00a90533          	add	a0,s2,a0
}
    800017ec:	01813083          	ld	ra,24(sp)
    800017f0:	01013403          	ld	s0,16(sp)
    800017f4:	00813483          	ld	s1,8(sp)
    800017f8:	00013903          	ld	s2,0(sp)
    800017fc:	02010113          	addi	sp,sp,32
    80001800:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    80001804:	00000097          	auipc	ra,0x0
    80001808:	9fc080e7          	jalr	-1540(ra) # 80001200 <_ZN7_thread5yieldEv>
    8000180c:	fc1ff06f          	j	800017cc <_ZL9fibonaccim+0x2c>

0000000080001810 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00113c23          	sd	ra,24(sp)
    80001818:	00813823          	sd	s0,16(sp)
    8000181c:	00913423          	sd	s1,8(sp)
    80001820:	01213023          	sd	s2,0(sp)
    80001824:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001828:	00000493          	li	s1,0
    8000182c:	0380006f          	j	80001864 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001830:	00003517          	auipc	a0,0x3
    80001834:	7e850513          	addi	a0,a0,2024 # 80005018 <kvmincrease+0xec8>
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	3e8080e7          	jalr	1000(ra) # 80001c20 <_Z11printStringPKc>
        printInteger(i);
    80001840:	00048513          	mv	a0,s1
    80001844:	00000097          	auipc	ra,0x0
    80001848:	44c080e7          	jalr	1100(ra) # 80001c90 <_Z12printIntegerm>
        printString("\n");
    8000184c:	00003517          	auipc	a0,0x3
    80001850:	7dc50513          	addi	a0,a0,2012 # 80005028 <kvmincrease+0xed8>
    80001854:	00000097          	auipc	ra,0x0
    80001858:	3cc080e7          	jalr	972(ra) # 80001c20 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000185c:	0014849b          	addiw	s1,s1,1
    80001860:	0ff4f493          	andi	s1,s1,255
    80001864:	00200793          	li	a5,2
    80001868:	fc97f4e3          	bgeu	a5,s1,80001830 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	7b450513          	addi	a0,a0,1972 # 80005020 <kvmincrease+0xed0>
    80001874:	00000097          	auipc	ra,0x0
    80001878:	3ac080e7          	jalr	940(ra) # 80001c20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000187c:	00700313          	li	t1,7
    _thread::yield();
    80001880:	00000097          	auipc	ra,0x0
    80001884:	980080e7          	jalr	-1664(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001888:	00030913          	mv	s2,t1

    printString("A: t1=");
    8000188c:	00003517          	auipc	a0,0x3
    80001890:	7a450513          	addi	a0,a0,1956 # 80005030 <kvmincrease+0xee0>
    80001894:	00000097          	auipc	ra,0x0
    80001898:	38c080e7          	jalr	908(ra) # 80001c20 <_Z11printStringPKc>
    printInteger(t1);
    8000189c:	00090513          	mv	a0,s2
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	3f0080e7          	jalr	1008(ra) # 80001c90 <_Z12printIntegerm>
    printString("\n");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	78050513          	addi	a0,a0,1920 # 80005028 <kvmincrease+0xed8>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	370080e7          	jalr	880(ra) # 80001c20 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800018b8:	01400513          	li	a0,20
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	ee4080e7          	jalr	-284(ra) # 800017a0 <_ZL9fibonaccim>
    800018c4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	77050513          	addi	a0,a0,1904 # 80005038 <kvmincrease+0xee8>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	350080e7          	jalr	848(ra) # 80001c20 <_Z11printStringPKc>
    printInteger(result);
    800018d8:	00090513          	mv	a0,s2
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	3b4080e7          	jalr	948(ra) # 80001c90 <_Z12printIntegerm>
    printString("\n");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	74450513          	addi	a0,a0,1860 # 80005028 <kvmincrease+0xed8>
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	334080e7          	jalr	820(ra) # 80001c20 <_Z11printStringPKc>
    800018f4:	0380006f          	j	8000192c <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800018f8:	00003517          	auipc	a0,0x3
    800018fc:	72050513          	addi	a0,a0,1824 # 80005018 <kvmincrease+0xec8>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	320080e7          	jalr	800(ra) # 80001c20 <_Z11printStringPKc>
        printInteger(i);
    80001908:	00048513          	mv	a0,s1
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	384080e7          	jalr	900(ra) # 80001c90 <_Z12printIntegerm>
        printString("\n");
    80001914:	00003517          	auipc	a0,0x3
    80001918:	71450513          	addi	a0,a0,1812 # 80005028 <kvmincrease+0xed8>
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	304080e7          	jalr	772(ra) # 80001c20 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001924:	0014849b          	addiw	s1,s1,1
    80001928:	0ff4f493          	andi	s1,s1,255
    8000192c:	00500793          	li	a5,5
    80001930:	fc97f4e3          	bgeu	a5,s1,800018f8 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001934:	00004797          	auipc	a5,0x4
    80001938:	f6c7b783          	ld	a5,-148(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000193c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001940:	00100713          	li	a4,1
    80001944:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	8b8080e7          	jalr	-1864(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001950:	01813083          	ld	ra,24(sp)
    80001954:	01013403          	ld	s0,16(sp)
    80001958:	00813483          	ld	s1,8(sp)
    8000195c:	00013903          	ld	s2,0(sp)
    80001960:	02010113          	addi	sp,sp,32
    80001964:	00008067          	ret

0000000080001968 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	01213023          	sd	s2,0(sp)
    8000197c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001980:	00a00493          	li	s1,10
    80001984:	0380006f          	j	800019bc <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	6c050513          	addi	a0,a0,1728 # 80005048 <kvmincrease+0xef8>
    80001990:	00000097          	auipc	ra,0x0
    80001994:	290080e7          	jalr	656(ra) # 80001c20 <_Z11printStringPKc>
        printInteger(i);
    80001998:	00048513          	mv	a0,s1
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	2f4080e7          	jalr	756(ra) # 80001c90 <_Z12printIntegerm>
        printString("\n");
    800019a4:	00003517          	auipc	a0,0x3
    800019a8:	68450513          	addi	a0,a0,1668 # 80005028 <kvmincrease+0xed8>
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	274080e7          	jalr	628(ra) # 80001c20 <_Z11printStringPKc>
    for (; i < 13; i++)
    800019b4:	0014849b          	addiw	s1,s1,1
    800019b8:	0ff4f493          	andi	s1,s1,255
    800019bc:	00c00793          	li	a5,12
    800019c0:	fc97f4e3          	bgeu	a5,s1,80001988 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    800019c4:	00003517          	auipc	a0,0x3
    800019c8:	68c50513          	addi	a0,a0,1676 # 80005050 <kvmincrease+0xf00>
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	254080e7          	jalr	596(ra) # 80001c20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800019d4:	00500313          	li	t1,5
    _thread::yield();
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	828080e7          	jalr	-2008(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    800019e0:	01700513          	li	a0,23
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	dbc080e7          	jalr	-580(ra) # 800017a0 <_ZL9fibonaccim>
    800019ec:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019f0:	00003517          	auipc	a0,0x3
    800019f4:	64850513          	addi	a0,a0,1608 # 80005038 <kvmincrease+0xee8>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	228080e7          	jalr	552(ra) # 80001c20 <_Z11printStringPKc>
    printInteger(result);
    80001a00:	00090513          	mv	a0,s2
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	28c080e7          	jalr	652(ra) # 80001c90 <_Z12printIntegerm>
    printString("\n");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	61c50513          	addi	a0,a0,1564 # 80005028 <kvmincrease+0xed8>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	20c080e7          	jalr	524(ra) # 80001c20 <_Z11printStringPKc>
    80001a1c:	0380006f          	j	80001a54 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	62850513          	addi	a0,a0,1576 # 80005048 <kvmincrease+0xef8>
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	1f8080e7          	jalr	504(ra) # 80001c20 <_Z11printStringPKc>
        printInteger(i);
    80001a30:	00048513          	mv	a0,s1
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	25c080e7          	jalr	604(ra) # 80001c90 <_Z12printIntegerm>
        printString("\n");
    80001a3c:	00003517          	auipc	a0,0x3
    80001a40:	5ec50513          	addi	a0,a0,1516 # 80005028 <kvmincrease+0xed8>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	1dc080e7          	jalr	476(ra) # 80001c20 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001a4c:	0014849b          	addiw	s1,s1,1
    80001a50:	0ff4f493          	andi	s1,s1,255
    80001a54:	00f00793          	li	a5,15
    80001a58:	fc97f4e3          	bgeu	a5,s1,80001a20 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001a5c:	00004797          	auipc	a5,0x4
    80001a60:	e447b783          	ld	a5,-444(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a64:	0007b783          	ld	a5,0(a5)
    80001a68:	00100713          	li	a4,1
    80001a6c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a70:	fffff097          	auipc	ra,0xfffff
    80001a74:	790080e7          	jalr	1936(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00113423          	sd	ra,8(sp)
    80001a98:	00813023          	sd	s0,0(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001aa0:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001aa4:	00100713          	li	a4,1
    80001aa8:	02e78263          	beq	a5,a4,80001acc <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001aac:	00200713          	li	a4,2
    80001ab0:	02e78863          	beq	a5,a4,80001ae0 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001ab4:	01100713          	li	a4,17
    80001ab8:	02e78e63          	beq	a5,a4,80001af4 <_ZN5Riscv14syscallHandlerEv+0x64>



    }

}
    80001abc:	00813083          	ld	ra,8(sp)
    80001ac0:	00013403          	ld	s0,0(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001acc:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	100080e7          	jalr	256(ra) # 80001bd0 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001ad8:	00050513          	mv	a0,a0
    80001adc:	fe1ff06f          	j	80001abc <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001ae0:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	114080e7          	jalr	276(ra) # 80001bf8 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001aec:	00050513          	mv	a0,a0
    80001af0:	fcdff06f          	j	80001abc <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001af4:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001af8:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001afc:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	868080e7          	jalr	-1944(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b08:	00050513          	mv	a0,a0
}
    80001b0c:	fb1ff06f          	j	80001abc <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001b10 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00813423          	sd	s0,8(sp)
    80001b18:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b1c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001b20:	10200073          	sret
}
    80001b24:	00813403          	ld	s0,8(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001b30:	fc010113          	addi	sp,sp,-64
    80001b34:	02113c23          	sd	ra,56(sp)
    80001b38:	02813823          	sd	s0,48(sp)
    80001b3c:	02913423          	sd	s1,40(sp)
    80001b40:	03213023          	sd	s2,32(sp)
    80001b44:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b48:	142027f3          	csrr	a5,scause
    80001b4c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001b50:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001b54:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001b58:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001b5c:	ff87879b          	addiw	a5,a5,-8
    80001b60:	00100713          	li	a4,1
    80001b64:	00f77e63          	bgeu	a4,a5,80001b80 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001b68:	03813083          	ld	ra,56(sp)
    80001b6c:	03013403          	ld	s0,48(sp)
    80001b70:	02813483          	ld	s1,40(sp)
    80001b74:	02013903          	ld	s2,32(sp)
    80001b78:	04010113          	addi	sp,sp,64
    80001b7c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b80:	141027f3          	csrr	a5,sepc
    80001b84:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001b88:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001b8c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b90:	100027f3          	csrr	a5,sstatus
    80001b94:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001b98:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001b9c:	00400793          	li	a5,4
    80001ba0:	00f68c63          	beq	a3,a5,80001bb8 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	eec080e7          	jalr	-276(ra) # 80001a90 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001bac:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bb0:	14149073          	csrw	sepc,s1
}
    80001bb4:	fb5ff06f          	j	80001b68 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	d087b783          	ld	a5,-760(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bc0:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	6c4080e7          	jalr	1732(ra) # 80001288 <_ZN7_thread8dispatchEv>
    80001bcc:	fe1ff06f          	j	80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

0000000080001bd0 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00113423          	sd	ra,8(sp)
    80001bd8:	00813023          	sd	s0,0(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001be0:	00002097          	auipc	ra,0x2
    80001be4:	2f8080e7          	jalr	760(ra) # 80003ed8 <__mem_alloc>
}
    80001be8:	00813083          	ld	ra,8(sp)
    80001bec:	00013403          	ld	s0,0(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00113423          	sd	ra,8(sp)
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001c08:	00002097          	auipc	ra,0x2
    80001c0c:	204080e7          	jalr	516(ra) # 80003e0c <__mem_free>
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001c20:	fd010113          	addi	sp,sp,-48
    80001c24:	02113423          	sd	ra,40(sp)
    80001c28:	02813023          	sd	s0,32(sp)
    80001c2c:	00913c23          	sd	s1,24(sp)
    80001c30:	01213823          	sd	s2,16(sp)
    80001c34:	03010413          	addi	s0,sp,48
    80001c38:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c3c:	100027f3          	csrr	a5,sstatus
    80001c40:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001c44:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c48:	00200793          	li	a5,2
    80001c4c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001c50:	0004c503          	lbu	a0,0(s1)
    80001c54:	00050a63          	beqz	a0,80001c68 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001c58:	00002097          	auipc	ra,0x2
    80001c5c:	3d8080e7          	jalr	984(ra) # 80004030 <__putc>
        string++;
    80001c60:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001c64:	fedff06f          	j	80001c50 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001c68:	0009091b          	sext.w	s2,s2
    80001c6c:	00297913          	andi	s2,s2,2
    80001c70:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c74:	10092073          	csrs	sstatus,s2
}
    80001c78:	02813083          	ld	ra,40(sp)
    80001c7c:	02013403          	ld	s0,32(sp)
    80001c80:	01813483          	ld	s1,24(sp)
    80001c84:	01013903          	ld	s2,16(sp)
    80001c88:	03010113          	addi	sp,sp,48
    80001c8c:	00008067          	ret

0000000080001c90 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001c90:	fc010113          	addi	sp,sp,-64
    80001c94:	02113c23          	sd	ra,56(sp)
    80001c98:	02813823          	sd	s0,48(sp)
    80001c9c:	02913423          	sd	s1,40(sp)
    80001ca0:	03213023          	sd	s2,32(sp)
    80001ca4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ca8:	100027f3          	csrr	a5,sstatus
    80001cac:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001cb0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cb4:	00200793          	li	a5,2
    80001cb8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001cbc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001cc0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001cc4:	00a00613          	li	a2,10
    80001cc8:	02c5773b          	remuw	a4,a0,a2
    80001ccc:	02071693          	slli	a3,a4,0x20
    80001cd0:	0206d693          	srli	a3,a3,0x20
    80001cd4:	00003717          	auipc	a4,0x3
    80001cd8:	38c70713          	addi	a4,a4,908 # 80005060 <_ZZ12printIntegermE6digits>
    80001cdc:	00d70733          	add	a4,a4,a3
    80001ce0:	00074703          	lbu	a4,0(a4)
    80001ce4:	fe040693          	addi	a3,s0,-32
    80001ce8:	009687b3          	add	a5,a3,s1
    80001cec:	0014849b          	addiw	s1,s1,1
    80001cf0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001cf4:	0005071b          	sext.w	a4,a0
    80001cf8:	02c5553b          	divuw	a0,a0,a2
    80001cfc:	00900793          	li	a5,9
    80001d00:	fce7e2e3          	bltu	a5,a4,80001cc4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001d04:	fff4849b          	addiw	s1,s1,-1
    80001d08:	0004ce63          	bltz	s1,80001d24 <_Z12printIntegerm+0x94>
    80001d0c:	fe040793          	addi	a5,s0,-32
    80001d10:	009787b3          	add	a5,a5,s1
    80001d14:	ff07c503          	lbu	a0,-16(a5)
    80001d18:	00002097          	auipc	ra,0x2
    80001d1c:	318080e7          	jalr	792(ra) # 80004030 <__putc>
    80001d20:	fe5ff06f          	j	80001d04 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d24:	0009091b          	sext.w	s2,s2
    80001d28:	00297913          	andi	s2,s2,2
    80001d2c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d30:	10092073          	csrs	sstatus,s2
}
    80001d34:	03813083          	ld	ra,56(sp)
    80001d38:	03013403          	ld	s0,48(sp)
    80001d3c:	02813483          	ld	s1,40(sp)
    80001d40:	02013903          	ld	s2,32(sp)
    80001d44:	04010113          	addi	sp,sp,64
    80001d48:	00008067          	ret

0000000080001d4c <start>:
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
    80001d58:	300027f3          	csrr	a5,mstatus
    80001d5c:	ffffe737          	lui	a4,0xffffe
    80001d60:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c4f>
    80001d64:	00e7f7b3          	and	a5,a5,a4
    80001d68:	00001737          	lui	a4,0x1
    80001d6c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d70:	00e7e7b3          	or	a5,a5,a4
    80001d74:	30079073          	csrw	mstatus,a5
    80001d78:	00000797          	auipc	a5,0x0
    80001d7c:	16078793          	addi	a5,a5,352 # 80001ed8 <system_main>
    80001d80:	34179073          	csrw	mepc,a5
    80001d84:	00000793          	li	a5,0
    80001d88:	18079073          	csrw	satp,a5
    80001d8c:	000107b7          	lui	a5,0x10
    80001d90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d94:	30279073          	csrw	medeleg,a5
    80001d98:	30379073          	csrw	mideleg,a5
    80001d9c:	104027f3          	csrr	a5,sie
    80001da0:	2227e793          	ori	a5,a5,546
    80001da4:	10479073          	csrw	sie,a5
    80001da8:	fff00793          	li	a5,-1
    80001dac:	00a7d793          	srli	a5,a5,0xa
    80001db0:	3b079073          	csrw	pmpaddr0,a5
    80001db4:	00f00793          	li	a5,15
    80001db8:	3a079073          	csrw	pmpcfg0,a5
    80001dbc:	f14027f3          	csrr	a5,mhartid
    80001dc0:	0200c737          	lui	a4,0x200c
    80001dc4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001dc8:	0007869b          	sext.w	a3,a5
    80001dcc:	00269713          	slli	a4,a3,0x2
    80001dd0:	000f4637          	lui	a2,0xf4
    80001dd4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001dd8:	00d70733          	add	a4,a4,a3
    80001ddc:	0037979b          	slliw	a5,a5,0x3
    80001de0:	020046b7          	lui	a3,0x2004
    80001de4:	00d787b3          	add	a5,a5,a3
    80001de8:	00c585b3          	add	a1,a1,a2
    80001dec:	00371693          	slli	a3,a4,0x3
    80001df0:	00004717          	auipc	a4,0x4
    80001df4:	b5070713          	addi	a4,a4,-1200 # 80005940 <timer_scratch>
    80001df8:	00b7b023          	sd	a1,0(a5)
    80001dfc:	00d70733          	add	a4,a4,a3
    80001e00:	00f73c23          	sd	a5,24(a4)
    80001e04:	02c73023          	sd	a2,32(a4)
    80001e08:	34071073          	csrw	mscratch,a4
    80001e0c:	00000797          	auipc	a5,0x0
    80001e10:	6e478793          	addi	a5,a5,1764 # 800024f0 <timervec>
    80001e14:	30579073          	csrw	mtvec,a5
    80001e18:	300027f3          	csrr	a5,mstatus
    80001e1c:	0087e793          	ori	a5,a5,8
    80001e20:	30079073          	csrw	mstatus,a5
    80001e24:	304027f3          	csrr	a5,mie
    80001e28:	0807e793          	ori	a5,a5,128
    80001e2c:	30479073          	csrw	mie,a5
    80001e30:	f14027f3          	csrr	a5,mhartid
    80001e34:	0007879b          	sext.w	a5,a5
    80001e38:	00078213          	mv	tp,a5
    80001e3c:	30200073          	mret
    80001e40:	00813403          	ld	s0,8(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <timerinit>:
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00813423          	sd	s0,8(sp)
    80001e54:	01010413          	addi	s0,sp,16
    80001e58:	f14027f3          	csrr	a5,mhartid
    80001e5c:	0200c737          	lui	a4,0x200c
    80001e60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e64:	0007869b          	sext.w	a3,a5
    80001e68:	00269713          	slli	a4,a3,0x2
    80001e6c:	000f4637          	lui	a2,0xf4
    80001e70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e74:	00d70733          	add	a4,a4,a3
    80001e78:	0037979b          	slliw	a5,a5,0x3
    80001e7c:	020046b7          	lui	a3,0x2004
    80001e80:	00d787b3          	add	a5,a5,a3
    80001e84:	00c585b3          	add	a1,a1,a2
    80001e88:	00371693          	slli	a3,a4,0x3
    80001e8c:	00004717          	auipc	a4,0x4
    80001e90:	ab470713          	addi	a4,a4,-1356 # 80005940 <timer_scratch>
    80001e94:	00b7b023          	sd	a1,0(a5)
    80001e98:	00d70733          	add	a4,a4,a3
    80001e9c:	00f73c23          	sd	a5,24(a4)
    80001ea0:	02c73023          	sd	a2,32(a4)
    80001ea4:	34071073          	csrw	mscratch,a4
    80001ea8:	00000797          	auipc	a5,0x0
    80001eac:	64878793          	addi	a5,a5,1608 # 800024f0 <timervec>
    80001eb0:	30579073          	csrw	mtvec,a5
    80001eb4:	300027f3          	csrr	a5,mstatus
    80001eb8:	0087e793          	ori	a5,a5,8
    80001ebc:	30079073          	csrw	mstatus,a5
    80001ec0:	304027f3          	csrr	a5,mie
    80001ec4:	0807e793          	ori	a5,a5,128
    80001ec8:	30479073          	csrw	mie,a5
    80001ecc:	00813403          	ld	s0,8(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <system_main>:
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00913423          	sd	s1,8(sp)
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	0c4080e7          	jalr	196(ra) # 80001fb0 <cpuid>
    80001ef4:	00004497          	auipc	s1,0x4
    80001ef8:	9ec48493          	addi	s1,s1,-1556 # 800058e0 <started>
    80001efc:	02050263          	beqz	a0,80001f20 <system_main+0x48>
    80001f00:	0004a783          	lw	a5,0(s1)
    80001f04:	0007879b          	sext.w	a5,a5
    80001f08:	fe078ce3          	beqz	a5,80001f00 <system_main+0x28>
    80001f0c:	0ff0000f          	fence
    80001f10:	00003517          	auipc	a0,0x3
    80001f14:	19050513          	addi	a0,a0,400 # 800050a0 <_ZZ12printIntegermE6digits+0x40>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	a74080e7          	jalr	-1420(ra) # 8000298c <panic>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	9c8080e7          	jalr	-1592(ra) # 800028e8 <consoleinit>
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	154080e7          	jalr	340(ra) # 8000307c <printfinit>
    80001f30:	00003517          	auipc	a0,0x3
    80001f34:	0f850513          	addi	a0,a0,248 # 80005028 <kvmincrease+0xed8>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	ab0080e7          	jalr	-1360(ra) # 800029e8 <__printf>
    80001f40:	00003517          	auipc	a0,0x3
    80001f44:	13050513          	addi	a0,a0,304 # 80005070 <_ZZ12printIntegermE6digits+0x10>
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	aa0080e7          	jalr	-1376(ra) # 800029e8 <__printf>
    80001f50:	00003517          	auipc	a0,0x3
    80001f54:	0d850513          	addi	a0,a0,216 # 80005028 <kvmincrease+0xed8>
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	a90080e7          	jalr	-1392(ra) # 800029e8 <__printf>
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	4a8080e7          	jalr	1192(ra) # 80003408 <kinit>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	148080e7          	jalr	328(ra) # 800020b0 <trapinit>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	16c080e7          	jalr	364(ra) # 800020dc <trapinithart>
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	5b8080e7          	jalr	1464(ra) # 80002530 <plicinit>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	5d8080e7          	jalr	1496(ra) # 80002558 <plicinithart>
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	078080e7          	jalr	120(ra) # 80002000 <userinit>
    80001f90:	0ff0000f          	fence
    80001f94:	00100793          	li	a5,1
    80001f98:	00003517          	auipc	a0,0x3
    80001f9c:	0f050513          	addi	a0,a0,240 # 80005088 <_ZZ12printIntegermE6digits+0x28>
    80001fa0:	00f4a023          	sw	a5,0(s1)
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	a44080e7          	jalr	-1468(ra) # 800029e8 <__printf>
    80001fac:	0000006f          	j	80001fac <system_main+0xd4>

0000000080001fb0 <cpuid>:
    80001fb0:	ff010113          	addi	sp,sp,-16
    80001fb4:	00813423          	sd	s0,8(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    80001fbc:	00020513          	mv	a0,tp
    80001fc0:	00813403          	ld	s0,8(sp)
    80001fc4:	0005051b          	sext.w	a0,a0
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <mycpu>:
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00020793          	mv	a5,tp
    80001fe0:	00813403          	ld	s0,8(sp)
    80001fe4:	0007879b          	sext.w	a5,a5
    80001fe8:	00779793          	slli	a5,a5,0x7
    80001fec:	00005517          	auipc	a0,0x5
    80001ff0:	98450513          	addi	a0,a0,-1660 # 80006970 <cpus>
    80001ff4:	00f50533          	add	a0,a0,a5
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret

0000000080002000 <userinit>:
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00813423          	sd	s0,8(sp)
    80002008:	01010413          	addi	s0,sp,16
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	fffff317          	auipc	t1,0xfffff
    80002018:	51430067          	jr	1300(t1) # 80001528 <main>

000000008000201c <either_copyout>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    8000202c:	02051663          	bnez	a0,80002058 <either_copyout+0x3c>
    80002030:	00058513          	mv	a0,a1
    80002034:	00060593          	mv	a1,a2
    80002038:	0006861b          	sext.w	a2,a3
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	c58080e7          	jalr	-936(ra) # 80003c94 <__memmove>
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	00000513          	li	a0,0
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	07050513          	addi	a0,a0,112 # 800050c8 <_ZZ12printIntegermE6digits+0x68>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	92c080e7          	jalr	-1748(ra) # 8000298c <panic>

0000000080002068 <either_copyin>:
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813023          	sd	s0,0(sp)
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	02059463          	bnez	a1,800020a0 <either_copyin+0x38>
    8000207c:	00060593          	mv	a1,a2
    80002080:	0006861b          	sext.w	a2,a3
    80002084:	00002097          	auipc	ra,0x2
    80002088:	c10080e7          	jalr	-1008(ra) # 80003c94 <__memmove>
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	00000513          	li	a0,0
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret
    800020a0:	00003517          	auipc	a0,0x3
    800020a4:	05050513          	addi	a0,a0,80 # 800050f0 <_ZZ12printIntegermE6digits+0x90>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	8e4080e7          	jalr	-1820(ra) # 8000298c <panic>

00000000800020b0 <trapinit>:
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	00813403          	ld	s0,8(sp)
    800020c0:	00003597          	auipc	a1,0x3
    800020c4:	05858593          	addi	a1,a1,88 # 80005118 <_ZZ12printIntegermE6digits+0xb8>
    800020c8:	00005517          	auipc	a0,0x5
    800020cc:	92850513          	addi	a0,a0,-1752 # 800069f0 <tickslock>
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00001317          	auipc	t1,0x1
    800020d8:	5c430067          	jr	1476(t1) # 80003698 <initlock>

00000000800020dc <trapinithart>:
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    800020e8:	00000797          	auipc	a5,0x0
    800020ec:	2f878793          	addi	a5,a5,760 # 800023e0 <kernelvec>
    800020f0:	10579073          	csrw	stvec,a5
    800020f4:	00813403          	ld	s0,8(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <usertrap>:
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00813423          	sd	s0,8(sp)
    80002108:	01010413          	addi	s0,sp,16
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <usertrapret>:
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00813403          	ld	s0,8(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <kerneltrap>:
    80002130:	fe010113          	addi	sp,sp,-32
    80002134:	00813823          	sd	s0,16(sp)
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00913423          	sd	s1,8(sp)
    80002140:	02010413          	addi	s0,sp,32
    80002144:	142025f3          	csrr	a1,scause
    80002148:	100027f3          	csrr	a5,sstatus
    8000214c:	0027f793          	andi	a5,a5,2
    80002150:	10079c63          	bnez	a5,80002268 <kerneltrap+0x138>
    80002154:	142027f3          	csrr	a5,scause
    80002158:	0207ce63          	bltz	a5,80002194 <kerneltrap+0x64>
    8000215c:	00003517          	auipc	a0,0x3
    80002160:	00450513          	addi	a0,a0,4 # 80005160 <_ZZ12printIntegermE6digits+0x100>
    80002164:	00001097          	auipc	ra,0x1
    80002168:	884080e7          	jalr	-1916(ra) # 800029e8 <__printf>
    8000216c:	141025f3          	csrr	a1,sepc
    80002170:	14302673          	csrr	a2,stval
    80002174:	00003517          	auipc	a0,0x3
    80002178:	ffc50513          	addi	a0,a0,-4 # 80005170 <_ZZ12printIntegermE6digits+0x110>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	86c080e7          	jalr	-1940(ra) # 800029e8 <__printf>
    80002184:	00003517          	auipc	a0,0x3
    80002188:	00450513          	addi	a0,a0,4 # 80005188 <_ZZ12printIntegermE6digits+0x128>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	800080e7          	jalr	-2048(ra) # 8000298c <panic>
    80002194:	0ff7f713          	andi	a4,a5,255
    80002198:	00900693          	li	a3,9
    8000219c:	04d70063          	beq	a4,a3,800021dc <kerneltrap+0xac>
    800021a0:	fff00713          	li	a4,-1
    800021a4:	03f71713          	slli	a4,a4,0x3f
    800021a8:	00170713          	addi	a4,a4,1
    800021ac:	fae798e3          	bne	a5,a4,8000215c <kerneltrap+0x2c>
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	e00080e7          	jalr	-512(ra) # 80001fb0 <cpuid>
    800021b8:	06050663          	beqz	a0,80002224 <kerneltrap+0xf4>
    800021bc:	144027f3          	csrr	a5,sip
    800021c0:	ffd7f793          	andi	a5,a5,-3
    800021c4:	14479073          	csrw	sip,a5
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	01013403          	ld	s0,16(sp)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	3c8080e7          	jalr	968(ra) # 800025a4 <plic_claim>
    800021e4:	00a00793          	li	a5,10
    800021e8:	00050493          	mv	s1,a0
    800021ec:	06f50863          	beq	a0,a5,8000225c <kerneltrap+0x12c>
    800021f0:	fc050ce3          	beqz	a0,800021c8 <kerneltrap+0x98>
    800021f4:	00050593          	mv	a1,a0
    800021f8:	00003517          	auipc	a0,0x3
    800021fc:	f4850513          	addi	a0,a0,-184 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    80002200:	00000097          	auipc	ra,0x0
    80002204:	7e8080e7          	jalr	2024(ra) # 800029e8 <__printf>
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	00048513          	mv	a0,s1
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00000317          	auipc	t1,0x0
    80002220:	3c030067          	jr	960(t1) # 800025dc <plic_complete>
    80002224:	00004517          	auipc	a0,0x4
    80002228:	7cc50513          	addi	a0,a0,1996 # 800069f0 <tickslock>
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	490080e7          	jalr	1168(ra) # 800036bc <acquire>
    80002234:	00003717          	auipc	a4,0x3
    80002238:	6b070713          	addi	a4,a4,1712 # 800058e4 <ticks>
    8000223c:	00072783          	lw	a5,0(a4)
    80002240:	00004517          	auipc	a0,0x4
    80002244:	7b050513          	addi	a0,a0,1968 # 800069f0 <tickslock>
    80002248:	0017879b          	addiw	a5,a5,1
    8000224c:	00f72023          	sw	a5,0(a4)
    80002250:	00001097          	auipc	ra,0x1
    80002254:	538080e7          	jalr	1336(ra) # 80003788 <release>
    80002258:	f65ff06f          	j	800021bc <kerneltrap+0x8c>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	094080e7          	jalr	148(ra) # 800032f0 <uartintr>
    80002264:	fa5ff06f          	j	80002208 <kerneltrap+0xd8>
    80002268:	00003517          	auipc	a0,0x3
    8000226c:	eb850513          	addi	a0,a0,-328 # 80005120 <_ZZ12printIntegermE6digits+0xc0>
    80002270:	00000097          	auipc	ra,0x0
    80002274:	71c080e7          	jalr	1820(ra) # 8000298c <panic>

0000000080002278 <clockintr>:
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00813823          	sd	s0,16(sp)
    80002280:	00913423          	sd	s1,8(sp)
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	02010413          	addi	s0,sp,32
    8000228c:	00004497          	auipc	s1,0x4
    80002290:	76448493          	addi	s1,s1,1892 # 800069f0 <tickslock>
    80002294:	00048513          	mv	a0,s1
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	424080e7          	jalr	1060(ra) # 800036bc <acquire>
    800022a0:	00003717          	auipc	a4,0x3
    800022a4:	64470713          	addi	a4,a4,1604 # 800058e4 <ticks>
    800022a8:	00072783          	lw	a5,0(a4)
    800022ac:	01013403          	ld	s0,16(sp)
    800022b0:	01813083          	ld	ra,24(sp)
    800022b4:	00048513          	mv	a0,s1
    800022b8:	0017879b          	addiw	a5,a5,1
    800022bc:	00813483          	ld	s1,8(sp)
    800022c0:	00f72023          	sw	a5,0(a4)
    800022c4:	02010113          	addi	sp,sp,32
    800022c8:	00001317          	auipc	t1,0x1
    800022cc:	4c030067          	jr	1216(t1) # 80003788 <release>

00000000800022d0 <devintr>:
    800022d0:	142027f3          	csrr	a5,scause
    800022d4:	00000513          	li	a0,0
    800022d8:	0007c463          	bltz	a5,800022e0 <devintr+0x10>
    800022dc:	00008067          	ret
    800022e0:	fe010113          	addi	sp,sp,-32
    800022e4:	00813823          	sd	s0,16(sp)
    800022e8:	00113c23          	sd	ra,24(sp)
    800022ec:	00913423          	sd	s1,8(sp)
    800022f0:	02010413          	addi	s0,sp,32
    800022f4:	0ff7f713          	andi	a4,a5,255
    800022f8:	00900693          	li	a3,9
    800022fc:	04d70c63          	beq	a4,a3,80002354 <devintr+0x84>
    80002300:	fff00713          	li	a4,-1
    80002304:	03f71713          	slli	a4,a4,0x3f
    80002308:	00170713          	addi	a4,a4,1
    8000230c:	00e78c63          	beq	a5,a4,80002324 <devintr+0x54>
    80002310:	01813083          	ld	ra,24(sp)
    80002314:	01013403          	ld	s0,16(sp)
    80002318:	00813483          	ld	s1,8(sp)
    8000231c:	02010113          	addi	sp,sp,32
    80002320:	00008067          	ret
    80002324:	00000097          	auipc	ra,0x0
    80002328:	c8c080e7          	jalr	-884(ra) # 80001fb0 <cpuid>
    8000232c:	06050663          	beqz	a0,80002398 <devintr+0xc8>
    80002330:	144027f3          	csrr	a5,sip
    80002334:	ffd7f793          	andi	a5,a5,-3
    80002338:	14479073          	csrw	sip,a5
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	00200513          	li	a0,2
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret
    80002354:	00000097          	auipc	ra,0x0
    80002358:	250080e7          	jalr	592(ra) # 800025a4 <plic_claim>
    8000235c:	00a00793          	li	a5,10
    80002360:	00050493          	mv	s1,a0
    80002364:	06f50663          	beq	a0,a5,800023d0 <devintr+0x100>
    80002368:	00100513          	li	a0,1
    8000236c:	fa0482e3          	beqz	s1,80002310 <devintr+0x40>
    80002370:	00048593          	mv	a1,s1
    80002374:	00003517          	auipc	a0,0x3
    80002378:	dcc50513          	addi	a0,a0,-564 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	66c080e7          	jalr	1644(ra) # 800029e8 <__printf>
    80002384:	00048513          	mv	a0,s1
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	254080e7          	jalr	596(ra) # 800025dc <plic_complete>
    80002390:	00100513          	li	a0,1
    80002394:	f7dff06f          	j	80002310 <devintr+0x40>
    80002398:	00004517          	auipc	a0,0x4
    8000239c:	65850513          	addi	a0,a0,1624 # 800069f0 <tickslock>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	31c080e7          	jalr	796(ra) # 800036bc <acquire>
    800023a8:	00003717          	auipc	a4,0x3
    800023ac:	53c70713          	addi	a4,a4,1340 # 800058e4 <ticks>
    800023b0:	00072783          	lw	a5,0(a4)
    800023b4:	00004517          	auipc	a0,0x4
    800023b8:	63c50513          	addi	a0,a0,1596 # 800069f0 <tickslock>
    800023bc:	0017879b          	addiw	a5,a5,1
    800023c0:	00f72023          	sw	a5,0(a4)
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	3c4080e7          	jalr	964(ra) # 80003788 <release>
    800023cc:	f65ff06f          	j	80002330 <devintr+0x60>
    800023d0:	00001097          	auipc	ra,0x1
    800023d4:	f20080e7          	jalr	-224(ra) # 800032f0 <uartintr>
    800023d8:	fadff06f          	j	80002384 <devintr+0xb4>
    800023dc:	0000                	unimp
	...

00000000800023e0 <kernelvec>:
    800023e0:	f0010113          	addi	sp,sp,-256
    800023e4:	00113023          	sd	ra,0(sp)
    800023e8:	00213423          	sd	sp,8(sp)
    800023ec:	00313823          	sd	gp,16(sp)
    800023f0:	00413c23          	sd	tp,24(sp)
    800023f4:	02513023          	sd	t0,32(sp)
    800023f8:	02613423          	sd	t1,40(sp)
    800023fc:	02713823          	sd	t2,48(sp)
    80002400:	02813c23          	sd	s0,56(sp)
    80002404:	04913023          	sd	s1,64(sp)
    80002408:	04a13423          	sd	a0,72(sp)
    8000240c:	04b13823          	sd	a1,80(sp)
    80002410:	04c13c23          	sd	a2,88(sp)
    80002414:	06d13023          	sd	a3,96(sp)
    80002418:	06e13423          	sd	a4,104(sp)
    8000241c:	06f13823          	sd	a5,112(sp)
    80002420:	07013c23          	sd	a6,120(sp)
    80002424:	09113023          	sd	a7,128(sp)
    80002428:	09213423          	sd	s2,136(sp)
    8000242c:	09313823          	sd	s3,144(sp)
    80002430:	09413c23          	sd	s4,152(sp)
    80002434:	0b513023          	sd	s5,160(sp)
    80002438:	0b613423          	sd	s6,168(sp)
    8000243c:	0b713823          	sd	s7,176(sp)
    80002440:	0b813c23          	sd	s8,184(sp)
    80002444:	0d913023          	sd	s9,192(sp)
    80002448:	0da13423          	sd	s10,200(sp)
    8000244c:	0db13823          	sd	s11,208(sp)
    80002450:	0dc13c23          	sd	t3,216(sp)
    80002454:	0fd13023          	sd	t4,224(sp)
    80002458:	0fe13423          	sd	t5,232(sp)
    8000245c:	0ff13823          	sd	t6,240(sp)
    80002460:	cd1ff0ef          	jal	ra,80002130 <kerneltrap>
    80002464:	00013083          	ld	ra,0(sp)
    80002468:	00813103          	ld	sp,8(sp)
    8000246c:	01013183          	ld	gp,16(sp)
    80002470:	02013283          	ld	t0,32(sp)
    80002474:	02813303          	ld	t1,40(sp)
    80002478:	03013383          	ld	t2,48(sp)
    8000247c:	03813403          	ld	s0,56(sp)
    80002480:	04013483          	ld	s1,64(sp)
    80002484:	04813503          	ld	a0,72(sp)
    80002488:	05013583          	ld	a1,80(sp)
    8000248c:	05813603          	ld	a2,88(sp)
    80002490:	06013683          	ld	a3,96(sp)
    80002494:	06813703          	ld	a4,104(sp)
    80002498:	07013783          	ld	a5,112(sp)
    8000249c:	07813803          	ld	a6,120(sp)
    800024a0:	08013883          	ld	a7,128(sp)
    800024a4:	08813903          	ld	s2,136(sp)
    800024a8:	09013983          	ld	s3,144(sp)
    800024ac:	09813a03          	ld	s4,152(sp)
    800024b0:	0a013a83          	ld	s5,160(sp)
    800024b4:	0a813b03          	ld	s6,168(sp)
    800024b8:	0b013b83          	ld	s7,176(sp)
    800024bc:	0b813c03          	ld	s8,184(sp)
    800024c0:	0c013c83          	ld	s9,192(sp)
    800024c4:	0c813d03          	ld	s10,200(sp)
    800024c8:	0d013d83          	ld	s11,208(sp)
    800024cc:	0d813e03          	ld	t3,216(sp)
    800024d0:	0e013e83          	ld	t4,224(sp)
    800024d4:	0e813f03          	ld	t5,232(sp)
    800024d8:	0f013f83          	ld	t6,240(sp)
    800024dc:	10010113          	addi	sp,sp,256
    800024e0:	10200073          	sret
    800024e4:	00000013          	nop
    800024e8:	00000013          	nop
    800024ec:	00000013          	nop

00000000800024f0 <timervec>:
    800024f0:	34051573          	csrrw	a0,mscratch,a0
    800024f4:	00b53023          	sd	a1,0(a0)
    800024f8:	00c53423          	sd	a2,8(a0)
    800024fc:	00d53823          	sd	a3,16(a0)
    80002500:	01853583          	ld	a1,24(a0)
    80002504:	02053603          	ld	a2,32(a0)
    80002508:	0005b683          	ld	a3,0(a1)
    8000250c:	00c686b3          	add	a3,a3,a2
    80002510:	00d5b023          	sd	a3,0(a1)
    80002514:	00200593          	li	a1,2
    80002518:	14459073          	csrw	sip,a1
    8000251c:	01053683          	ld	a3,16(a0)
    80002520:	00853603          	ld	a2,8(a0)
    80002524:	00053583          	ld	a1,0(a0)
    80002528:	34051573          	csrrw	a0,mscratch,a0
    8000252c:	30200073          	mret

0000000080002530 <plicinit>:
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	0c0007b7          	lui	a5,0xc000
    80002544:	00100713          	li	a4,1
    80002548:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000254c:	00e7a223          	sw	a4,4(a5)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret

0000000080002558 <plicinithart>:
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00813023          	sd	s0,0(sp)
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	a48080e7          	jalr	-1464(ra) # 80001fb0 <cpuid>
    80002570:	0085171b          	slliw	a4,a0,0x8
    80002574:	0c0027b7          	lui	a5,0xc002
    80002578:	00e787b3          	add	a5,a5,a4
    8000257c:	40200713          	li	a4,1026
    80002580:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002584:	00813083          	ld	ra,8(sp)
    80002588:	00013403          	ld	s0,0(sp)
    8000258c:	00d5151b          	slliw	a0,a0,0xd
    80002590:	0c2017b7          	lui	a5,0xc201
    80002594:	00a78533          	add	a0,a5,a0
    80002598:	00052023          	sw	zero,0(a0)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <plic_claim>:
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	9fc080e7          	jalr	-1540(ra) # 80001fb0 <cpuid>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	00d5151b          	slliw	a0,a0,0xd
    800025c8:	0c2017b7          	lui	a5,0xc201
    800025cc:	00a78533          	add	a0,a5,a0
    800025d0:	00452503          	lw	a0,4(a0)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <plic_complete>:
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	02010413          	addi	s0,sp,32
    800025f0:	00050493          	mv	s1,a0
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	9bc080e7          	jalr	-1604(ra) # 80001fb0 <cpuid>
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00d5179b          	slliw	a5,a0,0xd
    80002608:	0c201737          	lui	a4,0xc201
    8000260c:	00f707b3          	add	a5,a4,a5
    80002610:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <consolewrite>:
    80002620:	fb010113          	addi	sp,sp,-80
    80002624:	04813023          	sd	s0,64(sp)
    80002628:	04113423          	sd	ra,72(sp)
    8000262c:	02913c23          	sd	s1,56(sp)
    80002630:	03213823          	sd	s2,48(sp)
    80002634:	03313423          	sd	s3,40(sp)
    80002638:	03413023          	sd	s4,32(sp)
    8000263c:	01513c23          	sd	s5,24(sp)
    80002640:	05010413          	addi	s0,sp,80
    80002644:	06c05c63          	blez	a2,800026bc <consolewrite+0x9c>
    80002648:	00060993          	mv	s3,a2
    8000264c:	00050a13          	mv	s4,a0
    80002650:	00058493          	mv	s1,a1
    80002654:	00000913          	li	s2,0
    80002658:	fff00a93          	li	s5,-1
    8000265c:	01c0006f          	j	80002678 <consolewrite+0x58>
    80002660:	fbf44503          	lbu	a0,-65(s0)
    80002664:	0019091b          	addiw	s2,s2,1
    80002668:	00148493          	addi	s1,s1,1
    8000266c:	00001097          	auipc	ra,0x1
    80002670:	a9c080e7          	jalr	-1380(ra) # 80003108 <uartputc>
    80002674:	03298063          	beq	s3,s2,80002694 <consolewrite+0x74>
    80002678:	00048613          	mv	a2,s1
    8000267c:	00100693          	li	a3,1
    80002680:	000a0593          	mv	a1,s4
    80002684:	fbf40513          	addi	a0,s0,-65
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	9e0080e7          	jalr	-1568(ra) # 80002068 <either_copyin>
    80002690:	fd5518e3          	bne	a0,s5,80002660 <consolewrite+0x40>
    80002694:	04813083          	ld	ra,72(sp)
    80002698:	04013403          	ld	s0,64(sp)
    8000269c:	03813483          	ld	s1,56(sp)
    800026a0:	02813983          	ld	s3,40(sp)
    800026a4:	02013a03          	ld	s4,32(sp)
    800026a8:	01813a83          	ld	s5,24(sp)
    800026ac:	00090513          	mv	a0,s2
    800026b0:	03013903          	ld	s2,48(sp)
    800026b4:	05010113          	addi	sp,sp,80
    800026b8:	00008067          	ret
    800026bc:	00000913          	li	s2,0
    800026c0:	fd5ff06f          	j	80002694 <consolewrite+0x74>

00000000800026c4 <consoleread>:
    800026c4:	f9010113          	addi	sp,sp,-112
    800026c8:	06813023          	sd	s0,96(sp)
    800026cc:	04913c23          	sd	s1,88(sp)
    800026d0:	05213823          	sd	s2,80(sp)
    800026d4:	05313423          	sd	s3,72(sp)
    800026d8:	05413023          	sd	s4,64(sp)
    800026dc:	03513c23          	sd	s5,56(sp)
    800026e0:	03613823          	sd	s6,48(sp)
    800026e4:	03713423          	sd	s7,40(sp)
    800026e8:	03813023          	sd	s8,32(sp)
    800026ec:	06113423          	sd	ra,104(sp)
    800026f0:	01913c23          	sd	s9,24(sp)
    800026f4:	07010413          	addi	s0,sp,112
    800026f8:	00060b93          	mv	s7,a2
    800026fc:	00050913          	mv	s2,a0
    80002700:	00058c13          	mv	s8,a1
    80002704:	00060b1b          	sext.w	s6,a2
    80002708:	00004497          	auipc	s1,0x4
    8000270c:	31048493          	addi	s1,s1,784 # 80006a18 <cons>
    80002710:	00400993          	li	s3,4
    80002714:	fff00a13          	li	s4,-1
    80002718:	00a00a93          	li	s5,10
    8000271c:	05705e63          	blez	s7,80002778 <consoleread+0xb4>
    80002720:	09c4a703          	lw	a4,156(s1)
    80002724:	0984a783          	lw	a5,152(s1)
    80002728:	0007071b          	sext.w	a4,a4
    8000272c:	08e78463          	beq	a5,a4,800027b4 <consoleread+0xf0>
    80002730:	07f7f713          	andi	a4,a5,127
    80002734:	00e48733          	add	a4,s1,a4
    80002738:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000273c:	0017869b          	addiw	a3,a5,1
    80002740:	08d4ac23          	sw	a3,152(s1)
    80002744:	00070c9b          	sext.w	s9,a4
    80002748:	0b370663          	beq	a4,s3,800027f4 <consoleread+0x130>
    8000274c:	00100693          	li	a3,1
    80002750:	f9f40613          	addi	a2,s0,-97
    80002754:	000c0593          	mv	a1,s8
    80002758:	00090513          	mv	a0,s2
    8000275c:	f8e40fa3          	sb	a4,-97(s0)
    80002760:	00000097          	auipc	ra,0x0
    80002764:	8bc080e7          	jalr	-1860(ra) # 8000201c <either_copyout>
    80002768:	01450863          	beq	a0,s4,80002778 <consoleread+0xb4>
    8000276c:	001c0c13          	addi	s8,s8,1
    80002770:	fffb8b9b          	addiw	s7,s7,-1
    80002774:	fb5c94e3          	bne	s9,s5,8000271c <consoleread+0x58>
    80002778:	000b851b          	sext.w	a0,s7
    8000277c:	06813083          	ld	ra,104(sp)
    80002780:	06013403          	ld	s0,96(sp)
    80002784:	05813483          	ld	s1,88(sp)
    80002788:	05013903          	ld	s2,80(sp)
    8000278c:	04813983          	ld	s3,72(sp)
    80002790:	04013a03          	ld	s4,64(sp)
    80002794:	03813a83          	ld	s5,56(sp)
    80002798:	02813b83          	ld	s7,40(sp)
    8000279c:	02013c03          	ld	s8,32(sp)
    800027a0:	01813c83          	ld	s9,24(sp)
    800027a4:	40ab053b          	subw	a0,s6,a0
    800027a8:	03013b03          	ld	s6,48(sp)
    800027ac:	07010113          	addi	sp,sp,112
    800027b0:	00008067          	ret
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	1d8080e7          	jalr	472(ra) # 8000398c <push_on>
    800027bc:	0984a703          	lw	a4,152(s1)
    800027c0:	09c4a783          	lw	a5,156(s1)
    800027c4:	0007879b          	sext.w	a5,a5
    800027c8:	fef70ce3          	beq	a4,a5,800027c0 <consoleread+0xfc>
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	234080e7          	jalr	564(ra) # 80003a00 <pop_on>
    800027d4:	0984a783          	lw	a5,152(s1)
    800027d8:	07f7f713          	andi	a4,a5,127
    800027dc:	00e48733          	add	a4,s1,a4
    800027e0:	01874703          	lbu	a4,24(a4)
    800027e4:	0017869b          	addiw	a3,a5,1
    800027e8:	08d4ac23          	sw	a3,152(s1)
    800027ec:	00070c9b          	sext.w	s9,a4
    800027f0:	f5371ee3          	bne	a4,s3,8000274c <consoleread+0x88>
    800027f4:	000b851b          	sext.w	a0,s7
    800027f8:	f96bf2e3          	bgeu	s7,s6,8000277c <consoleread+0xb8>
    800027fc:	08f4ac23          	sw	a5,152(s1)
    80002800:	f7dff06f          	j	8000277c <consoleread+0xb8>

0000000080002804 <consputc>:
    80002804:	10000793          	li	a5,256
    80002808:	00f50663          	beq	a0,a5,80002814 <consputc+0x10>
    8000280c:	00001317          	auipc	t1,0x1
    80002810:	9f430067          	jr	-1548(t1) # 80003200 <uartputc_sync>
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    80002824:	00800513          	li	a0,8
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	9d8080e7          	jalr	-1576(ra) # 80003200 <uartputc_sync>
    80002830:	02000513          	li	a0,32
    80002834:	00001097          	auipc	ra,0x1
    80002838:	9cc080e7          	jalr	-1588(ra) # 80003200 <uartputc_sync>
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00800513          	li	a0,8
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00001317          	auipc	t1,0x1
    80002850:	9b430067          	jr	-1612(t1) # 80003200 <uartputc_sync>

0000000080002854 <consoleintr>:
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00813823          	sd	s0,16(sp)
    8000285c:	00913423          	sd	s1,8(sp)
    80002860:	01213023          	sd	s2,0(sp)
    80002864:	00113c23          	sd	ra,24(sp)
    80002868:	02010413          	addi	s0,sp,32
    8000286c:	00004917          	auipc	s2,0x4
    80002870:	1ac90913          	addi	s2,s2,428 # 80006a18 <cons>
    80002874:	00050493          	mv	s1,a0
    80002878:	00090513          	mv	a0,s2
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	e40080e7          	jalr	-448(ra) # 800036bc <acquire>
    80002884:	02048c63          	beqz	s1,800028bc <consoleintr+0x68>
    80002888:	0a092783          	lw	a5,160(s2)
    8000288c:	09892703          	lw	a4,152(s2)
    80002890:	07f00693          	li	a3,127
    80002894:	40e7873b          	subw	a4,a5,a4
    80002898:	02e6e263          	bltu	a3,a4,800028bc <consoleintr+0x68>
    8000289c:	00d00713          	li	a4,13
    800028a0:	04e48063          	beq	s1,a4,800028e0 <consoleintr+0x8c>
    800028a4:	07f7f713          	andi	a4,a5,127
    800028a8:	00e90733          	add	a4,s2,a4
    800028ac:	0017879b          	addiw	a5,a5,1
    800028b0:	0af92023          	sw	a5,160(s2)
    800028b4:	00970c23          	sb	s1,24(a4)
    800028b8:	08f92e23          	sw	a5,156(s2)
    800028bc:	01013403          	ld	s0,16(sp)
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	00013903          	ld	s2,0(sp)
    800028cc:	00004517          	auipc	a0,0x4
    800028d0:	14c50513          	addi	a0,a0,332 # 80006a18 <cons>
    800028d4:	02010113          	addi	sp,sp,32
    800028d8:	00001317          	auipc	t1,0x1
    800028dc:	eb030067          	jr	-336(t1) # 80003788 <release>
    800028e0:	00a00493          	li	s1,10
    800028e4:	fc1ff06f          	j	800028a4 <consoleintr+0x50>

00000000800028e8 <consoleinit>:
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	02010413          	addi	s0,sp,32
    800028fc:	00004497          	auipc	s1,0x4
    80002900:	11c48493          	addi	s1,s1,284 # 80006a18 <cons>
    80002904:	00048513          	mv	a0,s1
    80002908:	00003597          	auipc	a1,0x3
    8000290c:	89058593          	addi	a1,a1,-1904 # 80005198 <_ZZ12printIntegermE6digits+0x138>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	d88080e7          	jalr	-632(ra) # 80003698 <initlock>
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	7ac080e7          	jalr	1964(ra) # 800030c4 <uartinit>
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00000797          	auipc	a5,0x0
    8000292c:	d9c78793          	addi	a5,a5,-612 # 800026c4 <consoleread>
    80002930:	0af4bc23          	sd	a5,184(s1)
    80002934:	00000797          	auipc	a5,0x0
    80002938:	cec78793          	addi	a5,a5,-788 # 80002620 <consolewrite>
    8000293c:	0cf4b023          	sd	a5,192(s1)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <console_read>:
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	00004317          	auipc	t1,0x4
    80002960:	17433303          	ld	t1,372(t1) # 80006ad0 <devsw+0x10>
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00030067          	jr	t1

000000008000296c <console_write>:
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	00004317          	auipc	t1,0x4
    80002980:	15c33303          	ld	t1,348(t1) # 80006ad8 <devsw+0x18>
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00030067          	jr	t1

000000008000298c <panic>:
    8000298c:	fe010113          	addi	sp,sp,-32
    80002990:	00113c23          	sd	ra,24(sp)
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00913423          	sd	s1,8(sp)
    8000299c:	02010413          	addi	s0,sp,32
    800029a0:	00050493          	mv	s1,a0
    800029a4:	00002517          	auipc	a0,0x2
    800029a8:	7fc50513          	addi	a0,a0,2044 # 800051a0 <_ZZ12printIntegermE6digits+0x140>
    800029ac:	00004797          	auipc	a5,0x4
    800029b0:	1c07a623          	sw	zero,460(a5) # 80006b78 <pr+0x18>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	034080e7          	jalr	52(ra) # 800029e8 <__printf>
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	028080e7          	jalr	40(ra) # 800029e8 <__printf>
    800029c8:	00002517          	auipc	a0,0x2
    800029cc:	66050513          	addi	a0,a0,1632 # 80005028 <kvmincrease+0xed8>
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	018080e7          	jalr	24(ra) # 800029e8 <__printf>
    800029d8:	00100793          	li	a5,1
    800029dc:	00003717          	auipc	a4,0x3
    800029e0:	f0f72623          	sw	a5,-244(a4) # 800058e8 <panicked>
    800029e4:	0000006f          	j	800029e4 <panic+0x58>

00000000800029e8 <__printf>:
    800029e8:	f3010113          	addi	sp,sp,-208
    800029ec:	08813023          	sd	s0,128(sp)
    800029f0:	07313423          	sd	s3,104(sp)
    800029f4:	09010413          	addi	s0,sp,144
    800029f8:	05813023          	sd	s8,64(sp)
    800029fc:	08113423          	sd	ra,136(sp)
    80002a00:	06913c23          	sd	s1,120(sp)
    80002a04:	07213823          	sd	s2,112(sp)
    80002a08:	07413023          	sd	s4,96(sp)
    80002a0c:	05513c23          	sd	s5,88(sp)
    80002a10:	05613823          	sd	s6,80(sp)
    80002a14:	05713423          	sd	s7,72(sp)
    80002a18:	03913c23          	sd	s9,56(sp)
    80002a1c:	03a13823          	sd	s10,48(sp)
    80002a20:	03b13423          	sd	s11,40(sp)
    80002a24:	00004317          	auipc	t1,0x4
    80002a28:	13c30313          	addi	t1,t1,316 # 80006b60 <pr>
    80002a2c:	01832c03          	lw	s8,24(t1)
    80002a30:	00b43423          	sd	a1,8(s0)
    80002a34:	00c43823          	sd	a2,16(s0)
    80002a38:	00d43c23          	sd	a3,24(s0)
    80002a3c:	02e43023          	sd	a4,32(s0)
    80002a40:	02f43423          	sd	a5,40(s0)
    80002a44:	03043823          	sd	a6,48(s0)
    80002a48:	03143c23          	sd	a7,56(s0)
    80002a4c:	00050993          	mv	s3,a0
    80002a50:	4a0c1663          	bnez	s8,80002efc <__printf+0x514>
    80002a54:	60098c63          	beqz	s3,8000306c <__printf+0x684>
    80002a58:	0009c503          	lbu	a0,0(s3)
    80002a5c:	00840793          	addi	a5,s0,8
    80002a60:	f6f43c23          	sd	a5,-136(s0)
    80002a64:	00000493          	li	s1,0
    80002a68:	22050063          	beqz	a0,80002c88 <__printf+0x2a0>
    80002a6c:	00002a37          	lui	s4,0x2
    80002a70:	00018ab7          	lui	s5,0x18
    80002a74:	000f4b37          	lui	s6,0xf4
    80002a78:	00989bb7          	lui	s7,0x989
    80002a7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a8c:	00148c9b          	addiw	s9,s1,1
    80002a90:	02500793          	li	a5,37
    80002a94:	01998933          	add	s2,s3,s9
    80002a98:	38f51263          	bne	a0,a5,80002e1c <__printf+0x434>
    80002a9c:	00094783          	lbu	a5,0(s2)
    80002aa0:	00078c9b          	sext.w	s9,a5
    80002aa4:	1e078263          	beqz	a5,80002c88 <__printf+0x2a0>
    80002aa8:	0024849b          	addiw	s1,s1,2
    80002aac:	07000713          	li	a4,112
    80002ab0:	00998933          	add	s2,s3,s1
    80002ab4:	38e78a63          	beq	a5,a4,80002e48 <__printf+0x460>
    80002ab8:	20f76863          	bltu	a4,a5,80002cc8 <__printf+0x2e0>
    80002abc:	42a78863          	beq	a5,a0,80002eec <__printf+0x504>
    80002ac0:	06400713          	li	a4,100
    80002ac4:	40e79663          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002ac8:	f7843783          	ld	a5,-136(s0)
    80002acc:	0007a603          	lw	a2,0(a5)
    80002ad0:	00878793          	addi	a5,a5,8
    80002ad4:	f6f43c23          	sd	a5,-136(s0)
    80002ad8:	42064a63          	bltz	a2,80002f0c <__printf+0x524>
    80002adc:	00a00713          	li	a4,10
    80002ae0:	02e677bb          	remuw	a5,a2,a4
    80002ae4:	00002d97          	auipc	s11,0x2
    80002ae8:	6e4d8d93          	addi	s11,s11,1764 # 800051c8 <digits>
    80002aec:	00900593          	li	a1,9
    80002af0:	0006051b          	sext.w	a0,a2
    80002af4:	00000c93          	li	s9,0
    80002af8:	02079793          	slli	a5,a5,0x20
    80002afc:	0207d793          	srli	a5,a5,0x20
    80002b00:	00fd87b3          	add	a5,s11,a5
    80002b04:	0007c783          	lbu	a5,0(a5)
    80002b08:	02e656bb          	divuw	a3,a2,a4
    80002b0c:	f8f40023          	sb	a5,-128(s0)
    80002b10:	14c5d863          	bge	a1,a2,80002c60 <__printf+0x278>
    80002b14:	06300593          	li	a1,99
    80002b18:	00100c93          	li	s9,1
    80002b1c:	02e6f7bb          	remuw	a5,a3,a4
    80002b20:	02079793          	slli	a5,a5,0x20
    80002b24:	0207d793          	srli	a5,a5,0x20
    80002b28:	00fd87b3          	add	a5,s11,a5
    80002b2c:	0007c783          	lbu	a5,0(a5)
    80002b30:	02e6d73b          	divuw	a4,a3,a4
    80002b34:	f8f400a3          	sb	a5,-127(s0)
    80002b38:	12a5f463          	bgeu	a1,a0,80002c60 <__printf+0x278>
    80002b3c:	00a00693          	li	a3,10
    80002b40:	00900593          	li	a1,9
    80002b44:	02d777bb          	remuw	a5,a4,a3
    80002b48:	02079793          	slli	a5,a5,0x20
    80002b4c:	0207d793          	srli	a5,a5,0x20
    80002b50:	00fd87b3          	add	a5,s11,a5
    80002b54:	0007c503          	lbu	a0,0(a5)
    80002b58:	02d757bb          	divuw	a5,a4,a3
    80002b5c:	f8a40123          	sb	a0,-126(s0)
    80002b60:	48e5f263          	bgeu	a1,a4,80002fe4 <__printf+0x5fc>
    80002b64:	06300513          	li	a0,99
    80002b68:	02d7f5bb          	remuw	a1,a5,a3
    80002b6c:	02059593          	slli	a1,a1,0x20
    80002b70:	0205d593          	srli	a1,a1,0x20
    80002b74:	00bd85b3          	add	a1,s11,a1
    80002b78:	0005c583          	lbu	a1,0(a1)
    80002b7c:	02d7d7bb          	divuw	a5,a5,a3
    80002b80:	f8b401a3          	sb	a1,-125(s0)
    80002b84:	48e57263          	bgeu	a0,a4,80003008 <__printf+0x620>
    80002b88:	3e700513          	li	a0,999
    80002b8c:	02d7f5bb          	remuw	a1,a5,a3
    80002b90:	02059593          	slli	a1,a1,0x20
    80002b94:	0205d593          	srli	a1,a1,0x20
    80002b98:	00bd85b3          	add	a1,s11,a1
    80002b9c:	0005c583          	lbu	a1,0(a1)
    80002ba0:	02d7d7bb          	divuw	a5,a5,a3
    80002ba4:	f8b40223          	sb	a1,-124(s0)
    80002ba8:	46e57663          	bgeu	a0,a4,80003014 <__printf+0x62c>
    80002bac:	02d7f5bb          	remuw	a1,a5,a3
    80002bb0:	02059593          	slli	a1,a1,0x20
    80002bb4:	0205d593          	srli	a1,a1,0x20
    80002bb8:	00bd85b3          	add	a1,s11,a1
    80002bbc:	0005c583          	lbu	a1,0(a1)
    80002bc0:	02d7d7bb          	divuw	a5,a5,a3
    80002bc4:	f8b402a3          	sb	a1,-123(s0)
    80002bc8:	46ea7863          	bgeu	s4,a4,80003038 <__printf+0x650>
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40323          	sb	a1,-122(s0)
    80002be8:	3eeaf863          	bgeu	s5,a4,80002fd8 <__printf+0x5f0>
    80002bec:	02d7f5bb          	remuw	a1,a5,a3
    80002bf0:	02059593          	slli	a1,a1,0x20
    80002bf4:	0205d593          	srli	a1,a1,0x20
    80002bf8:	00bd85b3          	add	a1,s11,a1
    80002bfc:	0005c583          	lbu	a1,0(a1)
    80002c00:	02d7d7bb          	divuw	a5,a5,a3
    80002c04:	f8b403a3          	sb	a1,-121(s0)
    80002c08:	42eb7e63          	bgeu	s6,a4,80003044 <__printf+0x65c>
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b40423          	sb	a1,-120(s0)
    80002c28:	42ebfc63          	bgeu	s7,a4,80003060 <__printf+0x678>
    80002c2c:	02079793          	slli	a5,a5,0x20
    80002c30:	0207d793          	srli	a5,a5,0x20
    80002c34:	00fd8db3          	add	s11,s11,a5
    80002c38:	000dc703          	lbu	a4,0(s11)
    80002c3c:	00a00793          	li	a5,10
    80002c40:	00900c93          	li	s9,9
    80002c44:	f8e404a3          	sb	a4,-119(s0)
    80002c48:	00065c63          	bgez	a2,80002c60 <__printf+0x278>
    80002c4c:	f9040713          	addi	a4,s0,-112
    80002c50:	00f70733          	add	a4,a4,a5
    80002c54:	02d00693          	li	a3,45
    80002c58:	fed70823          	sb	a3,-16(a4)
    80002c5c:	00078c93          	mv	s9,a5
    80002c60:	f8040793          	addi	a5,s0,-128
    80002c64:	01978cb3          	add	s9,a5,s9
    80002c68:	f7f40d13          	addi	s10,s0,-129
    80002c6c:	000cc503          	lbu	a0,0(s9)
    80002c70:	fffc8c93          	addi	s9,s9,-1
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	b90080e7          	jalr	-1136(ra) # 80002804 <consputc>
    80002c7c:	ffac98e3          	bne	s9,s10,80002c6c <__printf+0x284>
    80002c80:	00094503          	lbu	a0,0(s2)
    80002c84:	e00514e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002c88:	1a0c1663          	bnez	s8,80002e34 <__printf+0x44c>
    80002c8c:	08813083          	ld	ra,136(sp)
    80002c90:	08013403          	ld	s0,128(sp)
    80002c94:	07813483          	ld	s1,120(sp)
    80002c98:	07013903          	ld	s2,112(sp)
    80002c9c:	06813983          	ld	s3,104(sp)
    80002ca0:	06013a03          	ld	s4,96(sp)
    80002ca4:	05813a83          	ld	s5,88(sp)
    80002ca8:	05013b03          	ld	s6,80(sp)
    80002cac:	04813b83          	ld	s7,72(sp)
    80002cb0:	04013c03          	ld	s8,64(sp)
    80002cb4:	03813c83          	ld	s9,56(sp)
    80002cb8:	03013d03          	ld	s10,48(sp)
    80002cbc:	02813d83          	ld	s11,40(sp)
    80002cc0:	0d010113          	addi	sp,sp,208
    80002cc4:	00008067          	ret
    80002cc8:	07300713          	li	a4,115
    80002ccc:	1ce78a63          	beq	a5,a4,80002ea0 <__printf+0x4b8>
    80002cd0:	07800713          	li	a4,120
    80002cd4:	1ee79e63          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002cd8:	f7843783          	ld	a5,-136(s0)
    80002cdc:	0007a703          	lw	a4,0(a5)
    80002ce0:	00878793          	addi	a5,a5,8
    80002ce4:	f6f43c23          	sd	a5,-136(s0)
    80002ce8:	28074263          	bltz	a4,80002f6c <__printf+0x584>
    80002cec:	00002d97          	auipc	s11,0x2
    80002cf0:	4dcd8d93          	addi	s11,s11,1244 # 800051c8 <digits>
    80002cf4:	00f77793          	andi	a5,a4,15
    80002cf8:	00fd87b3          	add	a5,s11,a5
    80002cfc:	0007c683          	lbu	a3,0(a5)
    80002d00:	00f00613          	li	a2,15
    80002d04:	0007079b          	sext.w	a5,a4
    80002d08:	f8d40023          	sb	a3,-128(s0)
    80002d0c:	0047559b          	srliw	a1,a4,0x4
    80002d10:	0047569b          	srliw	a3,a4,0x4
    80002d14:	00000c93          	li	s9,0
    80002d18:	0ee65063          	bge	a2,a4,80002df8 <__printf+0x410>
    80002d1c:	00f6f693          	andi	a3,a3,15
    80002d20:	00dd86b3          	add	a3,s11,a3
    80002d24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d28:	0087d79b          	srliw	a5,a5,0x8
    80002d2c:	00100c93          	li	s9,1
    80002d30:	f8d400a3          	sb	a3,-127(s0)
    80002d34:	0cb67263          	bgeu	a2,a1,80002df8 <__printf+0x410>
    80002d38:	00f7f693          	andi	a3,a5,15
    80002d3c:	00dd86b3          	add	a3,s11,a3
    80002d40:	0006c583          	lbu	a1,0(a3)
    80002d44:	00f00613          	li	a2,15
    80002d48:	0047d69b          	srliw	a3,a5,0x4
    80002d4c:	f8b40123          	sb	a1,-126(s0)
    80002d50:	0047d593          	srli	a1,a5,0x4
    80002d54:	28f67e63          	bgeu	a2,a5,80002ff0 <__printf+0x608>
    80002d58:	00f6f693          	andi	a3,a3,15
    80002d5c:	00dd86b3          	add	a3,s11,a3
    80002d60:	0006c503          	lbu	a0,0(a3)
    80002d64:	0087d813          	srli	a6,a5,0x8
    80002d68:	0087d69b          	srliw	a3,a5,0x8
    80002d6c:	f8a401a3          	sb	a0,-125(s0)
    80002d70:	28b67663          	bgeu	a2,a1,80002ffc <__printf+0x614>
    80002d74:	00f6f693          	andi	a3,a3,15
    80002d78:	00dd86b3          	add	a3,s11,a3
    80002d7c:	0006c583          	lbu	a1,0(a3)
    80002d80:	00c7d513          	srli	a0,a5,0xc
    80002d84:	00c7d69b          	srliw	a3,a5,0xc
    80002d88:	f8b40223          	sb	a1,-124(s0)
    80002d8c:	29067a63          	bgeu	a2,a6,80003020 <__printf+0x638>
    80002d90:	00f6f693          	andi	a3,a3,15
    80002d94:	00dd86b3          	add	a3,s11,a3
    80002d98:	0006c583          	lbu	a1,0(a3)
    80002d9c:	0107d813          	srli	a6,a5,0x10
    80002da0:	0107d69b          	srliw	a3,a5,0x10
    80002da4:	f8b402a3          	sb	a1,-123(s0)
    80002da8:	28a67263          	bgeu	a2,a0,8000302c <__printf+0x644>
    80002dac:	00f6f693          	andi	a3,a3,15
    80002db0:	00dd86b3          	add	a3,s11,a3
    80002db4:	0006c683          	lbu	a3,0(a3)
    80002db8:	0147d79b          	srliw	a5,a5,0x14
    80002dbc:	f8d40323          	sb	a3,-122(s0)
    80002dc0:	21067663          	bgeu	a2,a6,80002fcc <__printf+0x5e4>
    80002dc4:	02079793          	slli	a5,a5,0x20
    80002dc8:	0207d793          	srli	a5,a5,0x20
    80002dcc:	00fd8db3          	add	s11,s11,a5
    80002dd0:	000dc683          	lbu	a3,0(s11)
    80002dd4:	00800793          	li	a5,8
    80002dd8:	00700c93          	li	s9,7
    80002ddc:	f8d403a3          	sb	a3,-121(s0)
    80002de0:	00075c63          	bgez	a4,80002df8 <__printf+0x410>
    80002de4:	f9040713          	addi	a4,s0,-112
    80002de8:	00f70733          	add	a4,a4,a5
    80002dec:	02d00693          	li	a3,45
    80002df0:	fed70823          	sb	a3,-16(a4)
    80002df4:	00078c93          	mv	s9,a5
    80002df8:	f8040793          	addi	a5,s0,-128
    80002dfc:	01978cb3          	add	s9,a5,s9
    80002e00:	f7f40d13          	addi	s10,s0,-129
    80002e04:	000cc503          	lbu	a0,0(s9)
    80002e08:	fffc8c93          	addi	s9,s9,-1
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9f8080e7          	jalr	-1544(ra) # 80002804 <consputc>
    80002e14:	ff9d18e3          	bne	s10,s9,80002e04 <__printf+0x41c>
    80002e18:	0100006f          	j	80002e28 <__printf+0x440>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	9e8080e7          	jalr	-1560(ra) # 80002804 <consputc>
    80002e24:	000c8493          	mv	s1,s9
    80002e28:	00094503          	lbu	a0,0(s2)
    80002e2c:	c60510e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002e30:	e40c0ee3          	beqz	s8,80002c8c <__printf+0x2a4>
    80002e34:	00004517          	auipc	a0,0x4
    80002e38:	d2c50513          	addi	a0,a0,-724 # 80006b60 <pr>
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	94c080e7          	jalr	-1716(ra) # 80003788 <release>
    80002e44:	e49ff06f          	j	80002c8c <__printf+0x2a4>
    80002e48:	f7843783          	ld	a5,-136(s0)
    80002e4c:	03000513          	li	a0,48
    80002e50:	01000d13          	li	s10,16
    80002e54:	00878713          	addi	a4,a5,8
    80002e58:	0007bc83          	ld	s9,0(a5)
    80002e5c:	f6e43c23          	sd	a4,-136(s0)
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	9a4080e7          	jalr	-1628(ra) # 80002804 <consputc>
    80002e68:	07800513          	li	a0,120
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	998080e7          	jalr	-1640(ra) # 80002804 <consputc>
    80002e74:	00002d97          	auipc	s11,0x2
    80002e78:	354d8d93          	addi	s11,s11,852 # 800051c8 <digits>
    80002e7c:	03ccd793          	srli	a5,s9,0x3c
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c503          	lbu	a0,0(a5)
    80002e88:	fffd0d1b          	addiw	s10,s10,-1
    80002e8c:	004c9c93          	slli	s9,s9,0x4
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	974080e7          	jalr	-1676(ra) # 80002804 <consputc>
    80002e98:	fe0d12e3          	bnez	s10,80002e7c <__printf+0x494>
    80002e9c:	f8dff06f          	j	80002e28 <__printf+0x440>
    80002ea0:	f7843783          	ld	a5,-136(s0)
    80002ea4:	0007bc83          	ld	s9,0(a5)
    80002ea8:	00878793          	addi	a5,a5,8
    80002eac:	f6f43c23          	sd	a5,-136(s0)
    80002eb0:	000c9a63          	bnez	s9,80002ec4 <__printf+0x4dc>
    80002eb4:	1080006f          	j	80002fbc <__printf+0x5d4>
    80002eb8:	001c8c93          	addi	s9,s9,1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	948080e7          	jalr	-1720(ra) # 80002804 <consputc>
    80002ec4:	000cc503          	lbu	a0,0(s9)
    80002ec8:	fe0518e3          	bnez	a0,80002eb8 <__printf+0x4d0>
    80002ecc:	f5dff06f          	j	80002e28 <__printf+0x440>
    80002ed0:	02500513          	li	a0,37
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	930080e7          	jalr	-1744(ra) # 80002804 <consputc>
    80002edc:	000c8513          	mv	a0,s9
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	924080e7          	jalr	-1756(ra) # 80002804 <consputc>
    80002ee8:	f41ff06f          	j	80002e28 <__printf+0x440>
    80002eec:	02500513          	li	a0,37
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	914080e7          	jalr	-1772(ra) # 80002804 <consputc>
    80002ef8:	f31ff06f          	j	80002e28 <__printf+0x440>
    80002efc:	00030513          	mv	a0,t1
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	7bc080e7          	jalr	1980(ra) # 800036bc <acquire>
    80002f08:	b4dff06f          	j	80002a54 <__printf+0x6c>
    80002f0c:	40c0053b          	negw	a0,a2
    80002f10:	00a00713          	li	a4,10
    80002f14:	02e576bb          	remuw	a3,a0,a4
    80002f18:	00002d97          	auipc	s11,0x2
    80002f1c:	2b0d8d93          	addi	s11,s11,688 # 800051c8 <digits>
    80002f20:	ff700593          	li	a1,-9
    80002f24:	02069693          	slli	a3,a3,0x20
    80002f28:	0206d693          	srli	a3,a3,0x20
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c683          	lbu	a3,0(a3)
    80002f34:	02e557bb          	divuw	a5,a0,a4
    80002f38:	f8d40023          	sb	a3,-128(s0)
    80002f3c:	10b65e63          	bge	a2,a1,80003058 <__printf+0x670>
    80002f40:	06300593          	li	a1,99
    80002f44:	02e7f6bb          	remuw	a3,a5,a4
    80002f48:	02069693          	slli	a3,a3,0x20
    80002f4c:	0206d693          	srli	a3,a3,0x20
    80002f50:	00dd86b3          	add	a3,s11,a3
    80002f54:	0006c683          	lbu	a3,0(a3)
    80002f58:	02e7d73b          	divuw	a4,a5,a4
    80002f5c:	00200793          	li	a5,2
    80002f60:	f8d400a3          	sb	a3,-127(s0)
    80002f64:	bca5ece3          	bltu	a1,a0,80002b3c <__printf+0x154>
    80002f68:	ce5ff06f          	j	80002c4c <__printf+0x264>
    80002f6c:	40e007bb          	negw	a5,a4
    80002f70:	00002d97          	auipc	s11,0x2
    80002f74:	258d8d93          	addi	s11,s11,600 # 800051c8 <digits>
    80002f78:	00f7f693          	andi	a3,a5,15
    80002f7c:	00dd86b3          	add	a3,s11,a3
    80002f80:	0006c583          	lbu	a1,0(a3)
    80002f84:	ff100613          	li	a2,-15
    80002f88:	0047d69b          	srliw	a3,a5,0x4
    80002f8c:	f8b40023          	sb	a1,-128(s0)
    80002f90:	0047d59b          	srliw	a1,a5,0x4
    80002f94:	0ac75e63          	bge	a4,a2,80003050 <__printf+0x668>
    80002f98:	00f6f693          	andi	a3,a3,15
    80002f9c:	00dd86b3          	add	a3,s11,a3
    80002fa0:	0006c603          	lbu	a2,0(a3)
    80002fa4:	00f00693          	li	a3,15
    80002fa8:	0087d79b          	srliw	a5,a5,0x8
    80002fac:	f8c400a3          	sb	a2,-127(s0)
    80002fb0:	d8b6e4e3          	bltu	a3,a1,80002d38 <__printf+0x350>
    80002fb4:	00200793          	li	a5,2
    80002fb8:	e2dff06f          	j	80002de4 <__printf+0x3fc>
    80002fbc:	00002c97          	auipc	s9,0x2
    80002fc0:	1ecc8c93          	addi	s9,s9,492 # 800051a8 <_ZZ12printIntegermE6digits+0x148>
    80002fc4:	02800513          	li	a0,40
    80002fc8:	ef1ff06f          	j	80002eb8 <__printf+0x4d0>
    80002fcc:	00700793          	li	a5,7
    80002fd0:	00600c93          	li	s9,6
    80002fd4:	e0dff06f          	j	80002de0 <__printf+0x3f8>
    80002fd8:	00700793          	li	a5,7
    80002fdc:	00600c93          	li	s9,6
    80002fe0:	c69ff06f          	j	80002c48 <__printf+0x260>
    80002fe4:	00300793          	li	a5,3
    80002fe8:	00200c93          	li	s9,2
    80002fec:	c5dff06f          	j	80002c48 <__printf+0x260>
    80002ff0:	00300793          	li	a5,3
    80002ff4:	00200c93          	li	s9,2
    80002ff8:	de9ff06f          	j	80002de0 <__printf+0x3f8>
    80002ffc:	00400793          	li	a5,4
    80003000:	00300c93          	li	s9,3
    80003004:	dddff06f          	j	80002de0 <__printf+0x3f8>
    80003008:	00400793          	li	a5,4
    8000300c:	00300c93          	li	s9,3
    80003010:	c39ff06f          	j	80002c48 <__printf+0x260>
    80003014:	00500793          	li	a5,5
    80003018:	00400c93          	li	s9,4
    8000301c:	c2dff06f          	j	80002c48 <__printf+0x260>
    80003020:	00500793          	li	a5,5
    80003024:	00400c93          	li	s9,4
    80003028:	db9ff06f          	j	80002de0 <__printf+0x3f8>
    8000302c:	00600793          	li	a5,6
    80003030:	00500c93          	li	s9,5
    80003034:	dadff06f          	j	80002de0 <__printf+0x3f8>
    80003038:	00600793          	li	a5,6
    8000303c:	00500c93          	li	s9,5
    80003040:	c09ff06f          	j	80002c48 <__printf+0x260>
    80003044:	00800793          	li	a5,8
    80003048:	00700c93          	li	s9,7
    8000304c:	bfdff06f          	j	80002c48 <__printf+0x260>
    80003050:	00100793          	li	a5,1
    80003054:	d91ff06f          	j	80002de4 <__printf+0x3fc>
    80003058:	00100793          	li	a5,1
    8000305c:	bf1ff06f          	j	80002c4c <__printf+0x264>
    80003060:	00900793          	li	a5,9
    80003064:	00800c93          	li	s9,8
    80003068:	be1ff06f          	j	80002c48 <__printf+0x260>
    8000306c:	00002517          	auipc	a0,0x2
    80003070:	14450513          	addi	a0,a0,324 # 800051b0 <_ZZ12printIntegermE6digits+0x150>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	918080e7          	jalr	-1768(ra) # 8000298c <panic>

000000008000307c <printfinit>:
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00004497          	auipc	s1,0x4
    80003094:	ad048493          	addi	s1,s1,-1328 # 80006b60 <pr>
    80003098:	00048513          	mv	a0,s1
    8000309c:	00002597          	auipc	a1,0x2
    800030a0:	12458593          	addi	a1,a1,292 # 800051c0 <_ZZ12printIntegermE6digits+0x160>
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	5f4080e7          	jalr	1524(ra) # 80003698 <initlock>
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	0004ac23          	sw	zero,24(s1)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <uartinit>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813423          	sd	s0,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	100007b7          	lui	a5,0x10000
    800030d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800030d8:	f8000713          	li	a4,-128
    800030dc:	00e781a3          	sb	a4,3(a5)
    800030e0:	00300713          	li	a4,3
    800030e4:	00e78023          	sb	a4,0(a5)
    800030e8:	000780a3          	sb	zero,1(a5)
    800030ec:	00e781a3          	sb	a4,3(a5)
    800030f0:	00700693          	li	a3,7
    800030f4:	00d78123          	sb	a3,2(a5)
    800030f8:	00e780a3          	sb	a4,1(a5)
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <uartputc>:
    80003108:	00002797          	auipc	a5,0x2
    8000310c:	7e07a783          	lw	a5,2016(a5) # 800058e8 <panicked>
    80003110:	00078463          	beqz	a5,80003118 <uartputc+0x10>
    80003114:	0000006f          	j	80003114 <uartputc+0xc>
    80003118:	fd010113          	addi	sp,sp,-48
    8000311c:	02813023          	sd	s0,32(sp)
    80003120:	00913c23          	sd	s1,24(sp)
    80003124:	01213823          	sd	s2,16(sp)
    80003128:	01313423          	sd	s3,8(sp)
    8000312c:	02113423          	sd	ra,40(sp)
    80003130:	03010413          	addi	s0,sp,48
    80003134:	00002917          	auipc	s2,0x2
    80003138:	7bc90913          	addi	s2,s2,1980 # 800058f0 <uart_tx_r>
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	00002497          	auipc	s1,0x2
    80003144:	7b848493          	addi	s1,s1,1976 # 800058f8 <uart_tx_w>
    80003148:	0004b703          	ld	a4,0(s1)
    8000314c:	02078693          	addi	a3,a5,32
    80003150:	00050993          	mv	s3,a0
    80003154:	02e69c63          	bne	a3,a4,8000318c <uartputc+0x84>
    80003158:	00001097          	auipc	ra,0x1
    8000315c:	834080e7          	jalr	-1996(ra) # 8000398c <push_on>
    80003160:	00093783          	ld	a5,0(s2)
    80003164:	0004b703          	ld	a4,0(s1)
    80003168:	02078793          	addi	a5,a5,32
    8000316c:	00e79463          	bne	a5,a4,80003174 <uartputc+0x6c>
    80003170:	0000006f          	j	80003170 <uartputc+0x68>
    80003174:	00001097          	auipc	ra,0x1
    80003178:	88c080e7          	jalr	-1908(ra) # 80003a00 <pop_on>
    8000317c:	00093783          	ld	a5,0(s2)
    80003180:	0004b703          	ld	a4,0(s1)
    80003184:	02078693          	addi	a3,a5,32
    80003188:	fce688e3          	beq	a3,a4,80003158 <uartputc+0x50>
    8000318c:	01f77693          	andi	a3,a4,31
    80003190:	00004597          	auipc	a1,0x4
    80003194:	9f058593          	addi	a1,a1,-1552 # 80006b80 <uart_tx_buf>
    80003198:	00d586b3          	add	a3,a1,a3
    8000319c:	00170713          	addi	a4,a4,1
    800031a0:	01368023          	sb	s3,0(a3)
    800031a4:	00e4b023          	sd	a4,0(s1)
    800031a8:	10000637          	lui	a2,0x10000
    800031ac:	02f71063          	bne	a4,a5,800031cc <uartputc+0xc4>
    800031b0:	0340006f          	j	800031e4 <uartputc+0xdc>
    800031b4:	00074703          	lbu	a4,0(a4)
    800031b8:	00f93023          	sd	a5,0(s2)
    800031bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031c0:	00093783          	ld	a5,0(s2)
    800031c4:	0004b703          	ld	a4,0(s1)
    800031c8:	00f70e63          	beq	a4,a5,800031e4 <uartputc+0xdc>
    800031cc:	00564683          	lbu	a3,5(a2)
    800031d0:	01f7f713          	andi	a4,a5,31
    800031d4:	00e58733          	add	a4,a1,a4
    800031d8:	0206f693          	andi	a3,a3,32
    800031dc:	00178793          	addi	a5,a5,1
    800031e0:	fc069ae3          	bnez	a3,800031b4 <uartputc+0xac>
    800031e4:	02813083          	ld	ra,40(sp)
    800031e8:	02013403          	ld	s0,32(sp)
    800031ec:	01813483          	ld	s1,24(sp)
    800031f0:	01013903          	ld	s2,16(sp)
    800031f4:	00813983          	ld	s3,8(sp)
    800031f8:	03010113          	addi	sp,sp,48
    800031fc:	00008067          	ret

0000000080003200 <uartputc_sync>:
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00813423          	sd	s0,8(sp)
    80003208:	01010413          	addi	s0,sp,16
    8000320c:	00002717          	auipc	a4,0x2
    80003210:	6dc72703          	lw	a4,1756(a4) # 800058e8 <panicked>
    80003214:	02071663          	bnez	a4,80003240 <uartputc_sync+0x40>
    80003218:	00050793          	mv	a5,a0
    8000321c:	100006b7          	lui	a3,0x10000
    80003220:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003224:	02077713          	andi	a4,a4,32
    80003228:	fe070ce3          	beqz	a4,80003220 <uartputc_sync+0x20>
    8000322c:	0ff7f793          	andi	a5,a5,255
    80003230:	00f68023          	sb	a5,0(a3)
    80003234:	00813403          	ld	s0,8(sp)
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00008067          	ret
    80003240:	0000006f          	j	80003240 <uartputc_sync+0x40>

0000000080003244 <uartstart>:
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00813423          	sd	s0,8(sp)
    8000324c:	01010413          	addi	s0,sp,16
    80003250:	00002617          	auipc	a2,0x2
    80003254:	6a060613          	addi	a2,a2,1696 # 800058f0 <uart_tx_r>
    80003258:	00002517          	auipc	a0,0x2
    8000325c:	6a050513          	addi	a0,a0,1696 # 800058f8 <uart_tx_w>
    80003260:	00063783          	ld	a5,0(a2)
    80003264:	00053703          	ld	a4,0(a0)
    80003268:	04f70263          	beq	a4,a5,800032ac <uartstart+0x68>
    8000326c:	100005b7          	lui	a1,0x10000
    80003270:	00004817          	auipc	a6,0x4
    80003274:	91080813          	addi	a6,a6,-1776 # 80006b80 <uart_tx_buf>
    80003278:	01c0006f          	j	80003294 <uartstart+0x50>
    8000327c:	0006c703          	lbu	a4,0(a3)
    80003280:	00f63023          	sd	a5,0(a2)
    80003284:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003288:	00063783          	ld	a5,0(a2)
    8000328c:	00053703          	ld	a4,0(a0)
    80003290:	00f70e63          	beq	a4,a5,800032ac <uartstart+0x68>
    80003294:	01f7f713          	andi	a4,a5,31
    80003298:	00e806b3          	add	a3,a6,a4
    8000329c:	0055c703          	lbu	a4,5(a1)
    800032a0:	00178793          	addi	a5,a5,1
    800032a4:	02077713          	andi	a4,a4,32
    800032a8:	fc071ae3          	bnez	a4,8000327c <uartstart+0x38>
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <uartgetc>:
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	10000737          	lui	a4,0x10000
    800032c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032cc:	0017f793          	andi	a5,a5,1
    800032d0:	00078c63          	beqz	a5,800032e8 <uartgetc+0x30>
    800032d4:	00074503          	lbu	a0,0(a4)
    800032d8:	0ff57513          	andi	a0,a0,255
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	fff00513          	li	a0,-1
    800032ec:	ff1ff06f          	j	800032dc <uartgetc+0x24>

00000000800032f0 <uartintr>:
    800032f0:	100007b7          	lui	a5,0x10000
    800032f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032f8:	0017f793          	andi	a5,a5,1
    800032fc:	0a078463          	beqz	a5,800033a4 <uartintr+0xb4>
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	02010413          	addi	s0,sp,32
    80003314:	100004b7          	lui	s1,0x10000
    80003318:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000331c:	0ff57513          	andi	a0,a0,255
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	534080e7          	jalr	1332(ra) # 80002854 <consoleintr>
    80003328:	0054c783          	lbu	a5,5(s1)
    8000332c:	0017f793          	andi	a5,a5,1
    80003330:	fe0794e3          	bnez	a5,80003318 <uartintr+0x28>
    80003334:	00002617          	auipc	a2,0x2
    80003338:	5bc60613          	addi	a2,a2,1468 # 800058f0 <uart_tx_r>
    8000333c:	00002517          	auipc	a0,0x2
    80003340:	5bc50513          	addi	a0,a0,1468 # 800058f8 <uart_tx_w>
    80003344:	00063783          	ld	a5,0(a2)
    80003348:	00053703          	ld	a4,0(a0)
    8000334c:	04f70263          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003350:	100005b7          	lui	a1,0x10000
    80003354:	00004817          	auipc	a6,0x4
    80003358:	82c80813          	addi	a6,a6,-2004 # 80006b80 <uart_tx_buf>
    8000335c:	01c0006f          	j	80003378 <uartintr+0x88>
    80003360:	0006c703          	lbu	a4,0(a3)
    80003364:	00f63023          	sd	a5,0(a2)
    80003368:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000336c:	00063783          	ld	a5,0(a2)
    80003370:	00053703          	ld	a4,0(a0)
    80003374:	00f70e63          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003378:	01f7f713          	andi	a4,a5,31
    8000337c:	00e806b3          	add	a3,a6,a4
    80003380:	0055c703          	lbu	a4,5(a1)
    80003384:	00178793          	addi	a5,a5,1
    80003388:	02077713          	andi	a4,a4,32
    8000338c:	fc071ae3          	bnez	a4,80003360 <uartintr+0x70>
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	02010113          	addi	sp,sp,32
    800033a0:	00008067          	ret
    800033a4:	00002617          	auipc	a2,0x2
    800033a8:	54c60613          	addi	a2,a2,1356 # 800058f0 <uart_tx_r>
    800033ac:	00002517          	auipc	a0,0x2
    800033b0:	54c50513          	addi	a0,a0,1356 # 800058f8 <uart_tx_w>
    800033b4:	00063783          	ld	a5,0(a2)
    800033b8:	00053703          	ld	a4,0(a0)
    800033bc:	04f70263          	beq	a4,a5,80003400 <uartintr+0x110>
    800033c0:	100005b7          	lui	a1,0x10000
    800033c4:	00003817          	auipc	a6,0x3
    800033c8:	7bc80813          	addi	a6,a6,1980 # 80006b80 <uart_tx_buf>
    800033cc:	01c0006f          	j	800033e8 <uartintr+0xf8>
    800033d0:	0006c703          	lbu	a4,0(a3)
    800033d4:	00f63023          	sd	a5,0(a2)
    800033d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033dc:	00063783          	ld	a5,0(a2)
    800033e0:	00053703          	ld	a4,0(a0)
    800033e4:	02f70063          	beq	a4,a5,80003404 <uartintr+0x114>
    800033e8:	01f7f713          	andi	a4,a5,31
    800033ec:	00e806b3          	add	a3,a6,a4
    800033f0:	0055c703          	lbu	a4,5(a1)
    800033f4:	00178793          	addi	a5,a5,1
    800033f8:	02077713          	andi	a4,a4,32
    800033fc:	fc071ae3          	bnez	a4,800033d0 <uartintr+0xe0>
    80003400:	00008067          	ret
    80003404:	00008067          	ret

0000000080003408 <kinit>:
    80003408:	fc010113          	addi	sp,sp,-64
    8000340c:	02913423          	sd	s1,40(sp)
    80003410:	fffff7b7          	lui	a5,0xfffff
    80003414:	00004497          	auipc	s1,0x4
    80003418:	79b48493          	addi	s1,s1,1947 # 80007baf <end+0xfff>
    8000341c:	02813823          	sd	s0,48(sp)
    80003420:	01313c23          	sd	s3,24(sp)
    80003424:	00f4f4b3          	and	s1,s1,a5
    80003428:	02113c23          	sd	ra,56(sp)
    8000342c:	03213023          	sd	s2,32(sp)
    80003430:	01413823          	sd	s4,16(sp)
    80003434:	01513423          	sd	s5,8(sp)
    80003438:	04010413          	addi	s0,sp,64
    8000343c:	000017b7          	lui	a5,0x1
    80003440:	01100993          	li	s3,17
    80003444:	00f487b3          	add	a5,s1,a5
    80003448:	01b99993          	slli	s3,s3,0x1b
    8000344c:	06f9e063          	bltu	s3,a5,800034ac <kinit+0xa4>
    80003450:	00003a97          	auipc	s5,0x3
    80003454:	760a8a93          	addi	s5,s5,1888 # 80006bb0 <end>
    80003458:	0754ec63          	bltu	s1,s5,800034d0 <kinit+0xc8>
    8000345c:	0734fa63          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003460:	00088a37          	lui	s4,0x88
    80003464:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003468:	00002917          	auipc	s2,0x2
    8000346c:	49890913          	addi	s2,s2,1176 # 80005900 <kmem>
    80003470:	00ca1a13          	slli	s4,s4,0xc
    80003474:	0140006f          	j	80003488 <kinit+0x80>
    80003478:	000017b7          	lui	a5,0x1
    8000347c:	00f484b3          	add	s1,s1,a5
    80003480:	0554e863          	bltu	s1,s5,800034d0 <kinit+0xc8>
    80003484:	0534f663          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003488:	00001637          	lui	a2,0x1
    8000348c:	00100593          	li	a1,1
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	5e4080e7          	jalr	1508(ra) # 80003a78 <__memset>
    8000349c:	00093783          	ld	a5,0(s2)
    800034a0:	00f4b023          	sd	a5,0(s1)
    800034a4:	00993023          	sd	s1,0(s2)
    800034a8:	fd4498e3          	bne	s1,s4,80003478 <kinit+0x70>
    800034ac:	03813083          	ld	ra,56(sp)
    800034b0:	03013403          	ld	s0,48(sp)
    800034b4:	02813483          	ld	s1,40(sp)
    800034b8:	02013903          	ld	s2,32(sp)
    800034bc:	01813983          	ld	s3,24(sp)
    800034c0:	01013a03          	ld	s4,16(sp)
    800034c4:	00813a83          	ld	s5,8(sp)
    800034c8:	04010113          	addi	sp,sp,64
    800034cc:	00008067          	ret
    800034d0:	00002517          	auipc	a0,0x2
    800034d4:	d1050513          	addi	a0,a0,-752 # 800051e0 <digits+0x18>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	4b4080e7          	jalr	1204(ra) # 8000298c <panic>

00000000800034e0 <freerange>:
    800034e0:	fc010113          	addi	sp,sp,-64
    800034e4:	000017b7          	lui	a5,0x1
    800034e8:	02913423          	sd	s1,40(sp)
    800034ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034f0:	009504b3          	add	s1,a0,s1
    800034f4:	fffff537          	lui	a0,0xfffff
    800034f8:	02813823          	sd	s0,48(sp)
    800034fc:	02113c23          	sd	ra,56(sp)
    80003500:	03213023          	sd	s2,32(sp)
    80003504:	01313c23          	sd	s3,24(sp)
    80003508:	01413823          	sd	s4,16(sp)
    8000350c:	01513423          	sd	s5,8(sp)
    80003510:	01613023          	sd	s6,0(sp)
    80003514:	04010413          	addi	s0,sp,64
    80003518:	00a4f4b3          	and	s1,s1,a0
    8000351c:	00f487b3          	add	a5,s1,a5
    80003520:	06f5e463          	bltu	a1,a5,80003588 <freerange+0xa8>
    80003524:	00003a97          	auipc	s5,0x3
    80003528:	68ca8a93          	addi	s5,s5,1676 # 80006bb0 <end>
    8000352c:	0954e263          	bltu	s1,s5,800035b0 <freerange+0xd0>
    80003530:	01100993          	li	s3,17
    80003534:	01b99993          	slli	s3,s3,0x1b
    80003538:	0734fc63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    8000353c:	00058a13          	mv	s4,a1
    80003540:	00002917          	auipc	s2,0x2
    80003544:	3c090913          	addi	s2,s2,960 # 80005900 <kmem>
    80003548:	00002b37          	lui	s6,0x2
    8000354c:	0140006f          	j	80003560 <freerange+0x80>
    80003550:	000017b7          	lui	a5,0x1
    80003554:	00f484b3          	add	s1,s1,a5
    80003558:	0554ec63          	bltu	s1,s5,800035b0 <freerange+0xd0>
    8000355c:	0534fa63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    80003560:	00001637          	lui	a2,0x1
    80003564:	00100593          	li	a1,1
    80003568:	00048513          	mv	a0,s1
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	50c080e7          	jalr	1292(ra) # 80003a78 <__memset>
    80003574:	00093703          	ld	a4,0(s2)
    80003578:	016487b3          	add	a5,s1,s6
    8000357c:	00e4b023          	sd	a4,0(s1)
    80003580:	00993023          	sd	s1,0(s2)
    80003584:	fcfa76e3          	bgeu	s4,a5,80003550 <freerange+0x70>
    80003588:	03813083          	ld	ra,56(sp)
    8000358c:	03013403          	ld	s0,48(sp)
    80003590:	02813483          	ld	s1,40(sp)
    80003594:	02013903          	ld	s2,32(sp)
    80003598:	01813983          	ld	s3,24(sp)
    8000359c:	01013a03          	ld	s4,16(sp)
    800035a0:	00813a83          	ld	s5,8(sp)
    800035a4:	00013b03          	ld	s6,0(sp)
    800035a8:	04010113          	addi	sp,sp,64
    800035ac:	00008067          	ret
    800035b0:	00002517          	auipc	a0,0x2
    800035b4:	c3050513          	addi	a0,a0,-976 # 800051e0 <digits+0x18>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	3d4080e7          	jalr	980(ra) # 8000298c <panic>

00000000800035c0 <kfree>:
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	02010413          	addi	s0,sp,32
    800035d4:	03451793          	slli	a5,a0,0x34
    800035d8:	04079c63          	bnez	a5,80003630 <kfree+0x70>
    800035dc:	00003797          	auipc	a5,0x3
    800035e0:	5d478793          	addi	a5,a5,1492 # 80006bb0 <end>
    800035e4:	00050493          	mv	s1,a0
    800035e8:	04f56463          	bltu	a0,a5,80003630 <kfree+0x70>
    800035ec:	01100793          	li	a5,17
    800035f0:	01b79793          	slli	a5,a5,0x1b
    800035f4:	02f57e63          	bgeu	a0,a5,80003630 <kfree+0x70>
    800035f8:	00001637          	lui	a2,0x1
    800035fc:	00100593          	li	a1,1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	478080e7          	jalr	1144(ra) # 80003a78 <__memset>
    80003608:	00002797          	auipc	a5,0x2
    8000360c:	2f878793          	addi	a5,a5,760 # 80005900 <kmem>
    80003610:	0007b703          	ld	a4,0(a5)
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00e4b023          	sd	a4,0(s1)
    80003620:	0097b023          	sd	s1,0(a5)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret
    80003630:	00002517          	auipc	a0,0x2
    80003634:	bb050513          	addi	a0,a0,-1104 # 800051e0 <digits+0x18>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	354080e7          	jalr	852(ra) # 8000298c <panic>

0000000080003640 <kalloc>:
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	00002797          	auipc	a5,0x2
    80003658:	2ac78793          	addi	a5,a5,684 # 80005900 <kmem>
    8000365c:	0007b483          	ld	s1,0(a5)
    80003660:	02048063          	beqz	s1,80003680 <kalloc+0x40>
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00001637          	lui	a2,0x1
    8000366c:	00500593          	li	a1,5
    80003670:	00048513          	mv	a0,s1
    80003674:	00e7b023          	sd	a4,0(a5)
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	400080e7          	jalr	1024(ra) # 80003a78 <__memset>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00048513          	mv	a0,s1
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	02010113          	addi	sp,sp,32
    80003694:	00008067          	ret

0000000080003698 <initlock>:
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00813423          	sd	s0,8(sp)
    800036a0:	01010413          	addi	s0,sp,16
    800036a4:	00813403          	ld	s0,8(sp)
    800036a8:	00b53423          	sd	a1,8(a0)
    800036ac:	00052023          	sw	zero,0(a0)
    800036b0:	00053823          	sd	zero,16(a0)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <acquire>:
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	01213023          	sd	s2,0(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    800036d8:	10002973          	csrr	s2,sstatus
    800036dc:	100027f3          	csrr	a5,sstatus
    800036e0:	ffd7f793          	andi	a5,a5,-3
    800036e4:	10079073          	csrw	sstatus,a5
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8e8080e7          	jalr	-1816(ra) # 80001fd0 <mycpu>
    800036f0:	07852783          	lw	a5,120(a0)
    800036f4:	06078e63          	beqz	a5,80003770 <acquire+0xb4>
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	8d8080e7          	jalr	-1832(ra) # 80001fd0 <mycpu>
    80003700:	07852783          	lw	a5,120(a0)
    80003704:	0004a703          	lw	a4,0(s1)
    80003708:	0017879b          	addiw	a5,a5,1
    8000370c:	06f52c23          	sw	a5,120(a0)
    80003710:	04071063          	bnez	a4,80003750 <acquire+0x94>
    80003714:	00100713          	li	a4,1
    80003718:	00070793          	mv	a5,a4
    8000371c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003720:	0007879b          	sext.w	a5,a5
    80003724:	fe079ae3          	bnez	a5,80003718 <acquire+0x5c>
    80003728:	0ff0000f          	fence
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	8a4080e7          	jalr	-1884(ra) # 80001fd0 <mycpu>
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00a4b823          	sd	a0,16(s1)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	00813483          	ld	s1,8(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret
    80003750:	0104b903          	ld	s2,16(s1)
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	87c080e7          	jalr	-1924(ra) # 80001fd0 <mycpu>
    8000375c:	faa91ce3          	bne	s2,a0,80003714 <acquire+0x58>
    80003760:	00002517          	auipc	a0,0x2
    80003764:	a8850513          	addi	a0,a0,-1400 # 800051e8 <digits+0x20>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	224080e7          	jalr	548(ra) # 8000298c <panic>
    80003770:	00195913          	srli	s2,s2,0x1
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	85c080e7          	jalr	-1956(ra) # 80001fd0 <mycpu>
    8000377c:	00197913          	andi	s2,s2,1
    80003780:	07252e23          	sw	s2,124(a0)
    80003784:	f75ff06f          	j	800036f8 <acquire+0x3c>

0000000080003788 <release>:
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00113c23          	sd	ra,24(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	01213023          	sd	s2,0(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	00052783          	lw	a5,0(a0)
    800037a4:	00079a63          	bnez	a5,800037b8 <release+0x30>
    800037a8:	00002517          	auipc	a0,0x2
    800037ac:	a4850513          	addi	a0,a0,-1464 # 800051f0 <digits+0x28>
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	1dc080e7          	jalr	476(ra) # 8000298c <panic>
    800037b8:	01053903          	ld	s2,16(a0)
    800037bc:	00050493          	mv	s1,a0
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	810080e7          	jalr	-2032(ra) # 80001fd0 <mycpu>
    800037c8:	fea910e3          	bne	s2,a0,800037a8 <release+0x20>
    800037cc:	0004b823          	sd	zero,16(s1)
    800037d0:	0ff0000f          	fence
    800037d4:	0f50000f          	fence	iorw,ow
    800037d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	7f4080e7          	jalr	2036(ra) # 80001fd0 <mycpu>
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	0027f793          	andi	a5,a5,2
    800037ec:	04079a63          	bnez	a5,80003840 <release+0xb8>
    800037f0:	07852783          	lw	a5,120(a0)
    800037f4:	02f05e63          	blez	a5,80003830 <release+0xa8>
    800037f8:	fff7871b          	addiw	a4,a5,-1
    800037fc:	06e52c23          	sw	a4,120(a0)
    80003800:	00071c63          	bnez	a4,80003818 <release+0x90>
    80003804:	07c52783          	lw	a5,124(a0)
    80003808:	00078863          	beqz	a5,80003818 <release+0x90>
    8000380c:	100027f3          	csrr	a5,sstatus
    80003810:	0027e793          	ori	a5,a5,2
    80003814:	10079073          	csrw	sstatus,a5
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	00013903          	ld	s2,0(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    80003830:	00002517          	auipc	a0,0x2
    80003834:	9e050513          	addi	a0,a0,-1568 # 80005210 <digits+0x48>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	154080e7          	jalr	340(ra) # 8000298c <panic>
    80003840:	00002517          	auipc	a0,0x2
    80003844:	9b850513          	addi	a0,a0,-1608 # 800051f8 <digits+0x30>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	144080e7          	jalr	324(ra) # 8000298c <panic>

0000000080003850 <holding>:
    80003850:	00052783          	lw	a5,0(a0)
    80003854:	00079663          	bnez	a5,80003860 <holding+0x10>
    80003858:	00000513          	li	a0,0
    8000385c:	00008067          	ret
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	01053483          	ld	s1,16(a0)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	758080e7          	jalr	1880(ra) # 80001fd0 <mycpu>
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	40a48533          	sub	a0,s1,a0
    8000388c:	00153513          	seqz	a0,a0
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret

000000008000389c <push_off>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	100024f3          	csrr	s1,sstatus
    800038b4:	100027f3          	csrr	a5,sstatus
    800038b8:	ffd7f793          	andi	a5,a5,-3
    800038bc:	10079073          	csrw	sstatus,a5
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	710080e7          	jalr	1808(ra) # 80001fd0 <mycpu>
    800038c8:	07852783          	lw	a5,120(a0)
    800038cc:	02078663          	beqz	a5,800038f8 <push_off+0x5c>
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	700080e7          	jalr	1792(ra) # 80001fd0 <mycpu>
    800038d8:	07852783          	lw	a5,120(a0)
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	0017879b          	addiw	a5,a5,1
    800038e8:	06f52c23          	sw	a5,120(a0)
    800038ec:	00813483          	ld	s1,8(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret
    800038f8:	0014d493          	srli	s1,s1,0x1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	6d4080e7          	jalr	1748(ra) # 80001fd0 <mycpu>
    80003904:	0014f493          	andi	s1,s1,1
    80003908:	06952e23          	sw	s1,124(a0)
    8000390c:	fc5ff06f          	j	800038d0 <push_off+0x34>

0000000080003910 <pop_off>:
    80003910:	ff010113          	addi	sp,sp,-16
    80003914:	00813023          	sd	s0,0(sp)
    80003918:	00113423          	sd	ra,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	6b0080e7          	jalr	1712(ra) # 80001fd0 <mycpu>
    80003928:	100027f3          	csrr	a5,sstatus
    8000392c:	0027f793          	andi	a5,a5,2
    80003930:	04079663          	bnez	a5,8000397c <pop_off+0x6c>
    80003934:	07852783          	lw	a5,120(a0)
    80003938:	02f05a63          	blez	a5,8000396c <pop_off+0x5c>
    8000393c:	fff7871b          	addiw	a4,a5,-1
    80003940:	06e52c23          	sw	a4,120(a0)
    80003944:	00071c63          	bnez	a4,8000395c <pop_off+0x4c>
    80003948:	07c52783          	lw	a5,124(a0)
    8000394c:	00078863          	beqz	a5,8000395c <pop_off+0x4c>
    80003950:	100027f3          	csrr	a5,sstatus
    80003954:	0027e793          	ori	a5,a5,2
    80003958:	10079073          	csrw	sstatus,a5
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	8a450513          	addi	a0,a0,-1884 # 80005210 <digits+0x48>
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	018080e7          	jalr	24(ra) # 8000298c <panic>
    8000397c:	00002517          	auipc	a0,0x2
    80003980:	87c50513          	addi	a0,a0,-1924 # 800051f8 <digits+0x30>
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	008080e7          	jalr	8(ra) # 8000298c <panic>

000000008000398c <push_on>:
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	100024f3          	csrr	s1,sstatus
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	0027e793          	ori	a5,a5,2
    800039ac:	10079073          	csrw	sstatus,a5
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	620080e7          	jalr	1568(ra) # 80001fd0 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	02078663          	beqz	a5,800039e8 <push_on+0x5c>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	610080e7          	jalr	1552(ra) # 80001fd0 <mycpu>
    800039c8:	07852783          	lw	a5,120(a0)
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	0017879b          	addiw	a5,a5,1
    800039d8:	06f52c23          	sw	a5,120(a0)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    800039e8:	0014d493          	srli	s1,s1,0x1
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	5e4080e7          	jalr	1508(ra) # 80001fd0 <mycpu>
    800039f4:	0014f493          	andi	s1,s1,1
    800039f8:	06952e23          	sw	s1,124(a0)
    800039fc:	fc5ff06f          	j	800039c0 <push_on+0x34>

0000000080003a00 <pop_on>:
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	5c0080e7          	jalr	1472(ra) # 80001fd0 <mycpu>
    80003a18:	100027f3          	csrr	a5,sstatus
    80003a1c:	0027f793          	andi	a5,a5,2
    80003a20:	04078463          	beqz	a5,80003a68 <pop_on+0x68>
    80003a24:	07852783          	lw	a5,120(a0)
    80003a28:	02f05863          	blez	a5,80003a58 <pop_on+0x58>
    80003a2c:	fff7879b          	addiw	a5,a5,-1
    80003a30:	06f52c23          	sw	a5,120(a0)
    80003a34:	07853783          	ld	a5,120(a0)
    80003a38:	00079863          	bnez	a5,80003a48 <pop_on+0x48>
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	ffd7f793          	andi	a5,a5,-3
    80003a44:	10079073          	csrw	sstatus,a5
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret
    80003a58:	00001517          	auipc	a0,0x1
    80003a5c:	7e050513          	addi	a0,a0,2016 # 80005238 <digits+0x70>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	f2c080e7          	jalr	-212(ra) # 8000298c <panic>
    80003a68:	00001517          	auipc	a0,0x1
    80003a6c:	7b050513          	addi	a0,a0,1968 # 80005218 <digits+0x50>
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	f1c080e7          	jalr	-228(ra) # 8000298c <panic>

0000000080003a78 <__memset>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813423          	sd	s0,8(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	1a060e63          	beqz	a2,80003c40 <__memset+0x1c8>
    80003a88:	40a007b3          	neg	a5,a0
    80003a8c:	0077f793          	andi	a5,a5,7
    80003a90:	00778693          	addi	a3,a5,7
    80003a94:	00b00813          	li	a6,11
    80003a98:	0ff5f593          	andi	a1,a1,255
    80003a9c:	fff6071b          	addiw	a4,a2,-1
    80003aa0:	1b06e663          	bltu	a3,a6,80003c4c <__memset+0x1d4>
    80003aa4:	1cd76463          	bltu	a4,a3,80003c6c <__memset+0x1f4>
    80003aa8:	1a078e63          	beqz	a5,80003c64 <__memset+0x1ec>
    80003aac:	00b50023          	sb	a1,0(a0)
    80003ab0:	00100713          	li	a4,1
    80003ab4:	1ae78463          	beq	a5,a4,80003c5c <__memset+0x1e4>
    80003ab8:	00b500a3          	sb	a1,1(a0)
    80003abc:	00200713          	li	a4,2
    80003ac0:	1ae78a63          	beq	a5,a4,80003c74 <__memset+0x1fc>
    80003ac4:	00b50123          	sb	a1,2(a0)
    80003ac8:	00300713          	li	a4,3
    80003acc:	18e78463          	beq	a5,a4,80003c54 <__memset+0x1dc>
    80003ad0:	00b501a3          	sb	a1,3(a0)
    80003ad4:	00400713          	li	a4,4
    80003ad8:	1ae78263          	beq	a5,a4,80003c7c <__memset+0x204>
    80003adc:	00b50223          	sb	a1,4(a0)
    80003ae0:	00500713          	li	a4,5
    80003ae4:	1ae78063          	beq	a5,a4,80003c84 <__memset+0x20c>
    80003ae8:	00b502a3          	sb	a1,5(a0)
    80003aec:	00700713          	li	a4,7
    80003af0:	18e79e63          	bne	a5,a4,80003c8c <__memset+0x214>
    80003af4:	00b50323          	sb	a1,6(a0)
    80003af8:	00700e93          	li	t4,7
    80003afc:	00859713          	slli	a4,a1,0x8
    80003b00:	00e5e733          	or	a4,a1,a4
    80003b04:	01059e13          	slli	t3,a1,0x10
    80003b08:	01c76e33          	or	t3,a4,t3
    80003b0c:	01859313          	slli	t1,a1,0x18
    80003b10:	006e6333          	or	t1,t3,t1
    80003b14:	02059893          	slli	a7,a1,0x20
    80003b18:	40f60e3b          	subw	t3,a2,a5
    80003b1c:	011368b3          	or	a7,t1,a7
    80003b20:	02859813          	slli	a6,a1,0x28
    80003b24:	0108e833          	or	a6,a7,a6
    80003b28:	03059693          	slli	a3,a1,0x30
    80003b2c:	003e589b          	srliw	a7,t3,0x3
    80003b30:	00d866b3          	or	a3,a6,a3
    80003b34:	03859713          	slli	a4,a1,0x38
    80003b38:	00389813          	slli	a6,a7,0x3
    80003b3c:	00f507b3          	add	a5,a0,a5
    80003b40:	00e6e733          	or	a4,a3,a4
    80003b44:	000e089b          	sext.w	a7,t3
    80003b48:	00f806b3          	add	a3,a6,a5
    80003b4c:	00e7b023          	sd	a4,0(a5)
    80003b50:	00878793          	addi	a5,a5,8
    80003b54:	fed79ce3          	bne	a5,a3,80003b4c <__memset+0xd4>
    80003b58:	ff8e7793          	andi	a5,t3,-8
    80003b5c:	0007871b          	sext.w	a4,a5
    80003b60:	01d787bb          	addw	a5,a5,t4
    80003b64:	0ce88e63          	beq	a7,a4,80003c40 <__memset+0x1c8>
    80003b68:	00f50733          	add	a4,a0,a5
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0017871b          	addiw	a4,a5,1
    80003b74:	0cc77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0027871b          	addiw	a4,a5,2
    80003b84:	0ac77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0037871b          	addiw	a4,a5,3
    80003b94:	0ac77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0047871b          	addiw	a4,a5,4
    80003ba4:	08c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0057871b          	addiw	a4,a5,5
    80003bb4:	08c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0067871b          	addiw	a4,a5,6
    80003bc4:	06c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0077871b          	addiw	a4,a5,7
    80003bd4:	06c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0087871b          	addiw	a4,a5,8
    80003be4:	04c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0097871b          	addiw	a4,a5,9
    80003bf4:	04c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	00a7871b          	addiw	a4,a5,10
    80003c04:	02c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	00b7871b          	addiw	a4,a5,11
    80003c14:	02c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	00c7871b          	addiw	a4,a5,12
    80003c24:	00c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	00d7879b          	addiw	a5,a5,13
    80003c34:	00c7f663          	bgeu	a5,a2,80003c40 <__memset+0x1c8>
    80003c38:	00f507b3          	add	a5,a0,a5
    80003c3c:	00b78023          	sb	a1,0(a5)
    80003c40:	00813403          	ld	s0,8(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00b00693          	li	a3,11
    80003c50:	e55ff06f          	j	80003aa4 <__memset+0x2c>
    80003c54:	00300e93          	li	t4,3
    80003c58:	ea5ff06f          	j	80003afc <__memset+0x84>
    80003c5c:	00100e93          	li	t4,1
    80003c60:	e9dff06f          	j	80003afc <__memset+0x84>
    80003c64:	00000e93          	li	t4,0
    80003c68:	e95ff06f          	j	80003afc <__memset+0x84>
    80003c6c:	00000793          	li	a5,0
    80003c70:	ef9ff06f          	j	80003b68 <__memset+0xf0>
    80003c74:	00200e93          	li	t4,2
    80003c78:	e85ff06f          	j	80003afc <__memset+0x84>
    80003c7c:	00400e93          	li	t4,4
    80003c80:	e7dff06f          	j	80003afc <__memset+0x84>
    80003c84:	00500e93          	li	t4,5
    80003c88:	e75ff06f          	j	80003afc <__memset+0x84>
    80003c8c:	00600e93          	li	t4,6
    80003c90:	e6dff06f          	j	80003afc <__memset+0x84>

0000000080003c94 <__memmove>:
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00813423          	sd	s0,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	0e060863          	beqz	a2,80003d90 <__memmove+0xfc>
    80003ca4:	fff6069b          	addiw	a3,a2,-1
    80003ca8:	0006881b          	sext.w	a6,a3
    80003cac:	0ea5e863          	bltu	a1,a0,80003d9c <__memmove+0x108>
    80003cb0:	00758713          	addi	a4,a1,7
    80003cb4:	00a5e7b3          	or	a5,a1,a0
    80003cb8:	40a70733          	sub	a4,a4,a0
    80003cbc:	0077f793          	andi	a5,a5,7
    80003cc0:	00f73713          	sltiu	a4,a4,15
    80003cc4:	00174713          	xori	a4,a4,1
    80003cc8:	0017b793          	seqz	a5,a5
    80003ccc:	00e7f7b3          	and	a5,a5,a4
    80003cd0:	10078863          	beqz	a5,80003de0 <__memmove+0x14c>
    80003cd4:	00900793          	li	a5,9
    80003cd8:	1107f463          	bgeu	a5,a6,80003de0 <__memmove+0x14c>
    80003cdc:	0036581b          	srliw	a6,a2,0x3
    80003ce0:	fff8081b          	addiw	a6,a6,-1
    80003ce4:	02081813          	slli	a6,a6,0x20
    80003ce8:	01d85893          	srli	a7,a6,0x1d
    80003cec:	00858813          	addi	a6,a1,8
    80003cf0:	00058793          	mv	a5,a1
    80003cf4:	00050713          	mv	a4,a0
    80003cf8:	01088833          	add	a6,a7,a6
    80003cfc:	0007b883          	ld	a7,0(a5)
    80003d00:	00878793          	addi	a5,a5,8
    80003d04:	00870713          	addi	a4,a4,8
    80003d08:	ff173c23          	sd	a7,-8(a4)
    80003d0c:	ff0798e3          	bne	a5,a6,80003cfc <__memmove+0x68>
    80003d10:	ff867713          	andi	a4,a2,-8
    80003d14:	02071793          	slli	a5,a4,0x20
    80003d18:	0207d793          	srli	a5,a5,0x20
    80003d1c:	00f585b3          	add	a1,a1,a5
    80003d20:	40e686bb          	subw	a3,a3,a4
    80003d24:	00f507b3          	add	a5,a0,a5
    80003d28:	06e60463          	beq	a2,a4,80003d90 <__memmove+0xfc>
    80003d2c:	0005c703          	lbu	a4,0(a1)
    80003d30:	00e78023          	sb	a4,0(a5)
    80003d34:	04068e63          	beqz	a3,80003d90 <__memmove+0xfc>
    80003d38:	0015c603          	lbu	a2,1(a1)
    80003d3c:	00100713          	li	a4,1
    80003d40:	00c780a3          	sb	a2,1(a5)
    80003d44:	04e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d48:	0025c603          	lbu	a2,2(a1)
    80003d4c:	00200713          	li	a4,2
    80003d50:	00c78123          	sb	a2,2(a5)
    80003d54:	02e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d58:	0035c603          	lbu	a2,3(a1)
    80003d5c:	00300713          	li	a4,3
    80003d60:	00c781a3          	sb	a2,3(a5)
    80003d64:	02e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d68:	0045c603          	lbu	a2,4(a1)
    80003d6c:	00400713          	li	a4,4
    80003d70:	00c78223          	sb	a2,4(a5)
    80003d74:	00e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d78:	0055c603          	lbu	a2,5(a1)
    80003d7c:	00500713          	li	a4,5
    80003d80:	00c782a3          	sb	a2,5(a5)
    80003d84:	00e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d88:	0065c703          	lbu	a4,6(a1)
    80003d8c:	00e78323          	sb	a4,6(a5)
    80003d90:	00813403          	ld	s0,8(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    80003d9c:	02061713          	slli	a4,a2,0x20
    80003da0:	02075713          	srli	a4,a4,0x20
    80003da4:	00e587b3          	add	a5,a1,a4
    80003da8:	f0f574e3          	bgeu	a0,a5,80003cb0 <__memmove+0x1c>
    80003dac:	02069613          	slli	a2,a3,0x20
    80003db0:	02065613          	srli	a2,a2,0x20
    80003db4:	fff64613          	not	a2,a2
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00c78633          	add	a2,a5,a2
    80003dc0:	fff7c683          	lbu	a3,-1(a5)
    80003dc4:	fff78793          	addi	a5,a5,-1
    80003dc8:	fff70713          	addi	a4,a4,-1
    80003dcc:	00d70023          	sb	a3,0(a4)
    80003dd0:	fec798e3          	bne	a5,a2,80003dc0 <__memmove+0x12c>
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret
    80003de0:	02069713          	slli	a4,a3,0x20
    80003de4:	02075713          	srli	a4,a4,0x20
    80003de8:	00170713          	addi	a4,a4,1
    80003dec:	00e50733          	add	a4,a0,a4
    80003df0:	00050793          	mv	a5,a0
    80003df4:	0005c683          	lbu	a3,0(a1)
    80003df8:	00178793          	addi	a5,a5,1
    80003dfc:	00158593          	addi	a1,a1,1
    80003e00:	fed78fa3          	sb	a3,-1(a5)
    80003e04:	fee798e3          	bne	a5,a4,80003df4 <__memmove+0x160>
    80003e08:	f89ff06f          	j	80003d90 <__memmove+0xfc>

0000000080003e0c <__mem_free>:
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00813423          	sd	s0,8(sp)
    80003e14:	01010413          	addi	s0,sp,16
    80003e18:	00002597          	auipc	a1,0x2
    80003e1c:	af058593          	addi	a1,a1,-1296 # 80005908 <freep>
    80003e20:	0005b783          	ld	a5,0(a1)
    80003e24:	ff050693          	addi	a3,a0,-16
    80003e28:	0007b703          	ld	a4,0(a5)
    80003e2c:	00d7fc63          	bgeu	a5,a3,80003e44 <__mem_free+0x38>
    80003e30:	00e6ee63          	bltu	a3,a4,80003e4c <__mem_free+0x40>
    80003e34:	00e7fc63          	bgeu	a5,a4,80003e4c <__mem_free+0x40>
    80003e38:	00070793          	mv	a5,a4
    80003e3c:	0007b703          	ld	a4,0(a5)
    80003e40:	fed7e8e3          	bltu	a5,a3,80003e30 <__mem_free+0x24>
    80003e44:	fee7eae3          	bltu	a5,a4,80003e38 <__mem_free+0x2c>
    80003e48:	fee6f8e3          	bgeu	a3,a4,80003e38 <__mem_free+0x2c>
    80003e4c:	ff852803          	lw	a6,-8(a0)
    80003e50:	02081613          	slli	a2,a6,0x20
    80003e54:	01c65613          	srli	a2,a2,0x1c
    80003e58:	00c68633          	add	a2,a3,a2
    80003e5c:	02c70a63          	beq	a4,a2,80003e90 <__mem_free+0x84>
    80003e60:	fee53823          	sd	a4,-16(a0)
    80003e64:	0087a503          	lw	a0,8(a5)
    80003e68:	02051613          	slli	a2,a0,0x20
    80003e6c:	01c65613          	srli	a2,a2,0x1c
    80003e70:	00c78633          	add	a2,a5,a2
    80003e74:	04c68263          	beq	a3,a2,80003eb8 <__mem_free+0xac>
    80003e78:	00813403          	ld	s0,8(sp)
    80003e7c:	00d7b023          	sd	a3,0(a5)
    80003e80:	00f5b023          	sd	a5,0(a1)
    80003e84:	00000513          	li	a0,0
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret
    80003e90:	00872603          	lw	a2,8(a4)
    80003e94:	00073703          	ld	a4,0(a4)
    80003e98:	0106083b          	addw	a6,a2,a6
    80003e9c:	ff052c23          	sw	a6,-8(a0)
    80003ea0:	fee53823          	sd	a4,-16(a0)
    80003ea4:	0087a503          	lw	a0,8(a5)
    80003ea8:	02051613          	slli	a2,a0,0x20
    80003eac:	01c65613          	srli	a2,a2,0x1c
    80003eb0:	00c78633          	add	a2,a5,a2
    80003eb4:	fcc692e3          	bne	a3,a2,80003e78 <__mem_free+0x6c>
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	0105053b          	addw	a0,a0,a6
    80003ec0:	00a7a423          	sw	a0,8(a5)
    80003ec4:	00e7b023          	sd	a4,0(a5)
    80003ec8:	00f5b023          	sd	a5,0(a1)
    80003ecc:	00000513          	li	a0,0
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <__mem_alloc>:
    80003ed8:	fc010113          	addi	sp,sp,-64
    80003edc:	02813823          	sd	s0,48(sp)
    80003ee0:	02913423          	sd	s1,40(sp)
    80003ee4:	03213023          	sd	s2,32(sp)
    80003ee8:	01513423          	sd	s5,8(sp)
    80003eec:	02113c23          	sd	ra,56(sp)
    80003ef0:	01313c23          	sd	s3,24(sp)
    80003ef4:	01413823          	sd	s4,16(sp)
    80003ef8:	01613023          	sd	s6,0(sp)
    80003efc:	04010413          	addi	s0,sp,64
    80003f00:	00002a97          	auipc	s5,0x2
    80003f04:	a08a8a93          	addi	s5,s5,-1528 # 80005908 <freep>
    80003f08:	00f50913          	addi	s2,a0,15
    80003f0c:	000ab683          	ld	a3,0(s5)
    80003f10:	00495913          	srli	s2,s2,0x4
    80003f14:	0019049b          	addiw	s1,s2,1
    80003f18:	00048913          	mv	s2,s1
    80003f1c:	0c068c63          	beqz	a3,80003ff4 <__mem_alloc+0x11c>
    80003f20:	0006b503          	ld	a0,0(a3)
    80003f24:	00852703          	lw	a4,8(a0)
    80003f28:	10977063          	bgeu	a4,s1,80004028 <__mem_alloc+0x150>
    80003f2c:	000017b7          	lui	a5,0x1
    80003f30:	0009099b          	sext.w	s3,s2
    80003f34:	0af4e863          	bltu	s1,a5,80003fe4 <__mem_alloc+0x10c>
    80003f38:	02099a13          	slli	s4,s3,0x20
    80003f3c:	01ca5a13          	srli	s4,s4,0x1c
    80003f40:	fff00b13          	li	s6,-1
    80003f44:	0100006f          	j	80003f54 <__mem_alloc+0x7c>
    80003f48:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f4c:	00852703          	lw	a4,8(a0)
    80003f50:	04977463          	bgeu	a4,s1,80003f98 <__mem_alloc+0xc0>
    80003f54:	00050793          	mv	a5,a0
    80003f58:	fea698e3          	bne	a3,a0,80003f48 <__mem_alloc+0x70>
    80003f5c:	000a0513          	mv	a0,s4
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	1f0080e7          	jalr	496(ra) # 80004150 <kvmincrease>
    80003f68:	00050793          	mv	a5,a0
    80003f6c:	01050513          	addi	a0,a0,16
    80003f70:	07678e63          	beq	a5,s6,80003fec <__mem_alloc+0x114>
    80003f74:	0137a423          	sw	s3,8(a5)
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	e94080e7          	jalr	-364(ra) # 80003e0c <__mem_free>
    80003f80:	000ab783          	ld	a5,0(s5)
    80003f84:	06078463          	beqz	a5,80003fec <__mem_alloc+0x114>
    80003f88:	0007b503          	ld	a0,0(a5)
    80003f8c:	00078693          	mv	a3,a5
    80003f90:	00852703          	lw	a4,8(a0)
    80003f94:	fc9760e3          	bltu	a4,s1,80003f54 <__mem_alloc+0x7c>
    80003f98:	08e48263          	beq	s1,a4,8000401c <__mem_alloc+0x144>
    80003f9c:	4127073b          	subw	a4,a4,s2
    80003fa0:	02071693          	slli	a3,a4,0x20
    80003fa4:	01c6d693          	srli	a3,a3,0x1c
    80003fa8:	00e52423          	sw	a4,8(a0)
    80003fac:	00d50533          	add	a0,a0,a3
    80003fb0:	01252423          	sw	s2,8(a0)
    80003fb4:	00fab023          	sd	a5,0(s5)
    80003fb8:	01050513          	addi	a0,a0,16
    80003fbc:	03813083          	ld	ra,56(sp)
    80003fc0:	03013403          	ld	s0,48(sp)
    80003fc4:	02813483          	ld	s1,40(sp)
    80003fc8:	02013903          	ld	s2,32(sp)
    80003fcc:	01813983          	ld	s3,24(sp)
    80003fd0:	01013a03          	ld	s4,16(sp)
    80003fd4:	00813a83          	ld	s5,8(sp)
    80003fd8:	00013b03          	ld	s6,0(sp)
    80003fdc:	04010113          	addi	sp,sp,64
    80003fe0:	00008067          	ret
    80003fe4:	000019b7          	lui	s3,0x1
    80003fe8:	f51ff06f          	j	80003f38 <__mem_alloc+0x60>
    80003fec:	00000513          	li	a0,0
    80003ff0:	fcdff06f          	j	80003fbc <__mem_alloc+0xe4>
    80003ff4:	00003797          	auipc	a5,0x3
    80003ff8:	bac78793          	addi	a5,a5,-1108 # 80006ba0 <base>
    80003ffc:	00078513          	mv	a0,a5
    80004000:	00fab023          	sd	a5,0(s5)
    80004004:	00f7b023          	sd	a5,0(a5)
    80004008:	00000713          	li	a4,0
    8000400c:	00003797          	auipc	a5,0x3
    80004010:	b807ae23          	sw	zero,-1124(a5) # 80006ba8 <base+0x8>
    80004014:	00050693          	mv	a3,a0
    80004018:	f11ff06f          	j	80003f28 <__mem_alloc+0x50>
    8000401c:	00053703          	ld	a4,0(a0)
    80004020:	00e7b023          	sd	a4,0(a5)
    80004024:	f91ff06f          	j	80003fb4 <__mem_alloc+0xdc>
    80004028:	00068793          	mv	a5,a3
    8000402c:	f6dff06f          	j	80003f98 <__mem_alloc+0xc0>

0000000080004030 <__putc>:
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00050793          	mv	a5,a0
    80004044:	fef40593          	addi	a1,s0,-17
    80004048:	00100613          	li	a2,1
    8000404c:	00000513          	li	a0,0
    80004050:	fef407a3          	sb	a5,-17(s0)
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	918080e7          	jalr	-1768(ra) # 8000296c <console_write>
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	02010113          	addi	sp,sp,32
    80004068:	00008067          	ret

000000008000406c <__getc>:
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	02010413          	addi	s0,sp,32
    8000407c:	fe840593          	addi	a1,s0,-24
    80004080:	00100613          	li	a2,1
    80004084:	00000513          	li	a0,0
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	8c4080e7          	jalr	-1852(ra) # 8000294c <console_read>
    80004090:	fe844503          	lbu	a0,-24(s0)
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <console_handler>:
    800040a4:	fe010113          	addi	sp,sp,-32
    800040a8:	00813823          	sd	s0,16(sp)
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	00913423          	sd	s1,8(sp)
    800040b4:	02010413          	addi	s0,sp,32
    800040b8:	14202773          	csrr	a4,scause
    800040bc:	100027f3          	csrr	a5,sstatus
    800040c0:	0027f793          	andi	a5,a5,2
    800040c4:	06079e63          	bnez	a5,80004140 <console_handler+0x9c>
    800040c8:	00074c63          	bltz	a4,800040e0 <console_handler+0x3c>
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	00813483          	ld	s1,8(sp)
    800040d8:	02010113          	addi	sp,sp,32
    800040dc:	00008067          	ret
    800040e0:	0ff77713          	andi	a4,a4,255
    800040e4:	00900793          	li	a5,9
    800040e8:	fef712e3          	bne	a4,a5,800040cc <console_handler+0x28>
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	4b8080e7          	jalr	1208(ra) # 800025a4 <plic_claim>
    800040f4:	00a00793          	li	a5,10
    800040f8:	00050493          	mv	s1,a0
    800040fc:	02f50c63          	beq	a0,a5,80004134 <console_handler+0x90>
    80004100:	fc0506e3          	beqz	a0,800040cc <console_handler+0x28>
    80004104:	00050593          	mv	a1,a0
    80004108:	00001517          	auipc	a0,0x1
    8000410c:	03850513          	addi	a0,a0,56 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	8d8080e7          	jalr	-1832(ra) # 800029e8 <__printf>
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	00048513          	mv	a0,s1
    80004124:	00813483          	ld	s1,8(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	ffffe317          	auipc	t1,0xffffe
    80004130:	4b030067          	jr	1200(t1) # 800025dc <plic_complete>
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	1bc080e7          	jalr	444(ra) # 800032f0 <uartintr>
    8000413c:	fddff06f          	j	80004118 <console_handler+0x74>
    80004140:	00001517          	auipc	a0,0x1
    80004144:	10050513          	addi	a0,a0,256 # 80005240 <digits+0x78>
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	844080e7          	jalr	-1980(ra) # 8000298c <panic>

0000000080004150 <kvmincrease>:
    80004150:	fe010113          	addi	sp,sp,-32
    80004154:	01213023          	sd	s2,0(sp)
    80004158:	00001937          	lui	s2,0x1
    8000415c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	01250933          	add	s2,a0,s2
    80004174:	00c95913          	srli	s2,s2,0xc
    80004178:	02090863          	beqz	s2,800041a8 <kvmincrease+0x58>
    8000417c:	00000493          	li	s1,0
    80004180:	00148493          	addi	s1,s1,1
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	4bc080e7          	jalr	1212(ra) # 80003640 <kalloc>
    8000418c:	fe991ae3          	bne	s2,s1,80004180 <kvmincrease+0x30>
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	00813483          	ld	s1,8(sp)
    8000419c:	00013903          	ld	s2,0(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret
    800041a8:	01813083          	ld	ra,24(sp)
    800041ac:	01013403          	ld	s0,16(sp)
    800041b0:	00813483          	ld	s1,8(sp)
    800041b4:	00013903          	ld	s2,0(sp)
    800041b8:	00000513          	li	a0,0
    800041bc:	02010113          	addi	sp,sp,32
    800041c0:	00008067          	ret
	...


kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8a013103          	ld	sp,-1888(sp) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	56d010ef          	jal	ra,80001d88 <start>

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
    80001080:	2ed000ef          	jal	ra,80001b6c <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000115c:	ab4080e7          	jalr	-1356(ra) # 80001c0c <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000118c:	77870713          	addi	a4,a4,1912 # 80005900 <_ZN7_thread8globalIdE>
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
    800011e8:	4b8080e7          	jalr	1208(ra) # 8000169c <_ZN9Scheduler3putEP7_thread>
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
    80001244:	90c080e7          	jalr	-1780(ra) # 80001b4c <_ZN5Riscv10popSppSpieEv>
    running->body(&running->arg);   //call the function with argument arg
    80001248:	00004497          	auipc	s1,0x4
    8000124c:	6b848493          	addi	s1,s1,1720 # 80005900 <_ZN7_thread8globalIdE>
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
    800012a0:	66c4b483          	ld	s1,1644(s1) # 80005908 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    800012a4:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a8:	02078c63          	beqz	a5,800012e0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	388080e7          	jalr	904(ra) # 80001634 <_ZN9Scheduler3getEv>
    800012b4:	00004797          	auipc	a5,0x4
    800012b8:	64a7ba23          	sd	a0,1620(a5) # 80005908 <_ZN7_thread7runningE>
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
    800012e8:	3b8080e7          	jalr	952(ra) # 8000169c <_ZN9Scheduler3putEP7_thread>
    800012ec:	fc1ff06f          	j	800012ac <_ZN7_thread8dispatchEv+0x24>

00000000800012f0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001300:	00001097          	auipc	ra,0x1
    80001304:	90c080e7          	jalr	-1780(ra) # 80001c0c <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000132c:	8e4080e7          	jalr	-1820(ra) # 80001c0c <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001354:	8e4080e7          	jalr	-1820(ra) # 80001c34 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013cc:	630080e7          	jalr	1584(ra) # 800069f8 <_Unwind_Resume>
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
    80001404:	834080e7          	jalr	-1996(ra) # 80001c34 <_ZN15MemoryAllocator9kmem_freeEPv>
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


}
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
    80001540:	35c7b783          	ld	a5,860(a5) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001544:	10579073          	csrw	stvec,a5
//    }
//    else{
//        printString("not freed \n");
//    }

    _thread* main = _thread::createThread(nullptr, nullptr);
    80001548:	00000593          	li	a1,0
    8000154c:	00000513          	li	a0,0
    80001550:	00000097          	auipc	ra,0x0
    80001554:	e18080e7          	jalr	-488(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
    80001558:	00050493          	mv	s1,a0
    main->start();
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	c70080e7          	jalr	-912(ra) # 800011cc <_ZN7_thread5startEv>
    _thread::running=main;
    80001564:	00004797          	auipc	a5,0x4
    80001568:	32c7b783          	ld	a5,812(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000156c:	0097b023          	sd	s1,0(a5)

    _thread* ptr = _thread::createThread(workerBodyA, nullptr);
    80001570:	00000593          	li	a1,0
    80001574:	00004517          	auipc	a0,0x4
    80001578:	33453503          	ld	a0,820(a0) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	dec080e7          	jalr	-532(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
    80001584:	00050493          	mv	s1,a0
    if(ptr!= nullptr){
    80001588:	04050063          	beqz	a0,800015c8 <main+0xa0>
        printString("thread created");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	a7450513          	addi	a0,a0,-1420 # 80005000 <kvmincrease+0xe70>
    80001594:	00000097          	auipc	ra,0x0
    80001598:	6c8080e7          	jalr	1736(ra) # 80001c5c <_Z11printStringPKc>
    } else{
        printString("error");
    }
    _thread::running=ptr;
    8000159c:	00004797          	auipc	a5,0x4
    800015a0:	2f47b783          	ld	a5,756(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015a4:	0097b023          	sd	s1,0(a5)

    ptr->start();
    800015a8:	00048513          	mv	a0,s1
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	c20080e7          	jalr	-992(ra) # 800011cc <_ZN7_thread5startEv>
    800015b4:	0284c783          	lbu	a5,40(s1)

    while(!ptr->isFinished()){
    800015b8:	02079263          	bnez	a5,800015dc <main+0xb4>
        _thread::yield();
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	c44080e7          	jalr	-956(ra) # 80001200 <_ZN7_thread5yieldEv>
    while(!ptr->isFinished()){
    800015c4:	ff1ff06f          	j	800015b4 <main+0x8c>
        printString("error");
    800015c8:	00004517          	auipc	a0,0x4
    800015cc:	a4850513          	addi	a0,a0,-1464 # 80005010 <kvmincrease+0xe80>
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	68c080e7          	jalr	1676(ra) # 80001c5c <_Z11printStringPKc>
    800015d8:	fc5ff06f          	j	8000159c <main+0x74>
    }

    return 0;
}
    800015dc:	00000513          	li	a0,0
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    80001600:	00100793          	li	a5,1
    80001604:	00f50863          	beq	a0,a5,80001614 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001608:	00813403          	ld	s0,8(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret
    80001614:	000107b7          	lui	a5,0x10
    80001618:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000161c:	fef596e3          	bne	a1,a5,80001608 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001620:	00004797          	auipc	a5,0x4
    80001624:	2f878793          	addi	a5,a5,760 # 80005918 <_ZN9Scheduler16readyThreadQueueE>
    80001628:	0007b023          	sd	zero,0(a5)
    8000162c:	0007b423          	sd	zero,8(a5)
    80001630:	fd9ff06f          	j	80001608 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001634 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001648:	00004517          	auipc	a0,0x4
    8000164c:	2d053503          	ld	a0,720(a0) # 80005918 <_ZN9Scheduler16readyThreadQueueE>
    80001650:	04050263          	beqz	a0,80001694 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001654:	00853783          	ld	a5,8(a0)
    80001658:	00004717          	auipc	a4,0x4
    8000165c:	2cf73023          	sd	a5,704(a4) # 80005918 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001660:	02078463          	beqz	a5,80001688 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001664:	00053483          	ld	s1,0(a0)
        delete elem;
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	124080e7          	jalr	292(ra) # 8000178c <_ZdlPv>
}
    80001670:	00048513          	mv	a0,s1
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret
        if (!head) { tail = 0; }
    80001688:	00004797          	auipc	a5,0x4
    8000168c:	2807bc23          	sd	zero,664(a5) # 80005920 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001690:	fd5ff06f          	j	80001664 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001694:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001698:	fd9ff06f          	j	80001670 <_ZN9Scheduler3getEv+0x3c>

000000008000169c <_ZN9Scheduler3putEP7_thread>:
{
    8000169c:	fe010113          	addi	sp,sp,-32
    800016a0:	00113c23          	sd	ra,24(sp)
    800016a4:	00813823          	sd	s0,16(sp)
    800016a8:	00913423          	sd	s1,8(sp)
    800016ac:	02010413          	addi	s0,sp,32
    800016b0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800016b4:	01000513          	li	a0,16
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	084080e7          	jalr	132(ra) # 8000173c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016c0:	00953023          	sd	s1,0(a0)
    800016c4:	00053423          	sd	zero,8(a0)
        if (tail)
    800016c8:	00004797          	auipc	a5,0x4
    800016cc:	2587b783          	ld	a5,600(a5) # 80005920 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800016d0:	02078263          	beqz	a5,800016f4 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    800016d4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016d8:	00004797          	auipc	a5,0x4
    800016dc:	24a7b423          	sd	a0,584(a5) # 80005920 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800016e0:	01813083          	ld	ra,24(sp)
    800016e4:	01013403          	ld	s0,16(sp)
    800016e8:	00813483          	ld	s1,8(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret
            head = tail = elem;
    800016f4:	00004797          	auipc	a5,0x4
    800016f8:	22478793          	addi	a5,a5,548 # 80005918 <_ZN9Scheduler16readyThreadQueueE>
    800016fc:	00a7b423          	sd	a0,8(a5)
    80001700:	00a7b023          	sd	a0,0(a5)
    80001704:	fddff06f          	j	800016e0 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001708 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    80001718:	000105b7          	lui	a1,0x10
    8000171c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001720:	00100513          	li	a0,1
    80001724:	00000097          	auipc	ra,0x0
    80001728:	ed0080e7          	jalr	-304(ra) # 800015f4 <_Z41__static_initialization_and_destruction_0ii>
    8000172c:	00813083          	ld	ra,8(sp)
    80001730:	00013403          	ld	s0,0(sp)
    80001734:	01010113          	addi	sp,sp,16
    80001738:	00008067          	ret

000000008000173c <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00113423          	sd	ra,8(sp)
    80001744:	00813023          	sd	s0,0(sp)
    80001748:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	d08080e7          	jalr	-760(ra) # 80001454 <_Z9mem_allocm>
}
    80001754:	00813083          	ld	ra,8(sp)
    80001758:	00013403          	ld	s0,0(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_Znam>:

void* operator new[](size_t n){
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00113423          	sd	ra,8(sp)
    8000176c:	00813023          	sd	s0,0(sp)
    80001770:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001774:	00000097          	auipc	ra,0x0
    80001778:	ce0080e7          	jalr	-800(ra) # 80001454 <_Z9mem_allocm>
}
    8000177c:	00813083          	ld	ra,8(sp)
    80001780:	00013403          	ld	s0,0(sp)
    80001784:	01010113          	addi	sp,sp,16
    80001788:	00008067          	ret

000000008000178c <_ZdlPv>:

void operator delete(void* p) noexcept{
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00113423          	sd	ra,8(sp)
    80001794:	00813023          	sd	s0,0(sp)
    80001798:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	d04080e7          	jalr	-764(ra) # 800014a0 <_Z8mem_freePv>
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00113423          	sd	ra,8(sp)
    800017bc:	00813023          	sd	s0,0(sp)
    800017c0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	cdc080e7          	jalr	-804(ra) # 800014a0 <_Z8mem_freePv>

}
    800017cc:	00813083          	ld	ra,8(sp)
    800017d0:	00013403          	ld	s0,0(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	00913423          	sd	s1,8(sp)
    800017ec:	01213023          	sd	s2,0(sp)
    800017f0:	02010413          	addi	s0,sp,32
    800017f4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800017f8:	00100793          	li	a5,1
    800017fc:	02a7f663          	bgeu	a5,a0,80001828 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    80001800:	00357793          	andi	a5,a0,3
    80001804:	02078e63          	beqz	a5,80001840 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001808:	fff48513          	addi	a0,s1,-1
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	fd0080e7          	jalr	-48(ra) # 800017dc <_ZL9fibonaccim>
    80001814:	00050913          	mv	s2,a0
    80001818:	ffe48513          	addi	a0,s1,-2
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	fc0080e7          	jalr	-64(ra) # 800017dc <_ZL9fibonaccim>
    80001824:	00a90533          	add	a0,s2,a0
}
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	00813483          	ld	s1,8(sp)
    80001834:	00013903          	ld	s2,0(sp)
    80001838:	02010113          	addi	sp,sp,32
    8000183c:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    80001840:	00000097          	auipc	ra,0x0
    80001844:	9c0080e7          	jalr	-1600(ra) # 80001200 <_ZN7_thread5yieldEv>
    80001848:	fc1ff06f          	j	80001808 <_ZL9fibonaccim+0x2c>

000000008000184c <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    8000184c:	fe010113          	addi	sp,sp,-32
    80001850:	00113c23          	sd	ra,24(sp)
    80001854:	00813823          	sd	s0,16(sp)
    80001858:	00913423          	sd	s1,8(sp)
    8000185c:	01213023          	sd	s2,0(sp)
    80001860:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001864:	00000493          	li	s1,0
    80001868:	0380006f          	j	800018a0 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	7ac50513          	addi	a0,a0,1964 # 80005018 <kvmincrease+0xe88>
    80001874:	00000097          	auipc	ra,0x0
    80001878:	3e8080e7          	jalr	1000(ra) # 80001c5c <_Z11printStringPKc>
        printInteger(i);
    8000187c:	00048513          	mv	a0,s1
    80001880:	00000097          	auipc	ra,0x0
    80001884:	44c080e7          	jalr	1100(ra) # 80001ccc <_Z12printIntegerm>
        printString("\n");
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	7a050513          	addi	a0,a0,1952 # 80005028 <kvmincrease+0xe98>
    80001890:	00000097          	auipc	ra,0x0
    80001894:	3cc080e7          	jalr	972(ra) # 80001c5c <_Z11printStringPKc>
    for (; i < 3; i++)
    80001898:	0014849b          	addiw	s1,s1,1
    8000189c:	0ff4f493          	andi	s1,s1,255
    800018a0:	00200793          	li	a5,2
    800018a4:	fc97f4e3          	bgeu	a5,s1,8000186c <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	77850513          	addi	a0,a0,1912 # 80005020 <kvmincrease+0xe90>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	3ac080e7          	jalr	940(ra) # 80001c5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800018b8:	00700313          	li	t1,7
    _thread::yield();
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	944080e7          	jalr	-1724(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800018c4:	00030913          	mv	s2,t1

    printString("A: t1=");
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	76850513          	addi	a0,a0,1896 # 80005030 <kvmincrease+0xea0>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	38c080e7          	jalr	908(ra) # 80001c5c <_Z11printStringPKc>
    printInteger(t1);
    800018d8:	00090513          	mv	a0,s2
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	3f0080e7          	jalr	1008(ra) # 80001ccc <_Z12printIntegerm>
    printString("\n");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	74450513          	addi	a0,a0,1860 # 80005028 <kvmincrease+0xe98>
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	370080e7          	jalr	880(ra) # 80001c5c <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800018f4:	01400513          	li	a0,20
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	ee4080e7          	jalr	-284(ra) # 800017dc <_ZL9fibonaccim>
    80001900:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001904:	00003517          	auipc	a0,0x3
    80001908:	73450513          	addi	a0,a0,1844 # 80005038 <kvmincrease+0xea8>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	350080e7          	jalr	848(ra) # 80001c5c <_Z11printStringPKc>
    printInteger(result);
    80001914:	00090513          	mv	a0,s2
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	3b4080e7          	jalr	948(ra) # 80001ccc <_Z12printIntegerm>
    printString("\n");
    80001920:	00003517          	auipc	a0,0x3
    80001924:	70850513          	addi	a0,a0,1800 # 80005028 <kvmincrease+0xe98>
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	334080e7          	jalr	820(ra) # 80001c5c <_Z11printStringPKc>
    80001930:	0380006f          	j	80001968 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001934:	00003517          	auipc	a0,0x3
    80001938:	6e450513          	addi	a0,a0,1764 # 80005018 <kvmincrease+0xe88>
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	320080e7          	jalr	800(ra) # 80001c5c <_Z11printStringPKc>
        printInteger(i);
    80001944:	00048513          	mv	a0,s1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	384080e7          	jalr	900(ra) # 80001ccc <_Z12printIntegerm>
        printString("\n");
    80001950:	00003517          	auipc	a0,0x3
    80001954:	6d850513          	addi	a0,a0,1752 # 80005028 <kvmincrease+0xe98>
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	304080e7          	jalr	772(ra) # 80001c5c <_Z11printStringPKc>
    for (; i < 6; i++)
    80001960:	0014849b          	addiw	s1,s1,1
    80001964:	0ff4f493          	andi	s1,s1,255
    80001968:	00500793          	li	a5,5
    8000196c:	fc97f4e3          	bgeu	a5,s1,80001934 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001970:	00004797          	auipc	a5,0x4
    80001974:	f207b783          	ld	a5,-224(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001978:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    8000197c:	00100713          	li	a4,1
    80001980:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001984:	00000097          	auipc	ra,0x0
    80001988:	87c080e7          	jalr	-1924(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	00013903          	ld	s2,0(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret

00000000800019a4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00113c23          	sd	ra,24(sp)
    800019ac:	00813823          	sd	s0,16(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	01213023          	sd	s2,0(sp)
    800019b8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800019bc:	00a00493          	li	s1,10
    800019c0:	0380006f          	j	800019f8 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800019c4:	00003517          	auipc	a0,0x3
    800019c8:	68450513          	addi	a0,a0,1668 # 80005048 <kvmincrease+0xeb8>
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	290080e7          	jalr	656(ra) # 80001c5c <_Z11printStringPKc>
        printInteger(i);
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	2f4080e7          	jalr	756(ra) # 80001ccc <_Z12printIntegerm>
        printString("\n");
    800019e0:	00003517          	auipc	a0,0x3
    800019e4:	64850513          	addi	a0,a0,1608 # 80005028 <kvmincrease+0xe98>
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	274080e7          	jalr	628(ra) # 80001c5c <_Z11printStringPKc>
    for (; i < 13; i++)
    800019f0:	0014849b          	addiw	s1,s1,1
    800019f4:	0ff4f493          	andi	s1,s1,255
    800019f8:	00c00793          	li	a5,12
    800019fc:	fc97f4e3          	bgeu	a5,s1,800019c4 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	65050513          	addi	a0,a0,1616 # 80005050 <kvmincrease+0xec0>
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	254080e7          	jalr	596(ra) # 80001c5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a10:	00500313          	li	t1,5
    _thread::yield();
    80001a14:	fffff097          	auipc	ra,0xfffff
    80001a18:	7ec080e7          	jalr	2028(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001a1c:	01700513          	li	a0,23
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	dbc080e7          	jalr	-580(ra) # 800017dc <_ZL9fibonaccim>
    80001a28:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001a2c:	00003517          	auipc	a0,0x3
    80001a30:	60c50513          	addi	a0,a0,1548 # 80005038 <kvmincrease+0xea8>
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	228080e7          	jalr	552(ra) # 80001c5c <_Z11printStringPKc>
    printInteger(result);
    80001a3c:	00090513          	mv	a0,s2
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	28c080e7          	jalr	652(ra) # 80001ccc <_Z12printIntegerm>
    printString("\n");
    80001a48:	00003517          	auipc	a0,0x3
    80001a4c:	5e050513          	addi	a0,a0,1504 # 80005028 <kvmincrease+0xe98>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	20c080e7          	jalr	524(ra) # 80001c5c <_Z11printStringPKc>
    80001a58:	0380006f          	j	80001a90 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001a5c:	00003517          	auipc	a0,0x3
    80001a60:	5ec50513          	addi	a0,a0,1516 # 80005048 <kvmincrease+0xeb8>
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	1f8080e7          	jalr	504(ra) # 80001c5c <_Z11printStringPKc>
        printInteger(i);
    80001a6c:	00048513          	mv	a0,s1
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	25c080e7          	jalr	604(ra) # 80001ccc <_Z12printIntegerm>
        printString("\n");
    80001a78:	00003517          	auipc	a0,0x3
    80001a7c:	5b050513          	addi	a0,a0,1456 # 80005028 <kvmincrease+0xe98>
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	1dc080e7          	jalr	476(ra) # 80001c5c <_Z11printStringPKc>
    for (; i < 16; i++)
    80001a88:	0014849b          	addiw	s1,s1,1
    80001a8c:	0ff4f493          	andi	s1,s1,255
    80001a90:	00f00793          	li	a5,15
    80001a94:	fc97f4e3          	bgeu	a5,s1,80001a5c <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001a98:	00004797          	auipc	a5,0x4
    80001a9c:	df87b783          	ld	a5,-520(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001aa0:	0007b783          	ld	a5,0(a5)
    80001aa4:	00100713          	li	a4,1
    80001aa8:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001aac:	fffff097          	auipc	ra,0xfffff
    80001ab0:	754080e7          	jalr	1876(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001ab4:	01813083          	ld	ra,24(sp)
    80001ab8:	01013403          	ld	s0,16(sp)
    80001abc:	00813483          	ld	s1,8(sp)
    80001ac0:	00013903          	ld	s2,0(sp)
    80001ac4:	02010113          	addi	sp,sp,32
    80001ac8:	00008067          	ret

0000000080001acc <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001acc:	ff010113          	addi	sp,sp,-16
    80001ad0:	00113423          	sd	ra,8(sp)
    80001ad4:	00813023          	sd	s0,0(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001adc:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001ae0:	00100713          	li	a4,1
    80001ae4:	02e78263          	beq	a5,a4,80001b08 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001ae8:	00200713          	li	a4,2
    80001aec:	02e78863          	beq	a5,a4,80001b1c <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001af0:	01100713          	li	a4,17
    80001af4:	02e78e63          	beq	a5,a4,80001b30 <_ZN5Riscv14syscallHandlerEv+0x64>



    }

}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001b08:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	100080e7          	jalr	256(ra) # 80001c0c <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b14:	00050513          	mv	a0,a0
    80001b18:	fe1ff06f          	j	80001af8 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001b1c:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	114080e7          	jalr	276(ra) # 80001c34 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b28:	00050513          	mv	a0,a0
    80001b2c:	fcdff06f          	j	80001af8 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001b30:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001b34:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001b38:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	82c080e7          	jalr	-2004(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b44:	00050513          	mv	a0,a0
}
    80001b48:	fb1ff06f          	j	80001af8 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001b4c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b58:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001b5c:	10200073          	sret
}
    80001b60:	00813403          	ld	s0,8(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001b6c:	fc010113          	addi	sp,sp,-64
    80001b70:	02113c23          	sd	ra,56(sp)
    80001b74:	02813823          	sd	s0,48(sp)
    80001b78:	02913423          	sd	s1,40(sp)
    80001b7c:	03213023          	sd	s2,32(sp)
    80001b80:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b84:	142027f3          	csrr	a5,scause
    80001b88:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001b8c:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001b90:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001b94:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001b98:	ff87879b          	addiw	a5,a5,-8
    80001b9c:	00100713          	li	a4,1
    80001ba0:	00f77e63          	bgeu	a4,a5,80001bbc <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001ba4:	03813083          	ld	ra,56(sp)
    80001ba8:	03013403          	ld	s0,48(sp)
    80001bac:	02813483          	ld	s1,40(sp)
    80001bb0:	02013903          	ld	s2,32(sp)
    80001bb4:	04010113          	addi	sp,sp,64
    80001bb8:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bbc:	141027f3          	csrr	a5,sepc
    80001bc0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001bc4:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001bc8:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bcc:	100027f3          	csrr	a5,sstatus
    80001bd0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001bd4:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001bd8:	00400793          	li	a5,4
    80001bdc:	00f68c63          	beq	a3,a5,80001bf4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	eec080e7          	jalr	-276(ra) # 80001acc <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001be8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bec:	14149073          	csrw	sepc,s1
}
    80001bf0:	fb5ff06f          	j	80001ba4 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	cbc7b783          	ld	a5,-836(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bfc:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c00:	fffff097          	auipc	ra,0xfffff
    80001c04:	688080e7          	jalr	1672(ra) # 80001288 <_ZN7_thread8dispatchEv>
    80001c08:	fe1ff06f          	j	80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

0000000080001c0c <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00113423          	sd	ra,8(sp)
    80001c14:	00813023          	sd	s0,0(sp)
    80001c18:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	2fc080e7          	jalr	764(ra) # 80003f18 <__mem_alloc>
}
    80001c24:	00813083          	ld	ra,8(sp)
    80001c28:	00013403          	ld	s0,0(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00113423          	sd	ra,8(sp)
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001c44:	00002097          	auipc	ra,0x2
    80001c48:	208080e7          	jalr	520(ra) # 80003e4c <__mem_free>
    80001c4c:	00813083          	ld	ra,8(sp)
    80001c50:	00013403          	ld	s0,0(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret

0000000080001c5c <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001c5c:	fd010113          	addi	sp,sp,-48
    80001c60:	02113423          	sd	ra,40(sp)
    80001c64:	02813023          	sd	s0,32(sp)
    80001c68:	00913c23          	sd	s1,24(sp)
    80001c6c:	01213823          	sd	s2,16(sp)
    80001c70:	03010413          	addi	s0,sp,48
    80001c74:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c78:	100027f3          	csrr	a5,sstatus
    80001c7c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001c80:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c84:	00200793          	li	a5,2
    80001c88:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001c8c:	0004c503          	lbu	a0,0(s1)
    80001c90:	00050a63          	beqz	a0,80001ca4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001c94:	00002097          	auipc	ra,0x2
    80001c98:	3dc080e7          	jalr	988(ra) # 80004070 <__putc>
        string++;
    80001c9c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ca0:	fedff06f          	j	80001c8c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001ca4:	0009091b          	sext.w	s2,s2
    80001ca8:	00297913          	andi	s2,s2,2
    80001cac:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cb0:	10092073          	csrs	sstatus,s2
}
    80001cb4:	02813083          	ld	ra,40(sp)
    80001cb8:	02013403          	ld	s0,32(sp)
    80001cbc:	01813483          	ld	s1,24(sp)
    80001cc0:	01013903          	ld	s2,16(sp)
    80001cc4:	03010113          	addi	sp,sp,48
    80001cc8:	00008067          	ret

0000000080001ccc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ccc:	fc010113          	addi	sp,sp,-64
    80001cd0:	02113c23          	sd	ra,56(sp)
    80001cd4:	02813823          	sd	s0,48(sp)
    80001cd8:	02913423          	sd	s1,40(sp)
    80001cdc:	03213023          	sd	s2,32(sp)
    80001ce0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce4:	100027f3          	csrr	a5,sstatus
    80001ce8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001cec:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf0:	00200793          	li	a5,2
    80001cf4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001cf8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001cfc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d00:	00a00613          	li	a2,10
    80001d04:	02c5773b          	remuw	a4,a0,a2
    80001d08:	02071693          	slli	a3,a4,0x20
    80001d0c:	0206d693          	srli	a3,a3,0x20
    80001d10:	00003717          	auipc	a4,0x3
    80001d14:	35070713          	addi	a4,a4,848 # 80005060 <_ZZ12printIntegermE6digits>
    80001d18:	00d70733          	add	a4,a4,a3
    80001d1c:	00074703          	lbu	a4,0(a4)
    80001d20:	fe040693          	addi	a3,s0,-32
    80001d24:	009687b3          	add	a5,a3,s1
    80001d28:	0014849b          	addiw	s1,s1,1
    80001d2c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d30:	0005071b          	sext.w	a4,a0
    80001d34:	02c5553b          	divuw	a0,a0,a2
    80001d38:	00900793          	li	a5,9
    80001d3c:	fce7e2e3          	bltu	a5,a4,80001d00 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001d40:	fff4849b          	addiw	s1,s1,-1
    80001d44:	0004ce63          	bltz	s1,80001d60 <_Z12printIntegerm+0x94>
    80001d48:	fe040793          	addi	a5,s0,-32
    80001d4c:	009787b3          	add	a5,a5,s1
    80001d50:	ff07c503          	lbu	a0,-16(a5)
    80001d54:	00002097          	auipc	ra,0x2
    80001d58:	31c080e7          	jalr	796(ra) # 80004070 <__putc>
    80001d5c:	fe5ff06f          	j	80001d40 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d60:	0009091b          	sext.w	s2,s2
    80001d64:	00297913          	andi	s2,s2,2
    80001d68:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d6c:	10092073          	csrs	sstatus,s2
}
    80001d70:	03813083          	ld	ra,56(sp)
    80001d74:	03013403          	ld	s0,48(sp)
    80001d78:	02813483          	ld	s1,40(sp)
    80001d7c:	02013903          	ld	s2,32(sp)
    80001d80:	04010113          	addi	sp,sp,64
    80001d84:	00008067          	ret

0000000080001d88 <start>:
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    80001d94:	300027f3          	csrr	a5,mstatus
    80001d98:	ffffe737          	lui	a4,0xffffe
    80001d9c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c5f>
    80001da0:	00e7f7b3          	and	a5,a5,a4
    80001da4:	00001737          	lui	a4,0x1
    80001da8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001dac:	00e7e7b3          	or	a5,a5,a4
    80001db0:	30079073          	csrw	mstatus,a5
    80001db4:	00000797          	auipc	a5,0x0
    80001db8:	16078793          	addi	a5,a5,352 # 80001f14 <system_main>
    80001dbc:	34179073          	csrw	mepc,a5
    80001dc0:	00000793          	li	a5,0
    80001dc4:	18079073          	csrw	satp,a5
    80001dc8:	000107b7          	lui	a5,0x10
    80001dcc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dd0:	30279073          	csrw	medeleg,a5
    80001dd4:	30379073          	csrw	mideleg,a5
    80001dd8:	104027f3          	csrr	a5,sie
    80001ddc:	2227e793          	ori	a5,a5,546
    80001de0:	10479073          	csrw	sie,a5
    80001de4:	fff00793          	li	a5,-1
    80001de8:	00a7d793          	srli	a5,a5,0xa
    80001dec:	3b079073          	csrw	pmpaddr0,a5
    80001df0:	00f00793          	li	a5,15
    80001df4:	3a079073          	csrw	pmpcfg0,a5
    80001df8:	f14027f3          	csrr	a5,mhartid
    80001dfc:	0200c737          	lui	a4,0x200c
    80001e00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e04:	0007869b          	sext.w	a3,a5
    80001e08:	00269713          	slli	a4,a3,0x2
    80001e0c:	000f4637          	lui	a2,0xf4
    80001e10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e14:	00d70733          	add	a4,a4,a3
    80001e18:	0037979b          	slliw	a5,a5,0x3
    80001e1c:	020046b7          	lui	a3,0x2004
    80001e20:	00d787b3          	add	a5,a5,a3
    80001e24:	00c585b3          	add	a1,a1,a2
    80001e28:	00371693          	slli	a3,a4,0x3
    80001e2c:	00004717          	auipc	a4,0x4
    80001e30:	b0470713          	addi	a4,a4,-1276 # 80005930 <timer_scratch>
    80001e34:	00b7b023          	sd	a1,0(a5)
    80001e38:	00d70733          	add	a4,a4,a3
    80001e3c:	00f73c23          	sd	a5,24(a4)
    80001e40:	02c73023          	sd	a2,32(a4)
    80001e44:	34071073          	csrw	mscratch,a4
    80001e48:	00000797          	auipc	a5,0x0
    80001e4c:	6e878793          	addi	a5,a5,1768 # 80002530 <timervec>
    80001e50:	30579073          	csrw	mtvec,a5
    80001e54:	300027f3          	csrr	a5,mstatus
    80001e58:	0087e793          	ori	a5,a5,8
    80001e5c:	30079073          	csrw	mstatus,a5
    80001e60:	304027f3          	csrr	a5,mie
    80001e64:	0807e793          	ori	a5,a5,128
    80001e68:	30479073          	csrw	mie,a5
    80001e6c:	f14027f3          	csrr	a5,mhartid
    80001e70:	0007879b          	sext.w	a5,a5
    80001e74:	00078213          	mv	tp,a5
    80001e78:	30200073          	mret
    80001e7c:	00813403          	ld	s0,8(sp)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <timerinit>:
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00813423          	sd	s0,8(sp)
    80001e90:	01010413          	addi	s0,sp,16
    80001e94:	f14027f3          	csrr	a5,mhartid
    80001e98:	0200c737          	lui	a4,0x200c
    80001e9c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ea0:	0007869b          	sext.w	a3,a5
    80001ea4:	00269713          	slli	a4,a3,0x2
    80001ea8:	000f4637          	lui	a2,0xf4
    80001eac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001eb0:	00d70733          	add	a4,a4,a3
    80001eb4:	0037979b          	slliw	a5,a5,0x3
    80001eb8:	020046b7          	lui	a3,0x2004
    80001ebc:	00d787b3          	add	a5,a5,a3
    80001ec0:	00c585b3          	add	a1,a1,a2
    80001ec4:	00371693          	slli	a3,a4,0x3
    80001ec8:	00004717          	auipc	a4,0x4
    80001ecc:	a6870713          	addi	a4,a4,-1432 # 80005930 <timer_scratch>
    80001ed0:	00b7b023          	sd	a1,0(a5)
    80001ed4:	00d70733          	add	a4,a4,a3
    80001ed8:	00f73c23          	sd	a5,24(a4)
    80001edc:	02c73023          	sd	a2,32(a4)
    80001ee0:	34071073          	csrw	mscratch,a4
    80001ee4:	00000797          	auipc	a5,0x0
    80001ee8:	64c78793          	addi	a5,a5,1612 # 80002530 <timervec>
    80001eec:	30579073          	csrw	mtvec,a5
    80001ef0:	300027f3          	csrr	a5,mstatus
    80001ef4:	0087e793          	ori	a5,a5,8
    80001ef8:	30079073          	csrw	mstatus,a5
    80001efc:	304027f3          	csrr	a5,mie
    80001f00:	0807e793          	ori	a5,a5,128
    80001f04:	30479073          	csrw	mie,a5
    80001f08:	00813403          	ld	s0,8(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <system_main>:
    80001f14:	fe010113          	addi	sp,sp,-32
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	00113c23          	sd	ra,24(sp)
    80001f24:	02010413          	addi	s0,sp,32
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	0c4080e7          	jalr	196(ra) # 80001fec <cpuid>
    80001f30:	00004497          	auipc	s1,0x4
    80001f34:	9a048493          	addi	s1,s1,-1632 # 800058d0 <started>
    80001f38:	02050263          	beqz	a0,80001f5c <system_main+0x48>
    80001f3c:	0004a783          	lw	a5,0(s1)
    80001f40:	0007879b          	sext.w	a5,a5
    80001f44:	fe078ce3          	beqz	a5,80001f3c <system_main+0x28>
    80001f48:	0ff0000f          	fence
    80001f4c:	00003517          	auipc	a0,0x3
    80001f50:	15450513          	addi	a0,a0,340 # 800050a0 <_ZZ12printIntegermE6digits+0x40>
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	a78080e7          	jalr	-1416(ra) # 800029cc <panic>
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	9cc080e7          	jalr	-1588(ra) # 80002928 <consoleinit>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	158080e7          	jalr	344(ra) # 800030bc <printfinit>
    80001f6c:	00003517          	auipc	a0,0x3
    80001f70:	0bc50513          	addi	a0,a0,188 # 80005028 <kvmincrease+0xe98>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	ab4080e7          	jalr	-1356(ra) # 80002a28 <__printf>
    80001f7c:	00003517          	auipc	a0,0x3
    80001f80:	0f450513          	addi	a0,a0,244 # 80005070 <_ZZ12printIntegermE6digits+0x10>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	aa4080e7          	jalr	-1372(ra) # 80002a28 <__printf>
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	09c50513          	addi	a0,a0,156 # 80005028 <kvmincrease+0xe98>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	a94080e7          	jalr	-1388(ra) # 80002a28 <__printf>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	4ac080e7          	jalr	1196(ra) # 80003448 <kinit>
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	148080e7          	jalr	328(ra) # 800020ec <trapinit>
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	16c080e7          	jalr	364(ra) # 80002118 <trapinithart>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	5bc080e7          	jalr	1468(ra) # 80002570 <plicinit>
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	5dc080e7          	jalr	1500(ra) # 80002598 <plicinithart>
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	078080e7          	jalr	120(ra) # 8000203c <userinit>
    80001fcc:	0ff0000f          	fence
    80001fd0:	00100793          	li	a5,1
    80001fd4:	00003517          	auipc	a0,0x3
    80001fd8:	0b450513          	addi	a0,a0,180 # 80005088 <_ZZ12printIntegermE6digits+0x28>
    80001fdc:	00f4a023          	sw	a5,0(s1)
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	a48080e7          	jalr	-1464(ra) # 80002a28 <__printf>
    80001fe8:	0000006f          	j	80001fe8 <system_main+0xd4>

0000000080001fec <cpuid>:
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    80001ff8:	00020513          	mv	a0,tp
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	0005051b          	sext.w	a0,a0
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <mycpu>:
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    80002018:	00020793          	mv	a5,tp
    8000201c:	00813403          	ld	s0,8(sp)
    80002020:	0007879b          	sext.w	a5,a5
    80002024:	00779793          	slli	a5,a5,0x7
    80002028:	00005517          	auipc	a0,0x5
    8000202c:	93850513          	addi	a0,a0,-1736 # 80006960 <cpus>
    80002030:	00f50533          	add	a0,a0,a5
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <userinit>:
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    80002048:	00813403          	ld	s0,8(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	fffff317          	auipc	t1,0xfffff
    80002054:	4d830067          	jr	1240(t1) # 80001528 <main>

0000000080002058 <either_copyout>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	02051663          	bnez	a0,80002094 <either_copyout+0x3c>
    8000206c:	00058513          	mv	a0,a1
    80002070:	00060593          	mv	a1,a2
    80002074:	0006861b          	sext.w	a2,a3
    80002078:	00002097          	auipc	ra,0x2
    8000207c:	c5c080e7          	jalr	-932(ra) # 80003cd4 <__memmove>
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	00000513          	li	a0,0
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret
    80002094:	00003517          	auipc	a0,0x3
    80002098:	03450513          	addi	a0,a0,52 # 800050c8 <_ZZ12printIntegermE6digits+0x68>
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	930080e7          	jalr	-1744(ra) # 800029cc <panic>

00000000800020a4 <either_copyin>:
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	00113423          	sd	ra,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	02059463          	bnez	a1,800020dc <either_copyin+0x38>
    800020b8:	00060593          	mv	a1,a2
    800020bc:	0006861b          	sext.w	a2,a3
    800020c0:	00002097          	auipc	ra,0x2
    800020c4:	c14080e7          	jalr	-1004(ra) # 80003cd4 <__memmove>
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	00000513          	li	a0,0
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret
    800020dc:	00003517          	auipc	a0,0x3
    800020e0:	01450513          	addi	a0,a0,20 # 800050f0 <_ZZ12printIntegermE6digits+0x90>
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	8e8080e7          	jalr	-1816(ra) # 800029cc <panic>

00000000800020ec <trapinit>:
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	00003597          	auipc	a1,0x3
    80002100:	01c58593          	addi	a1,a1,28 # 80005118 <_ZZ12printIntegermE6digits+0xb8>
    80002104:	00005517          	auipc	a0,0x5
    80002108:	8dc50513          	addi	a0,a0,-1828 # 800069e0 <tickslock>
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00001317          	auipc	t1,0x1
    80002114:	5c830067          	jr	1480(t1) # 800036d8 <initlock>

0000000080002118 <trapinithart>:
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00000797          	auipc	a5,0x0
    80002128:	2fc78793          	addi	a5,a5,764 # 80002420 <kernelvec>
    8000212c:	10579073          	csrw	stvec,a5
    80002130:	00813403          	ld	s0,8(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <usertrap>:
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	00813403          	ld	s0,8(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <usertrapret>:
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813423          	sd	s0,8(sp)
    8000215c:	01010413          	addi	s0,sp,16
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <kerneltrap>:
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00113c23          	sd	ra,24(sp)
    80002178:	00913423          	sd	s1,8(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	142025f3          	csrr	a1,scause
    80002184:	100027f3          	csrr	a5,sstatus
    80002188:	0027f793          	andi	a5,a5,2
    8000218c:	10079c63          	bnez	a5,800022a4 <kerneltrap+0x138>
    80002190:	142027f3          	csrr	a5,scause
    80002194:	0207ce63          	bltz	a5,800021d0 <kerneltrap+0x64>
    80002198:	00003517          	auipc	a0,0x3
    8000219c:	fc850513          	addi	a0,a0,-56 # 80005160 <_ZZ12printIntegermE6digits+0x100>
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	888080e7          	jalr	-1912(ra) # 80002a28 <__printf>
    800021a8:	141025f3          	csrr	a1,sepc
    800021ac:	14302673          	csrr	a2,stval
    800021b0:	00003517          	auipc	a0,0x3
    800021b4:	fc050513          	addi	a0,a0,-64 # 80005170 <_ZZ12printIntegermE6digits+0x110>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	870080e7          	jalr	-1936(ra) # 80002a28 <__printf>
    800021c0:	00003517          	auipc	a0,0x3
    800021c4:	fc850513          	addi	a0,a0,-56 # 80005188 <_ZZ12printIntegermE6digits+0x128>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	804080e7          	jalr	-2044(ra) # 800029cc <panic>
    800021d0:	0ff7f713          	andi	a4,a5,255
    800021d4:	00900693          	li	a3,9
    800021d8:	04d70063          	beq	a4,a3,80002218 <kerneltrap+0xac>
    800021dc:	fff00713          	li	a4,-1
    800021e0:	03f71713          	slli	a4,a4,0x3f
    800021e4:	00170713          	addi	a4,a4,1
    800021e8:	fae798e3          	bne	a5,a4,80002198 <kerneltrap+0x2c>
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	e00080e7          	jalr	-512(ra) # 80001fec <cpuid>
    800021f4:	06050663          	beqz	a0,80002260 <kerneltrap+0xf4>
    800021f8:	144027f3          	csrr	a5,sip
    800021fc:	ffd7f793          	andi	a5,a5,-3
    80002200:	14479073          	csrw	sip,a5
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	3cc080e7          	jalr	972(ra) # 800025e4 <plic_claim>
    80002220:	00a00793          	li	a5,10
    80002224:	00050493          	mv	s1,a0
    80002228:	06f50863          	beq	a0,a5,80002298 <kerneltrap+0x12c>
    8000222c:	fc050ce3          	beqz	a0,80002204 <kerneltrap+0x98>
    80002230:	00050593          	mv	a1,a0
    80002234:	00003517          	auipc	a0,0x3
    80002238:	f0c50513          	addi	a0,a0,-244 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	7ec080e7          	jalr	2028(ra) # 80002a28 <__printf>
    80002244:	01013403          	ld	s0,16(sp)
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	00048513          	mv	a0,s1
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00000317          	auipc	t1,0x0
    8000225c:	3c430067          	jr	964(t1) # 8000261c <plic_complete>
    80002260:	00004517          	auipc	a0,0x4
    80002264:	78050513          	addi	a0,a0,1920 # 800069e0 <tickslock>
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	494080e7          	jalr	1172(ra) # 800036fc <acquire>
    80002270:	00003717          	auipc	a4,0x3
    80002274:	66470713          	addi	a4,a4,1636 # 800058d4 <ticks>
    80002278:	00072783          	lw	a5,0(a4)
    8000227c:	00004517          	auipc	a0,0x4
    80002280:	76450513          	addi	a0,a0,1892 # 800069e0 <tickslock>
    80002284:	0017879b          	addiw	a5,a5,1
    80002288:	00f72023          	sw	a5,0(a4)
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	53c080e7          	jalr	1340(ra) # 800037c8 <release>
    80002294:	f65ff06f          	j	800021f8 <kerneltrap+0x8c>
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	098080e7          	jalr	152(ra) # 80003330 <uartintr>
    800022a0:	fa5ff06f          	j	80002244 <kerneltrap+0xd8>
    800022a4:	00003517          	auipc	a0,0x3
    800022a8:	e7c50513          	addi	a0,a0,-388 # 80005120 <_ZZ12printIntegermE6digits+0xc0>
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	720080e7          	jalr	1824(ra) # 800029cc <panic>

00000000800022b4 <clockintr>:
    800022b4:	fe010113          	addi	sp,sp,-32
    800022b8:	00813823          	sd	s0,16(sp)
    800022bc:	00913423          	sd	s1,8(sp)
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	02010413          	addi	s0,sp,32
    800022c8:	00004497          	auipc	s1,0x4
    800022cc:	71848493          	addi	s1,s1,1816 # 800069e0 <tickslock>
    800022d0:	00048513          	mv	a0,s1
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	428080e7          	jalr	1064(ra) # 800036fc <acquire>
    800022dc:	00003717          	auipc	a4,0x3
    800022e0:	5f870713          	addi	a4,a4,1528 # 800058d4 <ticks>
    800022e4:	00072783          	lw	a5,0(a4)
    800022e8:	01013403          	ld	s0,16(sp)
    800022ec:	01813083          	ld	ra,24(sp)
    800022f0:	00048513          	mv	a0,s1
    800022f4:	0017879b          	addiw	a5,a5,1
    800022f8:	00813483          	ld	s1,8(sp)
    800022fc:	00f72023          	sw	a5,0(a4)
    80002300:	02010113          	addi	sp,sp,32
    80002304:	00001317          	auipc	t1,0x1
    80002308:	4c430067          	jr	1220(t1) # 800037c8 <release>

000000008000230c <devintr>:
    8000230c:	142027f3          	csrr	a5,scause
    80002310:	00000513          	li	a0,0
    80002314:	0007c463          	bltz	a5,8000231c <devintr+0x10>
    80002318:	00008067          	ret
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00813823          	sd	s0,16(sp)
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	02010413          	addi	s0,sp,32
    80002330:	0ff7f713          	andi	a4,a5,255
    80002334:	00900693          	li	a3,9
    80002338:	04d70c63          	beq	a4,a3,80002390 <devintr+0x84>
    8000233c:	fff00713          	li	a4,-1
    80002340:	03f71713          	slli	a4,a4,0x3f
    80002344:	00170713          	addi	a4,a4,1
    80002348:	00e78c63          	beq	a5,a4,80002360 <devintr+0x54>
    8000234c:	01813083          	ld	ra,24(sp)
    80002350:	01013403          	ld	s0,16(sp)
    80002354:	00813483          	ld	s1,8(sp)
    80002358:	02010113          	addi	sp,sp,32
    8000235c:	00008067          	ret
    80002360:	00000097          	auipc	ra,0x0
    80002364:	c8c080e7          	jalr	-884(ra) # 80001fec <cpuid>
    80002368:	06050663          	beqz	a0,800023d4 <devintr+0xc8>
    8000236c:	144027f3          	csrr	a5,sip
    80002370:	ffd7f793          	andi	a5,a5,-3
    80002374:	14479073          	csrw	sip,a5
    80002378:	01813083          	ld	ra,24(sp)
    8000237c:	01013403          	ld	s0,16(sp)
    80002380:	00813483          	ld	s1,8(sp)
    80002384:	00200513          	li	a0,2
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret
    80002390:	00000097          	auipc	ra,0x0
    80002394:	254080e7          	jalr	596(ra) # 800025e4 <plic_claim>
    80002398:	00a00793          	li	a5,10
    8000239c:	00050493          	mv	s1,a0
    800023a0:	06f50663          	beq	a0,a5,8000240c <devintr+0x100>
    800023a4:	00100513          	li	a0,1
    800023a8:	fa0482e3          	beqz	s1,8000234c <devintr+0x40>
    800023ac:	00048593          	mv	a1,s1
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	d9050513          	addi	a0,a0,-624 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	670080e7          	jalr	1648(ra) # 80002a28 <__printf>
    800023c0:	00048513          	mv	a0,s1
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	258080e7          	jalr	600(ra) # 8000261c <plic_complete>
    800023cc:	00100513          	li	a0,1
    800023d0:	f7dff06f          	j	8000234c <devintr+0x40>
    800023d4:	00004517          	auipc	a0,0x4
    800023d8:	60c50513          	addi	a0,a0,1548 # 800069e0 <tickslock>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	320080e7          	jalr	800(ra) # 800036fc <acquire>
    800023e4:	00003717          	auipc	a4,0x3
    800023e8:	4f070713          	addi	a4,a4,1264 # 800058d4 <ticks>
    800023ec:	00072783          	lw	a5,0(a4)
    800023f0:	00004517          	auipc	a0,0x4
    800023f4:	5f050513          	addi	a0,a0,1520 # 800069e0 <tickslock>
    800023f8:	0017879b          	addiw	a5,a5,1
    800023fc:	00f72023          	sw	a5,0(a4)
    80002400:	00001097          	auipc	ra,0x1
    80002404:	3c8080e7          	jalr	968(ra) # 800037c8 <release>
    80002408:	f65ff06f          	j	8000236c <devintr+0x60>
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	f24080e7          	jalr	-220(ra) # 80003330 <uartintr>
    80002414:	fadff06f          	j	800023c0 <devintr+0xb4>
	...

0000000080002420 <kernelvec>:
    80002420:	f0010113          	addi	sp,sp,-256
    80002424:	00113023          	sd	ra,0(sp)
    80002428:	00213423          	sd	sp,8(sp)
    8000242c:	00313823          	sd	gp,16(sp)
    80002430:	00413c23          	sd	tp,24(sp)
    80002434:	02513023          	sd	t0,32(sp)
    80002438:	02613423          	sd	t1,40(sp)
    8000243c:	02713823          	sd	t2,48(sp)
    80002440:	02813c23          	sd	s0,56(sp)
    80002444:	04913023          	sd	s1,64(sp)
    80002448:	04a13423          	sd	a0,72(sp)
    8000244c:	04b13823          	sd	a1,80(sp)
    80002450:	04c13c23          	sd	a2,88(sp)
    80002454:	06d13023          	sd	a3,96(sp)
    80002458:	06e13423          	sd	a4,104(sp)
    8000245c:	06f13823          	sd	a5,112(sp)
    80002460:	07013c23          	sd	a6,120(sp)
    80002464:	09113023          	sd	a7,128(sp)
    80002468:	09213423          	sd	s2,136(sp)
    8000246c:	09313823          	sd	s3,144(sp)
    80002470:	09413c23          	sd	s4,152(sp)
    80002474:	0b513023          	sd	s5,160(sp)
    80002478:	0b613423          	sd	s6,168(sp)
    8000247c:	0b713823          	sd	s7,176(sp)
    80002480:	0b813c23          	sd	s8,184(sp)
    80002484:	0d913023          	sd	s9,192(sp)
    80002488:	0da13423          	sd	s10,200(sp)
    8000248c:	0db13823          	sd	s11,208(sp)
    80002490:	0dc13c23          	sd	t3,216(sp)
    80002494:	0fd13023          	sd	t4,224(sp)
    80002498:	0fe13423          	sd	t5,232(sp)
    8000249c:	0ff13823          	sd	t6,240(sp)
    800024a0:	ccdff0ef          	jal	ra,8000216c <kerneltrap>
    800024a4:	00013083          	ld	ra,0(sp)
    800024a8:	00813103          	ld	sp,8(sp)
    800024ac:	01013183          	ld	gp,16(sp)
    800024b0:	02013283          	ld	t0,32(sp)
    800024b4:	02813303          	ld	t1,40(sp)
    800024b8:	03013383          	ld	t2,48(sp)
    800024bc:	03813403          	ld	s0,56(sp)
    800024c0:	04013483          	ld	s1,64(sp)
    800024c4:	04813503          	ld	a0,72(sp)
    800024c8:	05013583          	ld	a1,80(sp)
    800024cc:	05813603          	ld	a2,88(sp)
    800024d0:	06013683          	ld	a3,96(sp)
    800024d4:	06813703          	ld	a4,104(sp)
    800024d8:	07013783          	ld	a5,112(sp)
    800024dc:	07813803          	ld	a6,120(sp)
    800024e0:	08013883          	ld	a7,128(sp)
    800024e4:	08813903          	ld	s2,136(sp)
    800024e8:	09013983          	ld	s3,144(sp)
    800024ec:	09813a03          	ld	s4,152(sp)
    800024f0:	0a013a83          	ld	s5,160(sp)
    800024f4:	0a813b03          	ld	s6,168(sp)
    800024f8:	0b013b83          	ld	s7,176(sp)
    800024fc:	0b813c03          	ld	s8,184(sp)
    80002500:	0c013c83          	ld	s9,192(sp)
    80002504:	0c813d03          	ld	s10,200(sp)
    80002508:	0d013d83          	ld	s11,208(sp)
    8000250c:	0d813e03          	ld	t3,216(sp)
    80002510:	0e013e83          	ld	t4,224(sp)
    80002514:	0e813f03          	ld	t5,232(sp)
    80002518:	0f013f83          	ld	t6,240(sp)
    8000251c:	10010113          	addi	sp,sp,256
    80002520:	10200073          	sret
    80002524:	00000013          	nop
    80002528:	00000013          	nop
    8000252c:	00000013          	nop

0000000080002530 <timervec>:
    80002530:	34051573          	csrrw	a0,mscratch,a0
    80002534:	00b53023          	sd	a1,0(a0)
    80002538:	00c53423          	sd	a2,8(a0)
    8000253c:	00d53823          	sd	a3,16(a0)
    80002540:	01853583          	ld	a1,24(a0)
    80002544:	02053603          	ld	a2,32(a0)
    80002548:	0005b683          	ld	a3,0(a1)
    8000254c:	00c686b3          	add	a3,a3,a2
    80002550:	00d5b023          	sd	a3,0(a1)
    80002554:	00200593          	li	a1,2
    80002558:	14459073          	csrw	sip,a1
    8000255c:	01053683          	ld	a3,16(a0)
    80002560:	00853603          	ld	a2,8(a0)
    80002564:	00053583          	ld	a1,0(a0)
    80002568:	34051573          	csrrw	a0,mscratch,a0
    8000256c:	30200073          	mret

0000000080002570 <plicinit>:
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813423          	sd	s0,8(sp)
    80002578:	01010413          	addi	s0,sp,16
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	0c0007b7          	lui	a5,0xc000
    80002584:	00100713          	li	a4,1
    80002588:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000258c:	00e7a223          	sw	a4,4(a5)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <plicinithart>:
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00813023          	sd	s0,0(sp)
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	01010413          	addi	s0,sp,16
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	a44080e7          	jalr	-1468(ra) # 80001fec <cpuid>
    800025b0:	0085171b          	slliw	a4,a0,0x8
    800025b4:	0c0027b7          	lui	a5,0xc002
    800025b8:	00e787b3          	add	a5,a5,a4
    800025bc:	40200713          	li	a4,1026
    800025c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800025c4:	00813083          	ld	ra,8(sp)
    800025c8:	00013403          	ld	s0,0(sp)
    800025cc:	00d5151b          	slliw	a0,a0,0xd
    800025d0:	0c2017b7          	lui	a5,0xc201
    800025d4:	00a78533          	add	a0,a5,a0
    800025d8:	00052023          	sw	zero,0(a0)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <plic_claim>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	9f8080e7          	jalr	-1544(ra) # 80001fec <cpuid>
    800025fc:	00813083          	ld	ra,8(sp)
    80002600:	00013403          	ld	s0,0(sp)
    80002604:	00d5151b          	slliw	a0,a0,0xd
    80002608:	0c2017b7          	lui	a5,0xc201
    8000260c:	00a78533          	add	a0,a5,a0
    80002610:	00452503          	lw	a0,4(a0)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <plic_complete>:
    8000261c:	fe010113          	addi	sp,sp,-32
    80002620:	00813823          	sd	s0,16(sp)
    80002624:	00913423          	sd	s1,8(sp)
    80002628:	00113c23          	sd	ra,24(sp)
    8000262c:	02010413          	addi	s0,sp,32
    80002630:	00050493          	mv	s1,a0
    80002634:	00000097          	auipc	ra,0x0
    80002638:	9b8080e7          	jalr	-1608(ra) # 80001fec <cpuid>
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00d5179b          	slliw	a5,a0,0xd
    80002648:	0c201737          	lui	a4,0xc201
    8000264c:	00f707b3          	add	a5,a4,a5
    80002650:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret

0000000080002660 <consolewrite>:
    80002660:	fb010113          	addi	sp,sp,-80
    80002664:	04813023          	sd	s0,64(sp)
    80002668:	04113423          	sd	ra,72(sp)
    8000266c:	02913c23          	sd	s1,56(sp)
    80002670:	03213823          	sd	s2,48(sp)
    80002674:	03313423          	sd	s3,40(sp)
    80002678:	03413023          	sd	s4,32(sp)
    8000267c:	01513c23          	sd	s5,24(sp)
    80002680:	05010413          	addi	s0,sp,80
    80002684:	06c05c63          	blez	a2,800026fc <consolewrite+0x9c>
    80002688:	00060993          	mv	s3,a2
    8000268c:	00050a13          	mv	s4,a0
    80002690:	00058493          	mv	s1,a1
    80002694:	00000913          	li	s2,0
    80002698:	fff00a93          	li	s5,-1
    8000269c:	01c0006f          	j	800026b8 <consolewrite+0x58>
    800026a0:	fbf44503          	lbu	a0,-65(s0)
    800026a4:	0019091b          	addiw	s2,s2,1
    800026a8:	00148493          	addi	s1,s1,1
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	a9c080e7          	jalr	-1380(ra) # 80003148 <uartputc>
    800026b4:	03298063          	beq	s3,s2,800026d4 <consolewrite+0x74>
    800026b8:	00048613          	mv	a2,s1
    800026bc:	00100693          	li	a3,1
    800026c0:	000a0593          	mv	a1,s4
    800026c4:	fbf40513          	addi	a0,s0,-65
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	9dc080e7          	jalr	-1572(ra) # 800020a4 <either_copyin>
    800026d0:	fd5518e3          	bne	a0,s5,800026a0 <consolewrite+0x40>
    800026d4:	04813083          	ld	ra,72(sp)
    800026d8:	04013403          	ld	s0,64(sp)
    800026dc:	03813483          	ld	s1,56(sp)
    800026e0:	02813983          	ld	s3,40(sp)
    800026e4:	02013a03          	ld	s4,32(sp)
    800026e8:	01813a83          	ld	s5,24(sp)
    800026ec:	00090513          	mv	a0,s2
    800026f0:	03013903          	ld	s2,48(sp)
    800026f4:	05010113          	addi	sp,sp,80
    800026f8:	00008067          	ret
    800026fc:	00000913          	li	s2,0
    80002700:	fd5ff06f          	j	800026d4 <consolewrite+0x74>

0000000080002704 <consoleread>:
    80002704:	f9010113          	addi	sp,sp,-112
    80002708:	06813023          	sd	s0,96(sp)
    8000270c:	04913c23          	sd	s1,88(sp)
    80002710:	05213823          	sd	s2,80(sp)
    80002714:	05313423          	sd	s3,72(sp)
    80002718:	05413023          	sd	s4,64(sp)
    8000271c:	03513c23          	sd	s5,56(sp)
    80002720:	03613823          	sd	s6,48(sp)
    80002724:	03713423          	sd	s7,40(sp)
    80002728:	03813023          	sd	s8,32(sp)
    8000272c:	06113423          	sd	ra,104(sp)
    80002730:	01913c23          	sd	s9,24(sp)
    80002734:	07010413          	addi	s0,sp,112
    80002738:	00060b93          	mv	s7,a2
    8000273c:	00050913          	mv	s2,a0
    80002740:	00058c13          	mv	s8,a1
    80002744:	00060b1b          	sext.w	s6,a2
    80002748:	00004497          	auipc	s1,0x4
    8000274c:	2c048493          	addi	s1,s1,704 # 80006a08 <cons>
    80002750:	00400993          	li	s3,4
    80002754:	fff00a13          	li	s4,-1
    80002758:	00a00a93          	li	s5,10
    8000275c:	05705e63          	blez	s7,800027b8 <consoleread+0xb4>
    80002760:	09c4a703          	lw	a4,156(s1)
    80002764:	0984a783          	lw	a5,152(s1)
    80002768:	0007071b          	sext.w	a4,a4
    8000276c:	08e78463          	beq	a5,a4,800027f4 <consoleread+0xf0>
    80002770:	07f7f713          	andi	a4,a5,127
    80002774:	00e48733          	add	a4,s1,a4
    80002778:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000277c:	0017869b          	addiw	a3,a5,1
    80002780:	08d4ac23          	sw	a3,152(s1)
    80002784:	00070c9b          	sext.w	s9,a4
    80002788:	0b370663          	beq	a4,s3,80002834 <consoleread+0x130>
    8000278c:	00100693          	li	a3,1
    80002790:	f9f40613          	addi	a2,s0,-97
    80002794:	000c0593          	mv	a1,s8
    80002798:	00090513          	mv	a0,s2
    8000279c:	f8e40fa3          	sb	a4,-97(s0)
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	8b8080e7          	jalr	-1864(ra) # 80002058 <either_copyout>
    800027a8:	01450863          	beq	a0,s4,800027b8 <consoleread+0xb4>
    800027ac:	001c0c13          	addi	s8,s8,1
    800027b0:	fffb8b9b          	addiw	s7,s7,-1
    800027b4:	fb5c94e3          	bne	s9,s5,8000275c <consoleread+0x58>
    800027b8:	000b851b          	sext.w	a0,s7
    800027bc:	06813083          	ld	ra,104(sp)
    800027c0:	06013403          	ld	s0,96(sp)
    800027c4:	05813483          	ld	s1,88(sp)
    800027c8:	05013903          	ld	s2,80(sp)
    800027cc:	04813983          	ld	s3,72(sp)
    800027d0:	04013a03          	ld	s4,64(sp)
    800027d4:	03813a83          	ld	s5,56(sp)
    800027d8:	02813b83          	ld	s7,40(sp)
    800027dc:	02013c03          	ld	s8,32(sp)
    800027e0:	01813c83          	ld	s9,24(sp)
    800027e4:	40ab053b          	subw	a0,s6,a0
    800027e8:	03013b03          	ld	s6,48(sp)
    800027ec:	07010113          	addi	sp,sp,112
    800027f0:	00008067          	ret
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	1d8080e7          	jalr	472(ra) # 800039cc <push_on>
    800027fc:	0984a703          	lw	a4,152(s1)
    80002800:	09c4a783          	lw	a5,156(s1)
    80002804:	0007879b          	sext.w	a5,a5
    80002808:	fef70ce3          	beq	a4,a5,80002800 <consoleread+0xfc>
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	234080e7          	jalr	564(ra) # 80003a40 <pop_on>
    80002814:	0984a783          	lw	a5,152(s1)
    80002818:	07f7f713          	andi	a4,a5,127
    8000281c:	00e48733          	add	a4,s1,a4
    80002820:	01874703          	lbu	a4,24(a4)
    80002824:	0017869b          	addiw	a3,a5,1
    80002828:	08d4ac23          	sw	a3,152(s1)
    8000282c:	00070c9b          	sext.w	s9,a4
    80002830:	f5371ee3          	bne	a4,s3,8000278c <consoleread+0x88>
    80002834:	000b851b          	sext.w	a0,s7
    80002838:	f96bf2e3          	bgeu	s7,s6,800027bc <consoleread+0xb8>
    8000283c:	08f4ac23          	sw	a5,152(s1)
    80002840:	f7dff06f          	j	800027bc <consoleread+0xb8>

0000000080002844 <consputc>:
    80002844:	10000793          	li	a5,256
    80002848:	00f50663          	beq	a0,a5,80002854 <consputc+0x10>
    8000284c:	00001317          	auipc	t1,0x1
    80002850:	9f430067          	jr	-1548(t1) # 80003240 <uartputc_sync>
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    80002864:	00800513          	li	a0,8
    80002868:	00001097          	auipc	ra,0x1
    8000286c:	9d8080e7          	jalr	-1576(ra) # 80003240 <uartputc_sync>
    80002870:	02000513          	li	a0,32
    80002874:	00001097          	auipc	ra,0x1
    80002878:	9cc080e7          	jalr	-1588(ra) # 80003240 <uartputc_sync>
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00800513          	li	a0,8
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00001317          	auipc	t1,0x1
    80002890:	9b430067          	jr	-1612(t1) # 80003240 <uartputc_sync>

0000000080002894 <consoleintr>:
    80002894:	fe010113          	addi	sp,sp,-32
    80002898:	00813823          	sd	s0,16(sp)
    8000289c:	00913423          	sd	s1,8(sp)
    800028a0:	01213023          	sd	s2,0(sp)
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	02010413          	addi	s0,sp,32
    800028ac:	00004917          	auipc	s2,0x4
    800028b0:	15c90913          	addi	s2,s2,348 # 80006a08 <cons>
    800028b4:	00050493          	mv	s1,a0
    800028b8:	00090513          	mv	a0,s2
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	e40080e7          	jalr	-448(ra) # 800036fc <acquire>
    800028c4:	02048c63          	beqz	s1,800028fc <consoleintr+0x68>
    800028c8:	0a092783          	lw	a5,160(s2)
    800028cc:	09892703          	lw	a4,152(s2)
    800028d0:	07f00693          	li	a3,127
    800028d4:	40e7873b          	subw	a4,a5,a4
    800028d8:	02e6e263          	bltu	a3,a4,800028fc <consoleintr+0x68>
    800028dc:	00d00713          	li	a4,13
    800028e0:	04e48063          	beq	s1,a4,80002920 <consoleintr+0x8c>
    800028e4:	07f7f713          	andi	a4,a5,127
    800028e8:	00e90733          	add	a4,s2,a4
    800028ec:	0017879b          	addiw	a5,a5,1
    800028f0:	0af92023          	sw	a5,160(s2)
    800028f4:	00970c23          	sb	s1,24(a4)
    800028f8:	08f92e23          	sw	a5,156(s2)
    800028fc:	01013403          	ld	s0,16(sp)
    80002900:	01813083          	ld	ra,24(sp)
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	00013903          	ld	s2,0(sp)
    8000290c:	00004517          	auipc	a0,0x4
    80002910:	0fc50513          	addi	a0,a0,252 # 80006a08 <cons>
    80002914:	02010113          	addi	sp,sp,32
    80002918:	00001317          	auipc	t1,0x1
    8000291c:	eb030067          	jr	-336(t1) # 800037c8 <release>
    80002920:	00a00493          	li	s1,10
    80002924:	fc1ff06f          	j	800028e4 <consoleintr+0x50>

0000000080002928 <consoleinit>:
    80002928:	fe010113          	addi	sp,sp,-32
    8000292c:	00113c23          	sd	ra,24(sp)
    80002930:	00813823          	sd	s0,16(sp)
    80002934:	00913423          	sd	s1,8(sp)
    80002938:	02010413          	addi	s0,sp,32
    8000293c:	00004497          	auipc	s1,0x4
    80002940:	0cc48493          	addi	s1,s1,204 # 80006a08 <cons>
    80002944:	00048513          	mv	a0,s1
    80002948:	00003597          	auipc	a1,0x3
    8000294c:	85058593          	addi	a1,a1,-1968 # 80005198 <_ZZ12printIntegermE6digits+0x138>
    80002950:	00001097          	auipc	ra,0x1
    80002954:	d88080e7          	jalr	-632(ra) # 800036d8 <initlock>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	7ac080e7          	jalr	1964(ra) # 80003104 <uartinit>
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	01013403          	ld	s0,16(sp)
    80002968:	00000797          	auipc	a5,0x0
    8000296c:	d9c78793          	addi	a5,a5,-612 # 80002704 <consoleread>
    80002970:	0af4bc23          	sd	a5,184(s1)
    80002974:	00000797          	auipc	a5,0x0
    80002978:	cec78793          	addi	a5,a5,-788 # 80002660 <consolewrite>
    8000297c:	0cf4b023          	sd	a5,192(s1)
    80002980:	00813483          	ld	s1,8(sp)
    80002984:	02010113          	addi	sp,sp,32
    80002988:	00008067          	ret

000000008000298c <console_read>:
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00813423          	sd	s0,8(sp)
    80002994:	01010413          	addi	s0,sp,16
    80002998:	00813403          	ld	s0,8(sp)
    8000299c:	00004317          	auipc	t1,0x4
    800029a0:	12433303          	ld	t1,292(t1) # 80006ac0 <devsw+0x10>
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00030067          	jr	t1

00000000800029ac <console_write>:
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00813403          	ld	s0,8(sp)
    800029bc:	00004317          	auipc	t1,0x4
    800029c0:	10c33303          	ld	t1,268(t1) # 80006ac8 <devsw+0x18>
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00030067          	jr	t1

00000000800029cc <panic>:
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00113c23          	sd	ra,24(sp)
    800029d4:	00813823          	sd	s0,16(sp)
    800029d8:	00913423          	sd	s1,8(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00050493          	mv	s1,a0
    800029e4:	00002517          	auipc	a0,0x2
    800029e8:	7bc50513          	addi	a0,a0,1980 # 800051a0 <_ZZ12printIntegermE6digits+0x140>
    800029ec:	00004797          	auipc	a5,0x4
    800029f0:	1607ae23          	sw	zero,380(a5) # 80006b68 <pr+0x18>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	034080e7          	jalr	52(ra) # 80002a28 <__printf>
    800029fc:	00048513          	mv	a0,s1
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	028080e7          	jalr	40(ra) # 80002a28 <__printf>
    80002a08:	00002517          	auipc	a0,0x2
    80002a0c:	62050513          	addi	a0,a0,1568 # 80005028 <kvmincrease+0xe98>
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	018080e7          	jalr	24(ra) # 80002a28 <__printf>
    80002a18:	00100793          	li	a5,1
    80002a1c:	00003717          	auipc	a4,0x3
    80002a20:	eaf72e23          	sw	a5,-324(a4) # 800058d8 <panicked>
    80002a24:	0000006f          	j	80002a24 <panic+0x58>

0000000080002a28 <__printf>:
    80002a28:	f3010113          	addi	sp,sp,-208
    80002a2c:	08813023          	sd	s0,128(sp)
    80002a30:	07313423          	sd	s3,104(sp)
    80002a34:	09010413          	addi	s0,sp,144
    80002a38:	05813023          	sd	s8,64(sp)
    80002a3c:	08113423          	sd	ra,136(sp)
    80002a40:	06913c23          	sd	s1,120(sp)
    80002a44:	07213823          	sd	s2,112(sp)
    80002a48:	07413023          	sd	s4,96(sp)
    80002a4c:	05513c23          	sd	s5,88(sp)
    80002a50:	05613823          	sd	s6,80(sp)
    80002a54:	05713423          	sd	s7,72(sp)
    80002a58:	03913c23          	sd	s9,56(sp)
    80002a5c:	03a13823          	sd	s10,48(sp)
    80002a60:	03b13423          	sd	s11,40(sp)
    80002a64:	00004317          	auipc	t1,0x4
    80002a68:	0ec30313          	addi	t1,t1,236 # 80006b50 <pr>
    80002a6c:	01832c03          	lw	s8,24(t1)
    80002a70:	00b43423          	sd	a1,8(s0)
    80002a74:	00c43823          	sd	a2,16(s0)
    80002a78:	00d43c23          	sd	a3,24(s0)
    80002a7c:	02e43023          	sd	a4,32(s0)
    80002a80:	02f43423          	sd	a5,40(s0)
    80002a84:	03043823          	sd	a6,48(s0)
    80002a88:	03143c23          	sd	a7,56(s0)
    80002a8c:	00050993          	mv	s3,a0
    80002a90:	4a0c1663          	bnez	s8,80002f3c <__printf+0x514>
    80002a94:	60098c63          	beqz	s3,800030ac <__printf+0x684>
    80002a98:	0009c503          	lbu	a0,0(s3)
    80002a9c:	00840793          	addi	a5,s0,8
    80002aa0:	f6f43c23          	sd	a5,-136(s0)
    80002aa4:	00000493          	li	s1,0
    80002aa8:	22050063          	beqz	a0,80002cc8 <__printf+0x2a0>
    80002aac:	00002a37          	lui	s4,0x2
    80002ab0:	00018ab7          	lui	s5,0x18
    80002ab4:	000f4b37          	lui	s6,0xf4
    80002ab8:	00989bb7          	lui	s7,0x989
    80002abc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ac0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ac4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ac8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002acc:	00148c9b          	addiw	s9,s1,1
    80002ad0:	02500793          	li	a5,37
    80002ad4:	01998933          	add	s2,s3,s9
    80002ad8:	38f51263          	bne	a0,a5,80002e5c <__printf+0x434>
    80002adc:	00094783          	lbu	a5,0(s2)
    80002ae0:	00078c9b          	sext.w	s9,a5
    80002ae4:	1e078263          	beqz	a5,80002cc8 <__printf+0x2a0>
    80002ae8:	0024849b          	addiw	s1,s1,2
    80002aec:	07000713          	li	a4,112
    80002af0:	00998933          	add	s2,s3,s1
    80002af4:	38e78a63          	beq	a5,a4,80002e88 <__printf+0x460>
    80002af8:	20f76863          	bltu	a4,a5,80002d08 <__printf+0x2e0>
    80002afc:	42a78863          	beq	a5,a0,80002f2c <__printf+0x504>
    80002b00:	06400713          	li	a4,100
    80002b04:	40e79663          	bne	a5,a4,80002f10 <__printf+0x4e8>
    80002b08:	f7843783          	ld	a5,-136(s0)
    80002b0c:	0007a603          	lw	a2,0(a5)
    80002b10:	00878793          	addi	a5,a5,8
    80002b14:	f6f43c23          	sd	a5,-136(s0)
    80002b18:	42064a63          	bltz	a2,80002f4c <__printf+0x524>
    80002b1c:	00a00713          	li	a4,10
    80002b20:	02e677bb          	remuw	a5,a2,a4
    80002b24:	00002d97          	auipc	s11,0x2
    80002b28:	6a4d8d93          	addi	s11,s11,1700 # 800051c8 <digits>
    80002b2c:	00900593          	li	a1,9
    80002b30:	0006051b          	sext.w	a0,a2
    80002b34:	00000c93          	li	s9,0
    80002b38:	02079793          	slli	a5,a5,0x20
    80002b3c:	0207d793          	srli	a5,a5,0x20
    80002b40:	00fd87b3          	add	a5,s11,a5
    80002b44:	0007c783          	lbu	a5,0(a5)
    80002b48:	02e656bb          	divuw	a3,a2,a4
    80002b4c:	f8f40023          	sb	a5,-128(s0)
    80002b50:	14c5d863          	bge	a1,a2,80002ca0 <__printf+0x278>
    80002b54:	06300593          	li	a1,99
    80002b58:	00100c93          	li	s9,1
    80002b5c:	02e6f7bb          	remuw	a5,a3,a4
    80002b60:	02079793          	slli	a5,a5,0x20
    80002b64:	0207d793          	srli	a5,a5,0x20
    80002b68:	00fd87b3          	add	a5,s11,a5
    80002b6c:	0007c783          	lbu	a5,0(a5)
    80002b70:	02e6d73b          	divuw	a4,a3,a4
    80002b74:	f8f400a3          	sb	a5,-127(s0)
    80002b78:	12a5f463          	bgeu	a1,a0,80002ca0 <__printf+0x278>
    80002b7c:	00a00693          	li	a3,10
    80002b80:	00900593          	li	a1,9
    80002b84:	02d777bb          	remuw	a5,a4,a3
    80002b88:	02079793          	slli	a5,a5,0x20
    80002b8c:	0207d793          	srli	a5,a5,0x20
    80002b90:	00fd87b3          	add	a5,s11,a5
    80002b94:	0007c503          	lbu	a0,0(a5)
    80002b98:	02d757bb          	divuw	a5,a4,a3
    80002b9c:	f8a40123          	sb	a0,-126(s0)
    80002ba0:	48e5f263          	bgeu	a1,a4,80003024 <__printf+0x5fc>
    80002ba4:	06300513          	li	a0,99
    80002ba8:	02d7f5bb          	remuw	a1,a5,a3
    80002bac:	02059593          	slli	a1,a1,0x20
    80002bb0:	0205d593          	srli	a1,a1,0x20
    80002bb4:	00bd85b3          	add	a1,s11,a1
    80002bb8:	0005c583          	lbu	a1,0(a1)
    80002bbc:	02d7d7bb          	divuw	a5,a5,a3
    80002bc0:	f8b401a3          	sb	a1,-125(s0)
    80002bc4:	48e57263          	bgeu	a0,a4,80003048 <__printf+0x620>
    80002bc8:	3e700513          	li	a0,999
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40223          	sb	a1,-124(s0)
    80002be8:	46e57663          	bgeu	a0,a4,80003054 <__printf+0x62c>
    80002bec:	02d7f5bb          	remuw	a1,a5,a3
    80002bf0:	02059593          	slli	a1,a1,0x20
    80002bf4:	0205d593          	srli	a1,a1,0x20
    80002bf8:	00bd85b3          	add	a1,s11,a1
    80002bfc:	0005c583          	lbu	a1,0(a1)
    80002c00:	02d7d7bb          	divuw	a5,a5,a3
    80002c04:	f8b402a3          	sb	a1,-123(s0)
    80002c08:	46ea7863          	bgeu	s4,a4,80003078 <__printf+0x650>
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b40323          	sb	a1,-122(s0)
    80002c28:	3eeaf863          	bgeu	s5,a4,80003018 <__printf+0x5f0>
    80002c2c:	02d7f5bb          	remuw	a1,a5,a3
    80002c30:	02059593          	slli	a1,a1,0x20
    80002c34:	0205d593          	srli	a1,a1,0x20
    80002c38:	00bd85b3          	add	a1,s11,a1
    80002c3c:	0005c583          	lbu	a1,0(a1)
    80002c40:	02d7d7bb          	divuw	a5,a5,a3
    80002c44:	f8b403a3          	sb	a1,-121(s0)
    80002c48:	42eb7e63          	bgeu	s6,a4,80003084 <__printf+0x65c>
    80002c4c:	02d7f5bb          	remuw	a1,a5,a3
    80002c50:	02059593          	slli	a1,a1,0x20
    80002c54:	0205d593          	srli	a1,a1,0x20
    80002c58:	00bd85b3          	add	a1,s11,a1
    80002c5c:	0005c583          	lbu	a1,0(a1)
    80002c60:	02d7d7bb          	divuw	a5,a5,a3
    80002c64:	f8b40423          	sb	a1,-120(s0)
    80002c68:	42ebfc63          	bgeu	s7,a4,800030a0 <__printf+0x678>
    80002c6c:	02079793          	slli	a5,a5,0x20
    80002c70:	0207d793          	srli	a5,a5,0x20
    80002c74:	00fd8db3          	add	s11,s11,a5
    80002c78:	000dc703          	lbu	a4,0(s11)
    80002c7c:	00a00793          	li	a5,10
    80002c80:	00900c93          	li	s9,9
    80002c84:	f8e404a3          	sb	a4,-119(s0)
    80002c88:	00065c63          	bgez	a2,80002ca0 <__printf+0x278>
    80002c8c:	f9040713          	addi	a4,s0,-112
    80002c90:	00f70733          	add	a4,a4,a5
    80002c94:	02d00693          	li	a3,45
    80002c98:	fed70823          	sb	a3,-16(a4)
    80002c9c:	00078c93          	mv	s9,a5
    80002ca0:	f8040793          	addi	a5,s0,-128
    80002ca4:	01978cb3          	add	s9,a5,s9
    80002ca8:	f7f40d13          	addi	s10,s0,-129
    80002cac:	000cc503          	lbu	a0,0(s9)
    80002cb0:	fffc8c93          	addi	s9,s9,-1
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	b90080e7          	jalr	-1136(ra) # 80002844 <consputc>
    80002cbc:	ffac98e3          	bne	s9,s10,80002cac <__printf+0x284>
    80002cc0:	00094503          	lbu	a0,0(s2)
    80002cc4:	e00514e3          	bnez	a0,80002acc <__printf+0xa4>
    80002cc8:	1a0c1663          	bnez	s8,80002e74 <__printf+0x44c>
    80002ccc:	08813083          	ld	ra,136(sp)
    80002cd0:	08013403          	ld	s0,128(sp)
    80002cd4:	07813483          	ld	s1,120(sp)
    80002cd8:	07013903          	ld	s2,112(sp)
    80002cdc:	06813983          	ld	s3,104(sp)
    80002ce0:	06013a03          	ld	s4,96(sp)
    80002ce4:	05813a83          	ld	s5,88(sp)
    80002ce8:	05013b03          	ld	s6,80(sp)
    80002cec:	04813b83          	ld	s7,72(sp)
    80002cf0:	04013c03          	ld	s8,64(sp)
    80002cf4:	03813c83          	ld	s9,56(sp)
    80002cf8:	03013d03          	ld	s10,48(sp)
    80002cfc:	02813d83          	ld	s11,40(sp)
    80002d00:	0d010113          	addi	sp,sp,208
    80002d04:	00008067          	ret
    80002d08:	07300713          	li	a4,115
    80002d0c:	1ce78a63          	beq	a5,a4,80002ee0 <__printf+0x4b8>
    80002d10:	07800713          	li	a4,120
    80002d14:	1ee79e63          	bne	a5,a4,80002f10 <__printf+0x4e8>
    80002d18:	f7843783          	ld	a5,-136(s0)
    80002d1c:	0007a703          	lw	a4,0(a5)
    80002d20:	00878793          	addi	a5,a5,8
    80002d24:	f6f43c23          	sd	a5,-136(s0)
    80002d28:	28074263          	bltz	a4,80002fac <__printf+0x584>
    80002d2c:	00002d97          	auipc	s11,0x2
    80002d30:	49cd8d93          	addi	s11,s11,1180 # 800051c8 <digits>
    80002d34:	00f77793          	andi	a5,a4,15
    80002d38:	00fd87b3          	add	a5,s11,a5
    80002d3c:	0007c683          	lbu	a3,0(a5)
    80002d40:	00f00613          	li	a2,15
    80002d44:	0007079b          	sext.w	a5,a4
    80002d48:	f8d40023          	sb	a3,-128(s0)
    80002d4c:	0047559b          	srliw	a1,a4,0x4
    80002d50:	0047569b          	srliw	a3,a4,0x4
    80002d54:	00000c93          	li	s9,0
    80002d58:	0ee65063          	bge	a2,a4,80002e38 <__printf+0x410>
    80002d5c:	00f6f693          	andi	a3,a3,15
    80002d60:	00dd86b3          	add	a3,s11,a3
    80002d64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d68:	0087d79b          	srliw	a5,a5,0x8
    80002d6c:	00100c93          	li	s9,1
    80002d70:	f8d400a3          	sb	a3,-127(s0)
    80002d74:	0cb67263          	bgeu	a2,a1,80002e38 <__printf+0x410>
    80002d78:	00f7f693          	andi	a3,a5,15
    80002d7c:	00dd86b3          	add	a3,s11,a3
    80002d80:	0006c583          	lbu	a1,0(a3)
    80002d84:	00f00613          	li	a2,15
    80002d88:	0047d69b          	srliw	a3,a5,0x4
    80002d8c:	f8b40123          	sb	a1,-126(s0)
    80002d90:	0047d593          	srli	a1,a5,0x4
    80002d94:	28f67e63          	bgeu	a2,a5,80003030 <__printf+0x608>
    80002d98:	00f6f693          	andi	a3,a3,15
    80002d9c:	00dd86b3          	add	a3,s11,a3
    80002da0:	0006c503          	lbu	a0,0(a3)
    80002da4:	0087d813          	srli	a6,a5,0x8
    80002da8:	0087d69b          	srliw	a3,a5,0x8
    80002dac:	f8a401a3          	sb	a0,-125(s0)
    80002db0:	28b67663          	bgeu	a2,a1,8000303c <__printf+0x614>
    80002db4:	00f6f693          	andi	a3,a3,15
    80002db8:	00dd86b3          	add	a3,s11,a3
    80002dbc:	0006c583          	lbu	a1,0(a3)
    80002dc0:	00c7d513          	srli	a0,a5,0xc
    80002dc4:	00c7d69b          	srliw	a3,a5,0xc
    80002dc8:	f8b40223          	sb	a1,-124(s0)
    80002dcc:	29067a63          	bgeu	a2,a6,80003060 <__printf+0x638>
    80002dd0:	00f6f693          	andi	a3,a3,15
    80002dd4:	00dd86b3          	add	a3,s11,a3
    80002dd8:	0006c583          	lbu	a1,0(a3)
    80002ddc:	0107d813          	srli	a6,a5,0x10
    80002de0:	0107d69b          	srliw	a3,a5,0x10
    80002de4:	f8b402a3          	sb	a1,-123(s0)
    80002de8:	28a67263          	bgeu	a2,a0,8000306c <__printf+0x644>
    80002dec:	00f6f693          	andi	a3,a3,15
    80002df0:	00dd86b3          	add	a3,s11,a3
    80002df4:	0006c683          	lbu	a3,0(a3)
    80002df8:	0147d79b          	srliw	a5,a5,0x14
    80002dfc:	f8d40323          	sb	a3,-122(s0)
    80002e00:	21067663          	bgeu	a2,a6,8000300c <__printf+0x5e4>
    80002e04:	02079793          	slli	a5,a5,0x20
    80002e08:	0207d793          	srli	a5,a5,0x20
    80002e0c:	00fd8db3          	add	s11,s11,a5
    80002e10:	000dc683          	lbu	a3,0(s11)
    80002e14:	00800793          	li	a5,8
    80002e18:	00700c93          	li	s9,7
    80002e1c:	f8d403a3          	sb	a3,-121(s0)
    80002e20:	00075c63          	bgez	a4,80002e38 <__printf+0x410>
    80002e24:	f9040713          	addi	a4,s0,-112
    80002e28:	00f70733          	add	a4,a4,a5
    80002e2c:	02d00693          	li	a3,45
    80002e30:	fed70823          	sb	a3,-16(a4)
    80002e34:	00078c93          	mv	s9,a5
    80002e38:	f8040793          	addi	a5,s0,-128
    80002e3c:	01978cb3          	add	s9,a5,s9
    80002e40:	f7f40d13          	addi	s10,s0,-129
    80002e44:	000cc503          	lbu	a0,0(s9)
    80002e48:	fffc8c93          	addi	s9,s9,-1
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	9f8080e7          	jalr	-1544(ra) # 80002844 <consputc>
    80002e54:	ff9d18e3          	bne	s10,s9,80002e44 <__printf+0x41c>
    80002e58:	0100006f          	j	80002e68 <__printf+0x440>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	9e8080e7          	jalr	-1560(ra) # 80002844 <consputc>
    80002e64:	000c8493          	mv	s1,s9
    80002e68:	00094503          	lbu	a0,0(s2)
    80002e6c:	c60510e3          	bnez	a0,80002acc <__printf+0xa4>
    80002e70:	e40c0ee3          	beqz	s8,80002ccc <__printf+0x2a4>
    80002e74:	00004517          	auipc	a0,0x4
    80002e78:	cdc50513          	addi	a0,a0,-804 # 80006b50 <pr>
    80002e7c:	00001097          	auipc	ra,0x1
    80002e80:	94c080e7          	jalr	-1716(ra) # 800037c8 <release>
    80002e84:	e49ff06f          	j	80002ccc <__printf+0x2a4>
    80002e88:	f7843783          	ld	a5,-136(s0)
    80002e8c:	03000513          	li	a0,48
    80002e90:	01000d13          	li	s10,16
    80002e94:	00878713          	addi	a4,a5,8
    80002e98:	0007bc83          	ld	s9,0(a5)
    80002e9c:	f6e43c23          	sd	a4,-136(s0)
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	9a4080e7          	jalr	-1628(ra) # 80002844 <consputc>
    80002ea8:	07800513          	li	a0,120
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	998080e7          	jalr	-1640(ra) # 80002844 <consputc>
    80002eb4:	00002d97          	auipc	s11,0x2
    80002eb8:	314d8d93          	addi	s11,s11,788 # 800051c8 <digits>
    80002ebc:	03ccd793          	srli	a5,s9,0x3c
    80002ec0:	00fd87b3          	add	a5,s11,a5
    80002ec4:	0007c503          	lbu	a0,0(a5)
    80002ec8:	fffd0d1b          	addiw	s10,s10,-1
    80002ecc:	004c9c93          	slli	s9,s9,0x4
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	974080e7          	jalr	-1676(ra) # 80002844 <consputc>
    80002ed8:	fe0d12e3          	bnez	s10,80002ebc <__printf+0x494>
    80002edc:	f8dff06f          	j	80002e68 <__printf+0x440>
    80002ee0:	f7843783          	ld	a5,-136(s0)
    80002ee4:	0007bc83          	ld	s9,0(a5)
    80002ee8:	00878793          	addi	a5,a5,8
    80002eec:	f6f43c23          	sd	a5,-136(s0)
    80002ef0:	000c9a63          	bnez	s9,80002f04 <__printf+0x4dc>
    80002ef4:	1080006f          	j	80002ffc <__printf+0x5d4>
    80002ef8:	001c8c93          	addi	s9,s9,1
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	948080e7          	jalr	-1720(ra) # 80002844 <consputc>
    80002f04:	000cc503          	lbu	a0,0(s9)
    80002f08:	fe0518e3          	bnez	a0,80002ef8 <__printf+0x4d0>
    80002f0c:	f5dff06f          	j	80002e68 <__printf+0x440>
    80002f10:	02500513          	li	a0,37
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	930080e7          	jalr	-1744(ra) # 80002844 <consputc>
    80002f1c:	000c8513          	mv	a0,s9
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	924080e7          	jalr	-1756(ra) # 80002844 <consputc>
    80002f28:	f41ff06f          	j	80002e68 <__printf+0x440>
    80002f2c:	02500513          	li	a0,37
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	914080e7          	jalr	-1772(ra) # 80002844 <consputc>
    80002f38:	f31ff06f          	j	80002e68 <__printf+0x440>
    80002f3c:	00030513          	mv	a0,t1
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	7bc080e7          	jalr	1980(ra) # 800036fc <acquire>
    80002f48:	b4dff06f          	j	80002a94 <__printf+0x6c>
    80002f4c:	40c0053b          	negw	a0,a2
    80002f50:	00a00713          	li	a4,10
    80002f54:	02e576bb          	remuw	a3,a0,a4
    80002f58:	00002d97          	auipc	s11,0x2
    80002f5c:	270d8d93          	addi	s11,s11,624 # 800051c8 <digits>
    80002f60:	ff700593          	li	a1,-9
    80002f64:	02069693          	slli	a3,a3,0x20
    80002f68:	0206d693          	srli	a3,a3,0x20
    80002f6c:	00dd86b3          	add	a3,s11,a3
    80002f70:	0006c683          	lbu	a3,0(a3)
    80002f74:	02e557bb          	divuw	a5,a0,a4
    80002f78:	f8d40023          	sb	a3,-128(s0)
    80002f7c:	10b65e63          	bge	a2,a1,80003098 <__printf+0x670>
    80002f80:	06300593          	li	a1,99
    80002f84:	02e7f6bb          	remuw	a3,a5,a4
    80002f88:	02069693          	slli	a3,a3,0x20
    80002f8c:	0206d693          	srli	a3,a3,0x20
    80002f90:	00dd86b3          	add	a3,s11,a3
    80002f94:	0006c683          	lbu	a3,0(a3)
    80002f98:	02e7d73b          	divuw	a4,a5,a4
    80002f9c:	00200793          	li	a5,2
    80002fa0:	f8d400a3          	sb	a3,-127(s0)
    80002fa4:	bca5ece3          	bltu	a1,a0,80002b7c <__printf+0x154>
    80002fa8:	ce5ff06f          	j	80002c8c <__printf+0x264>
    80002fac:	40e007bb          	negw	a5,a4
    80002fb0:	00002d97          	auipc	s11,0x2
    80002fb4:	218d8d93          	addi	s11,s11,536 # 800051c8 <digits>
    80002fb8:	00f7f693          	andi	a3,a5,15
    80002fbc:	00dd86b3          	add	a3,s11,a3
    80002fc0:	0006c583          	lbu	a1,0(a3)
    80002fc4:	ff100613          	li	a2,-15
    80002fc8:	0047d69b          	srliw	a3,a5,0x4
    80002fcc:	f8b40023          	sb	a1,-128(s0)
    80002fd0:	0047d59b          	srliw	a1,a5,0x4
    80002fd4:	0ac75e63          	bge	a4,a2,80003090 <__printf+0x668>
    80002fd8:	00f6f693          	andi	a3,a3,15
    80002fdc:	00dd86b3          	add	a3,s11,a3
    80002fe0:	0006c603          	lbu	a2,0(a3)
    80002fe4:	00f00693          	li	a3,15
    80002fe8:	0087d79b          	srliw	a5,a5,0x8
    80002fec:	f8c400a3          	sb	a2,-127(s0)
    80002ff0:	d8b6e4e3          	bltu	a3,a1,80002d78 <__printf+0x350>
    80002ff4:	00200793          	li	a5,2
    80002ff8:	e2dff06f          	j	80002e24 <__printf+0x3fc>
    80002ffc:	00002c97          	auipc	s9,0x2
    80003000:	1acc8c93          	addi	s9,s9,428 # 800051a8 <_ZZ12printIntegermE6digits+0x148>
    80003004:	02800513          	li	a0,40
    80003008:	ef1ff06f          	j	80002ef8 <__printf+0x4d0>
    8000300c:	00700793          	li	a5,7
    80003010:	00600c93          	li	s9,6
    80003014:	e0dff06f          	j	80002e20 <__printf+0x3f8>
    80003018:	00700793          	li	a5,7
    8000301c:	00600c93          	li	s9,6
    80003020:	c69ff06f          	j	80002c88 <__printf+0x260>
    80003024:	00300793          	li	a5,3
    80003028:	00200c93          	li	s9,2
    8000302c:	c5dff06f          	j	80002c88 <__printf+0x260>
    80003030:	00300793          	li	a5,3
    80003034:	00200c93          	li	s9,2
    80003038:	de9ff06f          	j	80002e20 <__printf+0x3f8>
    8000303c:	00400793          	li	a5,4
    80003040:	00300c93          	li	s9,3
    80003044:	dddff06f          	j	80002e20 <__printf+0x3f8>
    80003048:	00400793          	li	a5,4
    8000304c:	00300c93          	li	s9,3
    80003050:	c39ff06f          	j	80002c88 <__printf+0x260>
    80003054:	00500793          	li	a5,5
    80003058:	00400c93          	li	s9,4
    8000305c:	c2dff06f          	j	80002c88 <__printf+0x260>
    80003060:	00500793          	li	a5,5
    80003064:	00400c93          	li	s9,4
    80003068:	db9ff06f          	j	80002e20 <__printf+0x3f8>
    8000306c:	00600793          	li	a5,6
    80003070:	00500c93          	li	s9,5
    80003074:	dadff06f          	j	80002e20 <__printf+0x3f8>
    80003078:	00600793          	li	a5,6
    8000307c:	00500c93          	li	s9,5
    80003080:	c09ff06f          	j	80002c88 <__printf+0x260>
    80003084:	00800793          	li	a5,8
    80003088:	00700c93          	li	s9,7
    8000308c:	bfdff06f          	j	80002c88 <__printf+0x260>
    80003090:	00100793          	li	a5,1
    80003094:	d91ff06f          	j	80002e24 <__printf+0x3fc>
    80003098:	00100793          	li	a5,1
    8000309c:	bf1ff06f          	j	80002c8c <__printf+0x264>
    800030a0:	00900793          	li	a5,9
    800030a4:	00800c93          	li	s9,8
    800030a8:	be1ff06f          	j	80002c88 <__printf+0x260>
    800030ac:	00002517          	auipc	a0,0x2
    800030b0:	10450513          	addi	a0,a0,260 # 800051b0 <_ZZ12printIntegermE6digits+0x150>
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	918080e7          	jalr	-1768(ra) # 800029cc <panic>

00000000800030bc <printfinit>:
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	00004497          	auipc	s1,0x4
    800030d4:	a8048493          	addi	s1,s1,-1408 # 80006b50 <pr>
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00002597          	auipc	a1,0x2
    800030e0:	0e458593          	addi	a1,a1,228 # 800051c0 <_ZZ12printIntegermE6digits+0x160>
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	5f4080e7          	jalr	1524(ra) # 800036d8 <initlock>
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	0004ac23          	sw	zero,24(s1)
    800030f8:	00813483          	ld	s1,8(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret

0000000080003104 <uartinit>:
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00813423          	sd	s0,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    80003110:	100007b7          	lui	a5,0x10000
    80003114:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003118:	f8000713          	li	a4,-128
    8000311c:	00e781a3          	sb	a4,3(a5)
    80003120:	00300713          	li	a4,3
    80003124:	00e78023          	sb	a4,0(a5)
    80003128:	000780a3          	sb	zero,1(a5)
    8000312c:	00e781a3          	sb	a4,3(a5)
    80003130:	00700693          	li	a3,7
    80003134:	00d78123          	sb	a3,2(a5)
    80003138:	00e780a3          	sb	a4,1(a5)
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <uartputc>:
    80003148:	00002797          	auipc	a5,0x2
    8000314c:	7907a783          	lw	a5,1936(a5) # 800058d8 <panicked>
    80003150:	00078463          	beqz	a5,80003158 <uartputc+0x10>
    80003154:	0000006f          	j	80003154 <uartputc+0xc>
    80003158:	fd010113          	addi	sp,sp,-48
    8000315c:	02813023          	sd	s0,32(sp)
    80003160:	00913c23          	sd	s1,24(sp)
    80003164:	01213823          	sd	s2,16(sp)
    80003168:	01313423          	sd	s3,8(sp)
    8000316c:	02113423          	sd	ra,40(sp)
    80003170:	03010413          	addi	s0,sp,48
    80003174:	00002917          	auipc	s2,0x2
    80003178:	76c90913          	addi	s2,s2,1900 # 800058e0 <uart_tx_r>
    8000317c:	00093783          	ld	a5,0(s2)
    80003180:	00002497          	auipc	s1,0x2
    80003184:	76848493          	addi	s1,s1,1896 # 800058e8 <uart_tx_w>
    80003188:	0004b703          	ld	a4,0(s1)
    8000318c:	02078693          	addi	a3,a5,32
    80003190:	00050993          	mv	s3,a0
    80003194:	02e69c63          	bne	a3,a4,800031cc <uartputc+0x84>
    80003198:	00001097          	auipc	ra,0x1
    8000319c:	834080e7          	jalr	-1996(ra) # 800039cc <push_on>
    800031a0:	00093783          	ld	a5,0(s2)
    800031a4:	0004b703          	ld	a4,0(s1)
    800031a8:	02078793          	addi	a5,a5,32
    800031ac:	00e79463          	bne	a5,a4,800031b4 <uartputc+0x6c>
    800031b0:	0000006f          	j	800031b0 <uartputc+0x68>
    800031b4:	00001097          	auipc	ra,0x1
    800031b8:	88c080e7          	jalr	-1908(ra) # 80003a40 <pop_on>
    800031bc:	00093783          	ld	a5,0(s2)
    800031c0:	0004b703          	ld	a4,0(s1)
    800031c4:	02078693          	addi	a3,a5,32
    800031c8:	fce688e3          	beq	a3,a4,80003198 <uartputc+0x50>
    800031cc:	01f77693          	andi	a3,a4,31
    800031d0:	00004597          	auipc	a1,0x4
    800031d4:	9a058593          	addi	a1,a1,-1632 # 80006b70 <uart_tx_buf>
    800031d8:	00d586b3          	add	a3,a1,a3
    800031dc:	00170713          	addi	a4,a4,1
    800031e0:	01368023          	sb	s3,0(a3)
    800031e4:	00e4b023          	sd	a4,0(s1)
    800031e8:	10000637          	lui	a2,0x10000
    800031ec:	02f71063          	bne	a4,a5,8000320c <uartputc+0xc4>
    800031f0:	0340006f          	j	80003224 <uartputc+0xdc>
    800031f4:	00074703          	lbu	a4,0(a4)
    800031f8:	00f93023          	sd	a5,0(s2)
    800031fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003200:	00093783          	ld	a5,0(s2)
    80003204:	0004b703          	ld	a4,0(s1)
    80003208:	00f70e63          	beq	a4,a5,80003224 <uartputc+0xdc>
    8000320c:	00564683          	lbu	a3,5(a2)
    80003210:	01f7f713          	andi	a4,a5,31
    80003214:	00e58733          	add	a4,a1,a4
    80003218:	0206f693          	andi	a3,a3,32
    8000321c:	00178793          	addi	a5,a5,1
    80003220:	fc069ae3          	bnez	a3,800031f4 <uartputc+0xac>
    80003224:	02813083          	ld	ra,40(sp)
    80003228:	02013403          	ld	s0,32(sp)
    8000322c:	01813483          	ld	s1,24(sp)
    80003230:	01013903          	ld	s2,16(sp)
    80003234:	00813983          	ld	s3,8(sp)
    80003238:	03010113          	addi	sp,sp,48
    8000323c:	00008067          	ret

0000000080003240 <uartputc_sync>:
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00813423          	sd	s0,8(sp)
    80003248:	01010413          	addi	s0,sp,16
    8000324c:	00002717          	auipc	a4,0x2
    80003250:	68c72703          	lw	a4,1676(a4) # 800058d8 <panicked>
    80003254:	02071663          	bnez	a4,80003280 <uartputc_sync+0x40>
    80003258:	00050793          	mv	a5,a0
    8000325c:	100006b7          	lui	a3,0x10000
    80003260:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003264:	02077713          	andi	a4,a4,32
    80003268:	fe070ce3          	beqz	a4,80003260 <uartputc_sync+0x20>
    8000326c:	0ff7f793          	andi	a5,a5,255
    80003270:	00f68023          	sb	a5,0(a3)
    80003274:	00813403          	ld	s0,8(sp)
    80003278:	01010113          	addi	sp,sp,16
    8000327c:	00008067          	ret
    80003280:	0000006f          	j	80003280 <uartputc_sync+0x40>

0000000080003284 <uartstart>:
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00813423          	sd	s0,8(sp)
    8000328c:	01010413          	addi	s0,sp,16
    80003290:	00002617          	auipc	a2,0x2
    80003294:	65060613          	addi	a2,a2,1616 # 800058e0 <uart_tx_r>
    80003298:	00002517          	auipc	a0,0x2
    8000329c:	65050513          	addi	a0,a0,1616 # 800058e8 <uart_tx_w>
    800032a0:	00063783          	ld	a5,0(a2)
    800032a4:	00053703          	ld	a4,0(a0)
    800032a8:	04f70263          	beq	a4,a5,800032ec <uartstart+0x68>
    800032ac:	100005b7          	lui	a1,0x10000
    800032b0:	00004817          	auipc	a6,0x4
    800032b4:	8c080813          	addi	a6,a6,-1856 # 80006b70 <uart_tx_buf>
    800032b8:	01c0006f          	j	800032d4 <uartstart+0x50>
    800032bc:	0006c703          	lbu	a4,0(a3)
    800032c0:	00f63023          	sd	a5,0(a2)
    800032c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032c8:	00063783          	ld	a5,0(a2)
    800032cc:	00053703          	ld	a4,0(a0)
    800032d0:	00f70e63          	beq	a4,a5,800032ec <uartstart+0x68>
    800032d4:	01f7f713          	andi	a4,a5,31
    800032d8:	00e806b3          	add	a3,a6,a4
    800032dc:	0055c703          	lbu	a4,5(a1)
    800032e0:	00178793          	addi	a5,a5,1
    800032e4:	02077713          	andi	a4,a4,32
    800032e8:	fc071ae3          	bnez	a4,800032bc <uartstart+0x38>
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <uartgetc>:
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00813423          	sd	s0,8(sp)
    80003300:	01010413          	addi	s0,sp,16
    80003304:	10000737          	lui	a4,0x10000
    80003308:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000330c:	0017f793          	andi	a5,a5,1
    80003310:	00078c63          	beqz	a5,80003328 <uartgetc+0x30>
    80003314:	00074503          	lbu	a0,0(a4)
    80003318:	0ff57513          	andi	a0,a0,255
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret
    80003328:	fff00513          	li	a0,-1
    8000332c:	ff1ff06f          	j	8000331c <uartgetc+0x24>

0000000080003330 <uartintr>:
    80003330:	100007b7          	lui	a5,0x10000
    80003334:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003338:	0017f793          	andi	a5,a5,1
    8000333c:	0a078463          	beqz	a5,800033e4 <uartintr+0xb4>
    80003340:	fe010113          	addi	sp,sp,-32
    80003344:	00813823          	sd	s0,16(sp)
    80003348:	00913423          	sd	s1,8(sp)
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	02010413          	addi	s0,sp,32
    80003354:	100004b7          	lui	s1,0x10000
    80003358:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000335c:	0ff57513          	andi	a0,a0,255
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	534080e7          	jalr	1332(ra) # 80002894 <consoleintr>
    80003368:	0054c783          	lbu	a5,5(s1)
    8000336c:	0017f793          	andi	a5,a5,1
    80003370:	fe0794e3          	bnez	a5,80003358 <uartintr+0x28>
    80003374:	00002617          	auipc	a2,0x2
    80003378:	56c60613          	addi	a2,a2,1388 # 800058e0 <uart_tx_r>
    8000337c:	00002517          	auipc	a0,0x2
    80003380:	56c50513          	addi	a0,a0,1388 # 800058e8 <uart_tx_w>
    80003384:	00063783          	ld	a5,0(a2)
    80003388:	00053703          	ld	a4,0(a0)
    8000338c:	04f70263          	beq	a4,a5,800033d0 <uartintr+0xa0>
    80003390:	100005b7          	lui	a1,0x10000
    80003394:	00003817          	auipc	a6,0x3
    80003398:	7dc80813          	addi	a6,a6,2012 # 80006b70 <uart_tx_buf>
    8000339c:	01c0006f          	j	800033b8 <uartintr+0x88>
    800033a0:	0006c703          	lbu	a4,0(a3)
    800033a4:	00f63023          	sd	a5,0(a2)
    800033a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033ac:	00063783          	ld	a5,0(a2)
    800033b0:	00053703          	ld	a4,0(a0)
    800033b4:	00f70e63          	beq	a4,a5,800033d0 <uartintr+0xa0>
    800033b8:	01f7f713          	andi	a4,a5,31
    800033bc:	00e806b3          	add	a3,a6,a4
    800033c0:	0055c703          	lbu	a4,5(a1)
    800033c4:	00178793          	addi	a5,a5,1
    800033c8:	02077713          	andi	a4,a4,32
    800033cc:	fc071ae3          	bnez	a4,800033a0 <uartintr+0x70>
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret
    800033e4:	00002617          	auipc	a2,0x2
    800033e8:	4fc60613          	addi	a2,a2,1276 # 800058e0 <uart_tx_r>
    800033ec:	00002517          	auipc	a0,0x2
    800033f0:	4fc50513          	addi	a0,a0,1276 # 800058e8 <uart_tx_w>
    800033f4:	00063783          	ld	a5,0(a2)
    800033f8:	00053703          	ld	a4,0(a0)
    800033fc:	04f70263          	beq	a4,a5,80003440 <uartintr+0x110>
    80003400:	100005b7          	lui	a1,0x10000
    80003404:	00003817          	auipc	a6,0x3
    80003408:	76c80813          	addi	a6,a6,1900 # 80006b70 <uart_tx_buf>
    8000340c:	01c0006f          	j	80003428 <uartintr+0xf8>
    80003410:	0006c703          	lbu	a4,0(a3)
    80003414:	00f63023          	sd	a5,0(a2)
    80003418:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000341c:	00063783          	ld	a5,0(a2)
    80003420:	00053703          	ld	a4,0(a0)
    80003424:	02f70063          	beq	a4,a5,80003444 <uartintr+0x114>
    80003428:	01f7f713          	andi	a4,a5,31
    8000342c:	00e806b3          	add	a3,a6,a4
    80003430:	0055c703          	lbu	a4,5(a1)
    80003434:	00178793          	addi	a5,a5,1
    80003438:	02077713          	andi	a4,a4,32
    8000343c:	fc071ae3          	bnez	a4,80003410 <uartintr+0xe0>
    80003440:	00008067          	ret
    80003444:	00008067          	ret

0000000080003448 <kinit>:
    80003448:	fc010113          	addi	sp,sp,-64
    8000344c:	02913423          	sd	s1,40(sp)
    80003450:	fffff7b7          	lui	a5,0xfffff
    80003454:	00004497          	auipc	s1,0x4
    80003458:	74b48493          	addi	s1,s1,1867 # 80007b9f <end+0xfff>
    8000345c:	02813823          	sd	s0,48(sp)
    80003460:	01313c23          	sd	s3,24(sp)
    80003464:	00f4f4b3          	and	s1,s1,a5
    80003468:	02113c23          	sd	ra,56(sp)
    8000346c:	03213023          	sd	s2,32(sp)
    80003470:	01413823          	sd	s4,16(sp)
    80003474:	01513423          	sd	s5,8(sp)
    80003478:	04010413          	addi	s0,sp,64
    8000347c:	000017b7          	lui	a5,0x1
    80003480:	01100993          	li	s3,17
    80003484:	00f487b3          	add	a5,s1,a5
    80003488:	01b99993          	slli	s3,s3,0x1b
    8000348c:	06f9e063          	bltu	s3,a5,800034ec <kinit+0xa4>
    80003490:	00003a97          	auipc	s5,0x3
    80003494:	710a8a93          	addi	s5,s5,1808 # 80006ba0 <end>
    80003498:	0754ec63          	bltu	s1,s5,80003510 <kinit+0xc8>
    8000349c:	0734fa63          	bgeu	s1,s3,80003510 <kinit+0xc8>
    800034a0:	00088a37          	lui	s4,0x88
    800034a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800034a8:	00002917          	auipc	s2,0x2
    800034ac:	44890913          	addi	s2,s2,1096 # 800058f0 <kmem>
    800034b0:	00ca1a13          	slli	s4,s4,0xc
    800034b4:	0140006f          	j	800034c8 <kinit+0x80>
    800034b8:	000017b7          	lui	a5,0x1
    800034bc:	00f484b3          	add	s1,s1,a5
    800034c0:	0554e863          	bltu	s1,s5,80003510 <kinit+0xc8>
    800034c4:	0534f663          	bgeu	s1,s3,80003510 <kinit+0xc8>
    800034c8:	00001637          	lui	a2,0x1
    800034cc:	00100593          	li	a1,1
    800034d0:	00048513          	mv	a0,s1
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	5e4080e7          	jalr	1508(ra) # 80003ab8 <__memset>
    800034dc:	00093783          	ld	a5,0(s2)
    800034e0:	00f4b023          	sd	a5,0(s1)
    800034e4:	00993023          	sd	s1,0(s2)
    800034e8:	fd4498e3          	bne	s1,s4,800034b8 <kinit+0x70>
    800034ec:	03813083          	ld	ra,56(sp)
    800034f0:	03013403          	ld	s0,48(sp)
    800034f4:	02813483          	ld	s1,40(sp)
    800034f8:	02013903          	ld	s2,32(sp)
    800034fc:	01813983          	ld	s3,24(sp)
    80003500:	01013a03          	ld	s4,16(sp)
    80003504:	00813a83          	ld	s5,8(sp)
    80003508:	04010113          	addi	sp,sp,64
    8000350c:	00008067          	ret
    80003510:	00002517          	auipc	a0,0x2
    80003514:	cd050513          	addi	a0,a0,-816 # 800051e0 <digits+0x18>
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	4b4080e7          	jalr	1204(ra) # 800029cc <panic>

0000000080003520 <freerange>:
    80003520:	fc010113          	addi	sp,sp,-64
    80003524:	000017b7          	lui	a5,0x1
    80003528:	02913423          	sd	s1,40(sp)
    8000352c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003530:	009504b3          	add	s1,a0,s1
    80003534:	fffff537          	lui	a0,0xfffff
    80003538:	02813823          	sd	s0,48(sp)
    8000353c:	02113c23          	sd	ra,56(sp)
    80003540:	03213023          	sd	s2,32(sp)
    80003544:	01313c23          	sd	s3,24(sp)
    80003548:	01413823          	sd	s4,16(sp)
    8000354c:	01513423          	sd	s5,8(sp)
    80003550:	01613023          	sd	s6,0(sp)
    80003554:	04010413          	addi	s0,sp,64
    80003558:	00a4f4b3          	and	s1,s1,a0
    8000355c:	00f487b3          	add	a5,s1,a5
    80003560:	06f5e463          	bltu	a1,a5,800035c8 <freerange+0xa8>
    80003564:	00003a97          	auipc	s5,0x3
    80003568:	63ca8a93          	addi	s5,s5,1596 # 80006ba0 <end>
    8000356c:	0954e263          	bltu	s1,s5,800035f0 <freerange+0xd0>
    80003570:	01100993          	li	s3,17
    80003574:	01b99993          	slli	s3,s3,0x1b
    80003578:	0734fc63          	bgeu	s1,s3,800035f0 <freerange+0xd0>
    8000357c:	00058a13          	mv	s4,a1
    80003580:	00002917          	auipc	s2,0x2
    80003584:	37090913          	addi	s2,s2,880 # 800058f0 <kmem>
    80003588:	00002b37          	lui	s6,0x2
    8000358c:	0140006f          	j	800035a0 <freerange+0x80>
    80003590:	000017b7          	lui	a5,0x1
    80003594:	00f484b3          	add	s1,s1,a5
    80003598:	0554ec63          	bltu	s1,s5,800035f0 <freerange+0xd0>
    8000359c:	0534fa63          	bgeu	s1,s3,800035f0 <freerange+0xd0>
    800035a0:	00001637          	lui	a2,0x1
    800035a4:	00100593          	li	a1,1
    800035a8:	00048513          	mv	a0,s1
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	50c080e7          	jalr	1292(ra) # 80003ab8 <__memset>
    800035b4:	00093703          	ld	a4,0(s2)
    800035b8:	016487b3          	add	a5,s1,s6
    800035bc:	00e4b023          	sd	a4,0(s1)
    800035c0:	00993023          	sd	s1,0(s2)
    800035c4:	fcfa76e3          	bgeu	s4,a5,80003590 <freerange+0x70>
    800035c8:	03813083          	ld	ra,56(sp)
    800035cc:	03013403          	ld	s0,48(sp)
    800035d0:	02813483          	ld	s1,40(sp)
    800035d4:	02013903          	ld	s2,32(sp)
    800035d8:	01813983          	ld	s3,24(sp)
    800035dc:	01013a03          	ld	s4,16(sp)
    800035e0:	00813a83          	ld	s5,8(sp)
    800035e4:	00013b03          	ld	s6,0(sp)
    800035e8:	04010113          	addi	sp,sp,64
    800035ec:	00008067          	ret
    800035f0:	00002517          	auipc	a0,0x2
    800035f4:	bf050513          	addi	a0,a0,-1040 # 800051e0 <digits+0x18>
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	3d4080e7          	jalr	980(ra) # 800029cc <panic>

0000000080003600 <kfree>:
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	00913423          	sd	s1,8(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	03451793          	slli	a5,a0,0x34
    80003618:	04079c63          	bnez	a5,80003670 <kfree+0x70>
    8000361c:	00003797          	auipc	a5,0x3
    80003620:	58478793          	addi	a5,a5,1412 # 80006ba0 <end>
    80003624:	00050493          	mv	s1,a0
    80003628:	04f56463          	bltu	a0,a5,80003670 <kfree+0x70>
    8000362c:	01100793          	li	a5,17
    80003630:	01b79793          	slli	a5,a5,0x1b
    80003634:	02f57e63          	bgeu	a0,a5,80003670 <kfree+0x70>
    80003638:	00001637          	lui	a2,0x1
    8000363c:	00100593          	li	a1,1
    80003640:	00000097          	auipc	ra,0x0
    80003644:	478080e7          	jalr	1144(ra) # 80003ab8 <__memset>
    80003648:	00002797          	auipc	a5,0x2
    8000364c:	2a878793          	addi	a5,a5,680 # 800058f0 <kmem>
    80003650:	0007b703          	ld	a4,0(a5)
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00e4b023          	sd	a4,0(s1)
    80003660:	0097b023          	sd	s1,0(a5)
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret
    80003670:	00002517          	auipc	a0,0x2
    80003674:	b7050513          	addi	a0,a0,-1168 # 800051e0 <digits+0x18>
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	354080e7          	jalr	852(ra) # 800029cc <panic>

0000000080003680 <kalloc>:
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	00002797          	auipc	a5,0x2
    80003698:	25c78793          	addi	a5,a5,604 # 800058f0 <kmem>
    8000369c:	0007b483          	ld	s1,0(a5)
    800036a0:	02048063          	beqz	s1,800036c0 <kalloc+0x40>
    800036a4:	0004b703          	ld	a4,0(s1)
    800036a8:	00001637          	lui	a2,0x1
    800036ac:	00500593          	li	a1,5
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00e7b023          	sd	a4,0(a5)
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	400080e7          	jalr	1024(ra) # 80003ab8 <__memset>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret

00000000800036d8 <initlock>:
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00813423          	sd	s0,8(sp)
    800036e0:	01010413          	addi	s0,sp,16
    800036e4:	00813403          	ld	s0,8(sp)
    800036e8:	00b53423          	sd	a1,8(a0)
    800036ec:	00052023          	sw	zero,0(a0)
    800036f0:	00053823          	sd	zero,16(a0)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret

00000000800036fc <acquire>:
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	01213023          	sd	s2,0(sp)
    80003710:	02010413          	addi	s0,sp,32
    80003714:	00050493          	mv	s1,a0
    80003718:	10002973          	csrr	s2,sstatus
    8000371c:	100027f3          	csrr	a5,sstatus
    80003720:	ffd7f793          	andi	a5,a5,-3
    80003724:	10079073          	csrw	sstatus,a5
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	8e4080e7          	jalr	-1820(ra) # 8000200c <mycpu>
    80003730:	07852783          	lw	a5,120(a0)
    80003734:	06078e63          	beqz	a5,800037b0 <acquire+0xb4>
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	8d4080e7          	jalr	-1836(ra) # 8000200c <mycpu>
    80003740:	07852783          	lw	a5,120(a0)
    80003744:	0004a703          	lw	a4,0(s1)
    80003748:	0017879b          	addiw	a5,a5,1
    8000374c:	06f52c23          	sw	a5,120(a0)
    80003750:	04071063          	bnez	a4,80003790 <acquire+0x94>
    80003754:	00100713          	li	a4,1
    80003758:	00070793          	mv	a5,a4
    8000375c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003760:	0007879b          	sext.w	a5,a5
    80003764:	fe079ae3          	bnez	a5,80003758 <acquire+0x5c>
    80003768:	0ff0000f          	fence
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	8a0080e7          	jalr	-1888(ra) # 8000200c <mycpu>
    80003774:	01813083          	ld	ra,24(sp)
    80003778:	01013403          	ld	s0,16(sp)
    8000377c:	00a4b823          	sd	a0,16(s1)
    80003780:	00013903          	ld	s2,0(sp)
    80003784:	00813483          	ld	s1,8(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret
    80003790:	0104b903          	ld	s2,16(s1)
    80003794:	fffff097          	auipc	ra,0xfffff
    80003798:	878080e7          	jalr	-1928(ra) # 8000200c <mycpu>
    8000379c:	faa91ce3          	bne	s2,a0,80003754 <acquire+0x58>
    800037a0:	00002517          	auipc	a0,0x2
    800037a4:	a4850513          	addi	a0,a0,-1464 # 800051e8 <digits+0x20>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	224080e7          	jalr	548(ra) # 800029cc <panic>
    800037b0:	00195913          	srli	s2,s2,0x1
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	858080e7          	jalr	-1960(ra) # 8000200c <mycpu>
    800037bc:	00197913          	andi	s2,s2,1
    800037c0:	07252e23          	sw	s2,124(a0)
    800037c4:	f75ff06f          	j	80003738 <acquire+0x3c>

00000000800037c8 <release>:
    800037c8:	fe010113          	addi	sp,sp,-32
    800037cc:	00813823          	sd	s0,16(sp)
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00913423          	sd	s1,8(sp)
    800037d8:	01213023          	sd	s2,0(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	00052783          	lw	a5,0(a0)
    800037e4:	00079a63          	bnez	a5,800037f8 <release+0x30>
    800037e8:	00002517          	auipc	a0,0x2
    800037ec:	a0850513          	addi	a0,a0,-1528 # 800051f0 <digits+0x28>
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	1dc080e7          	jalr	476(ra) # 800029cc <panic>
    800037f8:	01053903          	ld	s2,16(a0)
    800037fc:	00050493          	mv	s1,a0
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	80c080e7          	jalr	-2036(ra) # 8000200c <mycpu>
    80003808:	fea910e3          	bne	s2,a0,800037e8 <release+0x20>
    8000380c:	0004b823          	sd	zero,16(s1)
    80003810:	0ff0000f          	fence
    80003814:	0f50000f          	fence	iorw,ow
    80003818:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	7f0080e7          	jalr	2032(ra) # 8000200c <mycpu>
    80003824:	100027f3          	csrr	a5,sstatus
    80003828:	0027f793          	andi	a5,a5,2
    8000382c:	04079a63          	bnez	a5,80003880 <release+0xb8>
    80003830:	07852783          	lw	a5,120(a0)
    80003834:	02f05e63          	blez	a5,80003870 <release+0xa8>
    80003838:	fff7871b          	addiw	a4,a5,-1
    8000383c:	06e52c23          	sw	a4,120(a0)
    80003840:	00071c63          	bnez	a4,80003858 <release+0x90>
    80003844:	07c52783          	lw	a5,124(a0)
    80003848:	00078863          	beqz	a5,80003858 <release+0x90>
    8000384c:	100027f3          	csrr	a5,sstatus
    80003850:	0027e793          	ori	a5,a5,2
    80003854:	10079073          	csrw	sstatus,a5
    80003858:	01813083          	ld	ra,24(sp)
    8000385c:	01013403          	ld	s0,16(sp)
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	00013903          	ld	s2,0(sp)
    80003868:	02010113          	addi	sp,sp,32
    8000386c:	00008067          	ret
    80003870:	00002517          	auipc	a0,0x2
    80003874:	9a050513          	addi	a0,a0,-1632 # 80005210 <digits+0x48>
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	154080e7          	jalr	340(ra) # 800029cc <panic>
    80003880:	00002517          	auipc	a0,0x2
    80003884:	97850513          	addi	a0,a0,-1672 # 800051f8 <digits+0x30>
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	144080e7          	jalr	324(ra) # 800029cc <panic>

0000000080003890 <holding>:
    80003890:	00052783          	lw	a5,0(a0)
    80003894:	00079663          	bnez	a5,800038a0 <holding+0x10>
    80003898:	00000513          	li	a0,0
    8000389c:	00008067          	ret
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	00113c23          	sd	ra,24(sp)
    800038b0:	02010413          	addi	s0,sp,32
    800038b4:	01053483          	ld	s1,16(a0)
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	754080e7          	jalr	1876(ra) # 8000200c <mycpu>
    800038c0:	01813083          	ld	ra,24(sp)
    800038c4:	01013403          	ld	s0,16(sp)
    800038c8:	40a48533          	sub	a0,s1,a0
    800038cc:	00153513          	seqz	a0,a0
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	02010113          	addi	sp,sp,32
    800038d8:	00008067          	ret

00000000800038dc <push_off>:
    800038dc:	fe010113          	addi	sp,sp,-32
    800038e0:	00813823          	sd	s0,16(sp)
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	02010413          	addi	s0,sp,32
    800038f0:	100024f3          	csrr	s1,sstatus
    800038f4:	100027f3          	csrr	a5,sstatus
    800038f8:	ffd7f793          	andi	a5,a5,-3
    800038fc:	10079073          	csrw	sstatus,a5
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	70c080e7          	jalr	1804(ra) # 8000200c <mycpu>
    80003908:	07852783          	lw	a5,120(a0)
    8000390c:	02078663          	beqz	a5,80003938 <push_off+0x5c>
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	6fc080e7          	jalr	1788(ra) # 8000200c <mycpu>
    80003918:	07852783          	lw	a5,120(a0)
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	0017879b          	addiw	a5,a5,1
    80003928:	06f52c23          	sw	a5,120(a0)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret
    80003938:	0014d493          	srli	s1,s1,0x1
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	6d0080e7          	jalr	1744(ra) # 8000200c <mycpu>
    80003944:	0014f493          	andi	s1,s1,1
    80003948:	06952e23          	sw	s1,124(a0)
    8000394c:	fc5ff06f          	j	80003910 <push_off+0x34>

0000000080003950 <pop_off>:
    80003950:	ff010113          	addi	sp,sp,-16
    80003954:	00813023          	sd	s0,0(sp)
    80003958:	00113423          	sd	ra,8(sp)
    8000395c:	01010413          	addi	s0,sp,16
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	6ac080e7          	jalr	1708(ra) # 8000200c <mycpu>
    80003968:	100027f3          	csrr	a5,sstatus
    8000396c:	0027f793          	andi	a5,a5,2
    80003970:	04079663          	bnez	a5,800039bc <pop_off+0x6c>
    80003974:	07852783          	lw	a5,120(a0)
    80003978:	02f05a63          	blez	a5,800039ac <pop_off+0x5c>
    8000397c:	fff7871b          	addiw	a4,a5,-1
    80003980:	06e52c23          	sw	a4,120(a0)
    80003984:	00071c63          	bnez	a4,8000399c <pop_off+0x4c>
    80003988:	07c52783          	lw	a5,124(a0)
    8000398c:	00078863          	beqz	a5,8000399c <pop_off+0x4c>
    80003990:	100027f3          	csrr	a5,sstatus
    80003994:	0027e793          	ori	a5,a5,2
    80003998:	10079073          	csrw	sstatus,a5
    8000399c:	00813083          	ld	ra,8(sp)
    800039a0:	00013403          	ld	s0,0(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret
    800039ac:	00002517          	auipc	a0,0x2
    800039b0:	86450513          	addi	a0,a0,-1948 # 80005210 <digits+0x48>
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	018080e7          	jalr	24(ra) # 800029cc <panic>
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	83c50513          	addi	a0,a0,-1988 # 800051f8 <digits+0x30>
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	008080e7          	jalr	8(ra) # 800029cc <panic>

00000000800039cc <push_on>:
    800039cc:	fe010113          	addi	sp,sp,-32
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	00913423          	sd	s1,8(sp)
    800039dc:	02010413          	addi	s0,sp,32
    800039e0:	100024f3          	csrr	s1,sstatus
    800039e4:	100027f3          	csrr	a5,sstatus
    800039e8:	0027e793          	ori	a5,a5,2
    800039ec:	10079073          	csrw	sstatus,a5
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	61c080e7          	jalr	1564(ra) # 8000200c <mycpu>
    800039f8:	07852783          	lw	a5,120(a0)
    800039fc:	02078663          	beqz	a5,80003a28 <push_on+0x5c>
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	60c080e7          	jalr	1548(ra) # 8000200c <mycpu>
    80003a08:	07852783          	lw	a5,120(a0)
    80003a0c:	01813083          	ld	ra,24(sp)
    80003a10:	01013403          	ld	s0,16(sp)
    80003a14:	0017879b          	addiw	a5,a5,1
    80003a18:	06f52c23          	sw	a5,120(a0)
    80003a1c:	00813483          	ld	s1,8(sp)
    80003a20:	02010113          	addi	sp,sp,32
    80003a24:	00008067          	ret
    80003a28:	0014d493          	srli	s1,s1,0x1
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	5e0080e7          	jalr	1504(ra) # 8000200c <mycpu>
    80003a34:	0014f493          	andi	s1,s1,1
    80003a38:	06952e23          	sw	s1,124(a0)
    80003a3c:	fc5ff06f          	j	80003a00 <push_on+0x34>

0000000080003a40 <pop_on>:
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813023          	sd	s0,0(sp)
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	01010413          	addi	s0,sp,16
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	5bc080e7          	jalr	1468(ra) # 8000200c <mycpu>
    80003a58:	100027f3          	csrr	a5,sstatus
    80003a5c:	0027f793          	andi	a5,a5,2
    80003a60:	04078463          	beqz	a5,80003aa8 <pop_on+0x68>
    80003a64:	07852783          	lw	a5,120(a0)
    80003a68:	02f05863          	blez	a5,80003a98 <pop_on+0x58>
    80003a6c:	fff7879b          	addiw	a5,a5,-1
    80003a70:	06f52c23          	sw	a5,120(a0)
    80003a74:	07853783          	ld	a5,120(a0)
    80003a78:	00079863          	bnez	a5,80003a88 <pop_on+0x48>
    80003a7c:	100027f3          	csrr	a5,sstatus
    80003a80:	ffd7f793          	andi	a5,a5,-3
    80003a84:	10079073          	csrw	sstatus,a5
    80003a88:	00813083          	ld	ra,8(sp)
    80003a8c:	00013403          	ld	s0,0(sp)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret
    80003a98:	00001517          	auipc	a0,0x1
    80003a9c:	7a050513          	addi	a0,a0,1952 # 80005238 <digits+0x70>
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	f2c080e7          	jalr	-212(ra) # 800029cc <panic>
    80003aa8:	00001517          	auipc	a0,0x1
    80003aac:	77050513          	addi	a0,a0,1904 # 80005218 <digits+0x50>
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	f1c080e7          	jalr	-228(ra) # 800029cc <panic>

0000000080003ab8 <__memset>:
    80003ab8:	ff010113          	addi	sp,sp,-16
    80003abc:	00813423          	sd	s0,8(sp)
    80003ac0:	01010413          	addi	s0,sp,16
    80003ac4:	1a060e63          	beqz	a2,80003c80 <__memset+0x1c8>
    80003ac8:	40a007b3          	neg	a5,a0
    80003acc:	0077f793          	andi	a5,a5,7
    80003ad0:	00778693          	addi	a3,a5,7
    80003ad4:	00b00813          	li	a6,11
    80003ad8:	0ff5f593          	andi	a1,a1,255
    80003adc:	fff6071b          	addiw	a4,a2,-1
    80003ae0:	1b06e663          	bltu	a3,a6,80003c8c <__memset+0x1d4>
    80003ae4:	1cd76463          	bltu	a4,a3,80003cac <__memset+0x1f4>
    80003ae8:	1a078e63          	beqz	a5,80003ca4 <__memset+0x1ec>
    80003aec:	00b50023          	sb	a1,0(a0)
    80003af0:	00100713          	li	a4,1
    80003af4:	1ae78463          	beq	a5,a4,80003c9c <__memset+0x1e4>
    80003af8:	00b500a3          	sb	a1,1(a0)
    80003afc:	00200713          	li	a4,2
    80003b00:	1ae78a63          	beq	a5,a4,80003cb4 <__memset+0x1fc>
    80003b04:	00b50123          	sb	a1,2(a0)
    80003b08:	00300713          	li	a4,3
    80003b0c:	18e78463          	beq	a5,a4,80003c94 <__memset+0x1dc>
    80003b10:	00b501a3          	sb	a1,3(a0)
    80003b14:	00400713          	li	a4,4
    80003b18:	1ae78263          	beq	a5,a4,80003cbc <__memset+0x204>
    80003b1c:	00b50223          	sb	a1,4(a0)
    80003b20:	00500713          	li	a4,5
    80003b24:	1ae78063          	beq	a5,a4,80003cc4 <__memset+0x20c>
    80003b28:	00b502a3          	sb	a1,5(a0)
    80003b2c:	00700713          	li	a4,7
    80003b30:	18e79e63          	bne	a5,a4,80003ccc <__memset+0x214>
    80003b34:	00b50323          	sb	a1,6(a0)
    80003b38:	00700e93          	li	t4,7
    80003b3c:	00859713          	slli	a4,a1,0x8
    80003b40:	00e5e733          	or	a4,a1,a4
    80003b44:	01059e13          	slli	t3,a1,0x10
    80003b48:	01c76e33          	or	t3,a4,t3
    80003b4c:	01859313          	slli	t1,a1,0x18
    80003b50:	006e6333          	or	t1,t3,t1
    80003b54:	02059893          	slli	a7,a1,0x20
    80003b58:	40f60e3b          	subw	t3,a2,a5
    80003b5c:	011368b3          	or	a7,t1,a7
    80003b60:	02859813          	slli	a6,a1,0x28
    80003b64:	0108e833          	or	a6,a7,a6
    80003b68:	03059693          	slli	a3,a1,0x30
    80003b6c:	003e589b          	srliw	a7,t3,0x3
    80003b70:	00d866b3          	or	a3,a6,a3
    80003b74:	03859713          	slli	a4,a1,0x38
    80003b78:	00389813          	slli	a6,a7,0x3
    80003b7c:	00f507b3          	add	a5,a0,a5
    80003b80:	00e6e733          	or	a4,a3,a4
    80003b84:	000e089b          	sext.w	a7,t3
    80003b88:	00f806b3          	add	a3,a6,a5
    80003b8c:	00e7b023          	sd	a4,0(a5)
    80003b90:	00878793          	addi	a5,a5,8
    80003b94:	fed79ce3          	bne	a5,a3,80003b8c <__memset+0xd4>
    80003b98:	ff8e7793          	andi	a5,t3,-8
    80003b9c:	0007871b          	sext.w	a4,a5
    80003ba0:	01d787bb          	addw	a5,a5,t4
    80003ba4:	0ce88e63          	beq	a7,a4,80003c80 <__memset+0x1c8>
    80003ba8:	00f50733          	add	a4,a0,a5
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0017871b          	addiw	a4,a5,1
    80003bb4:	0cc77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0027871b          	addiw	a4,a5,2
    80003bc4:	0ac77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0037871b          	addiw	a4,a5,3
    80003bd4:	0ac77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0047871b          	addiw	a4,a5,4
    80003be4:	08c77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0057871b          	addiw	a4,a5,5
    80003bf4:	08c77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0067871b          	addiw	a4,a5,6
    80003c04:	06c77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0077871b          	addiw	a4,a5,7
    80003c14:	06c77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0087871b          	addiw	a4,a5,8
    80003c24:	04c77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0097871b          	addiw	a4,a5,9
    80003c34:	04c77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	00a7871b          	addiw	a4,a5,10
    80003c44:	02c77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	00b7871b          	addiw	a4,a5,11
    80003c54:	02c77663          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	00c7871b          	addiw	a4,a5,12
    80003c64:	00c77e63          	bgeu	a4,a2,80003c80 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	00d7879b          	addiw	a5,a5,13
    80003c74:	00c7f663          	bgeu	a5,a2,80003c80 <__memset+0x1c8>
    80003c78:	00f507b3          	add	a5,a0,a5
    80003c7c:	00b78023          	sb	a1,0(a5)
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret
    80003c8c:	00b00693          	li	a3,11
    80003c90:	e55ff06f          	j	80003ae4 <__memset+0x2c>
    80003c94:	00300e93          	li	t4,3
    80003c98:	ea5ff06f          	j	80003b3c <__memset+0x84>
    80003c9c:	00100e93          	li	t4,1
    80003ca0:	e9dff06f          	j	80003b3c <__memset+0x84>
    80003ca4:	00000e93          	li	t4,0
    80003ca8:	e95ff06f          	j	80003b3c <__memset+0x84>
    80003cac:	00000793          	li	a5,0
    80003cb0:	ef9ff06f          	j	80003ba8 <__memset+0xf0>
    80003cb4:	00200e93          	li	t4,2
    80003cb8:	e85ff06f          	j	80003b3c <__memset+0x84>
    80003cbc:	00400e93          	li	t4,4
    80003cc0:	e7dff06f          	j	80003b3c <__memset+0x84>
    80003cc4:	00500e93          	li	t4,5
    80003cc8:	e75ff06f          	j	80003b3c <__memset+0x84>
    80003ccc:	00600e93          	li	t4,6
    80003cd0:	e6dff06f          	j	80003b3c <__memset+0x84>

0000000080003cd4 <__memmove>:
    80003cd4:	ff010113          	addi	sp,sp,-16
    80003cd8:	00813423          	sd	s0,8(sp)
    80003cdc:	01010413          	addi	s0,sp,16
    80003ce0:	0e060863          	beqz	a2,80003dd0 <__memmove+0xfc>
    80003ce4:	fff6069b          	addiw	a3,a2,-1
    80003ce8:	0006881b          	sext.w	a6,a3
    80003cec:	0ea5e863          	bltu	a1,a0,80003ddc <__memmove+0x108>
    80003cf0:	00758713          	addi	a4,a1,7
    80003cf4:	00a5e7b3          	or	a5,a1,a0
    80003cf8:	40a70733          	sub	a4,a4,a0
    80003cfc:	0077f793          	andi	a5,a5,7
    80003d00:	00f73713          	sltiu	a4,a4,15
    80003d04:	00174713          	xori	a4,a4,1
    80003d08:	0017b793          	seqz	a5,a5
    80003d0c:	00e7f7b3          	and	a5,a5,a4
    80003d10:	10078863          	beqz	a5,80003e20 <__memmove+0x14c>
    80003d14:	00900793          	li	a5,9
    80003d18:	1107f463          	bgeu	a5,a6,80003e20 <__memmove+0x14c>
    80003d1c:	0036581b          	srliw	a6,a2,0x3
    80003d20:	fff8081b          	addiw	a6,a6,-1
    80003d24:	02081813          	slli	a6,a6,0x20
    80003d28:	01d85893          	srli	a7,a6,0x1d
    80003d2c:	00858813          	addi	a6,a1,8
    80003d30:	00058793          	mv	a5,a1
    80003d34:	00050713          	mv	a4,a0
    80003d38:	01088833          	add	a6,a7,a6
    80003d3c:	0007b883          	ld	a7,0(a5)
    80003d40:	00878793          	addi	a5,a5,8
    80003d44:	00870713          	addi	a4,a4,8
    80003d48:	ff173c23          	sd	a7,-8(a4)
    80003d4c:	ff0798e3          	bne	a5,a6,80003d3c <__memmove+0x68>
    80003d50:	ff867713          	andi	a4,a2,-8
    80003d54:	02071793          	slli	a5,a4,0x20
    80003d58:	0207d793          	srli	a5,a5,0x20
    80003d5c:	00f585b3          	add	a1,a1,a5
    80003d60:	40e686bb          	subw	a3,a3,a4
    80003d64:	00f507b3          	add	a5,a0,a5
    80003d68:	06e60463          	beq	a2,a4,80003dd0 <__memmove+0xfc>
    80003d6c:	0005c703          	lbu	a4,0(a1)
    80003d70:	00e78023          	sb	a4,0(a5)
    80003d74:	04068e63          	beqz	a3,80003dd0 <__memmove+0xfc>
    80003d78:	0015c603          	lbu	a2,1(a1)
    80003d7c:	00100713          	li	a4,1
    80003d80:	00c780a3          	sb	a2,1(a5)
    80003d84:	04e68663          	beq	a3,a4,80003dd0 <__memmove+0xfc>
    80003d88:	0025c603          	lbu	a2,2(a1)
    80003d8c:	00200713          	li	a4,2
    80003d90:	00c78123          	sb	a2,2(a5)
    80003d94:	02e68e63          	beq	a3,a4,80003dd0 <__memmove+0xfc>
    80003d98:	0035c603          	lbu	a2,3(a1)
    80003d9c:	00300713          	li	a4,3
    80003da0:	00c781a3          	sb	a2,3(a5)
    80003da4:	02e68663          	beq	a3,a4,80003dd0 <__memmove+0xfc>
    80003da8:	0045c603          	lbu	a2,4(a1)
    80003dac:	00400713          	li	a4,4
    80003db0:	00c78223          	sb	a2,4(a5)
    80003db4:	00e68e63          	beq	a3,a4,80003dd0 <__memmove+0xfc>
    80003db8:	0055c603          	lbu	a2,5(a1)
    80003dbc:	00500713          	li	a4,5
    80003dc0:	00c782a3          	sb	a2,5(a5)
    80003dc4:	00e68663          	beq	a3,a4,80003dd0 <__memmove+0xfc>
    80003dc8:	0065c703          	lbu	a4,6(a1)
    80003dcc:	00e78323          	sb	a4,6(a5)
    80003dd0:	00813403          	ld	s0,8(sp)
    80003dd4:	01010113          	addi	sp,sp,16
    80003dd8:	00008067          	ret
    80003ddc:	02061713          	slli	a4,a2,0x20
    80003de0:	02075713          	srli	a4,a4,0x20
    80003de4:	00e587b3          	add	a5,a1,a4
    80003de8:	f0f574e3          	bgeu	a0,a5,80003cf0 <__memmove+0x1c>
    80003dec:	02069613          	slli	a2,a3,0x20
    80003df0:	02065613          	srli	a2,a2,0x20
    80003df4:	fff64613          	not	a2,a2
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00c78633          	add	a2,a5,a2
    80003e00:	fff7c683          	lbu	a3,-1(a5)
    80003e04:	fff78793          	addi	a5,a5,-1
    80003e08:	fff70713          	addi	a4,a4,-1
    80003e0c:	00d70023          	sb	a3,0(a4)
    80003e10:	fec798e3          	bne	a5,a2,80003e00 <__memmove+0x12c>
    80003e14:	00813403          	ld	s0,8(sp)
    80003e18:	01010113          	addi	sp,sp,16
    80003e1c:	00008067          	ret
    80003e20:	02069713          	slli	a4,a3,0x20
    80003e24:	02075713          	srli	a4,a4,0x20
    80003e28:	00170713          	addi	a4,a4,1
    80003e2c:	00e50733          	add	a4,a0,a4
    80003e30:	00050793          	mv	a5,a0
    80003e34:	0005c683          	lbu	a3,0(a1)
    80003e38:	00178793          	addi	a5,a5,1
    80003e3c:	00158593          	addi	a1,a1,1
    80003e40:	fed78fa3          	sb	a3,-1(a5)
    80003e44:	fee798e3          	bne	a5,a4,80003e34 <__memmove+0x160>
    80003e48:	f89ff06f          	j	80003dd0 <__memmove+0xfc>

0000000080003e4c <__mem_free>:
    80003e4c:	ff010113          	addi	sp,sp,-16
    80003e50:	00813423          	sd	s0,8(sp)
    80003e54:	01010413          	addi	s0,sp,16
    80003e58:	00002597          	auipc	a1,0x2
    80003e5c:	aa058593          	addi	a1,a1,-1376 # 800058f8 <freep>
    80003e60:	0005b783          	ld	a5,0(a1)
    80003e64:	ff050693          	addi	a3,a0,-16
    80003e68:	0007b703          	ld	a4,0(a5)
    80003e6c:	00d7fc63          	bgeu	a5,a3,80003e84 <__mem_free+0x38>
    80003e70:	00e6ee63          	bltu	a3,a4,80003e8c <__mem_free+0x40>
    80003e74:	00e7fc63          	bgeu	a5,a4,80003e8c <__mem_free+0x40>
    80003e78:	00070793          	mv	a5,a4
    80003e7c:	0007b703          	ld	a4,0(a5)
    80003e80:	fed7e8e3          	bltu	a5,a3,80003e70 <__mem_free+0x24>
    80003e84:	fee7eae3          	bltu	a5,a4,80003e78 <__mem_free+0x2c>
    80003e88:	fee6f8e3          	bgeu	a3,a4,80003e78 <__mem_free+0x2c>
    80003e8c:	ff852803          	lw	a6,-8(a0)
    80003e90:	02081613          	slli	a2,a6,0x20
    80003e94:	01c65613          	srli	a2,a2,0x1c
    80003e98:	00c68633          	add	a2,a3,a2
    80003e9c:	02c70a63          	beq	a4,a2,80003ed0 <__mem_free+0x84>
    80003ea0:	fee53823          	sd	a4,-16(a0)
    80003ea4:	0087a503          	lw	a0,8(a5)
    80003ea8:	02051613          	slli	a2,a0,0x20
    80003eac:	01c65613          	srli	a2,a2,0x1c
    80003eb0:	00c78633          	add	a2,a5,a2
    80003eb4:	04c68263          	beq	a3,a2,80003ef8 <__mem_free+0xac>
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	00d7b023          	sd	a3,0(a5)
    80003ec0:	00f5b023          	sd	a5,0(a1)
    80003ec4:	00000513          	li	a0,0
    80003ec8:	01010113          	addi	sp,sp,16
    80003ecc:	00008067          	ret
    80003ed0:	00872603          	lw	a2,8(a4)
    80003ed4:	00073703          	ld	a4,0(a4)
    80003ed8:	0106083b          	addw	a6,a2,a6
    80003edc:	ff052c23          	sw	a6,-8(a0)
    80003ee0:	fee53823          	sd	a4,-16(a0)
    80003ee4:	0087a503          	lw	a0,8(a5)
    80003ee8:	02051613          	slli	a2,a0,0x20
    80003eec:	01c65613          	srli	a2,a2,0x1c
    80003ef0:	00c78633          	add	a2,a5,a2
    80003ef4:	fcc692e3          	bne	a3,a2,80003eb8 <__mem_free+0x6c>
    80003ef8:	00813403          	ld	s0,8(sp)
    80003efc:	0105053b          	addw	a0,a0,a6
    80003f00:	00a7a423          	sw	a0,8(a5)
    80003f04:	00e7b023          	sd	a4,0(a5)
    80003f08:	00f5b023          	sd	a5,0(a1)
    80003f0c:	00000513          	li	a0,0
    80003f10:	01010113          	addi	sp,sp,16
    80003f14:	00008067          	ret

0000000080003f18 <__mem_alloc>:
    80003f18:	fc010113          	addi	sp,sp,-64
    80003f1c:	02813823          	sd	s0,48(sp)
    80003f20:	02913423          	sd	s1,40(sp)
    80003f24:	03213023          	sd	s2,32(sp)
    80003f28:	01513423          	sd	s5,8(sp)
    80003f2c:	02113c23          	sd	ra,56(sp)
    80003f30:	01313c23          	sd	s3,24(sp)
    80003f34:	01413823          	sd	s4,16(sp)
    80003f38:	01613023          	sd	s6,0(sp)
    80003f3c:	04010413          	addi	s0,sp,64
    80003f40:	00002a97          	auipc	s5,0x2
    80003f44:	9b8a8a93          	addi	s5,s5,-1608 # 800058f8 <freep>
    80003f48:	00f50913          	addi	s2,a0,15
    80003f4c:	000ab683          	ld	a3,0(s5)
    80003f50:	00495913          	srli	s2,s2,0x4
    80003f54:	0019049b          	addiw	s1,s2,1
    80003f58:	00048913          	mv	s2,s1
    80003f5c:	0c068c63          	beqz	a3,80004034 <__mem_alloc+0x11c>
    80003f60:	0006b503          	ld	a0,0(a3)
    80003f64:	00852703          	lw	a4,8(a0)
    80003f68:	10977063          	bgeu	a4,s1,80004068 <__mem_alloc+0x150>
    80003f6c:	000017b7          	lui	a5,0x1
    80003f70:	0009099b          	sext.w	s3,s2
    80003f74:	0af4e863          	bltu	s1,a5,80004024 <__mem_alloc+0x10c>
    80003f78:	02099a13          	slli	s4,s3,0x20
    80003f7c:	01ca5a13          	srli	s4,s4,0x1c
    80003f80:	fff00b13          	li	s6,-1
    80003f84:	0100006f          	j	80003f94 <__mem_alloc+0x7c>
    80003f88:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f8c:	00852703          	lw	a4,8(a0)
    80003f90:	04977463          	bgeu	a4,s1,80003fd8 <__mem_alloc+0xc0>
    80003f94:	00050793          	mv	a5,a0
    80003f98:	fea698e3          	bne	a3,a0,80003f88 <__mem_alloc+0x70>
    80003f9c:	000a0513          	mv	a0,s4
    80003fa0:	00000097          	auipc	ra,0x0
    80003fa4:	1f0080e7          	jalr	496(ra) # 80004190 <kvmincrease>
    80003fa8:	00050793          	mv	a5,a0
    80003fac:	01050513          	addi	a0,a0,16
    80003fb0:	07678e63          	beq	a5,s6,8000402c <__mem_alloc+0x114>
    80003fb4:	0137a423          	sw	s3,8(a5)
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	e94080e7          	jalr	-364(ra) # 80003e4c <__mem_free>
    80003fc0:	000ab783          	ld	a5,0(s5)
    80003fc4:	06078463          	beqz	a5,8000402c <__mem_alloc+0x114>
    80003fc8:	0007b503          	ld	a0,0(a5)
    80003fcc:	00078693          	mv	a3,a5
    80003fd0:	00852703          	lw	a4,8(a0)
    80003fd4:	fc9760e3          	bltu	a4,s1,80003f94 <__mem_alloc+0x7c>
    80003fd8:	08e48263          	beq	s1,a4,8000405c <__mem_alloc+0x144>
    80003fdc:	4127073b          	subw	a4,a4,s2
    80003fe0:	02071693          	slli	a3,a4,0x20
    80003fe4:	01c6d693          	srli	a3,a3,0x1c
    80003fe8:	00e52423          	sw	a4,8(a0)
    80003fec:	00d50533          	add	a0,a0,a3
    80003ff0:	01252423          	sw	s2,8(a0)
    80003ff4:	00fab023          	sd	a5,0(s5)
    80003ff8:	01050513          	addi	a0,a0,16
    80003ffc:	03813083          	ld	ra,56(sp)
    80004000:	03013403          	ld	s0,48(sp)
    80004004:	02813483          	ld	s1,40(sp)
    80004008:	02013903          	ld	s2,32(sp)
    8000400c:	01813983          	ld	s3,24(sp)
    80004010:	01013a03          	ld	s4,16(sp)
    80004014:	00813a83          	ld	s5,8(sp)
    80004018:	00013b03          	ld	s6,0(sp)
    8000401c:	04010113          	addi	sp,sp,64
    80004020:	00008067          	ret
    80004024:	000019b7          	lui	s3,0x1
    80004028:	f51ff06f          	j	80003f78 <__mem_alloc+0x60>
    8000402c:	00000513          	li	a0,0
    80004030:	fcdff06f          	j	80003ffc <__mem_alloc+0xe4>
    80004034:	00003797          	auipc	a5,0x3
    80004038:	b5c78793          	addi	a5,a5,-1188 # 80006b90 <base>
    8000403c:	00078513          	mv	a0,a5
    80004040:	00fab023          	sd	a5,0(s5)
    80004044:	00f7b023          	sd	a5,0(a5)
    80004048:	00000713          	li	a4,0
    8000404c:	00003797          	auipc	a5,0x3
    80004050:	b407a623          	sw	zero,-1204(a5) # 80006b98 <base+0x8>
    80004054:	00050693          	mv	a3,a0
    80004058:	f11ff06f          	j	80003f68 <__mem_alloc+0x50>
    8000405c:	00053703          	ld	a4,0(a0)
    80004060:	00e7b023          	sd	a4,0(a5)
    80004064:	f91ff06f          	j	80003ff4 <__mem_alloc+0xdc>
    80004068:	00068793          	mv	a5,a3
    8000406c:	f6dff06f          	j	80003fd8 <__mem_alloc+0xc0>

0000000080004070 <__putc>:
    80004070:	fe010113          	addi	sp,sp,-32
    80004074:	00813823          	sd	s0,16(sp)
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	00050793          	mv	a5,a0
    80004084:	fef40593          	addi	a1,s0,-17
    80004088:	00100613          	li	a2,1
    8000408c:	00000513          	li	a0,0
    80004090:	fef407a3          	sb	a5,-17(s0)
    80004094:	fffff097          	auipc	ra,0xfffff
    80004098:	918080e7          	jalr	-1768(ra) # 800029ac <console_write>
    8000409c:	01813083          	ld	ra,24(sp)
    800040a0:	01013403          	ld	s0,16(sp)
    800040a4:	02010113          	addi	sp,sp,32
    800040a8:	00008067          	ret

00000000800040ac <__getc>:
    800040ac:	fe010113          	addi	sp,sp,-32
    800040b0:	00813823          	sd	s0,16(sp)
    800040b4:	00113c23          	sd	ra,24(sp)
    800040b8:	02010413          	addi	s0,sp,32
    800040bc:	fe840593          	addi	a1,s0,-24
    800040c0:	00100613          	li	a2,1
    800040c4:	00000513          	li	a0,0
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	8c4080e7          	jalr	-1852(ra) # 8000298c <console_read>
    800040d0:	fe844503          	lbu	a0,-24(s0)
    800040d4:	01813083          	ld	ra,24(sp)
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	02010113          	addi	sp,sp,32
    800040e0:	00008067          	ret

00000000800040e4 <console_handler>:
    800040e4:	fe010113          	addi	sp,sp,-32
    800040e8:	00813823          	sd	s0,16(sp)
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	00913423          	sd	s1,8(sp)
    800040f4:	02010413          	addi	s0,sp,32
    800040f8:	14202773          	csrr	a4,scause
    800040fc:	100027f3          	csrr	a5,sstatus
    80004100:	0027f793          	andi	a5,a5,2
    80004104:	06079e63          	bnez	a5,80004180 <console_handler+0x9c>
    80004108:	00074c63          	bltz	a4,80004120 <console_handler+0x3c>
    8000410c:	01813083          	ld	ra,24(sp)
    80004110:	01013403          	ld	s0,16(sp)
    80004114:	00813483          	ld	s1,8(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret
    80004120:	0ff77713          	andi	a4,a4,255
    80004124:	00900793          	li	a5,9
    80004128:	fef712e3          	bne	a4,a5,8000410c <console_handler+0x28>
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	4b8080e7          	jalr	1208(ra) # 800025e4 <plic_claim>
    80004134:	00a00793          	li	a5,10
    80004138:	00050493          	mv	s1,a0
    8000413c:	02f50c63          	beq	a0,a5,80004174 <console_handler+0x90>
    80004140:	fc0506e3          	beqz	a0,8000410c <console_handler+0x28>
    80004144:	00050593          	mv	a1,a0
    80004148:	00001517          	auipc	a0,0x1
    8000414c:	ff850513          	addi	a0,a0,-8 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    80004150:	fffff097          	auipc	ra,0xfffff
    80004154:	8d8080e7          	jalr	-1832(ra) # 80002a28 <__printf>
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	00048513          	mv	a0,s1
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	ffffe317          	auipc	t1,0xffffe
    80004170:	4b030067          	jr	1200(t1) # 8000261c <plic_complete>
    80004174:	fffff097          	auipc	ra,0xfffff
    80004178:	1bc080e7          	jalr	444(ra) # 80003330 <uartintr>
    8000417c:	fddff06f          	j	80004158 <console_handler+0x74>
    80004180:	00001517          	auipc	a0,0x1
    80004184:	0c050513          	addi	a0,a0,192 # 80005240 <digits+0x78>
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	844080e7          	jalr	-1980(ra) # 800029cc <panic>

0000000080004190 <kvmincrease>:
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	01213023          	sd	s2,0(sp)
    80004198:	00001937          	lui	s2,0x1
    8000419c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00113c23          	sd	ra,24(sp)
    800041a8:	00913423          	sd	s1,8(sp)
    800041ac:	02010413          	addi	s0,sp,32
    800041b0:	01250933          	add	s2,a0,s2
    800041b4:	00c95913          	srli	s2,s2,0xc
    800041b8:	02090863          	beqz	s2,800041e8 <kvmincrease+0x58>
    800041bc:	00000493          	li	s1,0
    800041c0:	00148493          	addi	s1,s1,1
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	4bc080e7          	jalr	1212(ra) # 80003680 <kalloc>
    800041cc:	fe991ae3          	bne	s2,s1,800041c0 <kvmincrease+0x30>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	00013903          	ld	s2,0(sp)
    800041e0:	02010113          	addi	sp,sp,32
    800041e4:	00008067          	ret
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	01013403          	ld	s0,16(sp)
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00013903          	ld	s2,0(sp)
    800041f8:	00000513          	li	a0,0
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret
	...


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
    8000001c:	5d9010ef          	jal	ra,80001df4 <start>

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
    8000115c:	b20080e7          	jalr	-1248(ra) # 80001c78 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000118c:	79870713          	addi	a4,a4,1944 # 80005920 <_ZN7_thread8globalIdE>
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
    800011e8:	500080e7          	jalr	1280(ra) # 800016e4 <_ZN9Scheduler3putEP7_thread>
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
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(&running->arg);   //call the function with argument arg
    80001240:	00004497          	auipc	s1,0x4
    80001244:	6e048493          	addi	s1,s1,1760 # 80005920 <_ZN7_thread8globalIdE>
    80001248:	0084b503          	ld	a0,8(s1)
    8000124c:	00053783          	ld	a5,0(a0)
    80001250:	03050513          	addi	a0,a0,48
    80001254:	000780e7          	jalr	a5
    running->setFinished(true);
    80001258:	0084b783          	ld	a5,8(s1)
public:
    ~_thread() { MemoryAllocator::kmem_free(stack); }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    8000125c:	00100713          	li	a4,1
    80001260:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    80001264:	00000097          	auipc	ra,0x0
    80001268:	f9c080e7          	jalr	-100(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    8000126c:	01813083          	ld	ra,24(sp)
    80001270:	01013403          	ld	s0,16(sp)
    80001274:	00813483          	ld	s1,8(sp)
    80001278:	02010113          	addi	sp,sp,32
    8000127c:	00008067          	ret

0000000080001280 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001280:	fe010113          	addi	sp,sp,-32
    80001284:	00113c23          	sd	ra,24(sp)
    80001288:	00813823          	sd	s0,16(sp)
    8000128c:	00913423          	sd	s1,8(sp)
    80001290:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001294:	00004497          	auipc	s1,0x4
    80001298:	6944b483          	ld	s1,1684(s1) # 80005928 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    8000129c:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a0:	02078c63          	beqz	a5,800012d8 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	3d8080e7          	jalr	984(ra) # 8000167c <_ZN9Scheduler3getEv>
    800012ac:	00004797          	auipc	a5,0x4
    800012b0:	66a7be23          	sd	a0,1660(a5) # 80005928 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    800012b4:	01050593          	addi	a1,a0,16
    800012b8:	01048513          	addi	a0,s1,16
    800012bc:	00000097          	auipc	ra,0x0
    800012c0:	e54080e7          	jalr	-428(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012c4:	01813083          	ld	ra,24(sp)
    800012c8:	01013403          	ld	s0,16(sp)
    800012cc:	00813483          	ld	s1,8(sp)
    800012d0:	02010113          	addi	sp,sp,32
    800012d4:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012d8:	00048513          	mv	a0,s1
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	408080e7          	jalr	1032(ra) # 800016e4 <_ZN9Scheduler3putEP7_thread>
    800012e4:	fc1ff06f          	j	800012a4 <_ZN7_thread8dispatchEv+0x24>

00000000800012e8 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	980080e7          	jalr	-1664(ra) # 80001c78 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001300:	00813083          	ld	ra,8(sp)
    80001304:	00013403          	ld	s0,0(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00113423          	sd	ra,8(sp)
    80001318:	00813023          	sd	s0,0(sp)
    8000131c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001320:	00001097          	auipc	ra,0x1
    80001324:	958080e7          	jalr	-1704(ra) # 80001c78 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001328:	00813083          	ld	ra,8(sp)
    8000132c:	00013403          	ld	s0,0(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00113423          	sd	ra,8(sp)
    80001340:	00813023          	sd	s0,0(sp)
    80001344:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	958080e7          	jalr	-1704(ra) # 80001ca0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001350:	00813083          	ld	ra,8(sp)
    80001354:	00013403          	ld	s0,0(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_ZN7_thread12createThreadEPFvPvES0_>:
_thread* _thread::createThread(Body body, void* arg) {
    80001360:	fd010113          	addi	sp,sp,-48
    80001364:	02113423          	sd	ra,40(sp)
    80001368:	02813023          	sd	s0,32(sp)
    8000136c:	00913c23          	sd	s1,24(sp)
    80001370:	01213823          	sd	s2,16(sp)
    80001374:	01313423          	sd	s3,8(sp)
    80001378:	03010413          	addi	s0,sp,48
    8000137c:	00050913          	mv	s2,a0
    80001380:	00058993          	mv	s3,a1
    return new _thread(body, DEFAULT_TIME_SLICE, arg);
    80001384:	04800513          	li	a0,72
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	f60080e7          	jalr	-160(ra) # 800012e8 <_ZN7_threadnwEm>
    80001390:	00050493          	mv	s1,a0
    80001394:	00098693          	mv	a3,s3
    80001398:	00200613          	li	a2,2
    8000139c:	00090593          	mv	a1,s2
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	d84080e7          	jalr	-636(ra) # 80001124 <_ZN7_threadC1EPFvPvEmS0_>
    800013a8:	0200006f          	j	800013c8 <_ZN7_thread12createThreadEPFvPvES0_+0x68>
    800013ac:	00050913          	mv	s2,a0
    800013b0:	00048513          	mv	a0,s1
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	f84080e7          	jalr	-124(ra) # 80001338 <_ZN7_threaddlEPv>
    800013bc:	00090513          	mv	a0,s2
    800013c0:	00005097          	auipc	ra,0x5
    800013c4:	658080e7          	jalr	1624(ra) # 80006a18 <_Unwind_Resume>
}
    800013c8:	00048513          	mv	a0,s1
    800013cc:	02813083          	ld	ra,40(sp)
    800013d0:	02013403          	ld	s0,32(sp)
    800013d4:	01813483          	ld	s1,24(sp)
    800013d8:	01013903          	ld	s2,16(sp)
    800013dc:	00813983          	ld	s3,8(sp)
    800013e0:	03010113          	addi	sp,sp,48
    800013e4:	00008067          	ret

00000000800013e8 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013e8:	ff010113          	addi	sp,sp,-16
    800013ec:	00113423          	sd	ra,8(sp)
    800013f0:	00813023          	sd	s0,0(sp)
    800013f4:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013f8:	00001097          	auipc	ra,0x1
    800013fc:	8a8080e7          	jalr	-1880(ra) # 80001ca0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001400:	00813083          	ld	ra,8(sp)
    80001404:	00013403          	ld	s0,0(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    8000141c:	00053603          	ld	a2,0(a0)
    uint64 arg1 = arg->a1;
    80001420:	00853683          	ld	a3,8(a0)
    uint64 arg2 = arg->a2;
    80001424:	01053703          	ld	a4,16(a0)
    uint64 arg3 = arg->a3;
    80001428:	01853783          	ld	a5,24(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    8000142c:	00060513          	mv	a0,a2
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001430:	00068593          	mv	a1,a3
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001434:	00070613          	mv	a2,a4
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001438:	00078693          	mv	a3,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    8000143c:	00000073          	ecall


}
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    8000144c:	fd010113          	addi	sp,sp,-48
    80001450:	02113423          	sd	ra,40(sp)
    80001454:	02813023          	sd	s0,32(sp)
    80001458:	03010413          	addi	s0,sp,48
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    8000145c:	00100793          	li	a5,1
    80001460:	fcf43823          	sd	a5,-48(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001464:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001468:	03f57513          	andi	a0,a0,63
    8000146c:	00050463          	beqz	a0,80001474 <_Z9mem_allocm+0x28>
    80001470:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    80001474:	fcf43c23          	sd	a5,-40(s0)

    syscall(&arg);
    80001478:	fd040513          	addi	a0,s0,-48
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	f94080e7          	jalr	-108(ra) # 80001410 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001484:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001488:	02813083          	ld	ra,40(sp)
    8000148c:	02013403          	ld	s0,32(sp)
    80001490:	03010113          	addi	sp,sp,48
    80001494:	00008067          	ret

0000000080001498 <_Z8mem_freePv>:

int mem_free (void* p){
    80001498:	fd010113          	addi	sp,sp,-48
    8000149c:	02113423          	sd	ra,40(sp)
    800014a0:	02813023          	sd	s0,32(sp)
    800014a4:	03010413          	addi	s0,sp,48
    args arg;
    arg.a0=0x02;
    800014a8:	00200793          	li	a5,2
    800014ac:	fcf43823          	sd	a5,-48(s0)
    arg.a1=(uint64)p;
    800014b0:	fca43c23          	sd	a0,-40(s0)

    syscall(&arg);
    800014b4:	fd040513          	addi	a0,s0,-48
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	f58080e7          	jalr	-168(ra) # 80001410 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014c0:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014c4:	0005051b          	sext.w	a0,a0
    800014c8:	02813083          	ld	ra,40(sp)
    800014cc:	02013403          	ld	s0,32(sp)
    800014d0:	03010113          	addi	sp,sp,48
    800014d4:	00008067          	ret

00000000800014d8 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014d8:	fd010113          	addi	sp,sp,-48
    800014dc:	02113423          	sd	ra,40(sp)
    800014e0:	02813023          	sd	s0,32(sp)
    800014e4:	03010413          	addi	s0,sp,48
    args myArgs;
    myArgs.a0=0x11;
    800014e8:	01100793          	li	a5,17
    800014ec:	fcf43823          	sd	a5,-48(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    800014f0:	fca43c23          	sd	a0,-40(s0)
    myArgs.a2=(uint64)start_routine;
    800014f4:	feb43023          	sd	a1,-32(s0)
    myArgs.a3=(uint64)arg;
    800014f8:	fec43423          	sd	a2,-24(s0)

    syscall(&myArgs);
    800014fc:	fd040513          	addi	a0,s0,-48
    80001500:	00000097          	auipc	ra,0x0
    80001504:	f10080e7          	jalr	-240(ra) # 80001410 <_Z7syscallP4args>
    uint64* ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001508:	00050793          	mv	a5,a0
    _thread* ptr = (_thread*)ret;
    handle = &ptr;
    return 0;


}
    8000150c:	00000513          	li	a0,0
    80001510:	02813083          	ld	ra,40(sp)
    80001514:	02013403          	ld	s0,32(sp)
    80001518:	03010113          	addi	sp,sp,48
    8000151c:	00008067          	ret

0000000080001520 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	00913423          	sd	s1,8(sp)
    80001530:	01213023          	sd	s2,0(sp)
    80001534:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001538:	00004797          	auipc	a5,0x4
    8000153c:	3707b783          	ld	a5,880(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001540:	10579073          	csrw	stvec,a5
//    }
//    else{
//        printString("not freed \n");
//    }

    _thread* main = _thread::createThread(nullptr, nullptr);
    80001544:	00000593          	li	a1,0
    80001548:	00000513          	li	a0,0
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	e14080e7          	jalr	-492(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    80001554:	00050493          	mv	s1,a0
    main->start();
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	c74080e7          	jalr	-908(ra) # 800011cc <_ZN7_thread5startEv>
    _thread::running=main;
    80001560:	00004797          	auipc	a5,0x4
    80001564:	3407b783          	ld	a5,832(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001568:	0097b023          	sd	s1,0(a5)

    _thread* t1 = _thread::createThread(workerBodyA, nullptr);
    8000156c:	00000593          	li	a1,0
    80001570:	00004517          	auipc	a0,0x4
    80001574:	34853503          	ld	a0,840(a0) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	de8080e7          	jalr	-536(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    80001580:	00050493          	mv	s1,a0
    if(t1 != nullptr){
    80001584:	04050e63          	beqz	a0,800015e0 <main+0xc0>
        printString("thread created");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	a7850513          	addi	a0,a0,-1416 # 80005000 <kvmincrease+0xe00>
    80001590:	00000097          	auipc	ra,0x0
    80001594:	738080e7          	jalr	1848(ra) # 80001cc8 <_Z11printStringPKc>
    } else{
        printString("error");
    }


    t1->start();
    80001598:	00048513          	mv	a0,s1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	c30080e7          	jalr	-976(ra) # 800011cc <_ZN7_thread5startEv>

    _thread* t2 = _thread::createThread(workerBodyB, nullptr);
    800015a4:	00000593          	li	a1,0
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	31853503          	ld	a0,792(a0) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	db0080e7          	jalr	-592(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    800015b8:	00050913          	mv	s2,a0
    if(t2 != nullptr){
    800015bc:	02050c63          	beqz	a0,800015f4 <main+0xd4>
        printString("thread created");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	a4050513          	addi	a0,a0,-1472 # 80005000 <kvmincrease+0xe00>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	700080e7          	jalr	1792(ra) # 80001cc8 <_Z11printStringPKc>
    } else{
        printString("error");
    }
    t2->start();
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	bf8080e7          	jalr	-1032(ra) # 800011cc <_ZN7_thread5startEv>
    800015dc:	0340006f          	j	80001610 <main+0xf0>
        printString("error");
    800015e0:	00004517          	auipc	a0,0x4
    800015e4:	a3050513          	addi	a0,a0,-1488 # 80005010 <kvmincrease+0xe10>
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	6e0080e7          	jalr	1760(ra) # 80001cc8 <_Z11printStringPKc>
    800015f0:	fa9ff06f          	j	80001598 <main+0x78>
        printString("error");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	a1c50513          	addi	a0,a0,-1508 # 80005010 <kvmincrease+0xe10>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	6cc080e7          	jalr	1740(ra) # 80001cc8 <_Z11printStringPKc>
    80001604:	fcdff06f          	j	800015d0 <main+0xb0>

    while(!(t1->isFinished() && t2->isFinished())){
        _thread::yield();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	bf8080e7          	jalr	-1032(ra) # 80001200 <_ZN7_thread5yieldEv>
    80001610:	0284c783          	lbu	a5,40(s1)
    while(!(t1->isFinished() && t2->isFinished())){
    80001614:	fe078ae3          	beqz	a5,80001608 <main+0xe8>
    80001618:	02894783          	lbu	a5,40(s2)
    8000161c:	fe0786e3          	beqz	a5,80001608 <main+0xe8>
    }

    return 0;
}
    80001620:	00000513          	li	a0,0
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	00013903          	ld	s2,0(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

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

        Elem(T *data, Elem *next) : data(data), next(next) {}

    };

    Elem *head, *tail;
    80001668:	00004797          	auipc	a5,0x4
    8000166c:	2d078793          	addi	a5,a5,720 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
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
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
    80001690:	00004517          	auipc	a0,0x4
    80001694:	2a853503          	ld	a0,680(a0) # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001698:	04050263          	beqz	a0,800016dc <_ZN9Scheduler3getEv+0x60>
            head = tail = elem;
        }
    }
    8000169c:	00853783          	ld	a5,8(a0)
    800016a0:	00004717          	auipc	a4,0x4
    800016a4:	28f73c23          	sd	a5,664(a4) # 80005938 <_ZN9Scheduler16readyThreadQueueE>

    800016a8:	02078463          	beqz	a5,800016d0 <_ZN9Scheduler3getEv+0x54>
    T *removeFirst()
    {
    800016ac:	00053483          	ld	s1,0(a0)
        if (!head) { return 0; }
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	124080e7          	jalr	292(ra) # 800017d4 <_ZdlPv>
}
    800016b8:	00048513          	mv	a0,s1
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

    800016d0:	00004797          	auipc	a5,0x4
    800016d4:	2607b823          	sd	zero,624(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800016d8:	fd5ff06f          	j	800016ac <_ZN9Scheduler3getEv+0x30>
        {
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
        if (!tail) { tail = head; }
    800016fc:	01000513          	li	a0,16
    80001700:	00000097          	auipc	ra,0x0
    80001704:	084080e7          	jalr	132(ra) # 80001784 <_Znwm>
        Elem *next;
    80001708:	00953023          	sd	s1,0(a0)
    8000170c:	00053423          	sd	zero,8(a0)
    }
    80001710:	00004797          	auipc	a5,0x4
    80001714:	2307b783          	ld	a5,560(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001718:	02078263          	beqz	a5,8000173c <_ZN9Scheduler3putEP7_thread+0x58>
    void addLast(T *data)
    8000171c:	00a7b423          	sd	a0,8(a5)
    {
    80001720:	00004797          	auipc	a5,0x4
    80001724:	22a7b023          	sd	a0,544(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
        elem->next=0;
    8000173c:	00004797          	auipc	a5,0x4
    80001740:	1fc78793          	addi	a5,a5,508 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
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
    80001798:	cb8080e7          	jalr	-840(ra) # 8000144c <_Z9mem_allocm>
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
    800017c0:	c90080e7          	jalr	-880(ra) # 8000144c <_Z9mem_allocm>
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
    800017e8:	cb4080e7          	jalr	-844(ra) # 80001498 <_Z8mem_freePv>
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
    80001810:	c8c080e7          	jalr	-884(ra) # 80001498 <_Z8mem_freePv>

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

0000000080001894 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	01213023          	sd	s2,0(sp)
    800018a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018ac:	00000493          	li	s1,0
    800018b0:	0380006f          	j	800018e8 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018b4:	00003517          	auipc	a0,0x3
    800018b8:	76450513          	addi	a0,a0,1892 # 80005018 <kvmincrease+0xe18>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	40c080e7          	jalr	1036(ra) # 80001cc8 <_Z11printStringPKc>
        printInteger(i);
    800018c4:	00048513          	mv	a0,s1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	470080e7          	jalr	1136(ra) # 80001d38 <_Z12printIntegerm>
        printString("\n");
    800018d0:	00003517          	auipc	a0,0x3
    800018d4:	75850513          	addi	a0,a0,1880 # 80005028 <kvmincrease+0xe28>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	3f0080e7          	jalr	1008(ra) # 80001cc8 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018e0:	0014849b          	addiw	s1,s1,1
    800018e4:	0ff4f493          	andi	s1,s1,255
    800018e8:	00200793          	li	a5,2
    800018ec:	fc97f4e3          	bgeu	a5,s1,800018b4 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800018f0:	00003517          	auipc	a0,0x3
    800018f4:	73050513          	addi	a0,a0,1840 # 80005020 <kvmincrease+0xe20>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	3d0080e7          	jalr	976(ra) # 80001cc8 <_Z11printStringPKc>
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
    80001914:	72050513          	addi	a0,a0,1824 # 80005030 <kvmincrease+0xe30>
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	3b0080e7          	jalr	944(ra) # 80001cc8 <_Z11printStringPKc>
    printInteger(t1);
    80001920:	00090513          	mv	a0,s2
    80001924:	00000097          	auipc	ra,0x0
    80001928:	414080e7          	jalr	1044(ra) # 80001d38 <_Z12printIntegerm>
    printString("\n");
    8000192c:	00003517          	auipc	a0,0x3
    80001930:	6fc50513          	addi	a0,a0,1788 # 80005028 <kvmincrease+0xe28>
    80001934:	00000097          	auipc	ra,0x0
    80001938:	394080e7          	jalr	916(ra) # 80001cc8 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    8000193c:	01400513          	li	a0,20
    80001940:	00000097          	auipc	ra,0x0
    80001944:	ee4080e7          	jalr	-284(ra) # 80001824 <_ZL9fibonaccim>
    80001948:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000194c:	00003517          	auipc	a0,0x3
    80001950:	6ec50513          	addi	a0,a0,1772 # 80005038 <kvmincrease+0xe38>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	374080e7          	jalr	884(ra) # 80001cc8 <_Z11printStringPKc>
    printInteger(result);
    8000195c:	00090513          	mv	a0,s2
    80001960:	00000097          	auipc	ra,0x0
    80001964:	3d8080e7          	jalr	984(ra) # 80001d38 <_Z12printIntegerm>
    printString("\n");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	6c050513          	addi	a0,a0,1728 # 80005028 <kvmincrease+0xe28>
    80001970:	00000097          	auipc	ra,0x0
    80001974:	358080e7          	jalr	856(ra) # 80001cc8 <_Z11printStringPKc>
    80001978:	0380006f          	j	800019b0 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	69c50513          	addi	a0,a0,1692 # 80005018 <kvmincrease+0xe18>
    80001984:	00000097          	auipc	ra,0x0
    80001988:	344080e7          	jalr	836(ra) # 80001cc8 <_Z11printStringPKc>
        printInteger(i);
    8000198c:	00048513          	mv	a0,s1
    80001990:	00000097          	auipc	ra,0x0
    80001994:	3a8080e7          	jalr	936(ra) # 80001d38 <_Z12printIntegerm>
        printString("\n");
    80001998:	00003517          	auipc	a0,0x3
    8000199c:	69050513          	addi	a0,a0,1680 # 80005028 <kvmincrease+0xe28>
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	328080e7          	jalr	808(ra) # 80001cc8 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019a8:	0014849b          	addiw	s1,s1,1
    800019ac:	0ff4f493          	andi	s1,s1,255
    800019b0:	00500793          	li	a5,5
    800019b4:	fc97f4e3          	bgeu	a5,s1,8000197c <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    800019b8:	00004797          	auipc	a5,0x4
    800019bc:	ee87b783          	ld	a5,-280(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
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

00000000800019ec <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	01213023          	sd	s2,0(sp)
    80001a00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a04:	00a00493          	li	s1,10
    80001a08:	0380006f          	j	80001a40 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	63c50513          	addi	a0,a0,1596 # 80005048 <kvmincrease+0xe48>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	2b4080e7          	jalr	692(ra) # 80001cc8 <_Z11printStringPKc>
        printInteger(i);
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	318080e7          	jalr	792(ra) # 80001d38 <_Z12printIntegerm>
        printString("\n");
    80001a28:	00003517          	auipc	a0,0x3
    80001a2c:	60050513          	addi	a0,a0,1536 # 80005028 <kvmincrease+0xe28>
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	298080e7          	jalr	664(ra) # 80001cc8 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a38:	0014849b          	addiw	s1,s1,1
    80001a3c:	0ff4f493          	andi	s1,s1,255
    80001a40:	00c00793          	li	a5,12
    80001a44:	fc97f4e3          	bgeu	a5,s1,80001a0c <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001a48:	00003517          	auipc	a0,0x3
    80001a4c:	60850513          	addi	a0,a0,1544 # 80005050 <kvmincrease+0xe50>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	278080e7          	jalr	632(ra) # 80001cc8 <_Z11printStringPKc>
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
    80001a78:	5c450513          	addi	a0,a0,1476 # 80005038 <kvmincrease+0xe38>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	24c080e7          	jalr	588(ra) # 80001cc8 <_Z11printStringPKc>
    printInteger(result);
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	2b0080e7          	jalr	688(ra) # 80001d38 <_Z12printIntegerm>
    printString("\n");
    80001a90:	00003517          	auipc	a0,0x3
    80001a94:	59850513          	addi	a0,a0,1432 # 80005028 <kvmincrease+0xe28>
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	230080e7          	jalr	560(ra) # 80001cc8 <_Z11printStringPKc>
    80001aa0:	0380006f          	j	80001ad8 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001aa4:	00003517          	auipc	a0,0x3
    80001aa8:	5a450513          	addi	a0,a0,1444 # 80005048 <kvmincrease+0xe48>
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	21c080e7          	jalr	540(ra) # 80001cc8 <_Z11printStringPKc>
        printInteger(i);
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	280080e7          	jalr	640(ra) # 80001d38 <_Z12printIntegerm>
        printString("\n");
    80001ac0:	00003517          	auipc	a0,0x3
    80001ac4:	56850513          	addi	a0,a0,1384 # 80005028 <kvmincrease+0xe28>
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	200080e7          	jalr	512(ra) # 80001cc8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ad0:	0014849b          	addiw	s1,s1,1
    80001ad4:	0ff4f493          	andi	s1,s1,255
    80001ad8:	00f00793          	li	a5,15
    80001adc:	fc97f4e3          	bgeu	a5,s1,80001aa4 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001ae0:	00004797          	auipc	a5,0x4
    80001ae4:	dc07b783          	ld	a5,-576(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001b58:	124080e7          	jalr	292(ra) # 80001c78 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b5c:	00050513          	mv	a0,a0
    80001b60:	fe1ff06f          	j	80001b40 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001b64:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	138080e7          	jalr	312(ra) # 80001ca0 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001b88:	7dc080e7          	jalr	2012(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
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
    80001bb4:	fb010113          	addi	sp,sp,-80
    80001bb8:	04113423          	sd	ra,72(sp)
    80001bbc:	04813023          	sd	s0,64(sp)
    80001bc0:	02913c23          	sd	s1,56(sp)
    80001bc4:	03213823          	sd	s2,48(sp)
    80001bc8:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bcc:	142027f3          	csrr	a5,scause
    80001bd0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001bd4:	fb843783          	ld	a5,-72(s0)
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
    80001bec:	04813083          	ld	ra,72(sp)
    80001bf0:	04013403          	ld	s0,64(sp)
    80001bf4:	03813483          	ld	s1,56(sp)
    80001bf8:	03013903          	ld	s2,48(sp)
    80001bfc:	05010113          	addi	sp,sp,80
    80001c00:	00008067          	ret
        if(a0reg==0x04){
    80001c04:	00400793          	li	a5,4
    80001c08:	02f68a63          	beq	a3,a5,80001c3c <_ZN5Riscv20handleSupervisorTrapEv+0x88>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c0c:	141027f3          	csrr	a5,sepc
    80001c10:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c14:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80001c18:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c1c:	100027f3          	csrr	a5,sstatus
    80001c20:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001c24:	fd043903          	ld	s2,-48(s0)
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
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c3c:	141027f3          	csrr	a5,sepc
    80001c40:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c44:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c48:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c4c:	100027f3          	csrr	a5,sstatus
    80001c50:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001c54:	fc043903          	ld	s2,-64(s0)
            _thread::timeSliceCounter = 0;
    80001c58:	00004797          	auipc	a5,0x4
    80001c5c:	c707b783          	ld	a5,-912(a5) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c60:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	61c080e7          	jalr	1564(ra) # 80001280 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c6c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c70:	14149073          	csrw	sepc,s1
}
    80001c74:	f79ff06f          	j	80001bec <_ZN5Riscv20handleSupervisorTrapEv+0x38>

0000000080001c78 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00113423          	sd	ra,8(sp)
    80001c80:	00813023          	sd	s0,0(sp)
    80001c84:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001c88:	00002097          	auipc	ra,0x2
    80001c8c:	300080e7          	jalr	768(ra) # 80003f88 <__mem_alloc>
}
    80001c90:	00813083          	ld	ra,8(sp)
    80001c94:	00013403          	ld	s0,0(sp)
    80001c98:	01010113          	addi	sp,sp,16
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	20c080e7          	jalr	524(ra) # 80003ebc <__mem_free>
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001cc8:	fd010113          	addi	sp,sp,-48
    80001ccc:	02113423          	sd	ra,40(sp)
    80001cd0:	02813023          	sd	s0,32(sp)
    80001cd4:	00913c23          	sd	s1,24(sp)
    80001cd8:	01213823          	sd	s2,16(sp)
    80001cdc:	03010413          	addi	s0,sp,48
    80001ce0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce4:	100027f3          	csrr	a5,sstatus
    80001ce8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001cec:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf0:	00200793          	li	a5,2
    80001cf4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001cf8:	0004c503          	lbu	a0,0(s1)
    80001cfc:	00050a63          	beqz	a0,80001d10 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001d00:	00002097          	auipc	ra,0x2
    80001d04:	3e0080e7          	jalr	992(ra) # 800040e0 <__putc>
        string++;
    80001d08:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d0c:	fedff06f          	j	80001cf8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001d10:	0009091b          	sext.w	s2,s2
    80001d14:	00297913          	andi	s2,s2,2
    80001d18:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d1c:	10092073          	csrs	sstatus,s2
}
    80001d20:	02813083          	ld	ra,40(sp)
    80001d24:	02013403          	ld	s0,32(sp)
    80001d28:	01813483          	ld	s1,24(sp)
    80001d2c:	01013903          	ld	s2,16(sp)
    80001d30:	03010113          	addi	sp,sp,48
    80001d34:	00008067          	ret

0000000080001d38 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001d38:	fc010113          	addi	sp,sp,-64
    80001d3c:	02113c23          	sd	ra,56(sp)
    80001d40:	02813823          	sd	s0,48(sp)
    80001d44:	02913423          	sd	s1,40(sp)
    80001d48:	03213023          	sd	s2,32(sp)
    80001d4c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d50:	100027f3          	csrr	a5,sstatus
    80001d54:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d58:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d5c:	00200793          	li	a5,2
    80001d60:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d64:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d68:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d6c:	00a00613          	li	a2,10
    80001d70:	02c5773b          	remuw	a4,a0,a2
    80001d74:	02071693          	slli	a3,a4,0x20
    80001d78:	0206d693          	srli	a3,a3,0x20
    80001d7c:	00003717          	auipc	a4,0x3
    80001d80:	2e470713          	addi	a4,a4,740 # 80005060 <_ZZ12printIntegermE6digits>
    80001d84:	00d70733          	add	a4,a4,a3
    80001d88:	00074703          	lbu	a4,0(a4)
    80001d8c:	fe040693          	addi	a3,s0,-32
    80001d90:	009687b3          	add	a5,a3,s1
    80001d94:	0014849b          	addiw	s1,s1,1
    80001d98:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d9c:	0005071b          	sext.w	a4,a0
    80001da0:	02c5553b          	divuw	a0,a0,a2
    80001da4:	00900793          	li	a5,9
    80001da8:	fce7e2e3          	bltu	a5,a4,80001d6c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001dac:	fff4849b          	addiw	s1,s1,-1
    80001db0:	0004ce63          	bltz	s1,80001dcc <_Z12printIntegerm+0x94>
    80001db4:	fe040793          	addi	a5,s0,-32
    80001db8:	009787b3          	add	a5,a5,s1
    80001dbc:	ff07c503          	lbu	a0,-16(a5)
    80001dc0:	00002097          	auipc	ra,0x2
    80001dc4:	320080e7          	jalr	800(ra) # 800040e0 <__putc>
    80001dc8:	fe5ff06f          	j	80001dac <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001dcc:	0009091b          	sext.w	s2,s2
    80001dd0:	00297913          	andi	s2,s2,2
    80001dd4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001dd8:	10092073          	csrs	sstatus,s2
}
    80001ddc:	03813083          	ld	ra,56(sp)
    80001de0:	03013403          	ld	s0,48(sp)
    80001de4:	02813483          	ld	s1,40(sp)
    80001de8:	02013903          	ld	s2,32(sp)
    80001dec:	04010113          	addi	sp,sp,64
    80001df0:	00008067          	ret

0000000080001df4 <start>:
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813423          	sd	s0,8(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    80001e00:	300027f3          	csrr	a5,mstatus
    80001e04:	ffffe737          	lui	a4,0xffffe
    80001e08:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c3f>
    80001e0c:	00e7f7b3          	and	a5,a5,a4
    80001e10:	00001737          	lui	a4,0x1
    80001e14:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e18:	00e7e7b3          	or	a5,a5,a4
    80001e1c:	30079073          	csrw	mstatus,a5
    80001e20:	00000797          	auipc	a5,0x0
    80001e24:	16078793          	addi	a5,a5,352 # 80001f80 <system_main>
    80001e28:	34179073          	csrw	mepc,a5
    80001e2c:	00000793          	li	a5,0
    80001e30:	18079073          	csrw	satp,a5
    80001e34:	000107b7          	lui	a5,0x10
    80001e38:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e3c:	30279073          	csrw	medeleg,a5
    80001e40:	30379073          	csrw	mideleg,a5
    80001e44:	104027f3          	csrr	a5,sie
    80001e48:	2227e793          	ori	a5,a5,546
    80001e4c:	10479073          	csrw	sie,a5
    80001e50:	fff00793          	li	a5,-1
    80001e54:	00a7d793          	srli	a5,a5,0xa
    80001e58:	3b079073          	csrw	pmpaddr0,a5
    80001e5c:	00f00793          	li	a5,15
    80001e60:	3a079073          	csrw	pmpcfg0,a5
    80001e64:	f14027f3          	csrr	a5,mhartid
    80001e68:	0200c737          	lui	a4,0x200c
    80001e6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e70:	0007869b          	sext.w	a3,a5
    80001e74:	00269713          	slli	a4,a3,0x2
    80001e78:	000f4637          	lui	a2,0xf4
    80001e7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e80:	00d70733          	add	a4,a4,a3
    80001e84:	0037979b          	slliw	a5,a5,0x3
    80001e88:	020046b7          	lui	a3,0x2004
    80001e8c:	00d787b3          	add	a5,a5,a3
    80001e90:	00c585b3          	add	a1,a1,a2
    80001e94:	00371693          	slli	a3,a4,0x3
    80001e98:	00004717          	auipc	a4,0x4
    80001e9c:	ab870713          	addi	a4,a4,-1352 # 80005950 <timer_scratch>
    80001ea0:	00b7b023          	sd	a1,0(a5)
    80001ea4:	00d70733          	add	a4,a4,a3
    80001ea8:	00f73c23          	sd	a5,24(a4)
    80001eac:	02c73023          	sd	a2,32(a4)
    80001eb0:	34071073          	csrw	mscratch,a4
    80001eb4:	00000797          	auipc	a5,0x0
    80001eb8:	6ec78793          	addi	a5,a5,1772 # 800025a0 <timervec>
    80001ebc:	30579073          	csrw	mtvec,a5
    80001ec0:	300027f3          	csrr	a5,mstatus
    80001ec4:	0087e793          	ori	a5,a5,8
    80001ec8:	30079073          	csrw	mstatus,a5
    80001ecc:	304027f3          	csrr	a5,mie
    80001ed0:	0807e793          	ori	a5,a5,128
    80001ed4:	30479073          	csrw	mie,a5
    80001ed8:	f14027f3          	csrr	a5,mhartid
    80001edc:	0007879b          	sext.w	a5,a5
    80001ee0:	00078213          	mv	tp,a5
    80001ee4:	30200073          	mret
    80001ee8:	00813403          	ld	s0,8(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <timerinit>:
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813423          	sd	s0,8(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	f14027f3          	csrr	a5,mhartid
    80001f04:	0200c737          	lui	a4,0x200c
    80001f08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f0c:	0007869b          	sext.w	a3,a5
    80001f10:	00269713          	slli	a4,a3,0x2
    80001f14:	000f4637          	lui	a2,0xf4
    80001f18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f1c:	00d70733          	add	a4,a4,a3
    80001f20:	0037979b          	slliw	a5,a5,0x3
    80001f24:	020046b7          	lui	a3,0x2004
    80001f28:	00d787b3          	add	a5,a5,a3
    80001f2c:	00c585b3          	add	a1,a1,a2
    80001f30:	00371693          	slli	a3,a4,0x3
    80001f34:	00004717          	auipc	a4,0x4
    80001f38:	a1c70713          	addi	a4,a4,-1508 # 80005950 <timer_scratch>
    80001f3c:	00b7b023          	sd	a1,0(a5)
    80001f40:	00d70733          	add	a4,a4,a3
    80001f44:	00f73c23          	sd	a5,24(a4)
    80001f48:	02c73023          	sd	a2,32(a4)
    80001f4c:	34071073          	csrw	mscratch,a4
    80001f50:	00000797          	auipc	a5,0x0
    80001f54:	65078793          	addi	a5,a5,1616 # 800025a0 <timervec>
    80001f58:	30579073          	csrw	mtvec,a5
    80001f5c:	300027f3          	csrr	a5,mstatus
    80001f60:	0087e793          	ori	a5,a5,8
    80001f64:	30079073          	csrw	mstatus,a5
    80001f68:	304027f3          	csrr	a5,mie
    80001f6c:	0807e793          	ori	a5,a5,128
    80001f70:	30479073          	csrw	mie,a5
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <system_main>:
    80001f80:	fe010113          	addi	sp,sp,-32
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	00113c23          	sd	ra,24(sp)
    80001f90:	02010413          	addi	s0,sp,32
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	0c4080e7          	jalr	196(ra) # 80002058 <cpuid>
    80001f9c:	00004497          	auipc	s1,0x4
    80001fa0:	95448493          	addi	s1,s1,-1708 # 800058f0 <started>
    80001fa4:	02050263          	beqz	a0,80001fc8 <system_main+0x48>
    80001fa8:	0004a783          	lw	a5,0(s1)
    80001fac:	0007879b          	sext.w	a5,a5
    80001fb0:	fe078ce3          	beqz	a5,80001fa8 <system_main+0x28>
    80001fb4:	0ff0000f          	fence
    80001fb8:	00003517          	auipc	a0,0x3
    80001fbc:	0e850513          	addi	a0,a0,232 # 800050a0 <_ZZ12printIntegermE6digits+0x40>
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	a7c080e7          	jalr	-1412(ra) # 80002a3c <panic>
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	9d0080e7          	jalr	-1584(ra) # 80002998 <consoleinit>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	15c080e7          	jalr	348(ra) # 8000312c <printfinit>
    80001fd8:	00003517          	auipc	a0,0x3
    80001fdc:	05050513          	addi	a0,a0,80 # 80005028 <kvmincrease+0xe28>
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	ab8080e7          	jalr	-1352(ra) # 80002a98 <__printf>
    80001fe8:	00003517          	auipc	a0,0x3
    80001fec:	08850513          	addi	a0,a0,136 # 80005070 <_ZZ12printIntegermE6digits+0x10>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	aa8080e7          	jalr	-1368(ra) # 80002a98 <__printf>
    80001ff8:	00003517          	auipc	a0,0x3
    80001ffc:	03050513          	addi	a0,a0,48 # 80005028 <kvmincrease+0xe28>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	a98080e7          	jalr	-1384(ra) # 80002a98 <__printf>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	4b0080e7          	jalr	1200(ra) # 800034b8 <kinit>
    80002010:	00000097          	auipc	ra,0x0
    80002014:	148080e7          	jalr	328(ra) # 80002158 <trapinit>
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	16c080e7          	jalr	364(ra) # 80002184 <trapinithart>
    80002020:	00000097          	auipc	ra,0x0
    80002024:	5c0080e7          	jalr	1472(ra) # 800025e0 <plicinit>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	5e0080e7          	jalr	1504(ra) # 80002608 <plicinithart>
    80002030:	00000097          	auipc	ra,0x0
    80002034:	078080e7          	jalr	120(ra) # 800020a8 <userinit>
    80002038:	0ff0000f          	fence
    8000203c:	00100793          	li	a5,1
    80002040:	00003517          	auipc	a0,0x3
    80002044:	04850513          	addi	a0,a0,72 # 80005088 <_ZZ12printIntegermE6digits+0x28>
    80002048:	00f4a023          	sw	a5,0(s1)
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	a4c080e7          	jalr	-1460(ra) # 80002a98 <__printf>
    80002054:	0000006f          	j	80002054 <system_main+0xd4>

0000000080002058 <cpuid>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    80002064:	00020513          	mv	a0,tp
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	0005051b          	sext.w	a0,a0
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret

0000000080002078 <mycpu>:
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00813423          	sd	s0,8(sp)
    80002080:	01010413          	addi	s0,sp,16
    80002084:	00020793          	mv	a5,tp
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	0007879b          	sext.w	a5,a5
    80002090:	00779793          	slli	a5,a5,0x7
    80002094:	00005517          	auipc	a0,0x5
    80002098:	8ec50513          	addi	a0,a0,-1812 # 80006980 <cpus>
    8000209c:	00f50533          	add	a0,a0,a5
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <userinit>:
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00813423          	sd	s0,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	fffff317          	auipc	t1,0xfffff
    800020c0:	46430067          	jr	1124(t1) # 80001520 <main>

00000000800020c4 <either_copyout>:
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813023          	sd	s0,0(sp)
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	01010413          	addi	s0,sp,16
    800020d4:	02051663          	bnez	a0,80002100 <either_copyout+0x3c>
    800020d8:	00058513          	mv	a0,a1
    800020dc:	00060593          	mv	a1,a2
    800020e0:	0006861b          	sext.w	a2,a3
    800020e4:	00002097          	auipc	ra,0x2
    800020e8:	c60080e7          	jalr	-928(ra) # 80003d44 <__memmove>
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	00000513          	li	a0,0
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret
    80002100:	00003517          	auipc	a0,0x3
    80002104:	fc850513          	addi	a0,a0,-56 # 800050c8 <_ZZ12printIntegermE6digits+0x68>
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	934080e7          	jalr	-1740(ra) # 80002a3c <panic>

0000000080002110 <either_copyin>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	02059463          	bnez	a1,80002148 <either_copyin+0x38>
    80002124:	00060593          	mv	a1,a2
    80002128:	0006861b          	sext.w	a2,a3
    8000212c:	00002097          	auipc	ra,0x2
    80002130:	c18080e7          	jalr	-1000(ra) # 80003d44 <__memmove>
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	00000513          	li	a0,0
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret
    80002148:	00003517          	auipc	a0,0x3
    8000214c:	fa850513          	addi	a0,a0,-88 # 800050f0 <_ZZ12printIntegermE6digits+0x90>
    80002150:	00001097          	auipc	ra,0x1
    80002154:	8ec080e7          	jalr	-1812(ra) # 80002a3c <panic>

0000000080002158 <trapinit>:
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00813423          	sd	s0,8(sp)
    80002160:	01010413          	addi	s0,sp,16
    80002164:	00813403          	ld	s0,8(sp)
    80002168:	00003597          	auipc	a1,0x3
    8000216c:	fb058593          	addi	a1,a1,-80 # 80005118 <_ZZ12printIntegermE6digits+0xb8>
    80002170:	00005517          	auipc	a0,0x5
    80002174:	89050513          	addi	a0,a0,-1904 # 80006a00 <tickslock>
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00001317          	auipc	t1,0x1
    80002180:	5cc30067          	jr	1484(t1) # 80003748 <initlock>

0000000080002184 <trapinithart>:
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00000797          	auipc	a5,0x0
    80002194:	30078793          	addi	a5,a5,768 # 80002490 <kernelvec>
    80002198:	10579073          	csrw	stvec,a5
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <usertrap>:
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00813423          	sd	s0,8(sp)
    800021b0:	01010413          	addi	s0,sp,16
    800021b4:	00813403          	ld	s0,8(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <usertrapret>:
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    800021cc:	00813403          	ld	s0,8(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <kerneltrap>:
    800021d8:	fe010113          	addi	sp,sp,-32
    800021dc:	00813823          	sd	s0,16(sp)
    800021e0:	00113c23          	sd	ra,24(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	142025f3          	csrr	a1,scause
    800021f0:	100027f3          	csrr	a5,sstatus
    800021f4:	0027f793          	andi	a5,a5,2
    800021f8:	10079c63          	bnez	a5,80002310 <kerneltrap+0x138>
    800021fc:	142027f3          	csrr	a5,scause
    80002200:	0207ce63          	bltz	a5,8000223c <kerneltrap+0x64>
    80002204:	00003517          	auipc	a0,0x3
    80002208:	f5c50513          	addi	a0,a0,-164 # 80005160 <_ZZ12printIntegermE6digits+0x100>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	88c080e7          	jalr	-1908(ra) # 80002a98 <__printf>
    80002214:	141025f3          	csrr	a1,sepc
    80002218:	14302673          	csrr	a2,stval
    8000221c:	00003517          	auipc	a0,0x3
    80002220:	f5450513          	addi	a0,a0,-172 # 80005170 <_ZZ12printIntegermE6digits+0x110>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	874080e7          	jalr	-1932(ra) # 80002a98 <__printf>
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	f5c50513          	addi	a0,a0,-164 # 80005188 <_ZZ12printIntegermE6digits+0x128>
    80002234:	00001097          	auipc	ra,0x1
    80002238:	808080e7          	jalr	-2040(ra) # 80002a3c <panic>
    8000223c:	0ff7f713          	andi	a4,a5,255
    80002240:	00900693          	li	a3,9
    80002244:	04d70063          	beq	a4,a3,80002284 <kerneltrap+0xac>
    80002248:	fff00713          	li	a4,-1
    8000224c:	03f71713          	slli	a4,a4,0x3f
    80002250:	00170713          	addi	a4,a4,1
    80002254:	fae798e3          	bne	a5,a4,80002204 <kerneltrap+0x2c>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	e00080e7          	jalr	-512(ra) # 80002058 <cpuid>
    80002260:	06050663          	beqz	a0,800022cc <kerneltrap+0xf4>
    80002264:	144027f3          	csrr	a5,sip
    80002268:	ffd7f793          	andi	a5,a5,-3
    8000226c:	14479073          	csrw	sip,a5
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	02010113          	addi	sp,sp,32
    80002280:	00008067          	ret
    80002284:	00000097          	auipc	ra,0x0
    80002288:	3d0080e7          	jalr	976(ra) # 80002654 <plic_claim>
    8000228c:	00a00793          	li	a5,10
    80002290:	00050493          	mv	s1,a0
    80002294:	06f50863          	beq	a0,a5,80002304 <kerneltrap+0x12c>
    80002298:	fc050ce3          	beqz	a0,80002270 <kerneltrap+0x98>
    8000229c:	00050593          	mv	a1,a0
    800022a0:	00003517          	auipc	a0,0x3
    800022a4:	ea050513          	addi	a0,a0,-352 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	7f0080e7          	jalr	2032(ra) # 80002a98 <__printf>
    800022b0:	01013403          	ld	s0,16(sp)
    800022b4:	01813083          	ld	ra,24(sp)
    800022b8:	00048513          	mv	a0,s1
    800022bc:	00813483          	ld	s1,8(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00000317          	auipc	t1,0x0
    800022c8:	3c830067          	jr	968(t1) # 8000268c <plic_complete>
    800022cc:	00004517          	auipc	a0,0x4
    800022d0:	73450513          	addi	a0,a0,1844 # 80006a00 <tickslock>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	498080e7          	jalr	1176(ra) # 8000376c <acquire>
    800022dc:	00003717          	auipc	a4,0x3
    800022e0:	61870713          	addi	a4,a4,1560 # 800058f4 <ticks>
    800022e4:	00072783          	lw	a5,0(a4)
    800022e8:	00004517          	auipc	a0,0x4
    800022ec:	71850513          	addi	a0,a0,1816 # 80006a00 <tickslock>
    800022f0:	0017879b          	addiw	a5,a5,1
    800022f4:	00f72023          	sw	a5,0(a4)
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	540080e7          	jalr	1344(ra) # 80003838 <release>
    80002300:	f65ff06f          	j	80002264 <kerneltrap+0x8c>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	09c080e7          	jalr	156(ra) # 800033a0 <uartintr>
    8000230c:	fa5ff06f          	j	800022b0 <kerneltrap+0xd8>
    80002310:	00003517          	auipc	a0,0x3
    80002314:	e1050513          	addi	a0,a0,-496 # 80005120 <_ZZ12printIntegermE6digits+0xc0>
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	724080e7          	jalr	1828(ra) # 80002a3c <panic>

0000000080002320 <clockintr>:
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	00113c23          	sd	ra,24(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00004497          	auipc	s1,0x4
    80002338:	6cc48493          	addi	s1,s1,1740 # 80006a00 <tickslock>
    8000233c:	00048513          	mv	a0,s1
    80002340:	00001097          	auipc	ra,0x1
    80002344:	42c080e7          	jalr	1068(ra) # 8000376c <acquire>
    80002348:	00003717          	auipc	a4,0x3
    8000234c:	5ac70713          	addi	a4,a4,1452 # 800058f4 <ticks>
    80002350:	00072783          	lw	a5,0(a4)
    80002354:	01013403          	ld	s0,16(sp)
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	00048513          	mv	a0,s1
    80002360:	0017879b          	addiw	a5,a5,1
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	00f72023          	sw	a5,0(a4)
    8000236c:	02010113          	addi	sp,sp,32
    80002370:	00001317          	auipc	t1,0x1
    80002374:	4c830067          	jr	1224(t1) # 80003838 <release>

0000000080002378 <devintr>:
    80002378:	142027f3          	csrr	a5,scause
    8000237c:	00000513          	li	a0,0
    80002380:	0007c463          	bltz	a5,80002388 <devintr+0x10>
    80002384:	00008067          	ret
    80002388:	fe010113          	addi	sp,sp,-32
    8000238c:	00813823          	sd	s0,16(sp)
    80002390:	00113c23          	sd	ra,24(sp)
    80002394:	00913423          	sd	s1,8(sp)
    80002398:	02010413          	addi	s0,sp,32
    8000239c:	0ff7f713          	andi	a4,a5,255
    800023a0:	00900693          	li	a3,9
    800023a4:	04d70c63          	beq	a4,a3,800023fc <devintr+0x84>
    800023a8:	fff00713          	li	a4,-1
    800023ac:	03f71713          	slli	a4,a4,0x3f
    800023b0:	00170713          	addi	a4,a4,1
    800023b4:	00e78c63          	beq	a5,a4,800023cc <devintr+0x54>
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00008067          	ret
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	c8c080e7          	jalr	-884(ra) # 80002058 <cpuid>
    800023d4:	06050663          	beqz	a0,80002440 <devintr+0xc8>
    800023d8:	144027f3          	csrr	a5,sip
    800023dc:	ffd7f793          	andi	a5,a5,-3
    800023e0:	14479073          	csrw	sip,a5
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	00200513          	li	a0,2
    800023f4:	02010113          	addi	sp,sp,32
    800023f8:	00008067          	ret
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	258080e7          	jalr	600(ra) # 80002654 <plic_claim>
    80002404:	00a00793          	li	a5,10
    80002408:	00050493          	mv	s1,a0
    8000240c:	06f50663          	beq	a0,a5,80002478 <devintr+0x100>
    80002410:	00100513          	li	a0,1
    80002414:	fa0482e3          	beqz	s1,800023b8 <devintr+0x40>
    80002418:	00048593          	mv	a1,s1
    8000241c:	00003517          	auipc	a0,0x3
    80002420:	d2450513          	addi	a0,a0,-732 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    80002424:	00000097          	auipc	ra,0x0
    80002428:	674080e7          	jalr	1652(ra) # 80002a98 <__printf>
    8000242c:	00048513          	mv	a0,s1
    80002430:	00000097          	auipc	ra,0x0
    80002434:	25c080e7          	jalr	604(ra) # 8000268c <plic_complete>
    80002438:	00100513          	li	a0,1
    8000243c:	f7dff06f          	j	800023b8 <devintr+0x40>
    80002440:	00004517          	auipc	a0,0x4
    80002444:	5c050513          	addi	a0,a0,1472 # 80006a00 <tickslock>
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	324080e7          	jalr	804(ra) # 8000376c <acquire>
    80002450:	00003717          	auipc	a4,0x3
    80002454:	4a470713          	addi	a4,a4,1188 # 800058f4 <ticks>
    80002458:	00072783          	lw	a5,0(a4)
    8000245c:	00004517          	auipc	a0,0x4
    80002460:	5a450513          	addi	a0,a0,1444 # 80006a00 <tickslock>
    80002464:	0017879b          	addiw	a5,a5,1
    80002468:	00f72023          	sw	a5,0(a4)
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	3cc080e7          	jalr	972(ra) # 80003838 <release>
    80002474:	f65ff06f          	j	800023d8 <devintr+0x60>
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	f28080e7          	jalr	-216(ra) # 800033a0 <uartintr>
    80002480:	fadff06f          	j	8000242c <devintr+0xb4>
	...

0000000080002490 <kernelvec>:
    80002490:	f0010113          	addi	sp,sp,-256
    80002494:	00113023          	sd	ra,0(sp)
    80002498:	00213423          	sd	sp,8(sp)
    8000249c:	00313823          	sd	gp,16(sp)
    800024a0:	00413c23          	sd	tp,24(sp)
    800024a4:	02513023          	sd	t0,32(sp)
    800024a8:	02613423          	sd	t1,40(sp)
    800024ac:	02713823          	sd	t2,48(sp)
    800024b0:	02813c23          	sd	s0,56(sp)
    800024b4:	04913023          	sd	s1,64(sp)
    800024b8:	04a13423          	sd	a0,72(sp)
    800024bc:	04b13823          	sd	a1,80(sp)
    800024c0:	04c13c23          	sd	a2,88(sp)
    800024c4:	06d13023          	sd	a3,96(sp)
    800024c8:	06e13423          	sd	a4,104(sp)
    800024cc:	06f13823          	sd	a5,112(sp)
    800024d0:	07013c23          	sd	a6,120(sp)
    800024d4:	09113023          	sd	a7,128(sp)
    800024d8:	09213423          	sd	s2,136(sp)
    800024dc:	09313823          	sd	s3,144(sp)
    800024e0:	09413c23          	sd	s4,152(sp)
    800024e4:	0b513023          	sd	s5,160(sp)
    800024e8:	0b613423          	sd	s6,168(sp)
    800024ec:	0b713823          	sd	s7,176(sp)
    800024f0:	0b813c23          	sd	s8,184(sp)
    800024f4:	0d913023          	sd	s9,192(sp)
    800024f8:	0da13423          	sd	s10,200(sp)
    800024fc:	0db13823          	sd	s11,208(sp)
    80002500:	0dc13c23          	sd	t3,216(sp)
    80002504:	0fd13023          	sd	t4,224(sp)
    80002508:	0fe13423          	sd	t5,232(sp)
    8000250c:	0ff13823          	sd	t6,240(sp)
    80002510:	cc9ff0ef          	jal	ra,800021d8 <kerneltrap>
    80002514:	00013083          	ld	ra,0(sp)
    80002518:	00813103          	ld	sp,8(sp)
    8000251c:	01013183          	ld	gp,16(sp)
    80002520:	02013283          	ld	t0,32(sp)
    80002524:	02813303          	ld	t1,40(sp)
    80002528:	03013383          	ld	t2,48(sp)
    8000252c:	03813403          	ld	s0,56(sp)
    80002530:	04013483          	ld	s1,64(sp)
    80002534:	04813503          	ld	a0,72(sp)
    80002538:	05013583          	ld	a1,80(sp)
    8000253c:	05813603          	ld	a2,88(sp)
    80002540:	06013683          	ld	a3,96(sp)
    80002544:	06813703          	ld	a4,104(sp)
    80002548:	07013783          	ld	a5,112(sp)
    8000254c:	07813803          	ld	a6,120(sp)
    80002550:	08013883          	ld	a7,128(sp)
    80002554:	08813903          	ld	s2,136(sp)
    80002558:	09013983          	ld	s3,144(sp)
    8000255c:	09813a03          	ld	s4,152(sp)
    80002560:	0a013a83          	ld	s5,160(sp)
    80002564:	0a813b03          	ld	s6,168(sp)
    80002568:	0b013b83          	ld	s7,176(sp)
    8000256c:	0b813c03          	ld	s8,184(sp)
    80002570:	0c013c83          	ld	s9,192(sp)
    80002574:	0c813d03          	ld	s10,200(sp)
    80002578:	0d013d83          	ld	s11,208(sp)
    8000257c:	0d813e03          	ld	t3,216(sp)
    80002580:	0e013e83          	ld	t4,224(sp)
    80002584:	0e813f03          	ld	t5,232(sp)
    80002588:	0f013f83          	ld	t6,240(sp)
    8000258c:	10010113          	addi	sp,sp,256
    80002590:	10200073          	sret
    80002594:	00000013          	nop
    80002598:	00000013          	nop
    8000259c:	00000013          	nop

00000000800025a0 <timervec>:
    800025a0:	34051573          	csrrw	a0,mscratch,a0
    800025a4:	00b53023          	sd	a1,0(a0)
    800025a8:	00c53423          	sd	a2,8(a0)
    800025ac:	00d53823          	sd	a3,16(a0)
    800025b0:	01853583          	ld	a1,24(a0)
    800025b4:	02053603          	ld	a2,32(a0)
    800025b8:	0005b683          	ld	a3,0(a1)
    800025bc:	00c686b3          	add	a3,a3,a2
    800025c0:	00d5b023          	sd	a3,0(a1)
    800025c4:	00200593          	li	a1,2
    800025c8:	14459073          	csrw	sip,a1
    800025cc:	01053683          	ld	a3,16(a0)
    800025d0:	00853603          	ld	a2,8(a0)
    800025d4:	00053583          	ld	a1,0(a0)
    800025d8:	34051573          	csrrw	a0,mscratch,a0
    800025dc:	30200073          	mret

00000000800025e0 <plicinit>:
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00813423          	sd	s0,8(sp)
    800025e8:	01010413          	addi	s0,sp,16
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	0c0007b7          	lui	a5,0xc000
    800025f4:	00100713          	li	a4,1
    800025f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800025fc:	00e7a223          	sw	a4,4(a5)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <plicinithart>:
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	00113423          	sd	ra,8(sp)
    80002614:	01010413          	addi	s0,sp,16
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	a40080e7          	jalr	-1472(ra) # 80002058 <cpuid>
    80002620:	0085171b          	slliw	a4,a0,0x8
    80002624:	0c0027b7          	lui	a5,0xc002
    80002628:	00e787b3          	add	a5,a5,a4
    8000262c:	40200713          	li	a4,1026
    80002630:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	00d5151b          	slliw	a0,a0,0xd
    80002640:	0c2017b7          	lui	a5,0xc201
    80002644:	00a78533          	add	a0,a5,a0
    80002648:	00052023          	sw	zero,0(a0)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <plic_claim>:
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	01010413          	addi	s0,sp,16
    80002664:	00000097          	auipc	ra,0x0
    80002668:	9f4080e7          	jalr	-1548(ra) # 80002058 <cpuid>
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	00d5151b          	slliw	a0,a0,0xd
    80002678:	0c2017b7          	lui	a5,0xc201
    8000267c:	00a78533          	add	a0,a5,a0
    80002680:	00452503          	lw	a0,4(a0)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <plic_complete>:
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00813823          	sd	s0,16(sp)
    80002694:	00913423          	sd	s1,8(sp)
    80002698:	00113c23          	sd	ra,24(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	9b4080e7          	jalr	-1612(ra) # 80002058 <cpuid>
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	01013403          	ld	s0,16(sp)
    800026b4:	00d5179b          	slliw	a5,a0,0xd
    800026b8:	0c201737          	lui	a4,0xc201
    800026bc:	00f707b3          	add	a5,a4,a5
    800026c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800026c4:	00813483          	ld	s1,8(sp)
    800026c8:	02010113          	addi	sp,sp,32
    800026cc:	00008067          	ret

00000000800026d0 <consolewrite>:
    800026d0:	fb010113          	addi	sp,sp,-80
    800026d4:	04813023          	sd	s0,64(sp)
    800026d8:	04113423          	sd	ra,72(sp)
    800026dc:	02913c23          	sd	s1,56(sp)
    800026e0:	03213823          	sd	s2,48(sp)
    800026e4:	03313423          	sd	s3,40(sp)
    800026e8:	03413023          	sd	s4,32(sp)
    800026ec:	01513c23          	sd	s5,24(sp)
    800026f0:	05010413          	addi	s0,sp,80
    800026f4:	06c05c63          	blez	a2,8000276c <consolewrite+0x9c>
    800026f8:	00060993          	mv	s3,a2
    800026fc:	00050a13          	mv	s4,a0
    80002700:	00058493          	mv	s1,a1
    80002704:	00000913          	li	s2,0
    80002708:	fff00a93          	li	s5,-1
    8000270c:	01c0006f          	j	80002728 <consolewrite+0x58>
    80002710:	fbf44503          	lbu	a0,-65(s0)
    80002714:	0019091b          	addiw	s2,s2,1
    80002718:	00148493          	addi	s1,s1,1
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	a9c080e7          	jalr	-1380(ra) # 800031b8 <uartputc>
    80002724:	03298063          	beq	s3,s2,80002744 <consolewrite+0x74>
    80002728:	00048613          	mv	a2,s1
    8000272c:	00100693          	li	a3,1
    80002730:	000a0593          	mv	a1,s4
    80002734:	fbf40513          	addi	a0,s0,-65
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	9d8080e7          	jalr	-1576(ra) # 80002110 <either_copyin>
    80002740:	fd5518e3          	bne	a0,s5,80002710 <consolewrite+0x40>
    80002744:	04813083          	ld	ra,72(sp)
    80002748:	04013403          	ld	s0,64(sp)
    8000274c:	03813483          	ld	s1,56(sp)
    80002750:	02813983          	ld	s3,40(sp)
    80002754:	02013a03          	ld	s4,32(sp)
    80002758:	01813a83          	ld	s5,24(sp)
    8000275c:	00090513          	mv	a0,s2
    80002760:	03013903          	ld	s2,48(sp)
    80002764:	05010113          	addi	sp,sp,80
    80002768:	00008067          	ret
    8000276c:	00000913          	li	s2,0
    80002770:	fd5ff06f          	j	80002744 <consolewrite+0x74>

0000000080002774 <consoleread>:
    80002774:	f9010113          	addi	sp,sp,-112
    80002778:	06813023          	sd	s0,96(sp)
    8000277c:	04913c23          	sd	s1,88(sp)
    80002780:	05213823          	sd	s2,80(sp)
    80002784:	05313423          	sd	s3,72(sp)
    80002788:	05413023          	sd	s4,64(sp)
    8000278c:	03513c23          	sd	s5,56(sp)
    80002790:	03613823          	sd	s6,48(sp)
    80002794:	03713423          	sd	s7,40(sp)
    80002798:	03813023          	sd	s8,32(sp)
    8000279c:	06113423          	sd	ra,104(sp)
    800027a0:	01913c23          	sd	s9,24(sp)
    800027a4:	07010413          	addi	s0,sp,112
    800027a8:	00060b93          	mv	s7,a2
    800027ac:	00050913          	mv	s2,a0
    800027b0:	00058c13          	mv	s8,a1
    800027b4:	00060b1b          	sext.w	s6,a2
    800027b8:	00004497          	auipc	s1,0x4
    800027bc:	27048493          	addi	s1,s1,624 # 80006a28 <cons>
    800027c0:	00400993          	li	s3,4
    800027c4:	fff00a13          	li	s4,-1
    800027c8:	00a00a93          	li	s5,10
    800027cc:	05705e63          	blez	s7,80002828 <consoleread+0xb4>
    800027d0:	09c4a703          	lw	a4,156(s1)
    800027d4:	0984a783          	lw	a5,152(s1)
    800027d8:	0007071b          	sext.w	a4,a4
    800027dc:	08e78463          	beq	a5,a4,80002864 <consoleread+0xf0>
    800027e0:	07f7f713          	andi	a4,a5,127
    800027e4:	00e48733          	add	a4,s1,a4
    800027e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800027ec:	0017869b          	addiw	a3,a5,1
    800027f0:	08d4ac23          	sw	a3,152(s1)
    800027f4:	00070c9b          	sext.w	s9,a4
    800027f8:	0b370663          	beq	a4,s3,800028a4 <consoleread+0x130>
    800027fc:	00100693          	li	a3,1
    80002800:	f9f40613          	addi	a2,s0,-97
    80002804:	000c0593          	mv	a1,s8
    80002808:	00090513          	mv	a0,s2
    8000280c:	f8e40fa3          	sb	a4,-97(s0)
    80002810:	00000097          	auipc	ra,0x0
    80002814:	8b4080e7          	jalr	-1868(ra) # 800020c4 <either_copyout>
    80002818:	01450863          	beq	a0,s4,80002828 <consoleread+0xb4>
    8000281c:	001c0c13          	addi	s8,s8,1
    80002820:	fffb8b9b          	addiw	s7,s7,-1
    80002824:	fb5c94e3          	bne	s9,s5,800027cc <consoleread+0x58>
    80002828:	000b851b          	sext.w	a0,s7
    8000282c:	06813083          	ld	ra,104(sp)
    80002830:	06013403          	ld	s0,96(sp)
    80002834:	05813483          	ld	s1,88(sp)
    80002838:	05013903          	ld	s2,80(sp)
    8000283c:	04813983          	ld	s3,72(sp)
    80002840:	04013a03          	ld	s4,64(sp)
    80002844:	03813a83          	ld	s5,56(sp)
    80002848:	02813b83          	ld	s7,40(sp)
    8000284c:	02013c03          	ld	s8,32(sp)
    80002850:	01813c83          	ld	s9,24(sp)
    80002854:	40ab053b          	subw	a0,s6,a0
    80002858:	03013b03          	ld	s6,48(sp)
    8000285c:	07010113          	addi	sp,sp,112
    80002860:	00008067          	ret
    80002864:	00001097          	auipc	ra,0x1
    80002868:	1d8080e7          	jalr	472(ra) # 80003a3c <push_on>
    8000286c:	0984a703          	lw	a4,152(s1)
    80002870:	09c4a783          	lw	a5,156(s1)
    80002874:	0007879b          	sext.w	a5,a5
    80002878:	fef70ce3          	beq	a4,a5,80002870 <consoleread+0xfc>
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	234080e7          	jalr	564(ra) # 80003ab0 <pop_on>
    80002884:	0984a783          	lw	a5,152(s1)
    80002888:	07f7f713          	andi	a4,a5,127
    8000288c:	00e48733          	add	a4,s1,a4
    80002890:	01874703          	lbu	a4,24(a4)
    80002894:	0017869b          	addiw	a3,a5,1
    80002898:	08d4ac23          	sw	a3,152(s1)
    8000289c:	00070c9b          	sext.w	s9,a4
    800028a0:	f5371ee3          	bne	a4,s3,800027fc <consoleread+0x88>
    800028a4:	000b851b          	sext.w	a0,s7
    800028a8:	f96bf2e3          	bgeu	s7,s6,8000282c <consoleread+0xb8>
    800028ac:	08f4ac23          	sw	a5,152(s1)
    800028b0:	f7dff06f          	j	8000282c <consoleread+0xb8>

00000000800028b4 <consputc>:
    800028b4:	10000793          	li	a5,256
    800028b8:	00f50663          	beq	a0,a5,800028c4 <consputc+0x10>
    800028bc:	00001317          	auipc	t1,0x1
    800028c0:	9f430067          	jr	-1548(t1) # 800032b0 <uartputc_sync>
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00113423          	sd	ra,8(sp)
    800028cc:	00813023          	sd	s0,0(sp)
    800028d0:	01010413          	addi	s0,sp,16
    800028d4:	00800513          	li	a0,8
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	9d8080e7          	jalr	-1576(ra) # 800032b0 <uartputc_sync>
    800028e0:	02000513          	li	a0,32
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	9cc080e7          	jalr	-1588(ra) # 800032b0 <uartputc_sync>
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	00813083          	ld	ra,8(sp)
    800028f4:	00800513          	li	a0,8
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00001317          	auipc	t1,0x1
    80002900:	9b430067          	jr	-1612(t1) # 800032b0 <uartputc_sync>

0000000080002904 <consoleintr>:
    80002904:	fe010113          	addi	sp,sp,-32
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	01213023          	sd	s2,0(sp)
    80002914:	00113c23          	sd	ra,24(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00004917          	auipc	s2,0x4
    80002920:	10c90913          	addi	s2,s2,268 # 80006a28 <cons>
    80002924:	00050493          	mv	s1,a0
    80002928:	00090513          	mv	a0,s2
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	e40080e7          	jalr	-448(ra) # 8000376c <acquire>
    80002934:	02048c63          	beqz	s1,8000296c <consoleintr+0x68>
    80002938:	0a092783          	lw	a5,160(s2)
    8000293c:	09892703          	lw	a4,152(s2)
    80002940:	07f00693          	li	a3,127
    80002944:	40e7873b          	subw	a4,a5,a4
    80002948:	02e6e263          	bltu	a3,a4,8000296c <consoleintr+0x68>
    8000294c:	00d00713          	li	a4,13
    80002950:	04e48063          	beq	s1,a4,80002990 <consoleintr+0x8c>
    80002954:	07f7f713          	andi	a4,a5,127
    80002958:	00e90733          	add	a4,s2,a4
    8000295c:	0017879b          	addiw	a5,a5,1
    80002960:	0af92023          	sw	a5,160(s2)
    80002964:	00970c23          	sb	s1,24(a4)
    80002968:	08f92e23          	sw	a5,156(s2)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	00813483          	ld	s1,8(sp)
    80002978:	00013903          	ld	s2,0(sp)
    8000297c:	00004517          	auipc	a0,0x4
    80002980:	0ac50513          	addi	a0,a0,172 # 80006a28 <cons>
    80002984:	02010113          	addi	sp,sp,32
    80002988:	00001317          	auipc	t1,0x1
    8000298c:	eb030067          	jr	-336(t1) # 80003838 <release>
    80002990:	00a00493          	li	s1,10
    80002994:	fc1ff06f          	j	80002954 <consoleintr+0x50>

0000000080002998 <consoleinit>:
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	02010413          	addi	s0,sp,32
    800029ac:	00004497          	auipc	s1,0x4
    800029b0:	07c48493          	addi	s1,s1,124 # 80006a28 <cons>
    800029b4:	00048513          	mv	a0,s1
    800029b8:	00002597          	auipc	a1,0x2
    800029bc:	7e058593          	addi	a1,a1,2016 # 80005198 <_ZZ12printIntegermE6digits+0x138>
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	d88080e7          	jalr	-632(ra) # 80003748 <initlock>
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	7ac080e7          	jalr	1964(ra) # 80003174 <uartinit>
    800029d0:	01813083          	ld	ra,24(sp)
    800029d4:	01013403          	ld	s0,16(sp)
    800029d8:	00000797          	auipc	a5,0x0
    800029dc:	d9c78793          	addi	a5,a5,-612 # 80002774 <consoleread>
    800029e0:	0af4bc23          	sd	a5,184(s1)
    800029e4:	00000797          	auipc	a5,0x0
    800029e8:	cec78793          	addi	a5,a5,-788 # 800026d0 <consolewrite>
    800029ec:	0cf4b023          	sd	a5,192(s1)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00008067          	ret

00000000800029fc <console_read>:
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00813423          	sd	s0,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00813403          	ld	s0,8(sp)
    80002a0c:	00004317          	auipc	t1,0x4
    80002a10:	0d433303          	ld	t1,212(t1) # 80006ae0 <devsw+0x10>
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00030067          	jr	t1

0000000080002a1c <console_write>:
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00813423          	sd	s0,8(sp)
    80002a24:	01010413          	addi	s0,sp,16
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	00004317          	auipc	t1,0x4
    80002a30:	0bc33303          	ld	t1,188(t1) # 80006ae8 <devsw+0x18>
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00030067          	jr	t1

0000000080002a3c <panic>:
    80002a3c:	fe010113          	addi	sp,sp,-32
    80002a40:	00113c23          	sd	ra,24(sp)
    80002a44:	00813823          	sd	s0,16(sp)
    80002a48:	00913423          	sd	s1,8(sp)
    80002a4c:	02010413          	addi	s0,sp,32
    80002a50:	00050493          	mv	s1,a0
    80002a54:	00002517          	auipc	a0,0x2
    80002a58:	74c50513          	addi	a0,a0,1868 # 800051a0 <_ZZ12printIntegermE6digits+0x140>
    80002a5c:	00004797          	auipc	a5,0x4
    80002a60:	1207a623          	sw	zero,300(a5) # 80006b88 <pr+0x18>
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	034080e7          	jalr	52(ra) # 80002a98 <__printf>
    80002a6c:	00048513          	mv	a0,s1
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	028080e7          	jalr	40(ra) # 80002a98 <__printf>
    80002a78:	00002517          	auipc	a0,0x2
    80002a7c:	5b050513          	addi	a0,a0,1456 # 80005028 <kvmincrease+0xe28>
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	018080e7          	jalr	24(ra) # 80002a98 <__printf>
    80002a88:	00100793          	li	a5,1
    80002a8c:	00003717          	auipc	a4,0x3
    80002a90:	e6f72623          	sw	a5,-404(a4) # 800058f8 <panicked>
    80002a94:	0000006f          	j	80002a94 <panic+0x58>

0000000080002a98 <__printf>:
    80002a98:	f3010113          	addi	sp,sp,-208
    80002a9c:	08813023          	sd	s0,128(sp)
    80002aa0:	07313423          	sd	s3,104(sp)
    80002aa4:	09010413          	addi	s0,sp,144
    80002aa8:	05813023          	sd	s8,64(sp)
    80002aac:	08113423          	sd	ra,136(sp)
    80002ab0:	06913c23          	sd	s1,120(sp)
    80002ab4:	07213823          	sd	s2,112(sp)
    80002ab8:	07413023          	sd	s4,96(sp)
    80002abc:	05513c23          	sd	s5,88(sp)
    80002ac0:	05613823          	sd	s6,80(sp)
    80002ac4:	05713423          	sd	s7,72(sp)
    80002ac8:	03913c23          	sd	s9,56(sp)
    80002acc:	03a13823          	sd	s10,48(sp)
    80002ad0:	03b13423          	sd	s11,40(sp)
    80002ad4:	00004317          	auipc	t1,0x4
    80002ad8:	09c30313          	addi	t1,t1,156 # 80006b70 <pr>
    80002adc:	01832c03          	lw	s8,24(t1)
    80002ae0:	00b43423          	sd	a1,8(s0)
    80002ae4:	00c43823          	sd	a2,16(s0)
    80002ae8:	00d43c23          	sd	a3,24(s0)
    80002aec:	02e43023          	sd	a4,32(s0)
    80002af0:	02f43423          	sd	a5,40(s0)
    80002af4:	03043823          	sd	a6,48(s0)
    80002af8:	03143c23          	sd	a7,56(s0)
    80002afc:	00050993          	mv	s3,a0
    80002b00:	4a0c1663          	bnez	s8,80002fac <__printf+0x514>
    80002b04:	60098c63          	beqz	s3,8000311c <__printf+0x684>
    80002b08:	0009c503          	lbu	a0,0(s3)
    80002b0c:	00840793          	addi	a5,s0,8
    80002b10:	f6f43c23          	sd	a5,-136(s0)
    80002b14:	00000493          	li	s1,0
    80002b18:	22050063          	beqz	a0,80002d38 <__printf+0x2a0>
    80002b1c:	00002a37          	lui	s4,0x2
    80002b20:	00018ab7          	lui	s5,0x18
    80002b24:	000f4b37          	lui	s6,0xf4
    80002b28:	00989bb7          	lui	s7,0x989
    80002b2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b3c:	00148c9b          	addiw	s9,s1,1
    80002b40:	02500793          	li	a5,37
    80002b44:	01998933          	add	s2,s3,s9
    80002b48:	38f51263          	bne	a0,a5,80002ecc <__printf+0x434>
    80002b4c:	00094783          	lbu	a5,0(s2)
    80002b50:	00078c9b          	sext.w	s9,a5
    80002b54:	1e078263          	beqz	a5,80002d38 <__printf+0x2a0>
    80002b58:	0024849b          	addiw	s1,s1,2
    80002b5c:	07000713          	li	a4,112
    80002b60:	00998933          	add	s2,s3,s1
    80002b64:	38e78a63          	beq	a5,a4,80002ef8 <__printf+0x460>
    80002b68:	20f76863          	bltu	a4,a5,80002d78 <__printf+0x2e0>
    80002b6c:	42a78863          	beq	a5,a0,80002f9c <__printf+0x504>
    80002b70:	06400713          	li	a4,100
    80002b74:	40e79663          	bne	a5,a4,80002f80 <__printf+0x4e8>
    80002b78:	f7843783          	ld	a5,-136(s0)
    80002b7c:	0007a603          	lw	a2,0(a5)
    80002b80:	00878793          	addi	a5,a5,8
    80002b84:	f6f43c23          	sd	a5,-136(s0)
    80002b88:	42064a63          	bltz	a2,80002fbc <__printf+0x524>
    80002b8c:	00a00713          	li	a4,10
    80002b90:	02e677bb          	remuw	a5,a2,a4
    80002b94:	00002d97          	auipc	s11,0x2
    80002b98:	634d8d93          	addi	s11,s11,1588 # 800051c8 <digits>
    80002b9c:	00900593          	li	a1,9
    80002ba0:	0006051b          	sext.w	a0,a2
    80002ba4:	00000c93          	li	s9,0
    80002ba8:	02079793          	slli	a5,a5,0x20
    80002bac:	0207d793          	srli	a5,a5,0x20
    80002bb0:	00fd87b3          	add	a5,s11,a5
    80002bb4:	0007c783          	lbu	a5,0(a5)
    80002bb8:	02e656bb          	divuw	a3,a2,a4
    80002bbc:	f8f40023          	sb	a5,-128(s0)
    80002bc0:	14c5d863          	bge	a1,a2,80002d10 <__printf+0x278>
    80002bc4:	06300593          	li	a1,99
    80002bc8:	00100c93          	li	s9,1
    80002bcc:	02e6f7bb          	remuw	a5,a3,a4
    80002bd0:	02079793          	slli	a5,a5,0x20
    80002bd4:	0207d793          	srli	a5,a5,0x20
    80002bd8:	00fd87b3          	add	a5,s11,a5
    80002bdc:	0007c783          	lbu	a5,0(a5)
    80002be0:	02e6d73b          	divuw	a4,a3,a4
    80002be4:	f8f400a3          	sb	a5,-127(s0)
    80002be8:	12a5f463          	bgeu	a1,a0,80002d10 <__printf+0x278>
    80002bec:	00a00693          	li	a3,10
    80002bf0:	00900593          	li	a1,9
    80002bf4:	02d777bb          	remuw	a5,a4,a3
    80002bf8:	02079793          	slli	a5,a5,0x20
    80002bfc:	0207d793          	srli	a5,a5,0x20
    80002c00:	00fd87b3          	add	a5,s11,a5
    80002c04:	0007c503          	lbu	a0,0(a5)
    80002c08:	02d757bb          	divuw	a5,a4,a3
    80002c0c:	f8a40123          	sb	a0,-126(s0)
    80002c10:	48e5f263          	bgeu	a1,a4,80003094 <__printf+0x5fc>
    80002c14:	06300513          	li	a0,99
    80002c18:	02d7f5bb          	remuw	a1,a5,a3
    80002c1c:	02059593          	slli	a1,a1,0x20
    80002c20:	0205d593          	srli	a1,a1,0x20
    80002c24:	00bd85b3          	add	a1,s11,a1
    80002c28:	0005c583          	lbu	a1,0(a1)
    80002c2c:	02d7d7bb          	divuw	a5,a5,a3
    80002c30:	f8b401a3          	sb	a1,-125(s0)
    80002c34:	48e57263          	bgeu	a0,a4,800030b8 <__printf+0x620>
    80002c38:	3e700513          	li	a0,999
    80002c3c:	02d7f5bb          	remuw	a1,a5,a3
    80002c40:	02059593          	slli	a1,a1,0x20
    80002c44:	0205d593          	srli	a1,a1,0x20
    80002c48:	00bd85b3          	add	a1,s11,a1
    80002c4c:	0005c583          	lbu	a1,0(a1)
    80002c50:	02d7d7bb          	divuw	a5,a5,a3
    80002c54:	f8b40223          	sb	a1,-124(s0)
    80002c58:	46e57663          	bgeu	a0,a4,800030c4 <__printf+0x62c>
    80002c5c:	02d7f5bb          	remuw	a1,a5,a3
    80002c60:	02059593          	slli	a1,a1,0x20
    80002c64:	0205d593          	srli	a1,a1,0x20
    80002c68:	00bd85b3          	add	a1,s11,a1
    80002c6c:	0005c583          	lbu	a1,0(a1)
    80002c70:	02d7d7bb          	divuw	a5,a5,a3
    80002c74:	f8b402a3          	sb	a1,-123(s0)
    80002c78:	46ea7863          	bgeu	s4,a4,800030e8 <__printf+0x650>
    80002c7c:	02d7f5bb          	remuw	a1,a5,a3
    80002c80:	02059593          	slli	a1,a1,0x20
    80002c84:	0205d593          	srli	a1,a1,0x20
    80002c88:	00bd85b3          	add	a1,s11,a1
    80002c8c:	0005c583          	lbu	a1,0(a1)
    80002c90:	02d7d7bb          	divuw	a5,a5,a3
    80002c94:	f8b40323          	sb	a1,-122(s0)
    80002c98:	3eeaf863          	bgeu	s5,a4,80003088 <__printf+0x5f0>
    80002c9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ca0:	02059593          	slli	a1,a1,0x20
    80002ca4:	0205d593          	srli	a1,a1,0x20
    80002ca8:	00bd85b3          	add	a1,s11,a1
    80002cac:	0005c583          	lbu	a1,0(a1)
    80002cb0:	02d7d7bb          	divuw	a5,a5,a3
    80002cb4:	f8b403a3          	sb	a1,-121(s0)
    80002cb8:	42eb7e63          	bgeu	s6,a4,800030f4 <__printf+0x65c>
    80002cbc:	02d7f5bb          	remuw	a1,a5,a3
    80002cc0:	02059593          	slli	a1,a1,0x20
    80002cc4:	0205d593          	srli	a1,a1,0x20
    80002cc8:	00bd85b3          	add	a1,s11,a1
    80002ccc:	0005c583          	lbu	a1,0(a1)
    80002cd0:	02d7d7bb          	divuw	a5,a5,a3
    80002cd4:	f8b40423          	sb	a1,-120(s0)
    80002cd8:	42ebfc63          	bgeu	s7,a4,80003110 <__printf+0x678>
    80002cdc:	02079793          	slli	a5,a5,0x20
    80002ce0:	0207d793          	srli	a5,a5,0x20
    80002ce4:	00fd8db3          	add	s11,s11,a5
    80002ce8:	000dc703          	lbu	a4,0(s11)
    80002cec:	00a00793          	li	a5,10
    80002cf0:	00900c93          	li	s9,9
    80002cf4:	f8e404a3          	sb	a4,-119(s0)
    80002cf8:	00065c63          	bgez	a2,80002d10 <__printf+0x278>
    80002cfc:	f9040713          	addi	a4,s0,-112
    80002d00:	00f70733          	add	a4,a4,a5
    80002d04:	02d00693          	li	a3,45
    80002d08:	fed70823          	sb	a3,-16(a4)
    80002d0c:	00078c93          	mv	s9,a5
    80002d10:	f8040793          	addi	a5,s0,-128
    80002d14:	01978cb3          	add	s9,a5,s9
    80002d18:	f7f40d13          	addi	s10,s0,-129
    80002d1c:	000cc503          	lbu	a0,0(s9)
    80002d20:	fffc8c93          	addi	s9,s9,-1
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	b90080e7          	jalr	-1136(ra) # 800028b4 <consputc>
    80002d2c:	ffac98e3          	bne	s9,s10,80002d1c <__printf+0x284>
    80002d30:	00094503          	lbu	a0,0(s2)
    80002d34:	e00514e3          	bnez	a0,80002b3c <__printf+0xa4>
    80002d38:	1a0c1663          	bnez	s8,80002ee4 <__printf+0x44c>
    80002d3c:	08813083          	ld	ra,136(sp)
    80002d40:	08013403          	ld	s0,128(sp)
    80002d44:	07813483          	ld	s1,120(sp)
    80002d48:	07013903          	ld	s2,112(sp)
    80002d4c:	06813983          	ld	s3,104(sp)
    80002d50:	06013a03          	ld	s4,96(sp)
    80002d54:	05813a83          	ld	s5,88(sp)
    80002d58:	05013b03          	ld	s6,80(sp)
    80002d5c:	04813b83          	ld	s7,72(sp)
    80002d60:	04013c03          	ld	s8,64(sp)
    80002d64:	03813c83          	ld	s9,56(sp)
    80002d68:	03013d03          	ld	s10,48(sp)
    80002d6c:	02813d83          	ld	s11,40(sp)
    80002d70:	0d010113          	addi	sp,sp,208
    80002d74:	00008067          	ret
    80002d78:	07300713          	li	a4,115
    80002d7c:	1ce78a63          	beq	a5,a4,80002f50 <__printf+0x4b8>
    80002d80:	07800713          	li	a4,120
    80002d84:	1ee79e63          	bne	a5,a4,80002f80 <__printf+0x4e8>
    80002d88:	f7843783          	ld	a5,-136(s0)
    80002d8c:	0007a703          	lw	a4,0(a5)
    80002d90:	00878793          	addi	a5,a5,8
    80002d94:	f6f43c23          	sd	a5,-136(s0)
    80002d98:	28074263          	bltz	a4,8000301c <__printf+0x584>
    80002d9c:	00002d97          	auipc	s11,0x2
    80002da0:	42cd8d93          	addi	s11,s11,1068 # 800051c8 <digits>
    80002da4:	00f77793          	andi	a5,a4,15
    80002da8:	00fd87b3          	add	a5,s11,a5
    80002dac:	0007c683          	lbu	a3,0(a5)
    80002db0:	00f00613          	li	a2,15
    80002db4:	0007079b          	sext.w	a5,a4
    80002db8:	f8d40023          	sb	a3,-128(s0)
    80002dbc:	0047559b          	srliw	a1,a4,0x4
    80002dc0:	0047569b          	srliw	a3,a4,0x4
    80002dc4:	00000c93          	li	s9,0
    80002dc8:	0ee65063          	bge	a2,a4,80002ea8 <__printf+0x410>
    80002dcc:	00f6f693          	andi	a3,a3,15
    80002dd0:	00dd86b3          	add	a3,s11,a3
    80002dd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002dd8:	0087d79b          	srliw	a5,a5,0x8
    80002ddc:	00100c93          	li	s9,1
    80002de0:	f8d400a3          	sb	a3,-127(s0)
    80002de4:	0cb67263          	bgeu	a2,a1,80002ea8 <__printf+0x410>
    80002de8:	00f7f693          	andi	a3,a5,15
    80002dec:	00dd86b3          	add	a3,s11,a3
    80002df0:	0006c583          	lbu	a1,0(a3)
    80002df4:	00f00613          	li	a2,15
    80002df8:	0047d69b          	srliw	a3,a5,0x4
    80002dfc:	f8b40123          	sb	a1,-126(s0)
    80002e00:	0047d593          	srli	a1,a5,0x4
    80002e04:	28f67e63          	bgeu	a2,a5,800030a0 <__printf+0x608>
    80002e08:	00f6f693          	andi	a3,a3,15
    80002e0c:	00dd86b3          	add	a3,s11,a3
    80002e10:	0006c503          	lbu	a0,0(a3)
    80002e14:	0087d813          	srli	a6,a5,0x8
    80002e18:	0087d69b          	srliw	a3,a5,0x8
    80002e1c:	f8a401a3          	sb	a0,-125(s0)
    80002e20:	28b67663          	bgeu	a2,a1,800030ac <__printf+0x614>
    80002e24:	00f6f693          	andi	a3,a3,15
    80002e28:	00dd86b3          	add	a3,s11,a3
    80002e2c:	0006c583          	lbu	a1,0(a3)
    80002e30:	00c7d513          	srli	a0,a5,0xc
    80002e34:	00c7d69b          	srliw	a3,a5,0xc
    80002e38:	f8b40223          	sb	a1,-124(s0)
    80002e3c:	29067a63          	bgeu	a2,a6,800030d0 <__printf+0x638>
    80002e40:	00f6f693          	andi	a3,a3,15
    80002e44:	00dd86b3          	add	a3,s11,a3
    80002e48:	0006c583          	lbu	a1,0(a3)
    80002e4c:	0107d813          	srli	a6,a5,0x10
    80002e50:	0107d69b          	srliw	a3,a5,0x10
    80002e54:	f8b402a3          	sb	a1,-123(s0)
    80002e58:	28a67263          	bgeu	a2,a0,800030dc <__printf+0x644>
    80002e5c:	00f6f693          	andi	a3,a3,15
    80002e60:	00dd86b3          	add	a3,s11,a3
    80002e64:	0006c683          	lbu	a3,0(a3)
    80002e68:	0147d79b          	srliw	a5,a5,0x14
    80002e6c:	f8d40323          	sb	a3,-122(s0)
    80002e70:	21067663          	bgeu	a2,a6,8000307c <__printf+0x5e4>
    80002e74:	02079793          	slli	a5,a5,0x20
    80002e78:	0207d793          	srli	a5,a5,0x20
    80002e7c:	00fd8db3          	add	s11,s11,a5
    80002e80:	000dc683          	lbu	a3,0(s11)
    80002e84:	00800793          	li	a5,8
    80002e88:	00700c93          	li	s9,7
    80002e8c:	f8d403a3          	sb	a3,-121(s0)
    80002e90:	00075c63          	bgez	a4,80002ea8 <__printf+0x410>
    80002e94:	f9040713          	addi	a4,s0,-112
    80002e98:	00f70733          	add	a4,a4,a5
    80002e9c:	02d00693          	li	a3,45
    80002ea0:	fed70823          	sb	a3,-16(a4)
    80002ea4:	00078c93          	mv	s9,a5
    80002ea8:	f8040793          	addi	a5,s0,-128
    80002eac:	01978cb3          	add	s9,a5,s9
    80002eb0:	f7f40d13          	addi	s10,s0,-129
    80002eb4:	000cc503          	lbu	a0,0(s9)
    80002eb8:	fffc8c93          	addi	s9,s9,-1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	9f8080e7          	jalr	-1544(ra) # 800028b4 <consputc>
    80002ec4:	ff9d18e3          	bne	s10,s9,80002eb4 <__printf+0x41c>
    80002ec8:	0100006f          	j	80002ed8 <__printf+0x440>
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	9e8080e7          	jalr	-1560(ra) # 800028b4 <consputc>
    80002ed4:	000c8493          	mv	s1,s9
    80002ed8:	00094503          	lbu	a0,0(s2)
    80002edc:	c60510e3          	bnez	a0,80002b3c <__printf+0xa4>
    80002ee0:	e40c0ee3          	beqz	s8,80002d3c <__printf+0x2a4>
    80002ee4:	00004517          	auipc	a0,0x4
    80002ee8:	c8c50513          	addi	a0,a0,-884 # 80006b70 <pr>
    80002eec:	00001097          	auipc	ra,0x1
    80002ef0:	94c080e7          	jalr	-1716(ra) # 80003838 <release>
    80002ef4:	e49ff06f          	j	80002d3c <__printf+0x2a4>
    80002ef8:	f7843783          	ld	a5,-136(s0)
    80002efc:	03000513          	li	a0,48
    80002f00:	01000d13          	li	s10,16
    80002f04:	00878713          	addi	a4,a5,8
    80002f08:	0007bc83          	ld	s9,0(a5)
    80002f0c:	f6e43c23          	sd	a4,-136(s0)
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	9a4080e7          	jalr	-1628(ra) # 800028b4 <consputc>
    80002f18:	07800513          	li	a0,120
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	998080e7          	jalr	-1640(ra) # 800028b4 <consputc>
    80002f24:	00002d97          	auipc	s11,0x2
    80002f28:	2a4d8d93          	addi	s11,s11,676 # 800051c8 <digits>
    80002f2c:	03ccd793          	srli	a5,s9,0x3c
    80002f30:	00fd87b3          	add	a5,s11,a5
    80002f34:	0007c503          	lbu	a0,0(a5)
    80002f38:	fffd0d1b          	addiw	s10,s10,-1
    80002f3c:	004c9c93          	slli	s9,s9,0x4
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	974080e7          	jalr	-1676(ra) # 800028b4 <consputc>
    80002f48:	fe0d12e3          	bnez	s10,80002f2c <__printf+0x494>
    80002f4c:	f8dff06f          	j	80002ed8 <__printf+0x440>
    80002f50:	f7843783          	ld	a5,-136(s0)
    80002f54:	0007bc83          	ld	s9,0(a5)
    80002f58:	00878793          	addi	a5,a5,8
    80002f5c:	f6f43c23          	sd	a5,-136(s0)
    80002f60:	000c9a63          	bnez	s9,80002f74 <__printf+0x4dc>
    80002f64:	1080006f          	j	8000306c <__printf+0x5d4>
    80002f68:	001c8c93          	addi	s9,s9,1
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	948080e7          	jalr	-1720(ra) # 800028b4 <consputc>
    80002f74:	000cc503          	lbu	a0,0(s9)
    80002f78:	fe0518e3          	bnez	a0,80002f68 <__printf+0x4d0>
    80002f7c:	f5dff06f          	j	80002ed8 <__printf+0x440>
    80002f80:	02500513          	li	a0,37
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	930080e7          	jalr	-1744(ra) # 800028b4 <consputc>
    80002f8c:	000c8513          	mv	a0,s9
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	924080e7          	jalr	-1756(ra) # 800028b4 <consputc>
    80002f98:	f41ff06f          	j	80002ed8 <__printf+0x440>
    80002f9c:	02500513          	li	a0,37
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	914080e7          	jalr	-1772(ra) # 800028b4 <consputc>
    80002fa8:	f31ff06f          	j	80002ed8 <__printf+0x440>
    80002fac:	00030513          	mv	a0,t1
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	7bc080e7          	jalr	1980(ra) # 8000376c <acquire>
    80002fb8:	b4dff06f          	j	80002b04 <__printf+0x6c>
    80002fbc:	40c0053b          	negw	a0,a2
    80002fc0:	00a00713          	li	a4,10
    80002fc4:	02e576bb          	remuw	a3,a0,a4
    80002fc8:	00002d97          	auipc	s11,0x2
    80002fcc:	200d8d93          	addi	s11,s11,512 # 800051c8 <digits>
    80002fd0:	ff700593          	li	a1,-9
    80002fd4:	02069693          	slli	a3,a3,0x20
    80002fd8:	0206d693          	srli	a3,a3,0x20
    80002fdc:	00dd86b3          	add	a3,s11,a3
    80002fe0:	0006c683          	lbu	a3,0(a3)
    80002fe4:	02e557bb          	divuw	a5,a0,a4
    80002fe8:	f8d40023          	sb	a3,-128(s0)
    80002fec:	10b65e63          	bge	a2,a1,80003108 <__printf+0x670>
    80002ff0:	06300593          	li	a1,99
    80002ff4:	02e7f6bb          	remuw	a3,a5,a4
    80002ff8:	02069693          	slli	a3,a3,0x20
    80002ffc:	0206d693          	srli	a3,a3,0x20
    80003000:	00dd86b3          	add	a3,s11,a3
    80003004:	0006c683          	lbu	a3,0(a3)
    80003008:	02e7d73b          	divuw	a4,a5,a4
    8000300c:	00200793          	li	a5,2
    80003010:	f8d400a3          	sb	a3,-127(s0)
    80003014:	bca5ece3          	bltu	a1,a0,80002bec <__printf+0x154>
    80003018:	ce5ff06f          	j	80002cfc <__printf+0x264>
    8000301c:	40e007bb          	negw	a5,a4
    80003020:	00002d97          	auipc	s11,0x2
    80003024:	1a8d8d93          	addi	s11,s11,424 # 800051c8 <digits>
    80003028:	00f7f693          	andi	a3,a5,15
    8000302c:	00dd86b3          	add	a3,s11,a3
    80003030:	0006c583          	lbu	a1,0(a3)
    80003034:	ff100613          	li	a2,-15
    80003038:	0047d69b          	srliw	a3,a5,0x4
    8000303c:	f8b40023          	sb	a1,-128(s0)
    80003040:	0047d59b          	srliw	a1,a5,0x4
    80003044:	0ac75e63          	bge	a4,a2,80003100 <__printf+0x668>
    80003048:	00f6f693          	andi	a3,a3,15
    8000304c:	00dd86b3          	add	a3,s11,a3
    80003050:	0006c603          	lbu	a2,0(a3)
    80003054:	00f00693          	li	a3,15
    80003058:	0087d79b          	srliw	a5,a5,0x8
    8000305c:	f8c400a3          	sb	a2,-127(s0)
    80003060:	d8b6e4e3          	bltu	a3,a1,80002de8 <__printf+0x350>
    80003064:	00200793          	li	a5,2
    80003068:	e2dff06f          	j	80002e94 <__printf+0x3fc>
    8000306c:	00002c97          	auipc	s9,0x2
    80003070:	13cc8c93          	addi	s9,s9,316 # 800051a8 <_ZZ12printIntegermE6digits+0x148>
    80003074:	02800513          	li	a0,40
    80003078:	ef1ff06f          	j	80002f68 <__printf+0x4d0>
    8000307c:	00700793          	li	a5,7
    80003080:	00600c93          	li	s9,6
    80003084:	e0dff06f          	j	80002e90 <__printf+0x3f8>
    80003088:	00700793          	li	a5,7
    8000308c:	00600c93          	li	s9,6
    80003090:	c69ff06f          	j	80002cf8 <__printf+0x260>
    80003094:	00300793          	li	a5,3
    80003098:	00200c93          	li	s9,2
    8000309c:	c5dff06f          	j	80002cf8 <__printf+0x260>
    800030a0:	00300793          	li	a5,3
    800030a4:	00200c93          	li	s9,2
    800030a8:	de9ff06f          	j	80002e90 <__printf+0x3f8>
    800030ac:	00400793          	li	a5,4
    800030b0:	00300c93          	li	s9,3
    800030b4:	dddff06f          	j	80002e90 <__printf+0x3f8>
    800030b8:	00400793          	li	a5,4
    800030bc:	00300c93          	li	s9,3
    800030c0:	c39ff06f          	j	80002cf8 <__printf+0x260>
    800030c4:	00500793          	li	a5,5
    800030c8:	00400c93          	li	s9,4
    800030cc:	c2dff06f          	j	80002cf8 <__printf+0x260>
    800030d0:	00500793          	li	a5,5
    800030d4:	00400c93          	li	s9,4
    800030d8:	db9ff06f          	j	80002e90 <__printf+0x3f8>
    800030dc:	00600793          	li	a5,6
    800030e0:	00500c93          	li	s9,5
    800030e4:	dadff06f          	j	80002e90 <__printf+0x3f8>
    800030e8:	00600793          	li	a5,6
    800030ec:	00500c93          	li	s9,5
    800030f0:	c09ff06f          	j	80002cf8 <__printf+0x260>
    800030f4:	00800793          	li	a5,8
    800030f8:	00700c93          	li	s9,7
    800030fc:	bfdff06f          	j	80002cf8 <__printf+0x260>
    80003100:	00100793          	li	a5,1
    80003104:	d91ff06f          	j	80002e94 <__printf+0x3fc>
    80003108:	00100793          	li	a5,1
    8000310c:	bf1ff06f          	j	80002cfc <__printf+0x264>
    80003110:	00900793          	li	a5,9
    80003114:	00800c93          	li	s9,8
    80003118:	be1ff06f          	j	80002cf8 <__printf+0x260>
    8000311c:	00002517          	auipc	a0,0x2
    80003120:	09450513          	addi	a0,a0,148 # 800051b0 <_ZZ12printIntegermE6digits+0x150>
    80003124:	00000097          	auipc	ra,0x0
    80003128:	918080e7          	jalr	-1768(ra) # 80002a3c <panic>

000000008000312c <printfinit>:
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	00113c23          	sd	ra,24(sp)
    8000313c:	02010413          	addi	s0,sp,32
    80003140:	00004497          	auipc	s1,0x4
    80003144:	a3048493          	addi	s1,s1,-1488 # 80006b70 <pr>
    80003148:	00048513          	mv	a0,s1
    8000314c:	00002597          	auipc	a1,0x2
    80003150:	07458593          	addi	a1,a1,116 # 800051c0 <_ZZ12printIntegermE6digits+0x160>
    80003154:	00000097          	auipc	ra,0x0
    80003158:	5f4080e7          	jalr	1524(ra) # 80003748 <initlock>
    8000315c:	01813083          	ld	ra,24(sp)
    80003160:	01013403          	ld	s0,16(sp)
    80003164:	0004ac23          	sw	zero,24(s1)
    80003168:	00813483          	ld	s1,8(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret

0000000080003174 <uartinit>:
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    80003180:	100007b7          	lui	a5,0x10000
    80003184:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003188:	f8000713          	li	a4,-128
    8000318c:	00e781a3          	sb	a4,3(a5)
    80003190:	00300713          	li	a4,3
    80003194:	00e78023          	sb	a4,0(a5)
    80003198:	000780a3          	sb	zero,1(a5)
    8000319c:	00e781a3          	sb	a4,3(a5)
    800031a0:	00700693          	li	a3,7
    800031a4:	00d78123          	sb	a3,2(a5)
    800031a8:	00e780a3          	sb	a4,1(a5)
    800031ac:	00813403          	ld	s0,8(sp)
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret

00000000800031b8 <uartputc>:
    800031b8:	00002797          	auipc	a5,0x2
    800031bc:	7407a783          	lw	a5,1856(a5) # 800058f8 <panicked>
    800031c0:	00078463          	beqz	a5,800031c8 <uartputc+0x10>
    800031c4:	0000006f          	j	800031c4 <uartputc+0xc>
    800031c8:	fd010113          	addi	sp,sp,-48
    800031cc:	02813023          	sd	s0,32(sp)
    800031d0:	00913c23          	sd	s1,24(sp)
    800031d4:	01213823          	sd	s2,16(sp)
    800031d8:	01313423          	sd	s3,8(sp)
    800031dc:	02113423          	sd	ra,40(sp)
    800031e0:	03010413          	addi	s0,sp,48
    800031e4:	00002917          	auipc	s2,0x2
    800031e8:	71c90913          	addi	s2,s2,1820 # 80005900 <uart_tx_r>
    800031ec:	00093783          	ld	a5,0(s2)
    800031f0:	00002497          	auipc	s1,0x2
    800031f4:	71848493          	addi	s1,s1,1816 # 80005908 <uart_tx_w>
    800031f8:	0004b703          	ld	a4,0(s1)
    800031fc:	02078693          	addi	a3,a5,32
    80003200:	00050993          	mv	s3,a0
    80003204:	02e69c63          	bne	a3,a4,8000323c <uartputc+0x84>
    80003208:	00001097          	auipc	ra,0x1
    8000320c:	834080e7          	jalr	-1996(ra) # 80003a3c <push_on>
    80003210:	00093783          	ld	a5,0(s2)
    80003214:	0004b703          	ld	a4,0(s1)
    80003218:	02078793          	addi	a5,a5,32
    8000321c:	00e79463          	bne	a5,a4,80003224 <uartputc+0x6c>
    80003220:	0000006f          	j	80003220 <uartputc+0x68>
    80003224:	00001097          	auipc	ra,0x1
    80003228:	88c080e7          	jalr	-1908(ra) # 80003ab0 <pop_on>
    8000322c:	00093783          	ld	a5,0(s2)
    80003230:	0004b703          	ld	a4,0(s1)
    80003234:	02078693          	addi	a3,a5,32
    80003238:	fce688e3          	beq	a3,a4,80003208 <uartputc+0x50>
    8000323c:	01f77693          	andi	a3,a4,31
    80003240:	00004597          	auipc	a1,0x4
    80003244:	95058593          	addi	a1,a1,-1712 # 80006b90 <uart_tx_buf>
    80003248:	00d586b3          	add	a3,a1,a3
    8000324c:	00170713          	addi	a4,a4,1
    80003250:	01368023          	sb	s3,0(a3)
    80003254:	00e4b023          	sd	a4,0(s1)
    80003258:	10000637          	lui	a2,0x10000
    8000325c:	02f71063          	bne	a4,a5,8000327c <uartputc+0xc4>
    80003260:	0340006f          	j	80003294 <uartputc+0xdc>
    80003264:	00074703          	lbu	a4,0(a4)
    80003268:	00f93023          	sd	a5,0(s2)
    8000326c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003270:	00093783          	ld	a5,0(s2)
    80003274:	0004b703          	ld	a4,0(s1)
    80003278:	00f70e63          	beq	a4,a5,80003294 <uartputc+0xdc>
    8000327c:	00564683          	lbu	a3,5(a2)
    80003280:	01f7f713          	andi	a4,a5,31
    80003284:	00e58733          	add	a4,a1,a4
    80003288:	0206f693          	andi	a3,a3,32
    8000328c:	00178793          	addi	a5,a5,1
    80003290:	fc069ae3          	bnez	a3,80003264 <uartputc+0xac>
    80003294:	02813083          	ld	ra,40(sp)
    80003298:	02013403          	ld	s0,32(sp)
    8000329c:	01813483          	ld	s1,24(sp)
    800032a0:	01013903          	ld	s2,16(sp)
    800032a4:	00813983          	ld	s3,8(sp)
    800032a8:	03010113          	addi	sp,sp,48
    800032ac:	00008067          	ret

00000000800032b0 <uartputc_sync>:
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00813423          	sd	s0,8(sp)
    800032b8:	01010413          	addi	s0,sp,16
    800032bc:	00002717          	auipc	a4,0x2
    800032c0:	63c72703          	lw	a4,1596(a4) # 800058f8 <panicked>
    800032c4:	02071663          	bnez	a4,800032f0 <uartputc_sync+0x40>
    800032c8:	00050793          	mv	a5,a0
    800032cc:	100006b7          	lui	a3,0x10000
    800032d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800032d4:	02077713          	andi	a4,a4,32
    800032d8:	fe070ce3          	beqz	a4,800032d0 <uartputc_sync+0x20>
    800032dc:	0ff7f793          	andi	a5,a5,255
    800032e0:	00f68023          	sb	a5,0(a3)
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret
    800032f0:	0000006f          	j	800032f0 <uartputc_sync+0x40>

00000000800032f4 <uartstart>:
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00813423          	sd	s0,8(sp)
    800032fc:	01010413          	addi	s0,sp,16
    80003300:	00002617          	auipc	a2,0x2
    80003304:	60060613          	addi	a2,a2,1536 # 80005900 <uart_tx_r>
    80003308:	00002517          	auipc	a0,0x2
    8000330c:	60050513          	addi	a0,a0,1536 # 80005908 <uart_tx_w>
    80003310:	00063783          	ld	a5,0(a2)
    80003314:	00053703          	ld	a4,0(a0)
    80003318:	04f70263          	beq	a4,a5,8000335c <uartstart+0x68>
    8000331c:	100005b7          	lui	a1,0x10000
    80003320:	00004817          	auipc	a6,0x4
    80003324:	87080813          	addi	a6,a6,-1936 # 80006b90 <uart_tx_buf>
    80003328:	01c0006f          	j	80003344 <uartstart+0x50>
    8000332c:	0006c703          	lbu	a4,0(a3)
    80003330:	00f63023          	sd	a5,0(a2)
    80003334:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003338:	00063783          	ld	a5,0(a2)
    8000333c:	00053703          	ld	a4,0(a0)
    80003340:	00f70e63          	beq	a4,a5,8000335c <uartstart+0x68>
    80003344:	01f7f713          	andi	a4,a5,31
    80003348:	00e806b3          	add	a3,a6,a4
    8000334c:	0055c703          	lbu	a4,5(a1)
    80003350:	00178793          	addi	a5,a5,1
    80003354:	02077713          	andi	a4,a4,32
    80003358:	fc071ae3          	bnez	a4,8000332c <uartstart+0x38>
    8000335c:	00813403          	ld	s0,8(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <uartgetc>:
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00813423          	sd	s0,8(sp)
    80003370:	01010413          	addi	s0,sp,16
    80003374:	10000737          	lui	a4,0x10000
    80003378:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000337c:	0017f793          	andi	a5,a5,1
    80003380:	00078c63          	beqz	a5,80003398 <uartgetc+0x30>
    80003384:	00074503          	lbu	a0,0(a4)
    80003388:	0ff57513          	andi	a0,a0,255
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret
    80003398:	fff00513          	li	a0,-1
    8000339c:	ff1ff06f          	j	8000338c <uartgetc+0x24>

00000000800033a0 <uartintr>:
    800033a0:	100007b7          	lui	a5,0x10000
    800033a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800033a8:	0017f793          	andi	a5,a5,1
    800033ac:	0a078463          	beqz	a5,80003454 <uartintr+0xb4>
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00913423          	sd	s1,8(sp)
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	02010413          	addi	s0,sp,32
    800033c4:	100004b7          	lui	s1,0x10000
    800033c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800033cc:	0ff57513          	andi	a0,a0,255
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	534080e7          	jalr	1332(ra) # 80002904 <consoleintr>
    800033d8:	0054c783          	lbu	a5,5(s1)
    800033dc:	0017f793          	andi	a5,a5,1
    800033e0:	fe0794e3          	bnez	a5,800033c8 <uartintr+0x28>
    800033e4:	00002617          	auipc	a2,0x2
    800033e8:	51c60613          	addi	a2,a2,1308 # 80005900 <uart_tx_r>
    800033ec:	00002517          	auipc	a0,0x2
    800033f0:	51c50513          	addi	a0,a0,1308 # 80005908 <uart_tx_w>
    800033f4:	00063783          	ld	a5,0(a2)
    800033f8:	00053703          	ld	a4,0(a0)
    800033fc:	04f70263          	beq	a4,a5,80003440 <uartintr+0xa0>
    80003400:	100005b7          	lui	a1,0x10000
    80003404:	00003817          	auipc	a6,0x3
    80003408:	78c80813          	addi	a6,a6,1932 # 80006b90 <uart_tx_buf>
    8000340c:	01c0006f          	j	80003428 <uartintr+0x88>
    80003410:	0006c703          	lbu	a4,0(a3)
    80003414:	00f63023          	sd	a5,0(a2)
    80003418:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000341c:	00063783          	ld	a5,0(a2)
    80003420:	00053703          	ld	a4,0(a0)
    80003424:	00f70e63          	beq	a4,a5,80003440 <uartintr+0xa0>
    80003428:	01f7f713          	andi	a4,a5,31
    8000342c:	00e806b3          	add	a3,a6,a4
    80003430:	0055c703          	lbu	a4,5(a1)
    80003434:	00178793          	addi	a5,a5,1
    80003438:	02077713          	andi	a4,a4,32
    8000343c:	fc071ae3          	bnez	a4,80003410 <uartintr+0x70>
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00813483          	ld	s1,8(sp)
    8000344c:	02010113          	addi	sp,sp,32
    80003450:	00008067          	ret
    80003454:	00002617          	auipc	a2,0x2
    80003458:	4ac60613          	addi	a2,a2,1196 # 80005900 <uart_tx_r>
    8000345c:	00002517          	auipc	a0,0x2
    80003460:	4ac50513          	addi	a0,a0,1196 # 80005908 <uart_tx_w>
    80003464:	00063783          	ld	a5,0(a2)
    80003468:	00053703          	ld	a4,0(a0)
    8000346c:	04f70263          	beq	a4,a5,800034b0 <uartintr+0x110>
    80003470:	100005b7          	lui	a1,0x10000
    80003474:	00003817          	auipc	a6,0x3
    80003478:	71c80813          	addi	a6,a6,1820 # 80006b90 <uart_tx_buf>
    8000347c:	01c0006f          	j	80003498 <uartintr+0xf8>
    80003480:	0006c703          	lbu	a4,0(a3)
    80003484:	00f63023          	sd	a5,0(a2)
    80003488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000348c:	00063783          	ld	a5,0(a2)
    80003490:	00053703          	ld	a4,0(a0)
    80003494:	02f70063          	beq	a4,a5,800034b4 <uartintr+0x114>
    80003498:	01f7f713          	andi	a4,a5,31
    8000349c:	00e806b3          	add	a3,a6,a4
    800034a0:	0055c703          	lbu	a4,5(a1)
    800034a4:	00178793          	addi	a5,a5,1
    800034a8:	02077713          	andi	a4,a4,32
    800034ac:	fc071ae3          	bnez	a4,80003480 <uartintr+0xe0>
    800034b0:	00008067          	ret
    800034b4:	00008067          	ret

00000000800034b8 <kinit>:
    800034b8:	fc010113          	addi	sp,sp,-64
    800034bc:	02913423          	sd	s1,40(sp)
    800034c0:	fffff7b7          	lui	a5,0xfffff
    800034c4:	00004497          	auipc	s1,0x4
    800034c8:	6fb48493          	addi	s1,s1,1787 # 80007bbf <end+0xfff>
    800034cc:	02813823          	sd	s0,48(sp)
    800034d0:	01313c23          	sd	s3,24(sp)
    800034d4:	00f4f4b3          	and	s1,s1,a5
    800034d8:	02113c23          	sd	ra,56(sp)
    800034dc:	03213023          	sd	s2,32(sp)
    800034e0:	01413823          	sd	s4,16(sp)
    800034e4:	01513423          	sd	s5,8(sp)
    800034e8:	04010413          	addi	s0,sp,64
    800034ec:	000017b7          	lui	a5,0x1
    800034f0:	01100993          	li	s3,17
    800034f4:	00f487b3          	add	a5,s1,a5
    800034f8:	01b99993          	slli	s3,s3,0x1b
    800034fc:	06f9e063          	bltu	s3,a5,8000355c <kinit+0xa4>
    80003500:	00003a97          	auipc	s5,0x3
    80003504:	6c0a8a93          	addi	s5,s5,1728 # 80006bc0 <end>
    80003508:	0754ec63          	bltu	s1,s5,80003580 <kinit+0xc8>
    8000350c:	0734fa63          	bgeu	s1,s3,80003580 <kinit+0xc8>
    80003510:	00088a37          	lui	s4,0x88
    80003514:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003518:	00002917          	auipc	s2,0x2
    8000351c:	3f890913          	addi	s2,s2,1016 # 80005910 <kmem>
    80003520:	00ca1a13          	slli	s4,s4,0xc
    80003524:	0140006f          	j	80003538 <kinit+0x80>
    80003528:	000017b7          	lui	a5,0x1
    8000352c:	00f484b3          	add	s1,s1,a5
    80003530:	0554e863          	bltu	s1,s5,80003580 <kinit+0xc8>
    80003534:	0534f663          	bgeu	s1,s3,80003580 <kinit+0xc8>
    80003538:	00001637          	lui	a2,0x1
    8000353c:	00100593          	li	a1,1
    80003540:	00048513          	mv	a0,s1
    80003544:	00000097          	auipc	ra,0x0
    80003548:	5e4080e7          	jalr	1508(ra) # 80003b28 <__memset>
    8000354c:	00093783          	ld	a5,0(s2)
    80003550:	00f4b023          	sd	a5,0(s1)
    80003554:	00993023          	sd	s1,0(s2)
    80003558:	fd4498e3          	bne	s1,s4,80003528 <kinit+0x70>
    8000355c:	03813083          	ld	ra,56(sp)
    80003560:	03013403          	ld	s0,48(sp)
    80003564:	02813483          	ld	s1,40(sp)
    80003568:	02013903          	ld	s2,32(sp)
    8000356c:	01813983          	ld	s3,24(sp)
    80003570:	01013a03          	ld	s4,16(sp)
    80003574:	00813a83          	ld	s5,8(sp)
    80003578:	04010113          	addi	sp,sp,64
    8000357c:	00008067          	ret
    80003580:	00002517          	auipc	a0,0x2
    80003584:	c6050513          	addi	a0,a0,-928 # 800051e0 <digits+0x18>
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	4b4080e7          	jalr	1204(ra) # 80002a3c <panic>

0000000080003590 <freerange>:
    80003590:	fc010113          	addi	sp,sp,-64
    80003594:	000017b7          	lui	a5,0x1
    80003598:	02913423          	sd	s1,40(sp)
    8000359c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800035a0:	009504b3          	add	s1,a0,s1
    800035a4:	fffff537          	lui	a0,0xfffff
    800035a8:	02813823          	sd	s0,48(sp)
    800035ac:	02113c23          	sd	ra,56(sp)
    800035b0:	03213023          	sd	s2,32(sp)
    800035b4:	01313c23          	sd	s3,24(sp)
    800035b8:	01413823          	sd	s4,16(sp)
    800035bc:	01513423          	sd	s5,8(sp)
    800035c0:	01613023          	sd	s6,0(sp)
    800035c4:	04010413          	addi	s0,sp,64
    800035c8:	00a4f4b3          	and	s1,s1,a0
    800035cc:	00f487b3          	add	a5,s1,a5
    800035d0:	06f5e463          	bltu	a1,a5,80003638 <freerange+0xa8>
    800035d4:	00003a97          	auipc	s5,0x3
    800035d8:	5eca8a93          	addi	s5,s5,1516 # 80006bc0 <end>
    800035dc:	0954e263          	bltu	s1,s5,80003660 <freerange+0xd0>
    800035e0:	01100993          	li	s3,17
    800035e4:	01b99993          	slli	s3,s3,0x1b
    800035e8:	0734fc63          	bgeu	s1,s3,80003660 <freerange+0xd0>
    800035ec:	00058a13          	mv	s4,a1
    800035f0:	00002917          	auipc	s2,0x2
    800035f4:	32090913          	addi	s2,s2,800 # 80005910 <kmem>
    800035f8:	00002b37          	lui	s6,0x2
    800035fc:	0140006f          	j	80003610 <freerange+0x80>
    80003600:	000017b7          	lui	a5,0x1
    80003604:	00f484b3          	add	s1,s1,a5
    80003608:	0554ec63          	bltu	s1,s5,80003660 <freerange+0xd0>
    8000360c:	0534fa63          	bgeu	s1,s3,80003660 <freerange+0xd0>
    80003610:	00001637          	lui	a2,0x1
    80003614:	00100593          	li	a1,1
    80003618:	00048513          	mv	a0,s1
    8000361c:	00000097          	auipc	ra,0x0
    80003620:	50c080e7          	jalr	1292(ra) # 80003b28 <__memset>
    80003624:	00093703          	ld	a4,0(s2)
    80003628:	016487b3          	add	a5,s1,s6
    8000362c:	00e4b023          	sd	a4,0(s1)
    80003630:	00993023          	sd	s1,0(s2)
    80003634:	fcfa76e3          	bgeu	s4,a5,80003600 <freerange+0x70>
    80003638:	03813083          	ld	ra,56(sp)
    8000363c:	03013403          	ld	s0,48(sp)
    80003640:	02813483          	ld	s1,40(sp)
    80003644:	02013903          	ld	s2,32(sp)
    80003648:	01813983          	ld	s3,24(sp)
    8000364c:	01013a03          	ld	s4,16(sp)
    80003650:	00813a83          	ld	s5,8(sp)
    80003654:	00013b03          	ld	s6,0(sp)
    80003658:	04010113          	addi	sp,sp,64
    8000365c:	00008067          	ret
    80003660:	00002517          	auipc	a0,0x2
    80003664:	b8050513          	addi	a0,a0,-1152 # 800051e0 <digits+0x18>
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	3d4080e7          	jalr	980(ra) # 80002a3c <panic>

0000000080003670 <kfree>:
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00113c23          	sd	ra,24(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	03451793          	slli	a5,a0,0x34
    80003688:	04079c63          	bnez	a5,800036e0 <kfree+0x70>
    8000368c:	00003797          	auipc	a5,0x3
    80003690:	53478793          	addi	a5,a5,1332 # 80006bc0 <end>
    80003694:	00050493          	mv	s1,a0
    80003698:	04f56463          	bltu	a0,a5,800036e0 <kfree+0x70>
    8000369c:	01100793          	li	a5,17
    800036a0:	01b79793          	slli	a5,a5,0x1b
    800036a4:	02f57e63          	bgeu	a0,a5,800036e0 <kfree+0x70>
    800036a8:	00001637          	lui	a2,0x1
    800036ac:	00100593          	li	a1,1
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	478080e7          	jalr	1144(ra) # 80003b28 <__memset>
    800036b8:	00002797          	auipc	a5,0x2
    800036bc:	25878793          	addi	a5,a5,600 # 80005910 <kmem>
    800036c0:	0007b703          	ld	a4,0(a5)
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00e4b023          	sd	a4,0(s1)
    800036d0:	0097b023          	sd	s1,0(a5)
    800036d4:	00813483          	ld	s1,8(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret
    800036e0:	00002517          	auipc	a0,0x2
    800036e4:	b0050513          	addi	a0,a0,-1280 # 800051e0 <digits+0x18>
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	354080e7          	jalr	852(ra) # 80002a3c <panic>

00000000800036f0 <kalloc>:
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	00002797          	auipc	a5,0x2
    80003708:	20c78793          	addi	a5,a5,524 # 80005910 <kmem>
    8000370c:	0007b483          	ld	s1,0(a5)
    80003710:	02048063          	beqz	s1,80003730 <kalloc+0x40>
    80003714:	0004b703          	ld	a4,0(s1)
    80003718:	00001637          	lui	a2,0x1
    8000371c:	00500593          	li	a1,5
    80003720:	00048513          	mv	a0,s1
    80003724:	00e7b023          	sd	a4,0(a5)
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	400080e7          	jalr	1024(ra) # 80003b28 <__memset>
    80003730:	01813083          	ld	ra,24(sp)
    80003734:	01013403          	ld	s0,16(sp)
    80003738:	00048513          	mv	a0,s1
    8000373c:	00813483          	ld	s1,8(sp)
    80003740:	02010113          	addi	sp,sp,32
    80003744:	00008067          	ret

0000000080003748 <initlock>:
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00813423          	sd	s0,8(sp)
    80003750:	01010413          	addi	s0,sp,16
    80003754:	00813403          	ld	s0,8(sp)
    80003758:	00b53423          	sd	a1,8(a0)
    8000375c:	00052023          	sw	zero,0(a0)
    80003760:	00053823          	sd	zero,16(a0)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret

000000008000376c <acquire>:
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00813823          	sd	s0,16(sp)
    80003774:	00913423          	sd	s1,8(sp)
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	01213023          	sd	s2,0(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	00050493          	mv	s1,a0
    80003788:	10002973          	csrr	s2,sstatus
    8000378c:	100027f3          	csrr	a5,sstatus
    80003790:	ffd7f793          	andi	a5,a5,-3
    80003794:	10079073          	csrw	sstatus,a5
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	8e0080e7          	jalr	-1824(ra) # 80002078 <mycpu>
    800037a0:	07852783          	lw	a5,120(a0)
    800037a4:	06078e63          	beqz	a5,80003820 <acquire+0xb4>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	8d0080e7          	jalr	-1840(ra) # 80002078 <mycpu>
    800037b0:	07852783          	lw	a5,120(a0)
    800037b4:	0004a703          	lw	a4,0(s1)
    800037b8:	0017879b          	addiw	a5,a5,1
    800037bc:	06f52c23          	sw	a5,120(a0)
    800037c0:	04071063          	bnez	a4,80003800 <acquire+0x94>
    800037c4:	00100713          	li	a4,1
    800037c8:	00070793          	mv	a5,a4
    800037cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800037d0:	0007879b          	sext.w	a5,a5
    800037d4:	fe079ae3          	bnez	a5,800037c8 <acquire+0x5c>
    800037d8:	0ff0000f          	fence
    800037dc:	fffff097          	auipc	ra,0xfffff
    800037e0:	89c080e7          	jalr	-1892(ra) # 80002078 <mycpu>
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00a4b823          	sd	a0,16(s1)
    800037f0:	00013903          	ld	s2,0(sp)
    800037f4:	00813483          	ld	s1,8(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret
    80003800:	0104b903          	ld	s2,16(s1)
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	874080e7          	jalr	-1932(ra) # 80002078 <mycpu>
    8000380c:	faa91ce3          	bne	s2,a0,800037c4 <acquire+0x58>
    80003810:	00002517          	auipc	a0,0x2
    80003814:	9d850513          	addi	a0,a0,-1576 # 800051e8 <digits+0x20>
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	224080e7          	jalr	548(ra) # 80002a3c <panic>
    80003820:	00195913          	srli	s2,s2,0x1
    80003824:	fffff097          	auipc	ra,0xfffff
    80003828:	854080e7          	jalr	-1964(ra) # 80002078 <mycpu>
    8000382c:	00197913          	andi	s2,s2,1
    80003830:	07252e23          	sw	s2,124(a0)
    80003834:	f75ff06f          	j	800037a8 <acquire+0x3c>

0000000080003838 <release>:
    80003838:	fe010113          	addi	sp,sp,-32
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00913423          	sd	s1,8(sp)
    80003848:	01213023          	sd	s2,0(sp)
    8000384c:	02010413          	addi	s0,sp,32
    80003850:	00052783          	lw	a5,0(a0)
    80003854:	00079a63          	bnez	a5,80003868 <release+0x30>
    80003858:	00002517          	auipc	a0,0x2
    8000385c:	99850513          	addi	a0,a0,-1640 # 800051f0 <digits+0x28>
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	1dc080e7          	jalr	476(ra) # 80002a3c <panic>
    80003868:	01053903          	ld	s2,16(a0)
    8000386c:	00050493          	mv	s1,a0
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	808080e7          	jalr	-2040(ra) # 80002078 <mycpu>
    80003878:	fea910e3          	bne	s2,a0,80003858 <release+0x20>
    8000387c:	0004b823          	sd	zero,16(s1)
    80003880:	0ff0000f          	fence
    80003884:	0f50000f          	fence	iorw,ow
    80003888:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	7ec080e7          	jalr	2028(ra) # 80002078 <mycpu>
    80003894:	100027f3          	csrr	a5,sstatus
    80003898:	0027f793          	andi	a5,a5,2
    8000389c:	04079a63          	bnez	a5,800038f0 <release+0xb8>
    800038a0:	07852783          	lw	a5,120(a0)
    800038a4:	02f05e63          	blez	a5,800038e0 <release+0xa8>
    800038a8:	fff7871b          	addiw	a4,a5,-1
    800038ac:	06e52c23          	sw	a4,120(a0)
    800038b0:	00071c63          	bnez	a4,800038c8 <release+0x90>
    800038b4:	07c52783          	lw	a5,124(a0)
    800038b8:	00078863          	beqz	a5,800038c8 <release+0x90>
    800038bc:	100027f3          	csrr	a5,sstatus
    800038c0:	0027e793          	ori	a5,a5,2
    800038c4:	10079073          	csrw	sstatus,a5
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	00013903          	ld	s2,0(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret
    800038e0:	00002517          	auipc	a0,0x2
    800038e4:	93050513          	addi	a0,a0,-1744 # 80005210 <digits+0x48>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	154080e7          	jalr	340(ra) # 80002a3c <panic>
    800038f0:	00002517          	auipc	a0,0x2
    800038f4:	90850513          	addi	a0,a0,-1784 # 800051f8 <digits+0x30>
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	144080e7          	jalr	324(ra) # 80002a3c <panic>

0000000080003900 <holding>:
    80003900:	00052783          	lw	a5,0(a0)
    80003904:	00079663          	bnez	a5,80003910 <holding+0x10>
    80003908:	00000513          	li	a0,0
    8000390c:	00008067          	ret
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	00113c23          	sd	ra,24(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	01053483          	ld	s1,16(a0)
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	750080e7          	jalr	1872(ra) # 80002078 <mycpu>
    80003930:	01813083          	ld	ra,24(sp)
    80003934:	01013403          	ld	s0,16(sp)
    80003938:	40a48533          	sub	a0,s1,a0
    8000393c:	00153513          	seqz	a0,a0
    80003940:	00813483          	ld	s1,8(sp)
    80003944:	02010113          	addi	sp,sp,32
    80003948:	00008067          	ret

000000008000394c <push_off>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	100024f3          	csrr	s1,sstatus
    80003964:	100027f3          	csrr	a5,sstatus
    80003968:	ffd7f793          	andi	a5,a5,-3
    8000396c:	10079073          	csrw	sstatus,a5
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	708080e7          	jalr	1800(ra) # 80002078 <mycpu>
    80003978:	07852783          	lw	a5,120(a0)
    8000397c:	02078663          	beqz	a5,800039a8 <push_off+0x5c>
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	6f8080e7          	jalr	1784(ra) # 80002078 <mycpu>
    80003988:	07852783          	lw	a5,120(a0)
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	0017879b          	addiw	a5,a5,1
    80003998:	06f52c23          	sw	a5,120(a0)
    8000399c:	00813483          	ld	s1,8(sp)
    800039a0:	02010113          	addi	sp,sp,32
    800039a4:	00008067          	ret
    800039a8:	0014d493          	srli	s1,s1,0x1
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	6cc080e7          	jalr	1740(ra) # 80002078 <mycpu>
    800039b4:	0014f493          	andi	s1,s1,1
    800039b8:	06952e23          	sw	s1,124(a0)
    800039bc:	fc5ff06f          	j	80003980 <push_off+0x34>

00000000800039c0 <pop_off>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813023          	sd	s0,0(sp)
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	6a8080e7          	jalr	1704(ra) # 80002078 <mycpu>
    800039d8:	100027f3          	csrr	a5,sstatus
    800039dc:	0027f793          	andi	a5,a5,2
    800039e0:	04079663          	bnez	a5,80003a2c <pop_off+0x6c>
    800039e4:	07852783          	lw	a5,120(a0)
    800039e8:	02f05a63          	blez	a5,80003a1c <pop_off+0x5c>
    800039ec:	fff7871b          	addiw	a4,a5,-1
    800039f0:	06e52c23          	sw	a4,120(a0)
    800039f4:	00071c63          	bnez	a4,80003a0c <pop_off+0x4c>
    800039f8:	07c52783          	lw	a5,124(a0)
    800039fc:	00078863          	beqz	a5,80003a0c <pop_off+0x4c>
    80003a00:	100027f3          	csrr	a5,sstatus
    80003a04:	0027e793          	ori	a5,a5,2
    80003a08:	10079073          	csrw	sstatus,a5
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret
    80003a1c:	00001517          	auipc	a0,0x1
    80003a20:	7f450513          	addi	a0,a0,2036 # 80005210 <digits+0x48>
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	018080e7          	jalr	24(ra) # 80002a3c <panic>
    80003a2c:	00001517          	auipc	a0,0x1
    80003a30:	7cc50513          	addi	a0,a0,1996 # 800051f8 <digits+0x30>
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	008080e7          	jalr	8(ra) # 80002a3c <panic>

0000000080003a3c <push_on>:
    80003a3c:	fe010113          	addi	sp,sp,-32
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00113c23          	sd	ra,24(sp)
    80003a48:	00913423          	sd	s1,8(sp)
    80003a4c:	02010413          	addi	s0,sp,32
    80003a50:	100024f3          	csrr	s1,sstatus
    80003a54:	100027f3          	csrr	a5,sstatus
    80003a58:	0027e793          	ori	a5,a5,2
    80003a5c:	10079073          	csrw	sstatus,a5
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	618080e7          	jalr	1560(ra) # 80002078 <mycpu>
    80003a68:	07852783          	lw	a5,120(a0)
    80003a6c:	02078663          	beqz	a5,80003a98 <push_on+0x5c>
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	608080e7          	jalr	1544(ra) # 80002078 <mycpu>
    80003a78:	07852783          	lw	a5,120(a0)
    80003a7c:	01813083          	ld	ra,24(sp)
    80003a80:	01013403          	ld	s0,16(sp)
    80003a84:	0017879b          	addiw	a5,a5,1
    80003a88:	06f52c23          	sw	a5,120(a0)
    80003a8c:	00813483          	ld	s1,8(sp)
    80003a90:	02010113          	addi	sp,sp,32
    80003a94:	00008067          	ret
    80003a98:	0014d493          	srli	s1,s1,0x1
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	5dc080e7          	jalr	1500(ra) # 80002078 <mycpu>
    80003aa4:	0014f493          	andi	s1,s1,1
    80003aa8:	06952e23          	sw	s1,124(a0)
    80003aac:	fc5ff06f          	j	80003a70 <push_on+0x34>

0000000080003ab0 <pop_on>:
    80003ab0:	ff010113          	addi	sp,sp,-16
    80003ab4:	00813023          	sd	s0,0(sp)
    80003ab8:	00113423          	sd	ra,8(sp)
    80003abc:	01010413          	addi	s0,sp,16
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	5b8080e7          	jalr	1464(ra) # 80002078 <mycpu>
    80003ac8:	100027f3          	csrr	a5,sstatus
    80003acc:	0027f793          	andi	a5,a5,2
    80003ad0:	04078463          	beqz	a5,80003b18 <pop_on+0x68>
    80003ad4:	07852783          	lw	a5,120(a0)
    80003ad8:	02f05863          	blez	a5,80003b08 <pop_on+0x58>
    80003adc:	fff7879b          	addiw	a5,a5,-1
    80003ae0:	06f52c23          	sw	a5,120(a0)
    80003ae4:	07853783          	ld	a5,120(a0)
    80003ae8:	00079863          	bnez	a5,80003af8 <pop_on+0x48>
    80003aec:	100027f3          	csrr	a5,sstatus
    80003af0:	ffd7f793          	andi	a5,a5,-3
    80003af4:	10079073          	csrw	sstatus,a5
    80003af8:	00813083          	ld	ra,8(sp)
    80003afc:	00013403          	ld	s0,0(sp)
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	00008067          	ret
    80003b08:	00001517          	auipc	a0,0x1
    80003b0c:	73050513          	addi	a0,a0,1840 # 80005238 <digits+0x70>
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	f2c080e7          	jalr	-212(ra) # 80002a3c <panic>
    80003b18:	00001517          	auipc	a0,0x1
    80003b1c:	70050513          	addi	a0,a0,1792 # 80005218 <digits+0x50>
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	f1c080e7          	jalr	-228(ra) # 80002a3c <panic>

0000000080003b28 <__memset>:
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00813423          	sd	s0,8(sp)
    80003b30:	01010413          	addi	s0,sp,16
    80003b34:	1a060e63          	beqz	a2,80003cf0 <__memset+0x1c8>
    80003b38:	40a007b3          	neg	a5,a0
    80003b3c:	0077f793          	andi	a5,a5,7
    80003b40:	00778693          	addi	a3,a5,7
    80003b44:	00b00813          	li	a6,11
    80003b48:	0ff5f593          	andi	a1,a1,255
    80003b4c:	fff6071b          	addiw	a4,a2,-1
    80003b50:	1b06e663          	bltu	a3,a6,80003cfc <__memset+0x1d4>
    80003b54:	1cd76463          	bltu	a4,a3,80003d1c <__memset+0x1f4>
    80003b58:	1a078e63          	beqz	a5,80003d14 <__memset+0x1ec>
    80003b5c:	00b50023          	sb	a1,0(a0)
    80003b60:	00100713          	li	a4,1
    80003b64:	1ae78463          	beq	a5,a4,80003d0c <__memset+0x1e4>
    80003b68:	00b500a3          	sb	a1,1(a0)
    80003b6c:	00200713          	li	a4,2
    80003b70:	1ae78a63          	beq	a5,a4,80003d24 <__memset+0x1fc>
    80003b74:	00b50123          	sb	a1,2(a0)
    80003b78:	00300713          	li	a4,3
    80003b7c:	18e78463          	beq	a5,a4,80003d04 <__memset+0x1dc>
    80003b80:	00b501a3          	sb	a1,3(a0)
    80003b84:	00400713          	li	a4,4
    80003b88:	1ae78263          	beq	a5,a4,80003d2c <__memset+0x204>
    80003b8c:	00b50223          	sb	a1,4(a0)
    80003b90:	00500713          	li	a4,5
    80003b94:	1ae78063          	beq	a5,a4,80003d34 <__memset+0x20c>
    80003b98:	00b502a3          	sb	a1,5(a0)
    80003b9c:	00700713          	li	a4,7
    80003ba0:	18e79e63          	bne	a5,a4,80003d3c <__memset+0x214>
    80003ba4:	00b50323          	sb	a1,6(a0)
    80003ba8:	00700e93          	li	t4,7
    80003bac:	00859713          	slli	a4,a1,0x8
    80003bb0:	00e5e733          	or	a4,a1,a4
    80003bb4:	01059e13          	slli	t3,a1,0x10
    80003bb8:	01c76e33          	or	t3,a4,t3
    80003bbc:	01859313          	slli	t1,a1,0x18
    80003bc0:	006e6333          	or	t1,t3,t1
    80003bc4:	02059893          	slli	a7,a1,0x20
    80003bc8:	40f60e3b          	subw	t3,a2,a5
    80003bcc:	011368b3          	or	a7,t1,a7
    80003bd0:	02859813          	slli	a6,a1,0x28
    80003bd4:	0108e833          	or	a6,a7,a6
    80003bd8:	03059693          	slli	a3,a1,0x30
    80003bdc:	003e589b          	srliw	a7,t3,0x3
    80003be0:	00d866b3          	or	a3,a6,a3
    80003be4:	03859713          	slli	a4,a1,0x38
    80003be8:	00389813          	slli	a6,a7,0x3
    80003bec:	00f507b3          	add	a5,a0,a5
    80003bf0:	00e6e733          	or	a4,a3,a4
    80003bf4:	000e089b          	sext.w	a7,t3
    80003bf8:	00f806b3          	add	a3,a6,a5
    80003bfc:	00e7b023          	sd	a4,0(a5)
    80003c00:	00878793          	addi	a5,a5,8
    80003c04:	fed79ce3          	bne	a5,a3,80003bfc <__memset+0xd4>
    80003c08:	ff8e7793          	andi	a5,t3,-8
    80003c0c:	0007871b          	sext.w	a4,a5
    80003c10:	01d787bb          	addw	a5,a5,t4
    80003c14:	0ce88e63          	beq	a7,a4,80003cf0 <__memset+0x1c8>
    80003c18:	00f50733          	add	a4,a0,a5
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0017871b          	addiw	a4,a5,1
    80003c24:	0cc77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0027871b          	addiw	a4,a5,2
    80003c34:	0ac77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0037871b          	addiw	a4,a5,3
    80003c44:	0ac77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0047871b          	addiw	a4,a5,4
    80003c54:	08c77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0057871b          	addiw	a4,a5,5
    80003c64:	08c77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0067871b          	addiw	a4,a5,6
    80003c74:	06c77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0077871b          	addiw	a4,a5,7
    80003c84:	06c77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0087871b          	addiw	a4,a5,8
    80003c94:	04c77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	0097871b          	addiw	a4,a5,9
    80003ca4:	04c77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	00a7871b          	addiw	a4,a5,10
    80003cb4:	02c77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	00b7871b          	addiw	a4,a5,11
    80003cc4:	02c77663          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	00c7871b          	addiw	a4,a5,12
    80003cd4:	00c77e63          	bgeu	a4,a2,80003cf0 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	00d7879b          	addiw	a5,a5,13
    80003ce4:	00c7f663          	bgeu	a5,a2,80003cf0 <__memset+0x1c8>
    80003ce8:	00f507b3          	add	a5,a0,a5
    80003cec:	00b78023          	sb	a1,0(a5)
    80003cf0:	00813403          	ld	s0,8(sp)
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	00008067          	ret
    80003cfc:	00b00693          	li	a3,11
    80003d00:	e55ff06f          	j	80003b54 <__memset+0x2c>
    80003d04:	00300e93          	li	t4,3
    80003d08:	ea5ff06f          	j	80003bac <__memset+0x84>
    80003d0c:	00100e93          	li	t4,1
    80003d10:	e9dff06f          	j	80003bac <__memset+0x84>
    80003d14:	00000e93          	li	t4,0
    80003d18:	e95ff06f          	j	80003bac <__memset+0x84>
    80003d1c:	00000793          	li	a5,0
    80003d20:	ef9ff06f          	j	80003c18 <__memset+0xf0>
    80003d24:	00200e93          	li	t4,2
    80003d28:	e85ff06f          	j	80003bac <__memset+0x84>
    80003d2c:	00400e93          	li	t4,4
    80003d30:	e7dff06f          	j	80003bac <__memset+0x84>
    80003d34:	00500e93          	li	t4,5
    80003d38:	e75ff06f          	j	80003bac <__memset+0x84>
    80003d3c:	00600e93          	li	t4,6
    80003d40:	e6dff06f          	j	80003bac <__memset+0x84>

0000000080003d44 <__memmove>:
    80003d44:	ff010113          	addi	sp,sp,-16
    80003d48:	00813423          	sd	s0,8(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	0e060863          	beqz	a2,80003e40 <__memmove+0xfc>
    80003d54:	fff6069b          	addiw	a3,a2,-1
    80003d58:	0006881b          	sext.w	a6,a3
    80003d5c:	0ea5e863          	bltu	a1,a0,80003e4c <__memmove+0x108>
    80003d60:	00758713          	addi	a4,a1,7
    80003d64:	00a5e7b3          	or	a5,a1,a0
    80003d68:	40a70733          	sub	a4,a4,a0
    80003d6c:	0077f793          	andi	a5,a5,7
    80003d70:	00f73713          	sltiu	a4,a4,15
    80003d74:	00174713          	xori	a4,a4,1
    80003d78:	0017b793          	seqz	a5,a5
    80003d7c:	00e7f7b3          	and	a5,a5,a4
    80003d80:	10078863          	beqz	a5,80003e90 <__memmove+0x14c>
    80003d84:	00900793          	li	a5,9
    80003d88:	1107f463          	bgeu	a5,a6,80003e90 <__memmove+0x14c>
    80003d8c:	0036581b          	srliw	a6,a2,0x3
    80003d90:	fff8081b          	addiw	a6,a6,-1
    80003d94:	02081813          	slli	a6,a6,0x20
    80003d98:	01d85893          	srli	a7,a6,0x1d
    80003d9c:	00858813          	addi	a6,a1,8
    80003da0:	00058793          	mv	a5,a1
    80003da4:	00050713          	mv	a4,a0
    80003da8:	01088833          	add	a6,a7,a6
    80003dac:	0007b883          	ld	a7,0(a5)
    80003db0:	00878793          	addi	a5,a5,8
    80003db4:	00870713          	addi	a4,a4,8
    80003db8:	ff173c23          	sd	a7,-8(a4)
    80003dbc:	ff0798e3          	bne	a5,a6,80003dac <__memmove+0x68>
    80003dc0:	ff867713          	andi	a4,a2,-8
    80003dc4:	02071793          	slli	a5,a4,0x20
    80003dc8:	0207d793          	srli	a5,a5,0x20
    80003dcc:	00f585b3          	add	a1,a1,a5
    80003dd0:	40e686bb          	subw	a3,a3,a4
    80003dd4:	00f507b3          	add	a5,a0,a5
    80003dd8:	06e60463          	beq	a2,a4,80003e40 <__memmove+0xfc>
    80003ddc:	0005c703          	lbu	a4,0(a1)
    80003de0:	00e78023          	sb	a4,0(a5)
    80003de4:	04068e63          	beqz	a3,80003e40 <__memmove+0xfc>
    80003de8:	0015c603          	lbu	a2,1(a1)
    80003dec:	00100713          	li	a4,1
    80003df0:	00c780a3          	sb	a2,1(a5)
    80003df4:	04e68663          	beq	a3,a4,80003e40 <__memmove+0xfc>
    80003df8:	0025c603          	lbu	a2,2(a1)
    80003dfc:	00200713          	li	a4,2
    80003e00:	00c78123          	sb	a2,2(a5)
    80003e04:	02e68e63          	beq	a3,a4,80003e40 <__memmove+0xfc>
    80003e08:	0035c603          	lbu	a2,3(a1)
    80003e0c:	00300713          	li	a4,3
    80003e10:	00c781a3          	sb	a2,3(a5)
    80003e14:	02e68663          	beq	a3,a4,80003e40 <__memmove+0xfc>
    80003e18:	0045c603          	lbu	a2,4(a1)
    80003e1c:	00400713          	li	a4,4
    80003e20:	00c78223          	sb	a2,4(a5)
    80003e24:	00e68e63          	beq	a3,a4,80003e40 <__memmove+0xfc>
    80003e28:	0055c603          	lbu	a2,5(a1)
    80003e2c:	00500713          	li	a4,5
    80003e30:	00c782a3          	sb	a2,5(a5)
    80003e34:	00e68663          	beq	a3,a4,80003e40 <__memmove+0xfc>
    80003e38:	0065c703          	lbu	a4,6(a1)
    80003e3c:	00e78323          	sb	a4,6(a5)
    80003e40:	00813403          	ld	s0,8(sp)
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00008067          	ret
    80003e4c:	02061713          	slli	a4,a2,0x20
    80003e50:	02075713          	srli	a4,a4,0x20
    80003e54:	00e587b3          	add	a5,a1,a4
    80003e58:	f0f574e3          	bgeu	a0,a5,80003d60 <__memmove+0x1c>
    80003e5c:	02069613          	slli	a2,a3,0x20
    80003e60:	02065613          	srli	a2,a2,0x20
    80003e64:	fff64613          	not	a2,a2
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00c78633          	add	a2,a5,a2
    80003e70:	fff7c683          	lbu	a3,-1(a5)
    80003e74:	fff78793          	addi	a5,a5,-1
    80003e78:	fff70713          	addi	a4,a4,-1
    80003e7c:	00d70023          	sb	a3,0(a4)
    80003e80:	fec798e3          	bne	a5,a2,80003e70 <__memmove+0x12c>
    80003e84:	00813403          	ld	s0,8(sp)
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret
    80003e90:	02069713          	slli	a4,a3,0x20
    80003e94:	02075713          	srli	a4,a4,0x20
    80003e98:	00170713          	addi	a4,a4,1
    80003e9c:	00e50733          	add	a4,a0,a4
    80003ea0:	00050793          	mv	a5,a0
    80003ea4:	0005c683          	lbu	a3,0(a1)
    80003ea8:	00178793          	addi	a5,a5,1
    80003eac:	00158593          	addi	a1,a1,1
    80003eb0:	fed78fa3          	sb	a3,-1(a5)
    80003eb4:	fee798e3          	bne	a5,a4,80003ea4 <__memmove+0x160>
    80003eb8:	f89ff06f          	j	80003e40 <__memmove+0xfc>

0000000080003ebc <__mem_free>:
    80003ebc:	ff010113          	addi	sp,sp,-16
    80003ec0:	00813423          	sd	s0,8(sp)
    80003ec4:	01010413          	addi	s0,sp,16
    80003ec8:	00002597          	auipc	a1,0x2
    80003ecc:	a5058593          	addi	a1,a1,-1456 # 80005918 <freep>
    80003ed0:	0005b783          	ld	a5,0(a1)
    80003ed4:	ff050693          	addi	a3,a0,-16
    80003ed8:	0007b703          	ld	a4,0(a5)
    80003edc:	00d7fc63          	bgeu	a5,a3,80003ef4 <__mem_free+0x38>
    80003ee0:	00e6ee63          	bltu	a3,a4,80003efc <__mem_free+0x40>
    80003ee4:	00e7fc63          	bgeu	a5,a4,80003efc <__mem_free+0x40>
    80003ee8:	00070793          	mv	a5,a4
    80003eec:	0007b703          	ld	a4,0(a5)
    80003ef0:	fed7e8e3          	bltu	a5,a3,80003ee0 <__mem_free+0x24>
    80003ef4:	fee7eae3          	bltu	a5,a4,80003ee8 <__mem_free+0x2c>
    80003ef8:	fee6f8e3          	bgeu	a3,a4,80003ee8 <__mem_free+0x2c>
    80003efc:	ff852803          	lw	a6,-8(a0)
    80003f00:	02081613          	slli	a2,a6,0x20
    80003f04:	01c65613          	srli	a2,a2,0x1c
    80003f08:	00c68633          	add	a2,a3,a2
    80003f0c:	02c70a63          	beq	a4,a2,80003f40 <__mem_free+0x84>
    80003f10:	fee53823          	sd	a4,-16(a0)
    80003f14:	0087a503          	lw	a0,8(a5)
    80003f18:	02051613          	slli	a2,a0,0x20
    80003f1c:	01c65613          	srli	a2,a2,0x1c
    80003f20:	00c78633          	add	a2,a5,a2
    80003f24:	04c68263          	beq	a3,a2,80003f68 <__mem_free+0xac>
    80003f28:	00813403          	ld	s0,8(sp)
    80003f2c:	00d7b023          	sd	a3,0(a5)
    80003f30:	00f5b023          	sd	a5,0(a1)
    80003f34:	00000513          	li	a0,0
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret
    80003f40:	00872603          	lw	a2,8(a4)
    80003f44:	00073703          	ld	a4,0(a4)
    80003f48:	0106083b          	addw	a6,a2,a6
    80003f4c:	ff052c23          	sw	a6,-8(a0)
    80003f50:	fee53823          	sd	a4,-16(a0)
    80003f54:	0087a503          	lw	a0,8(a5)
    80003f58:	02051613          	slli	a2,a0,0x20
    80003f5c:	01c65613          	srli	a2,a2,0x1c
    80003f60:	00c78633          	add	a2,a5,a2
    80003f64:	fcc692e3          	bne	a3,a2,80003f28 <__mem_free+0x6c>
    80003f68:	00813403          	ld	s0,8(sp)
    80003f6c:	0105053b          	addw	a0,a0,a6
    80003f70:	00a7a423          	sw	a0,8(a5)
    80003f74:	00e7b023          	sd	a4,0(a5)
    80003f78:	00f5b023          	sd	a5,0(a1)
    80003f7c:	00000513          	li	a0,0
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <__mem_alloc>:
    80003f88:	fc010113          	addi	sp,sp,-64
    80003f8c:	02813823          	sd	s0,48(sp)
    80003f90:	02913423          	sd	s1,40(sp)
    80003f94:	03213023          	sd	s2,32(sp)
    80003f98:	01513423          	sd	s5,8(sp)
    80003f9c:	02113c23          	sd	ra,56(sp)
    80003fa0:	01313c23          	sd	s3,24(sp)
    80003fa4:	01413823          	sd	s4,16(sp)
    80003fa8:	01613023          	sd	s6,0(sp)
    80003fac:	04010413          	addi	s0,sp,64
    80003fb0:	00002a97          	auipc	s5,0x2
    80003fb4:	968a8a93          	addi	s5,s5,-1688 # 80005918 <freep>
    80003fb8:	00f50913          	addi	s2,a0,15
    80003fbc:	000ab683          	ld	a3,0(s5)
    80003fc0:	00495913          	srli	s2,s2,0x4
    80003fc4:	0019049b          	addiw	s1,s2,1
    80003fc8:	00048913          	mv	s2,s1
    80003fcc:	0c068c63          	beqz	a3,800040a4 <__mem_alloc+0x11c>
    80003fd0:	0006b503          	ld	a0,0(a3)
    80003fd4:	00852703          	lw	a4,8(a0)
    80003fd8:	10977063          	bgeu	a4,s1,800040d8 <__mem_alloc+0x150>
    80003fdc:	000017b7          	lui	a5,0x1
    80003fe0:	0009099b          	sext.w	s3,s2
    80003fe4:	0af4e863          	bltu	s1,a5,80004094 <__mem_alloc+0x10c>
    80003fe8:	02099a13          	slli	s4,s3,0x20
    80003fec:	01ca5a13          	srli	s4,s4,0x1c
    80003ff0:	fff00b13          	li	s6,-1
    80003ff4:	0100006f          	j	80004004 <__mem_alloc+0x7c>
    80003ff8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003ffc:	00852703          	lw	a4,8(a0)
    80004000:	04977463          	bgeu	a4,s1,80004048 <__mem_alloc+0xc0>
    80004004:	00050793          	mv	a5,a0
    80004008:	fea698e3          	bne	a3,a0,80003ff8 <__mem_alloc+0x70>
    8000400c:	000a0513          	mv	a0,s4
    80004010:	00000097          	auipc	ra,0x0
    80004014:	1f0080e7          	jalr	496(ra) # 80004200 <kvmincrease>
    80004018:	00050793          	mv	a5,a0
    8000401c:	01050513          	addi	a0,a0,16
    80004020:	07678e63          	beq	a5,s6,8000409c <__mem_alloc+0x114>
    80004024:	0137a423          	sw	s3,8(a5)
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	e94080e7          	jalr	-364(ra) # 80003ebc <__mem_free>
    80004030:	000ab783          	ld	a5,0(s5)
    80004034:	06078463          	beqz	a5,8000409c <__mem_alloc+0x114>
    80004038:	0007b503          	ld	a0,0(a5)
    8000403c:	00078693          	mv	a3,a5
    80004040:	00852703          	lw	a4,8(a0)
    80004044:	fc9760e3          	bltu	a4,s1,80004004 <__mem_alloc+0x7c>
    80004048:	08e48263          	beq	s1,a4,800040cc <__mem_alloc+0x144>
    8000404c:	4127073b          	subw	a4,a4,s2
    80004050:	02071693          	slli	a3,a4,0x20
    80004054:	01c6d693          	srli	a3,a3,0x1c
    80004058:	00e52423          	sw	a4,8(a0)
    8000405c:	00d50533          	add	a0,a0,a3
    80004060:	01252423          	sw	s2,8(a0)
    80004064:	00fab023          	sd	a5,0(s5)
    80004068:	01050513          	addi	a0,a0,16
    8000406c:	03813083          	ld	ra,56(sp)
    80004070:	03013403          	ld	s0,48(sp)
    80004074:	02813483          	ld	s1,40(sp)
    80004078:	02013903          	ld	s2,32(sp)
    8000407c:	01813983          	ld	s3,24(sp)
    80004080:	01013a03          	ld	s4,16(sp)
    80004084:	00813a83          	ld	s5,8(sp)
    80004088:	00013b03          	ld	s6,0(sp)
    8000408c:	04010113          	addi	sp,sp,64
    80004090:	00008067          	ret
    80004094:	000019b7          	lui	s3,0x1
    80004098:	f51ff06f          	j	80003fe8 <__mem_alloc+0x60>
    8000409c:	00000513          	li	a0,0
    800040a0:	fcdff06f          	j	8000406c <__mem_alloc+0xe4>
    800040a4:	00003797          	auipc	a5,0x3
    800040a8:	b0c78793          	addi	a5,a5,-1268 # 80006bb0 <base>
    800040ac:	00078513          	mv	a0,a5
    800040b0:	00fab023          	sd	a5,0(s5)
    800040b4:	00f7b023          	sd	a5,0(a5)
    800040b8:	00000713          	li	a4,0
    800040bc:	00003797          	auipc	a5,0x3
    800040c0:	ae07ae23          	sw	zero,-1284(a5) # 80006bb8 <base+0x8>
    800040c4:	00050693          	mv	a3,a0
    800040c8:	f11ff06f          	j	80003fd8 <__mem_alloc+0x50>
    800040cc:	00053703          	ld	a4,0(a0)
    800040d0:	00e7b023          	sd	a4,0(a5)
    800040d4:	f91ff06f          	j	80004064 <__mem_alloc+0xdc>
    800040d8:	00068793          	mv	a5,a3
    800040dc:	f6dff06f          	j	80004048 <__mem_alloc+0xc0>

00000000800040e0 <__putc>:
    800040e0:	fe010113          	addi	sp,sp,-32
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00113c23          	sd	ra,24(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050793          	mv	a5,a0
    800040f4:	fef40593          	addi	a1,s0,-17
    800040f8:	00100613          	li	a2,1
    800040fc:	00000513          	li	a0,0
    80004100:	fef407a3          	sb	a5,-17(s0)
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	918080e7          	jalr	-1768(ra) # 80002a1c <console_write>
    8000410c:	01813083          	ld	ra,24(sp)
    80004110:	01013403          	ld	s0,16(sp)
    80004114:	02010113          	addi	sp,sp,32
    80004118:	00008067          	ret

000000008000411c <__getc>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	02010413          	addi	s0,sp,32
    8000412c:	fe840593          	addi	a1,s0,-24
    80004130:	00100613          	li	a2,1
    80004134:	00000513          	li	a0,0
    80004138:	fffff097          	auipc	ra,0xfffff
    8000413c:	8c4080e7          	jalr	-1852(ra) # 800029fc <console_read>
    80004140:	fe844503          	lbu	a0,-24(s0)
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	02010113          	addi	sp,sp,32
    80004150:	00008067          	ret

0000000080004154 <console_handler>:
    80004154:	fe010113          	addi	sp,sp,-32
    80004158:	00813823          	sd	s0,16(sp)
    8000415c:	00113c23          	sd	ra,24(sp)
    80004160:	00913423          	sd	s1,8(sp)
    80004164:	02010413          	addi	s0,sp,32
    80004168:	14202773          	csrr	a4,scause
    8000416c:	100027f3          	csrr	a5,sstatus
    80004170:	0027f793          	andi	a5,a5,2
    80004174:	06079e63          	bnez	a5,800041f0 <console_handler+0x9c>
    80004178:	00074c63          	bltz	a4,80004190 <console_handler+0x3c>
    8000417c:	01813083          	ld	ra,24(sp)
    80004180:	01013403          	ld	s0,16(sp)
    80004184:	00813483          	ld	s1,8(sp)
    80004188:	02010113          	addi	sp,sp,32
    8000418c:	00008067          	ret
    80004190:	0ff77713          	andi	a4,a4,255
    80004194:	00900793          	li	a5,9
    80004198:	fef712e3          	bne	a4,a5,8000417c <console_handler+0x28>
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	4b8080e7          	jalr	1208(ra) # 80002654 <plic_claim>
    800041a4:	00a00793          	li	a5,10
    800041a8:	00050493          	mv	s1,a0
    800041ac:	02f50c63          	beq	a0,a5,800041e4 <console_handler+0x90>
    800041b0:	fc0506e3          	beqz	a0,8000417c <console_handler+0x28>
    800041b4:	00050593          	mv	a1,a0
    800041b8:	00001517          	auipc	a0,0x1
    800041bc:	f8850513          	addi	a0,a0,-120 # 80005140 <_ZZ12printIntegermE6digits+0xe0>
    800041c0:	fffff097          	auipc	ra,0xfffff
    800041c4:	8d8080e7          	jalr	-1832(ra) # 80002a98 <__printf>
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	00048513          	mv	a0,s1
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	ffffe317          	auipc	t1,0xffffe
    800041e0:	4b030067          	jr	1200(t1) # 8000268c <plic_complete>
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	1bc080e7          	jalr	444(ra) # 800033a0 <uartintr>
    800041ec:	fddff06f          	j	800041c8 <console_handler+0x74>
    800041f0:	00001517          	auipc	a0,0x1
    800041f4:	05050513          	addi	a0,a0,80 # 80005240 <digits+0x78>
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	844080e7          	jalr	-1980(ra) # 80002a3c <panic>

0000000080004200 <kvmincrease>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	01213023          	sd	s2,0(sp)
    80004208:	00001937          	lui	s2,0x1
    8000420c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004210:	00813823          	sd	s0,16(sp)
    80004214:	00113c23          	sd	ra,24(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	01250933          	add	s2,a0,s2
    80004224:	00c95913          	srli	s2,s2,0xc
    80004228:	02090863          	beqz	s2,80004258 <kvmincrease+0x58>
    8000422c:	00000493          	li	s1,0
    80004230:	00148493          	addi	s1,s1,1
    80004234:	fffff097          	auipc	ra,0xfffff
    80004238:	4bc080e7          	jalr	1212(ra) # 800036f0 <kalloc>
    8000423c:	fe991ae3          	bne	s2,s1,80004230 <kvmincrease+0x30>
    80004240:	01813083          	ld	ra,24(sp)
    80004244:	01013403          	ld	s0,16(sp)
    80004248:	00813483          	ld	s1,8(sp)
    8000424c:	00013903          	ld	s2,0(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret
    80004258:	01813083          	ld	ra,24(sp)
    8000425c:	01013403          	ld	s0,16(sp)
    80004260:	00813483          	ld	s1,8(sp)
    80004264:	00013903          	ld	s2,0(sp)
    80004268:	00000513          	li	a0,0
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret
	...

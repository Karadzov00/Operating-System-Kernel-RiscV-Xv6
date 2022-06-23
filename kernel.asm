
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8c013103          	ld	sp,-1856(sp) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5e9010ef          	jal	ra,80001e04 <start>

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
    80001080:	345000ef          	jal	ra,80001bc4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000115c:	b30080e7          	jalr	-1232(ra) # 80001c88 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000118c:	7a870713          	addi	a4,a4,1960 # 80005930 <_ZN7_thread8globalIdE>
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
    800011e8:	510080e7          	jalr	1296(ra) # 800016f4 <_ZN9Scheduler3putEP7_thread>
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
    80001244:	6f048493          	addi	s1,s1,1776 # 80005930 <_ZN7_thread8globalIdE>
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
    80001298:	6a44b483          	ld	s1,1700(s1) # 80005938 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    8000129c:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a0:	02078c63          	beqz	a5,800012d8 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	3e8080e7          	jalr	1000(ra) # 8000168c <_ZN9Scheduler3getEv>
    800012ac:	00004797          	auipc	a5,0x4
    800012b0:	68a7b623          	sd	a0,1676(a5) # 80005938 <_ZN7_thread7runningE>
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
    800012e0:	418080e7          	jalr	1048(ra) # 800016f4 <_ZN9Scheduler3putEP7_thread>
    800012e4:	fc1ff06f          	j	800012a4 <_ZN7_thread8dispatchEv+0x24>

00000000800012e8 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	990080e7          	jalr	-1648(ra) # 80001c88 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001324:	968080e7          	jalr	-1688(ra) # 80001c88 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000134c:	968080e7          	jalr	-1688(ra) # 80001cb0 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013c4:	668080e7          	jalr	1640(ra) # 80006a28 <_Unwind_Resume>
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
    800013fc:	8b8080e7          	jalr	-1864(ra) # 80001cb0 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    8000153c:	3807b783          	ld	a5,896(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001564:	3507b783          	ld	a5,848(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001568:	0097b023          	sd	s1,0(a5)

    _thread* t1 = _thread::createThread(workerBodyA, nullptr);
    8000156c:	00000593          	li	a1,0
    80001570:	00004517          	auipc	a0,0x4
    80001574:	35853503          	ld	a0,856(a0) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	de8080e7          	jalr	-536(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    80001580:	00050493          	mv	s1,a0
    if(t1 != nullptr){
    80001584:	04050e63          	beqz	a0,800015e0 <main+0xc0>
        printString("thread created \n");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	a7850513          	addi	a0,a0,-1416 # 80005000 <kvmincrease+0xdf0>
    80001590:	00000097          	auipc	ra,0x0
    80001594:	748080e7          	jalr	1864(ra) # 80001cd8 <_Z11printStringPKc>
    } else{
        printString("error \n");
    }


    t1->start();
    80001598:	00048513          	mv	a0,s1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	c30080e7          	jalr	-976(ra) # 800011cc <_ZN7_thread5startEv>

    _thread* t2 = _thread::createThread(workerBodyB, nullptr);
    800015a4:	00000593          	li	a1,0
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	32853503          	ld	a0,808(a0) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	db0080e7          	jalr	-592(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    800015b8:	00050913          	mv	s2,a0
    if(t2 != nullptr){
    800015bc:	02050c63          	beqz	a0,800015f4 <main+0xd4>
        printString("thread created \n");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	a4050513          	addi	a0,a0,-1472 # 80005000 <kvmincrease+0xdf0>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	710080e7          	jalr	1808(ra) # 80001cd8 <_Z11printStringPKc>
    } else{
        printString("error \n");
    }
    t2->start();
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	bf8080e7          	jalr	-1032(ra) # 800011cc <_ZN7_thread5startEv>
    800015dc:	0340006f          	j	80001610 <main+0xf0>
        printString("error \n");
    800015e0:	00004517          	auipc	a0,0x4
    800015e4:	a3850513          	addi	a0,a0,-1480 # 80005018 <kvmincrease+0xe08>
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	6f0080e7          	jalr	1776(ra) # 80001cd8 <_Z11printStringPKc>
    800015f0:	fa9ff06f          	j	80001598 <main+0x78>
        printString("error \n");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	a2450513          	addi	a0,a0,-1500 # 80005018 <kvmincrease+0xe08>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	6dc080e7          	jalr	1756(ra) # 80001cd8 <_Z11printStringPKc>
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

//    delete main;
//    delete t1;
//    delete t2;

    printString("finished \n");
    80001620:	00004517          	auipc	a0,0x4
    80001624:	a0050513          	addi	a0,a0,-1536 # 80005020 <kvmincrease+0xe10>
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	6b0080e7          	jalr	1712(ra) # 80001cd8 <_Z11printStringPKc>

    return 0;
}
    80001630:	00000513          	li	a0,0
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	00013903          	ld	s2,0(sp)
    80001644:	02010113          	addi	sp,sp,32
    80001648:	00008067          	ret

000000008000164c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00813423          	sd	s0,8(sp)
    80001654:	01010413          	addi	s0,sp,16
    80001658:	00100793          	li	a5,1
    8000165c:	00f50863          	beq	a0,a5,8000166c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret
    8000166c:	000107b7          	lui	a5,0x10
    80001670:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001674:	fef596e3          	bne	a1,a5,80001660 <_Z41__static_initialization_and_destruction_0ii+0x14>

        Elem(T *data, Elem *next) : data(data), next(next) {}

    };

    Elem *head, *tail;
    80001678:	00004797          	auipc	a5,0x4
    8000167c:	2d078793          	addi	a5,a5,720 # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    80001680:	0007b023          	sd	zero,0(a5)
    80001684:	0007b423          	sd	zero,8(a5)
    80001688:	fd9ff06f          	j	80001660 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000168c <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	02010413          	addi	s0,sp,32
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	2a853503          	ld	a0,680(a0) # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    800016a8:	04050263          	beqz	a0,800016ec <_ZN9Scheduler3getEv+0x60>
            head = tail = elem;
        }
    }
    800016ac:	00853783          	ld	a5,8(a0)
    800016b0:	00004717          	auipc	a4,0x4
    800016b4:	28f73c23          	sd	a5,664(a4) # 80005948 <_ZN9Scheduler16readyThreadQueueE>

    800016b8:	02078463          	beqz	a5,800016e0 <_ZN9Scheduler3getEv+0x54>
    T *removeFirst()
    {
    800016bc:	00053483          	ld	s1,0(a0)
        if (!head) { return 0; }
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	124080e7          	jalr	292(ra) # 800017e4 <_ZdlPv>
}
    800016c8:	00048513          	mv	a0,s1
    800016cc:	01813083          	ld	ra,24(sp)
    800016d0:	01013403          	ld	s0,16(sp)
    800016d4:	00813483          	ld	s1,8(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret

    800016e0:	00004797          	auipc	a5,0x4
    800016e4:	2607b823          	sd	zero,624(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800016e8:	fd5ff06f          	j	800016bc <_ZN9Scheduler3getEv+0x30>
        {
    800016ec:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800016f0:	fd9ff06f          	j	800016c8 <_ZN9Scheduler3getEv+0x3c>

00000000800016f4 <_ZN9Scheduler3putEP7_thread>:
{
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	02010413          	addi	s0,sp,32
    80001708:	00050493          	mv	s1,a0
        if (!tail) { tail = head; }
    8000170c:	01000513          	li	a0,16
    80001710:	00000097          	auipc	ra,0x0
    80001714:	084080e7          	jalr	132(ra) # 80001794 <_Znwm>
        Elem *next;
    80001718:	00953023          	sd	s1,0(a0)
    8000171c:	00053423          	sd	zero,8(a0)
    }
    80001720:	00004797          	auipc	a5,0x4
    80001724:	2307b783          	ld	a5,560(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001728:	02078263          	beqz	a5,8000174c <_ZN9Scheduler3putEP7_thread+0x58>
    void addLast(T *data)
    8000172c:	00a7b423          	sd	a0,8(a5)
    {
    80001730:	00004797          	auipc	a5,0x4
    80001734:	22a7b023          	sd	a0,544(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	00813483          	ld	s1,8(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret
        elem->next=0;
    8000174c:	00004797          	auipc	a5,0x4
    80001750:	1fc78793          	addi	a5,a5,508 # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    80001754:	00a7b423          	sd	a0,8(a5)
    80001758:	00a7b023          	sd	a0,0(a5)
    8000175c:	fddff06f          	j	80001738 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001760 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00113423          	sd	ra,8(sp)
    80001768:	00813023          	sd	s0,0(sp)
    8000176c:	01010413          	addi	s0,sp,16
    80001770:	000105b7          	lui	a1,0x10
    80001774:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001778:	00100513          	li	a0,1
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	ed0080e7          	jalr	-304(ra) # 8000164c <_Z41__static_initialization_and_destruction_0ii>
    80001784:	00813083          	ld	ra,8(sp)
    80001788:	00013403          	ld	s0,0(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00113423          	sd	ra,8(sp)
    8000179c:	00813023          	sd	s0,0(sp)
    800017a0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	ca8080e7          	jalr	-856(ra) # 8000144c <_Z9mem_allocm>
}
    800017ac:	00813083          	ld	ra,8(sp)
    800017b0:	00013403          	ld	s0,0(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_Znam>:

void* operator new[](size_t n){
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00113423          	sd	ra,8(sp)
    800017c4:	00813023          	sd	s0,0(sp)
    800017c8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	c80080e7          	jalr	-896(ra) # 8000144c <_Z9mem_allocm>
}
    800017d4:	00813083          	ld	ra,8(sp)
    800017d8:	00013403          	ld	s0,0(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret

00000000800017e4 <_ZdlPv>:

void operator delete(void* p) noexcept{
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00113423          	sd	ra,8(sp)
    800017ec:	00813023          	sd	s0,0(sp)
    800017f0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	ca4080e7          	jalr	-860(ra) # 80001498 <_Z8mem_freePv>
}
    800017fc:	00813083          	ld	ra,8(sp)
    80001800:	00013403          	ld	s0,0(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00113423          	sd	ra,8(sp)
    80001814:	00813023          	sd	s0,0(sp)
    80001818:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	c7c080e7          	jalr	-900(ra) # 80001498 <_Z8mem_freePv>

}
    80001824:	00813083          	ld	ra,8(sp)
    80001828:	00013403          	ld	s0,0(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret

0000000080001834 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	01213023          	sd	s2,0(sp)
    80001848:	02010413          	addi	s0,sp,32
    8000184c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001850:	00100793          	li	a5,1
    80001854:	02a7f663          	bgeu	a5,a0,80001880 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    80001858:	00357793          	andi	a5,a0,3
    8000185c:	02078e63          	beqz	a5,80001898 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001860:	fff48513          	addi	a0,s1,-1
    80001864:	00000097          	auipc	ra,0x0
    80001868:	fd0080e7          	jalr	-48(ra) # 80001834 <_ZL9fibonaccim>
    8000186c:	00050913          	mv	s2,a0
    80001870:	ffe48513          	addi	a0,s1,-2
    80001874:	00000097          	auipc	ra,0x0
    80001878:	fc0080e7          	jalr	-64(ra) # 80001834 <_ZL9fibonaccim>
    8000187c:	00a90533          	add	a0,s2,a0
}
    80001880:	01813083          	ld	ra,24(sp)
    80001884:	01013403          	ld	s0,16(sp)
    80001888:	00813483          	ld	s1,8(sp)
    8000188c:	00013903          	ld	s2,0(sp)
    80001890:	02010113          	addi	sp,sp,32
    80001894:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	968080e7          	jalr	-1688(ra) # 80001200 <_ZN7_thread5yieldEv>
    800018a0:	fc1ff06f          	j	80001860 <_ZL9fibonaccim+0x2c>

00000000800018a4 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	00913423          	sd	s1,8(sp)
    800018b4:	01213023          	sd	s2,0(sp)
    800018b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018bc:	00000493          	li	s1,0
    800018c0:	0380006f          	j	800018f8 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018c4:	00003517          	auipc	a0,0x3
    800018c8:	76c50513          	addi	a0,a0,1900 # 80005030 <kvmincrease+0xe20>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	40c080e7          	jalr	1036(ra) # 80001cd8 <_Z11printStringPKc>
        printInteger(i);
    800018d4:	00048513          	mv	a0,s1
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	470080e7          	jalr	1136(ra) # 80001d48 <_Z12printIntegerm>
        printString("\n");
    800018e0:	00003517          	auipc	a0,0x3
    800018e4:	76050513          	addi	a0,a0,1888 # 80005040 <kvmincrease+0xe30>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	3f0080e7          	jalr	1008(ra) # 80001cd8 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018f0:	0014849b          	addiw	s1,s1,1
    800018f4:	0ff4f493          	andi	s1,s1,255
    800018f8:	00200793          	li	a5,2
    800018fc:	fc97f4e3          	bgeu	a5,s1,800018c4 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001900:	00003517          	auipc	a0,0x3
    80001904:	73850513          	addi	a0,a0,1848 # 80005038 <kvmincrease+0xe28>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	3d0080e7          	jalr	976(ra) # 80001cd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001910:	00700313          	li	t1,7
    _thread::yield();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	8ec080e7          	jalr	-1812(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000191c:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001920:	00003517          	auipc	a0,0x3
    80001924:	72850513          	addi	a0,a0,1832 # 80005048 <kvmincrease+0xe38>
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	3b0080e7          	jalr	944(ra) # 80001cd8 <_Z11printStringPKc>
    printInteger(t1);
    80001930:	00090513          	mv	a0,s2
    80001934:	00000097          	auipc	ra,0x0
    80001938:	414080e7          	jalr	1044(ra) # 80001d48 <_Z12printIntegerm>
    printString("\n");
    8000193c:	00003517          	auipc	a0,0x3
    80001940:	70450513          	addi	a0,a0,1796 # 80005040 <kvmincrease+0xe30>
    80001944:	00000097          	auipc	ra,0x0
    80001948:	394080e7          	jalr	916(ra) # 80001cd8 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    8000194c:	01400513          	li	a0,20
    80001950:	00000097          	auipc	ra,0x0
    80001954:	ee4080e7          	jalr	-284(ra) # 80001834 <_ZL9fibonaccim>
    80001958:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000195c:	00003517          	auipc	a0,0x3
    80001960:	6f450513          	addi	a0,a0,1780 # 80005050 <kvmincrease+0xe40>
    80001964:	00000097          	auipc	ra,0x0
    80001968:	374080e7          	jalr	884(ra) # 80001cd8 <_Z11printStringPKc>
    printInteger(result);
    8000196c:	00090513          	mv	a0,s2
    80001970:	00000097          	auipc	ra,0x0
    80001974:	3d8080e7          	jalr	984(ra) # 80001d48 <_Z12printIntegerm>
    printString("\n");
    80001978:	00003517          	auipc	a0,0x3
    8000197c:	6c850513          	addi	a0,a0,1736 # 80005040 <kvmincrease+0xe30>
    80001980:	00000097          	auipc	ra,0x0
    80001984:	358080e7          	jalr	856(ra) # 80001cd8 <_Z11printStringPKc>
    80001988:	0380006f          	j	800019c0 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000198c:	00003517          	auipc	a0,0x3
    80001990:	6a450513          	addi	a0,a0,1700 # 80005030 <kvmincrease+0xe20>
    80001994:	00000097          	auipc	ra,0x0
    80001998:	344080e7          	jalr	836(ra) # 80001cd8 <_Z11printStringPKc>
        printInteger(i);
    8000199c:	00048513          	mv	a0,s1
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	3a8080e7          	jalr	936(ra) # 80001d48 <_Z12printIntegerm>
        printString("\n");
    800019a8:	00003517          	auipc	a0,0x3
    800019ac:	69850513          	addi	a0,a0,1688 # 80005040 <kvmincrease+0xe30>
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	328080e7          	jalr	808(ra) # 80001cd8 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019b8:	0014849b          	addiw	s1,s1,1
    800019bc:	0ff4f493          	andi	s1,s1,255
    800019c0:	00500793          	li	a5,5
    800019c4:	fc97f4e3          	bgeu	a5,s1,8000198c <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    800019c8:	00004797          	auipc	a5,0x4
    800019cc:	ee87b783          	ld	a5,-280(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019d0:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800019d4:	00100713          	li	a4,1
    800019d8:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	824080e7          	jalr	-2012(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	00013903          	ld	s2,0(sp)
    800019f4:	02010113          	addi	sp,sp,32
    800019f8:	00008067          	ret

00000000800019fc <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019fc:	fe010113          	addi	sp,sp,-32
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00813823          	sd	s0,16(sp)
    80001a08:	00913423          	sd	s1,8(sp)
    80001a0c:	01213023          	sd	s2,0(sp)
    80001a10:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a14:	00a00493          	li	s1,10
    80001a18:	0380006f          	j	80001a50 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a1c:	00003517          	auipc	a0,0x3
    80001a20:	64450513          	addi	a0,a0,1604 # 80005060 <kvmincrease+0xe50>
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	2b4080e7          	jalr	692(ra) # 80001cd8 <_Z11printStringPKc>
        printInteger(i);
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	318080e7          	jalr	792(ra) # 80001d48 <_Z12printIntegerm>
        printString("\n");
    80001a38:	00003517          	auipc	a0,0x3
    80001a3c:	60850513          	addi	a0,a0,1544 # 80005040 <kvmincrease+0xe30>
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	298080e7          	jalr	664(ra) # 80001cd8 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a48:	0014849b          	addiw	s1,s1,1
    80001a4c:	0ff4f493          	andi	s1,s1,255
    80001a50:	00c00793          	li	a5,12
    80001a54:	fc97f4e3          	bgeu	a5,s1,80001a1c <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001a58:	00003517          	auipc	a0,0x3
    80001a5c:	61050513          	addi	a0,a0,1552 # 80005068 <kvmincrease+0xe58>
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	278080e7          	jalr	632(ra) # 80001cd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a68:	00500313          	li	t1,5
    _thread::yield();
    80001a6c:	fffff097          	auipc	ra,0xfffff
    80001a70:	794080e7          	jalr	1940(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001a74:	01700513          	li	a0,23
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	dbc080e7          	jalr	-580(ra) # 80001834 <_ZL9fibonaccim>
    80001a80:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001a84:	00003517          	auipc	a0,0x3
    80001a88:	5cc50513          	addi	a0,a0,1484 # 80005050 <kvmincrease+0xe40>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	24c080e7          	jalr	588(ra) # 80001cd8 <_Z11printStringPKc>
    printInteger(result);
    80001a94:	00090513          	mv	a0,s2
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	2b0080e7          	jalr	688(ra) # 80001d48 <_Z12printIntegerm>
    printString("\n");
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	5a050513          	addi	a0,a0,1440 # 80005040 <kvmincrease+0xe30>
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	230080e7          	jalr	560(ra) # 80001cd8 <_Z11printStringPKc>
    80001ab0:	0380006f          	j	80001ae8 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab4:	00003517          	auipc	a0,0x3
    80001ab8:	5ac50513          	addi	a0,a0,1452 # 80005060 <kvmincrease+0xe50>
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	21c080e7          	jalr	540(ra) # 80001cd8 <_Z11printStringPKc>
        printInteger(i);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	280080e7          	jalr	640(ra) # 80001d48 <_Z12printIntegerm>
        printString("\n");
    80001ad0:	00003517          	auipc	a0,0x3
    80001ad4:	57050513          	addi	a0,a0,1392 # 80005040 <kvmincrease+0xe30>
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	200080e7          	jalr	512(ra) # 80001cd8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ae0:	0014849b          	addiw	s1,s1,1
    80001ae4:	0ff4f493          	andi	s1,s1,255
    80001ae8:	00f00793          	li	a5,15
    80001aec:	fc97f4e3          	bgeu	a5,s1,80001ab4 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001af0:	00004797          	auipc	a5,0x4
    80001af4:	dc07b783          	ld	a5,-576(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001af8:	0007b783          	ld	a5,0(a5)
    80001afc:	00100713          	li	a4,1
    80001b00:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b04:	fffff097          	auipc	ra,0xfffff
    80001b08:	6fc080e7          	jalr	1788(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	00013903          	ld	s2,0(sp)
    80001b1c:	02010113          	addi	sp,sp,32
    80001b20:	00008067          	ret

0000000080001b24 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b34:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b38:	00100713          	li	a4,1
    80001b3c:	02e78263          	beq	a5,a4,80001b60 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001b40:	00200713          	li	a4,2
    80001b44:	02e78863          	beq	a5,a4,80001b74 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001b48:	01100713          	li	a4,17
    80001b4c:	02e78e63          	beq	a5,a4,80001b88 <_ZN5Riscv14syscallHandlerEv+0x64>



    }

}
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001b60:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	124080e7          	jalr	292(ra) # 80001c88 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b6c:	00050513          	mv	a0,a0
    80001b70:	fe1ff06f          	j	80001b50 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001b74:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	138080e7          	jalr	312(ra) # 80001cb0 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b80:	00050513          	mv	a0,a0
    80001b84:	fcdff06f          	j	80001b50 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001b88:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001b8c:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001b90:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001b94:	fffff097          	auipc	ra,0xfffff
    80001b98:	7cc080e7          	jalr	1996(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b9c:	00050513          	mv	a0,a0
}
    80001ba0:	fb1ff06f          	j	80001b50 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001ba4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00813423          	sd	s0,8(sp)
    80001bac:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001bb0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001bb4:	10200073          	sret
}
    80001bb8:	00813403          	ld	s0,8(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001bc4:	fb010113          	addi	sp,sp,-80
    80001bc8:	04113423          	sd	ra,72(sp)
    80001bcc:	04813023          	sd	s0,64(sp)
    80001bd0:	02913c23          	sd	s1,56(sp)
    80001bd4:	03213823          	sd	s2,48(sp)
    80001bd8:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bdc:	142027f3          	csrr	a5,scause
    80001be0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001be4:	fb843783          	ld	a5,-72(s0)
    uint scause = r_scause();
    80001be8:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001bec:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001bf0:	ff87879b          	addiw	a5,a5,-8
    80001bf4:	00100713          	li	a4,1
    80001bf8:	00f77e63          	bgeu	a4,a5,80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001bfc:	04813083          	ld	ra,72(sp)
    80001c00:	04013403          	ld	s0,64(sp)
    80001c04:	03813483          	ld	s1,56(sp)
    80001c08:	03013903          	ld	s2,48(sp)
    80001c0c:	05010113          	addi	sp,sp,80
    80001c10:	00008067          	ret
        if(a0reg==0x04){
    80001c14:	00400793          	li	a5,4
    80001c18:	02f68a63          	beq	a3,a5,80001c4c <_ZN5Riscv20handleSupervisorTrapEv+0x88>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c1c:	141027f3          	csrr	a5,sepc
    80001c20:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c24:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80001c28:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c2c:	100027f3          	csrr	a5,sstatus
    80001c30:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001c34:	fd043903          	ld	s2,-48(s0)
            syscallHandler();
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	eec080e7          	jalr	-276(ra) # 80001b24 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c40:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c44:	14149073          	csrw	sepc,s1
}
    80001c48:	fb5ff06f          	j	80001bfc <_ZN5Riscv20handleSupervisorTrapEv+0x38>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c4c:	141027f3          	csrr	a5,sepc
    80001c50:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c54:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c58:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c5c:	100027f3          	csrr	a5,sstatus
    80001c60:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001c64:	fc043903          	ld	s2,-64(s0)
            _thread::timeSliceCounter = 0;
    80001c68:	00004797          	auipc	a5,0x4
    80001c6c:	c707b783          	ld	a5,-912(a5) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c70:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c74:	fffff097          	auipc	ra,0xfffff
    80001c78:	60c080e7          	jalr	1548(ra) # 80001280 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c7c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c80:	14149073          	csrw	sepc,s1
}
    80001c84:	f79ff06f          	j	80001bfc <_ZN5Riscv20handleSupervisorTrapEv+0x38>

0000000080001c88 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	300080e7          	jalr	768(ra) # 80003f98 <__mem_alloc>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001cc0:	00002097          	auipc	ra,0x2
    80001cc4:	20c080e7          	jalr	524(ra) # 80003ecc <__mem_free>
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001cd8:	fd010113          	addi	sp,sp,-48
    80001cdc:	02113423          	sd	ra,40(sp)
    80001ce0:	02813023          	sd	s0,32(sp)
    80001ce4:	00913c23          	sd	s1,24(sp)
    80001ce8:	01213823          	sd	s2,16(sp)
    80001cec:	03010413          	addi	s0,sp,48
    80001cf0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cf4:	100027f3          	csrr	a5,sstatus
    80001cf8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001cfc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d00:	00200793          	li	a5,2
    80001d04:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001d08:	0004c503          	lbu	a0,0(s1)
    80001d0c:	00050a63          	beqz	a0,80001d20 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	3e0080e7          	jalr	992(ra) # 800040f0 <__putc>
        string++;
    80001d18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d1c:	fedff06f          	j	80001d08 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001d20:	0009091b          	sext.w	s2,s2
    80001d24:	00297913          	andi	s2,s2,2
    80001d28:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d2c:	10092073          	csrs	sstatus,s2
}
    80001d30:	02813083          	ld	ra,40(sp)
    80001d34:	02013403          	ld	s0,32(sp)
    80001d38:	01813483          	ld	s1,24(sp)
    80001d3c:	01013903          	ld	s2,16(sp)
    80001d40:	03010113          	addi	sp,sp,48
    80001d44:	00008067          	ret

0000000080001d48 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001d48:	fc010113          	addi	sp,sp,-64
    80001d4c:	02113c23          	sd	ra,56(sp)
    80001d50:	02813823          	sd	s0,48(sp)
    80001d54:	02913423          	sd	s1,40(sp)
    80001d58:	03213023          	sd	s2,32(sp)
    80001d5c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d60:	100027f3          	csrr	a5,sstatus
    80001d64:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d68:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d6c:	00200793          	li	a5,2
    80001d70:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d74:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d78:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d7c:	00a00613          	li	a2,10
    80001d80:	02c5773b          	remuw	a4,a0,a2
    80001d84:	02071693          	slli	a3,a4,0x20
    80001d88:	0206d693          	srli	a3,a3,0x20
    80001d8c:	00003717          	auipc	a4,0x3
    80001d90:	2ec70713          	addi	a4,a4,748 # 80005078 <_ZZ12printIntegermE6digits>
    80001d94:	00d70733          	add	a4,a4,a3
    80001d98:	00074703          	lbu	a4,0(a4)
    80001d9c:	fe040693          	addi	a3,s0,-32
    80001da0:	009687b3          	add	a5,a3,s1
    80001da4:	0014849b          	addiw	s1,s1,1
    80001da8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001dac:	0005071b          	sext.w	a4,a0
    80001db0:	02c5553b          	divuw	a0,a0,a2
    80001db4:	00900793          	li	a5,9
    80001db8:	fce7e2e3          	bltu	a5,a4,80001d7c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001dbc:	fff4849b          	addiw	s1,s1,-1
    80001dc0:	0004ce63          	bltz	s1,80001ddc <_Z12printIntegerm+0x94>
    80001dc4:	fe040793          	addi	a5,s0,-32
    80001dc8:	009787b3          	add	a5,a5,s1
    80001dcc:	ff07c503          	lbu	a0,-16(a5)
    80001dd0:	00002097          	auipc	ra,0x2
    80001dd4:	320080e7          	jalr	800(ra) # 800040f0 <__putc>
    80001dd8:	fe5ff06f          	j	80001dbc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ddc:	0009091b          	sext.w	s2,s2
    80001de0:	00297913          	andi	s2,s2,2
    80001de4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001de8:	10092073          	csrs	sstatus,s2
}
    80001dec:	03813083          	ld	ra,56(sp)
    80001df0:	03013403          	ld	s0,48(sp)
    80001df4:	02813483          	ld	s1,40(sp)
    80001df8:	02013903          	ld	s2,32(sp)
    80001dfc:	04010113          	addi	sp,sp,64
    80001e00:	00008067          	ret

0000000080001e04 <start>:
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00813423          	sd	s0,8(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	300027f3          	csrr	a5,mstatus
    80001e14:	ffffe737          	lui	a4,0xffffe
    80001e18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c2f>
    80001e1c:	00e7f7b3          	and	a5,a5,a4
    80001e20:	00001737          	lui	a4,0x1
    80001e24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e28:	00e7e7b3          	or	a5,a5,a4
    80001e2c:	30079073          	csrw	mstatus,a5
    80001e30:	00000797          	auipc	a5,0x0
    80001e34:	16078793          	addi	a5,a5,352 # 80001f90 <system_main>
    80001e38:	34179073          	csrw	mepc,a5
    80001e3c:	00000793          	li	a5,0
    80001e40:	18079073          	csrw	satp,a5
    80001e44:	000107b7          	lui	a5,0x10
    80001e48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e4c:	30279073          	csrw	medeleg,a5
    80001e50:	30379073          	csrw	mideleg,a5
    80001e54:	104027f3          	csrr	a5,sie
    80001e58:	2227e793          	ori	a5,a5,546
    80001e5c:	10479073          	csrw	sie,a5
    80001e60:	fff00793          	li	a5,-1
    80001e64:	00a7d793          	srli	a5,a5,0xa
    80001e68:	3b079073          	csrw	pmpaddr0,a5
    80001e6c:	00f00793          	li	a5,15
    80001e70:	3a079073          	csrw	pmpcfg0,a5
    80001e74:	f14027f3          	csrr	a5,mhartid
    80001e78:	0200c737          	lui	a4,0x200c
    80001e7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e80:	0007869b          	sext.w	a3,a5
    80001e84:	00269713          	slli	a4,a3,0x2
    80001e88:	000f4637          	lui	a2,0xf4
    80001e8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e90:	00d70733          	add	a4,a4,a3
    80001e94:	0037979b          	slliw	a5,a5,0x3
    80001e98:	020046b7          	lui	a3,0x2004
    80001e9c:	00d787b3          	add	a5,a5,a3
    80001ea0:	00c585b3          	add	a1,a1,a2
    80001ea4:	00371693          	slli	a3,a4,0x3
    80001ea8:	00004717          	auipc	a4,0x4
    80001eac:	ab870713          	addi	a4,a4,-1352 # 80005960 <timer_scratch>
    80001eb0:	00b7b023          	sd	a1,0(a5)
    80001eb4:	00d70733          	add	a4,a4,a3
    80001eb8:	00f73c23          	sd	a5,24(a4)
    80001ebc:	02c73023          	sd	a2,32(a4)
    80001ec0:	34071073          	csrw	mscratch,a4
    80001ec4:	00000797          	auipc	a5,0x0
    80001ec8:	6ec78793          	addi	a5,a5,1772 # 800025b0 <timervec>
    80001ecc:	30579073          	csrw	mtvec,a5
    80001ed0:	300027f3          	csrr	a5,mstatus
    80001ed4:	0087e793          	ori	a5,a5,8
    80001ed8:	30079073          	csrw	mstatus,a5
    80001edc:	304027f3          	csrr	a5,mie
    80001ee0:	0807e793          	ori	a5,a5,128
    80001ee4:	30479073          	csrw	mie,a5
    80001ee8:	f14027f3          	csrr	a5,mhartid
    80001eec:	0007879b          	sext.w	a5,a5
    80001ef0:	00078213          	mv	tp,a5
    80001ef4:	30200073          	mret
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <timerinit>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    80001f10:	f14027f3          	csrr	a5,mhartid
    80001f14:	0200c737          	lui	a4,0x200c
    80001f18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f1c:	0007869b          	sext.w	a3,a5
    80001f20:	00269713          	slli	a4,a3,0x2
    80001f24:	000f4637          	lui	a2,0xf4
    80001f28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f2c:	00d70733          	add	a4,a4,a3
    80001f30:	0037979b          	slliw	a5,a5,0x3
    80001f34:	020046b7          	lui	a3,0x2004
    80001f38:	00d787b3          	add	a5,a5,a3
    80001f3c:	00c585b3          	add	a1,a1,a2
    80001f40:	00371693          	slli	a3,a4,0x3
    80001f44:	00004717          	auipc	a4,0x4
    80001f48:	a1c70713          	addi	a4,a4,-1508 # 80005960 <timer_scratch>
    80001f4c:	00b7b023          	sd	a1,0(a5)
    80001f50:	00d70733          	add	a4,a4,a3
    80001f54:	00f73c23          	sd	a5,24(a4)
    80001f58:	02c73023          	sd	a2,32(a4)
    80001f5c:	34071073          	csrw	mscratch,a4
    80001f60:	00000797          	auipc	a5,0x0
    80001f64:	65078793          	addi	a5,a5,1616 # 800025b0 <timervec>
    80001f68:	30579073          	csrw	mtvec,a5
    80001f6c:	300027f3          	csrr	a5,mstatus
    80001f70:	0087e793          	ori	a5,a5,8
    80001f74:	30079073          	csrw	mstatus,a5
    80001f78:	304027f3          	csrr	a5,mie
    80001f7c:	0807e793          	ori	a5,a5,128
    80001f80:	30479073          	csrw	mie,a5
    80001f84:	00813403          	ld	s0,8(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <system_main>:
    80001f90:	fe010113          	addi	sp,sp,-32
    80001f94:	00813823          	sd	s0,16(sp)
    80001f98:	00913423          	sd	s1,8(sp)
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	02010413          	addi	s0,sp,32
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	0c4080e7          	jalr	196(ra) # 80002068 <cpuid>
    80001fac:	00004497          	auipc	s1,0x4
    80001fb0:	95448493          	addi	s1,s1,-1708 # 80005900 <started>
    80001fb4:	02050263          	beqz	a0,80001fd8 <system_main+0x48>
    80001fb8:	0004a783          	lw	a5,0(s1)
    80001fbc:	0007879b          	sext.w	a5,a5
    80001fc0:	fe078ce3          	beqz	a5,80001fb8 <system_main+0x28>
    80001fc4:	0ff0000f          	fence
    80001fc8:	00003517          	auipc	a0,0x3
    80001fcc:	0f050513          	addi	a0,a0,240 # 800050b8 <_ZZ12printIntegermE6digits+0x40>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	a7c080e7          	jalr	-1412(ra) # 80002a4c <panic>
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	9d0080e7          	jalr	-1584(ra) # 800029a8 <consoleinit>
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	15c080e7          	jalr	348(ra) # 8000313c <printfinit>
    80001fe8:	00003517          	auipc	a0,0x3
    80001fec:	05850513          	addi	a0,a0,88 # 80005040 <kvmincrease+0xe30>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	ab8080e7          	jalr	-1352(ra) # 80002aa8 <__printf>
    80001ff8:	00003517          	auipc	a0,0x3
    80001ffc:	09050513          	addi	a0,a0,144 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	aa8080e7          	jalr	-1368(ra) # 80002aa8 <__printf>
    80002008:	00003517          	auipc	a0,0x3
    8000200c:	03850513          	addi	a0,a0,56 # 80005040 <kvmincrease+0xe30>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	a98080e7          	jalr	-1384(ra) # 80002aa8 <__printf>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	4b0080e7          	jalr	1200(ra) # 800034c8 <kinit>
    80002020:	00000097          	auipc	ra,0x0
    80002024:	148080e7          	jalr	328(ra) # 80002168 <trapinit>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	16c080e7          	jalr	364(ra) # 80002194 <trapinithart>
    80002030:	00000097          	auipc	ra,0x0
    80002034:	5c0080e7          	jalr	1472(ra) # 800025f0 <plicinit>
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	5e0080e7          	jalr	1504(ra) # 80002618 <plicinithart>
    80002040:	00000097          	auipc	ra,0x0
    80002044:	078080e7          	jalr	120(ra) # 800020b8 <userinit>
    80002048:	0ff0000f          	fence
    8000204c:	00100793          	li	a5,1
    80002050:	00003517          	auipc	a0,0x3
    80002054:	05050513          	addi	a0,a0,80 # 800050a0 <_ZZ12printIntegermE6digits+0x28>
    80002058:	00f4a023          	sw	a5,0(s1)
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	a4c080e7          	jalr	-1460(ra) # 80002aa8 <__printf>
    80002064:	0000006f          	j	80002064 <system_main+0xd4>

0000000080002068 <cpuid>:
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    80002074:	00020513          	mv	a0,tp
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	0005051b          	sext.w	a0,a0
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <mycpu>:
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00813423          	sd	s0,8(sp)
    80002090:	01010413          	addi	s0,sp,16
    80002094:	00020793          	mv	a5,tp
    80002098:	00813403          	ld	s0,8(sp)
    8000209c:	0007879b          	sext.w	a5,a5
    800020a0:	00779793          	slli	a5,a5,0x7
    800020a4:	00005517          	auipc	a0,0x5
    800020a8:	8ec50513          	addi	a0,a0,-1812 # 80006990 <cpus>
    800020ac:	00f50533          	add	a0,a0,a5
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <userinit>:
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	fffff317          	auipc	t1,0xfffff
    800020d0:	45430067          	jr	1108(t1) # 80001520 <main>

00000000800020d4 <either_copyout>:
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813023          	sd	s0,0(sp)
    800020dc:	00113423          	sd	ra,8(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	02051663          	bnez	a0,80002110 <either_copyout+0x3c>
    800020e8:	00058513          	mv	a0,a1
    800020ec:	00060593          	mv	a1,a2
    800020f0:	0006861b          	sext.w	a2,a3
    800020f4:	00002097          	auipc	ra,0x2
    800020f8:	c60080e7          	jalr	-928(ra) # 80003d54 <__memmove>
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	00000513          	li	a0,0
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret
    80002110:	00003517          	auipc	a0,0x3
    80002114:	fd050513          	addi	a0,a0,-48 # 800050e0 <_ZZ12printIntegermE6digits+0x68>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	934080e7          	jalr	-1740(ra) # 80002a4c <panic>

0000000080002120 <either_copyin>:
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00813023          	sd	s0,0(sp)
    80002128:	00113423          	sd	ra,8(sp)
    8000212c:	01010413          	addi	s0,sp,16
    80002130:	02059463          	bnez	a1,80002158 <either_copyin+0x38>
    80002134:	00060593          	mv	a1,a2
    80002138:	0006861b          	sext.w	a2,a3
    8000213c:	00002097          	auipc	ra,0x2
    80002140:	c18080e7          	jalr	-1000(ra) # 80003d54 <__memmove>
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	00000513          	li	a0,0
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret
    80002158:	00003517          	auipc	a0,0x3
    8000215c:	fb050513          	addi	a0,a0,-80 # 80005108 <_ZZ12printIntegermE6digits+0x90>
    80002160:	00001097          	auipc	ra,0x1
    80002164:	8ec080e7          	jalr	-1812(ra) # 80002a4c <panic>

0000000080002168 <trapinit>:
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00813423          	sd	s0,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	00813403          	ld	s0,8(sp)
    80002178:	00003597          	auipc	a1,0x3
    8000217c:	fb858593          	addi	a1,a1,-72 # 80005130 <_ZZ12printIntegermE6digits+0xb8>
    80002180:	00005517          	auipc	a0,0x5
    80002184:	89050513          	addi	a0,a0,-1904 # 80006a10 <tickslock>
    80002188:	01010113          	addi	sp,sp,16
    8000218c:	00001317          	auipc	t1,0x1
    80002190:	5cc30067          	jr	1484(t1) # 80003758 <initlock>

0000000080002194 <trapinithart>:
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00813423          	sd	s0,8(sp)
    8000219c:	01010413          	addi	s0,sp,16
    800021a0:	00000797          	auipc	a5,0x0
    800021a4:	30078793          	addi	a5,a5,768 # 800024a0 <kernelvec>
    800021a8:	10579073          	csrw	stvec,a5
    800021ac:	00813403          	ld	s0,8(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <usertrap>:
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00813423          	sd	s0,8(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00813403          	ld	s0,8(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret

00000000800021d0 <usertrapret>:
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00813423          	sd	s0,8(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	00813403          	ld	s0,8(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <kerneltrap>:
    800021e8:	fe010113          	addi	sp,sp,-32
    800021ec:	00813823          	sd	s0,16(sp)
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00913423          	sd	s1,8(sp)
    800021f8:	02010413          	addi	s0,sp,32
    800021fc:	142025f3          	csrr	a1,scause
    80002200:	100027f3          	csrr	a5,sstatus
    80002204:	0027f793          	andi	a5,a5,2
    80002208:	10079c63          	bnez	a5,80002320 <kerneltrap+0x138>
    8000220c:	142027f3          	csrr	a5,scause
    80002210:	0207ce63          	bltz	a5,8000224c <kerneltrap+0x64>
    80002214:	00003517          	auipc	a0,0x3
    80002218:	f6450513          	addi	a0,a0,-156 # 80005178 <_ZZ12printIntegermE6digits+0x100>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	88c080e7          	jalr	-1908(ra) # 80002aa8 <__printf>
    80002224:	141025f3          	csrr	a1,sepc
    80002228:	14302673          	csrr	a2,stval
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	f5c50513          	addi	a0,a0,-164 # 80005188 <_ZZ12printIntegermE6digits+0x110>
    80002234:	00001097          	auipc	ra,0x1
    80002238:	874080e7          	jalr	-1932(ra) # 80002aa8 <__printf>
    8000223c:	00003517          	auipc	a0,0x3
    80002240:	f6450513          	addi	a0,a0,-156 # 800051a0 <_ZZ12printIntegermE6digits+0x128>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	808080e7          	jalr	-2040(ra) # 80002a4c <panic>
    8000224c:	0ff7f713          	andi	a4,a5,255
    80002250:	00900693          	li	a3,9
    80002254:	04d70063          	beq	a4,a3,80002294 <kerneltrap+0xac>
    80002258:	fff00713          	li	a4,-1
    8000225c:	03f71713          	slli	a4,a4,0x3f
    80002260:	00170713          	addi	a4,a4,1
    80002264:	fae798e3          	bne	a5,a4,80002214 <kerneltrap+0x2c>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	e00080e7          	jalr	-512(ra) # 80002068 <cpuid>
    80002270:	06050663          	beqz	a0,800022dc <kerneltrap+0xf4>
    80002274:	144027f3          	csrr	a5,sip
    80002278:	ffd7f793          	andi	a5,a5,-3
    8000227c:	14479073          	csrw	sip,a5
    80002280:	01813083          	ld	ra,24(sp)
    80002284:	01013403          	ld	s0,16(sp)
    80002288:	00813483          	ld	s1,8(sp)
    8000228c:	02010113          	addi	sp,sp,32
    80002290:	00008067          	ret
    80002294:	00000097          	auipc	ra,0x0
    80002298:	3d0080e7          	jalr	976(ra) # 80002664 <plic_claim>
    8000229c:	00a00793          	li	a5,10
    800022a0:	00050493          	mv	s1,a0
    800022a4:	06f50863          	beq	a0,a5,80002314 <kerneltrap+0x12c>
    800022a8:	fc050ce3          	beqz	a0,80002280 <kerneltrap+0x98>
    800022ac:	00050593          	mv	a1,a0
    800022b0:	00003517          	auipc	a0,0x3
    800022b4:	ea850513          	addi	a0,a0,-344 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	7f0080e7          	jalr	2032(ra) # 80002aa8 <__printf>
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	00048513          	mv	a0,s1
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00000317          	auipc	t1,0x0
    800022d8:	3c830067          	jr	968(t1) # 8000269c <plic_complete>
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	73450513          	addi	a0,a0,1844 # 80006a10 <tickslock>
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	498080e7          	jalr	1176(ra) # 8000377c <acquire>
    800022ec:	00003717          	auipc	a4,0x3
    800022f0:	61870713          	addi	a4,a4,1560 # 80005904 <ticks>
    800022f4:	00072783          	lw	a5,0(a4)
    800022f8:	00004517          	auipc	a0,0x4
    800022fc:	71850513          	addi	a0,a0,1816 # 80006a10 <tickslock>
    80002300:	0017879b          	addiw	a5,a5,1
    80002304:	00f72023          	sw	a5,0(a4)
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	540080e7          	jalr	1344(ra) # 80003848 <release>
    80002310:	f65ff06f          	j	80002274 <kerneltrap+0x8c>
    80002314:	00001097          	auipc	ra,0x1
    80002318:	09c080e7          	jalr	156(ra) # 800033b0 <uartintr>
    8000231c:	fa5ff06f          	j	800022c0 <kerneltrap+0xd8>
    80002320:	00003517          	auipc	a0,0x3
    80002324:	e1850513          	addi	a0,a0,-488 # 80005138 <_ZZ12printIntegermE6digits+0xc0>
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	724080e7          	jalr	1828(ra) # 80002a4c <panic>

0000000080002330 <clockintr>:
    80002330:	fe010113          	addi	sp,sp,-32
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	00113c23          	sd	ra,24(sp)
    80002340:	02010413          	addi	s0,sp,32
    80002344:	00004497          	auipc	s1,0x4
    80002348:	6cc48493          	addi	s1,s1,1740 # 80006a10 <tickslock>
    8000234c:	00048513          	mv	a0,s1
    80002350:	00001097          	auipc	ra,0x1
    80002354:	42c080e7          	jalr	1068(ra) # 8000377c <acquire>
    80002358:	00003717          	auipc	a4,0x3
    8000235c:	5ac70713          	addi	a4,a4,1452 # 80005904 <ticks>
    80002360:	00072783          	lw	a5,0(a4)
    80002364:	01013403          	ld	s0,16(sp)
    80002368:	01813083          	ld	ra,24(sp)
    8000236c:	00048513          	mv	a0,s1
    80002370:	0017879b          	addiw	a5,a5,1
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	00f72023          	sw	a5,0(a4)
    8000237c:	02010113          	addi	sp,sp,32
    80002380:	00001317          	auipc	t1,0x1
    80002384:	4c830067          	jr	1224(t1) # 80003848 <release>

0000000080002388 <devintr>:
    80002388:	142027f3          	csrr	a5,scause
    8000238c:	00000513          	li	a0,0
    80002390:	0007c463          	bltz	a5,80002398 <devintr+0x10>
    80002394:	00008067          	ret
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00813823          	sd	s0,16(sp)
    800023a0:	00113c23          	sd	ra,24(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
    800023ac:	0ff7f713          	andi	a4,a5,255
    800023b0:	00900693          	li	a3,9
    800023b4:	04d70c63          	beq	a4,a3,8000240c <devintr+0x84>
    800023b8:	fff00713          	li	a4,-1
    800023bc:	03f71713          	slli	a4,a4,0x3f
    800023c0:	00170713          	addi	a4,a4,1
    800023c4:	00e78c63          	beq	a5,a4,800023dc <devintr+0x54>
    800023c8:	01813083          	ld	ra,24(sp)
    800023cc:	01013403          	ld	s0,16(sp)
    800023d0:	00813483          	ld	s1,8(sp)
    800023d4:	02010113          	addi	sp,sp,32
    800023d8:	00008067          	ret
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	c8c080e7          	jalr	-884(ra) # 80002068 <cpuid>
    800023e4:	06050663          	beqz	a0,80002450 <devintr+0xc8>
    800023e8:	144027f3          	csrr	a5,sip
    800023ec:	ffd7f793          	andi	a5,a5,-3
    800023f0:	14479073          	csrw	sip,a5
    800023f4:	01813083          	ld	ra,24(sp)
    800023f8:	01013403          	ld	s0,16(sp)
    800023fc:	00813483          	ld	s1,8(sp)
    80002400:	00200513          	li	a0,2
    80002404:	02010113          	addi	sp,sp,32
    80002408:	00008067          	ret
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	258080e7          	jalr	600(ra) # 80002664 <plic_claim>
    80002414:	00a00793          	li	a5,10
    80002418:	00050493          	mv	s1,a0
    8000241c:	06f50663          	beq	a0,a5,80002488 <devintr+0x100>
    80002420:	00100513          	li	a0,1
    80002424:	fa0482e3          	beqz	s1,800023c8 <devintr+0x40>
    80002428:	00048593          	mv	a1,s1
    8000242c:	00003517          	auipc	a0,0x3
    80002430:	d2c50513          	addi	a0,a0,-724 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    80002434:	00000097          	auipc	ra,0x0
    80002438:	674080e7          	jalr	1652(ra) # 80002aa8 <__printf>
    8000243c:	00048513          	mv	a0,s1
    80002440:	00000097          	auipc	ra,0x0
    80002444:	25c080e7          	jalr	604(ra) # 8000269c <plic_complete>
    80002448:	00100513          	li	a0,1
    8000244c:	f7dff06f          	j	800023c8 <devintr+0x40>
    80002450:	00004517          	auipc	a0,0x4
    80002454:	5c050513          	addi	a0,a0,1472 # 80006a10 <tickslock>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	324080e7          	jalr	804(ra) # 8000377c <acquire>
    80002460:	00003717          	auipc	a4,0x3
    80002464:	4a470713          	addi	a4,a4,1188 # 80005904 <ticks>
    80002468:	00072783          	lw	a5,0(a4)
    8000246c:	00004517          	auipc	a0,0x4
    80002470:	5a450513          	addi	a0,a0,1444 # 80006a10 <tickslock>
    80002474:	0017879b          	addiw	a5,a5,1
    80002478:	00f72023          	sw	a5,0(a4)
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	3cc080e7          	jalr	972(ra) # 80003848 <release>
    80002484:	f65ff06f          	j	800023e8 <devintr+0x60>
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	f28080e7          	jalr	-216(ra) # 800033b0 <uartintr>
    80002490:	fadff06f          	j	8000243c <devintr+0xb4>
	...

00000000800024a0 <kernelvec>:
    800024a0:	f0010113          	addi	sp,sp,-256
    800024a4:	00113023          	sd	ra,0(sp)
    800024a8:	00213423          	sd	sp,8(sp)
    800024ac:	00313823          	sd	gp,16(sp)
    800024b0:	00413c23          	sd	tp,24(sp)
    800024b4:	02513023          	sd	t0,32(sp)
    800024b8:	02613423          	sd	t1,40(sp)
    800024bc:	02713823          	sd	t2,48(sp)
    800024c0:	02813c23          	sd	s0,56(sp)
    800024c4:	04913023          	sd	s1,64(sp)
    800024c8:	04a13423          	sd	a0,72(sp)
    800024cc:	04b13823          	sd	a1,80(sp)
    800024d0:	04c13c23          	sd	a2,88(sp)
    800024d4:	06d13023          	sd	a3,96(sp)
    800024d8:	06e13423          	sd	a4,104(sp)
    800024dc:	06f13823          	sd	a5,112(sp)
    800024e0:	07013c23          	sd	a6,120(sp)
    800024e4:	09113023          	sd	a7,128(sp)
    800024e8:	09213423          	sd	s2,136(sp)
    800024ec:	09313823          	sd	s3,144(sp)
    800024f0:	09413c23          	sd	s4,152(sp)
    800024f4:	0b513023          	sd	s5,160(sp)
    800024f8:	0b613423          	sd	s6,168(sp)
    800024fc:	0b713823          	sd	s7,176(sp)
    80002500:	0b813c23          	sd	s8,184(sp)
    80002504:	0d913023          	sd	s9,192(sp)
    80002508:	0da13423          	sd	s10,200(sp)
    8000250c:	0db13823          	sd	s11,208(sp)
    80002510:	0dc13c23          	sd	t3,216(sp)
    80002514:	0fd13023          	sd	t4,224(sp)
    80002518:	0fe13423          	sd	t5,232(sp)
    8000251c:	0ff13823          	sd	t6,240(sp)
    80002520:	cc9ff0ef          	jal	ra,800021e8 <kerneltrap>
    80002524:	00013083          	ld	ra,0(sp)
    80002528:	00813103          	ld	sp,8(sp)
    8000252c:	01013183          	ld	gp,16(sp)
    80002530:	02013283          	ld	t0,32(sp)
    80002534:	02813303          	ld	t1,40(sp)
    80002538:	03013383          	ld	t2,48(sp)
    8000253c:	03813403          	ld	s0,56(sp)
    80002540:	04013483          	ld	s1,64(sp)
    80002544:	04813503          	ld	a0,72(sp)
    80002548:	05013583          	ld	a1,80(sp)
    8000254c:	05813603          	ld	a2,88(sp)
    80002550:	06013683          	ld	a3,96(sp)
    80002554:	06813703          	ld	a4,104(sp)
    80002558:	07013783          	ld	a5,112(sp)
    8000255c:	07813803          	ld	a6,120(sp)
    80002560:	08013883          	ld	a7,128(sp)
    80002564:	08813903          	ld	s2,136(sp)
    80002568:	09013983          	ld	s3,144(sp)
    8000256c:	09813a03          	ld	s4,152(sp)
    80002570:	0a013a83          	ld	s5,160(sp)
    80002574:	0a813b03          	ld	s6,168(sp)
    80002578:	0b013b83          	ld	s7,176(sp)
    8000257c:	0b813c03          	ld	s8,184(sp)
    80002580:	0c013c83          	ld	s9,192(sp)
    80002584:	0c813d03          	ld	s10,200(sp)
    80002588:	0d013d83          	ld	s11,208(sp)
    8000258c:	0d813e03          	ld	t3,216(sp)
    80002590:	0e013e83          	ld	t4,224(sp)
    80002594:	0e813f03          	ld	t5,232(sp)
    80002598:	0f013f83          	ld	t6,240(sp)
    8000259c:	10010113          	addi	sp,sp,256
    800025a0:	10200073          	sret
    800025a4:	00000013          	nop
    800025a8:	00000013          	nop
    800025ac:	00000013          	nop

00000000800025b0 <timervec>:
    800025b0:	34051573          	csrrw	a0,mscratch,a0
    800025b4:	00b53023          	sd	a1,0(a0)
    800025b8:	00c53423          	sd	a2,8(a0)
    800025bc:	00d53823          	sd	a3,16(a0)
    800025c0:	01853583          	ld	a1,24(a0)
    800025c4:	02053603          	ld	a2,32(a0)
    800025c8:	0005b683          	ld	a3,0(a1)
    800025cc:	00c686b3          	add	a3,a3,a2
    800025d0:	00d5b023          	sd	a3,0(a1)
    800025d4:	00200593          	li	a1,2
    800025d8:	14459073          	csrw	sip,a1
    800025dc:	01053683          	ld	a3,16(a0)
    800025e0:	00853603          	ld	a2,8(a0)
    800025e4:	00053583          	ld	a1,0(a0)
    800025e8:	34051573          	csrrw	a0,mscratch,a0
    800025ec:	30200073          	mret

00000000800025f0 <plicinit>:
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00813423          	sd	s0,8(sp)
    800025f8:	01010413          	addi	s0,sp,16
    800025fc:	00813403          	ld	s0,8(sp)
    80002600:	0c0007b7          	lui	a5,0xc000
    80002604:	00100713          	li	a4,1
    80002608:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000260c:	00e7a223          	sw	a4,4(a5)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret

0000000080002618 <plicinithart>:
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	01010413          	addi	s0,sp,16
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	a40080e7          	jalr	-1472(ra) # 80002068 <cpuid>
    80002630:	0085171b          	slliw	a4,a0,0x8
    80002634:	0c0027b7          	lui	a5,0xc002
    80002638:	00e787b3          	add	a5,a5,a4
    8000263c:	40200713          	li	a4,1026
    80002640:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002644:	00813083          	ld	ra,8(sp)
    80002648:	00013403          	ld	s0,0(sp)
    8000264c:	00d5151b          	slliw	a0,a0,0xd
    80002650:	0c2017b7          	lui	a5,0xc201
    80002654:	00a78533          	add	a0,a5,a0
    80002658:	00052023          	sw	zero,0(a0)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <plic_claim>:
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	00113423          	sd	ra,8(sp)
    80002670:	01010413          	addi	s0,sp,16
    80002674:	00000097          	auipc	ra,0x0
    80002678:	9f4080e7          	jalr	-1548(ra) # 80002068 <cpuid>
    8000267c:	00813083          	ld	ra,8(sp)
    80002680:	00013403          	ld	s0,0(sp)
    80002684:	00d5151b          	slliw	a0,a0,0xd
    80002688:	0c2017b7          	lui	a5,0xc201
    8000268c:	00a78533          	add	a0,a5,a0
    80002690:	00452503          	lw	a0,4(a0)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <plic_complete>:
    8000269c:	fe010113          	addi	sp,sp,-32
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	00113c23          	sd	ra,24(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	9b4080e7          	jalr	-1612(ra) # 80002068 <cpuid>
    800026bc:	01813083          	ld	ra,24(sp)
    800026c0:	01013403          	ld	s0,16(sp)
    800026c4:	00d5179b          	slliw	a5,a0,0xd
    800026c8:	0c201737          	lui	a4,0xc201
    800026cc:	00f707b3          	add	a5,a4,a5
    800026d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800026d4:	00813483          	ld	s1,8(sp)
    800026d8:	02010113          	addi	sp,sp,32
    800026dc:	00008067          	ret

00000000800026e0 <consolewrite>:
    800026e0:	fb010113          	addi	sp,sp,-80
    800026e4:	04813023          	sd	s0,64(sp)
    800026e8:	04113423          	sd	ra,72(sp)
    800026ec:	02913c23          	sd	s1,56(sp)
    800026f0:	03213823          	sd	s2,48(sp)
    800026f4:	03313423          	sd	s3,40(sp)
    800026f8:	03413023          	sd	s4,32(sp)
    800026fc:	01513c23          	sd	s5,24(sp)
    80002700:	05010413          	addi	s0,sp,80
    80002704:	06c05c63          	blez	a2,8000277c <consolewrite+0x9c>
    80002708:	00060993          	mv	s3,a2
    8000270c:	00050a13          	mv	s4,a0
    80002710:	00058493          	mv	s1,a1
    80002714:	00000913          	li	s2,0
    80002718:	fff00a93          	li	s5,-1
    8000271c:	01c0006f          	j	80002738 <consolewrite+0x58>
    80002720:	fbf44503          	lbu	a0,-65(s0)
    80002724:	0019091b          	addiw	s2,s2,1
    80002728:	00148493          	addi	s1,s1,1
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	a9c080e7          	jalr	-1380(ra) # 800031c8 <uartputc>
    80002734:	03298063          	beq	s3,s2,80002754 <consolewrite+0x74>
    80002738:	00048613          	mv	a2,s1
    8000273c:	00100693          	li	a3,1
    80002740:	000a0593          	mv	a1,s4
    80002744:	fbf40513          	addi	a0,s0,-65
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	9d8080e7          	jalr	-1576(ra) # 80002120 <either_copyin>
    80002750:	fd5518e3          	bne	a0,s5,80002720 <consolewrite+0x40>
    80002754:	04813083          	ld	ra,72(sp)
    80002758:	04013403          	ld	s0,64(sp)
    8000275c:	03813483          	ld	s1,56(sp)
    80002760:	02813983          	ld	s3,40(sp)
    80002764:	02013a03          	ld	s4,32(sp)
    80002768:	01813a83          	ld	s5,24(sp)
    8000276c:	00090513          	mv	a0,s2
    80002770:	03013903          	ld	s2,48(sp)
    80002774:	05010113          	addi	sp,sp,80
    80002778:	00008067          	ret
    8000277c:	00000913          	li	s2,0
    80002780:	fd5ff06f          	j	80002754 <consolewrite+0x74>

0000000080002784 <consoleread>:
    80002784:	f9010113          	addi	sp,sp,-112
    80002788:	06813023          	sd	s0,96(sp)
    8000278c:	04913c23          	sd	s1,88(sp)
    80002790:	05213823          	sd	s2,80(sp)
    80002794:	05313423          	sd	s3,72(sp)
    80002798:	05413023          	sd	s4,64(sp)
    8000279c:	03513c23          	sd	s5,56(sp)
    800027a0:	03613823          	sd	s6,48(sp)
    800027a4:	03713423          	sd	s7,40(sp)
    800027a8:	03813023          	sd	s8,32(sp)
    800027ac:	06113423          	sd	ra,104(sp)
    800027b0:	01913c23          	sd	s9,24(sp)
    800027b4:	07010413          	addi	s0,sp,112
    800027b8:	00060b93          	mv	s7,a2
    800027bc:	00050913          	mv	s2,a0
    800027c0:	00058c13          	mv	s8,a1
    800027c4:	00060b1b          	sext.w	s6,a2
    800027c8:	00004497          	auipc	s1,0x4
    800027cc:	27048493          	addi	s1,s1,624 # 80006a38 <cons>
    800027d0:	00400993          	li	s3,4
    800027d4:	fff00a13          	li	s4,-1
    800027d8:	00a00a93          	li	s5,10
    800027dc:	05705e63          	blez	s7,80002838 <consoleread+0xb4>
    800027e0:	09c4a703          	lw	a4,156(s1)
    800027e4:	0984a783          	lw	a5,152(s1)
    800027e8:	0007071b          	sext.w	a4,a4
    800027ec:	08e78463          	beq	a5,a4,80002874 <consoleread+0xf0>
    800027f0:	07f7f713          	andi	a4,a5,127
    800027f4:	00e48733          	add	a4,s1,a4
    800027f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800027fc:	0017869b          	addiw	a3,a5,1
    80002800:	08d4ac23          	sw	a3,152(s1)
    80002804:	00070c9b          	sext.w	s9,a4
    80002808:	0b370663          	beq	a4,s3,800028b4 <consoleread+0x130>
    8000280c:	00100693          	li	a3,1
    80002810:	f9f40613          	addi	a2,s0,-97
    80002814:	000c0593          	mv	a1,s8
    80002818:	00090513          	mv	a0,s2
    8000281c:	f8e40fa3          	sb	a4,-97(s0)
    80002820:	00000097          	auipc	ra,0x0
    80002824:	8b4080e7          	jalr	-1868(ra) # 800020d4 <either_copyout>
    80002828:	01450863          	beq	a0,s4,80002838 <consoleread+0xb4>
    8000282c:	001c0c13          	addi	s8,s8,1
    80002830:	fffb8b9b          	addiw	s7,s7,-1
    80002834:	fb5c94e3          	bne	s9,s5,800027dc <consoleread+0x58>
    80002838:	000b851b          	sext.w	a0,s7
    8000283c:	06813083          	ld	ra,104(sp)
    80002840:	06013403          	ld	s0,96(sp)
    80002844:	05813483          	ld	s1,88(sp)
    80002848:	05013903          	ld	s2,80(sp)
    8000284c:	04813983          	ld	s3,72(sp)
    80002850:	04013a03          	ld	s4,64(sp)
    80002854:	03813a83          	ld	s5,56(sp)
    80002858:	02813b83          	ld	s7,40(sp)
    8000285c:	02013c03          	ld	s8,32(sp)
    80002860:	01813c83          	ld	s9,24(sp)
    80002864:	40ab053b          	subw	a0,s6,a0
    80002868:	03013b03          	ld	s6,48(sp)
    8000286c:	07010113          	addi	sp,sp,112
    80002870:	00008067          	ret
    80002874:	00001097          	auipc	ra,0x1
    80002878:	1d8080e7          	jalr	472(ra) # 80003a4c <push_on>
    8000287c:	0984a703          	lw	a4,152(s1)
    80002880:	09c4a783          	lw	a5,156(s1)
    80002884:	0007879b          	sext.w	a5,a5
    80002888:	fef70ce3          	beq	a4,a5,80002880 <consoleread+0xfc>
    8000288c:	00001097          	auipc	ra,0x1
    80002890:	234080e7          	jalr	564(ra) # 80003ac0 <pop_on>
    80002894:	0984a783          	lw	a5,152(s1)
    80002898:	07f7f713          	andi	a4,a5,127
    8000289c:	00e48733          	add	a4,s1,a4
    800028a0:	01874703          	lbu	a4,24(a4)
    800028a4:	0017869b          	addiw	a3,a5,1
    800028a8:	08d4ac23          	sw	a3,152(s1)
    800028ac:	00070c9b          	sext.w	s9,a4
    800028b0:	f5371ee3          	bne	a4,s3,8000280c <consoleread+0x88>
    800028b4:	000b851b          	sext.w	a0,s7
    800028b8:	f96bf2e3          	bgeu	s7,s6,8000283c <consoleread+0xb8>
    800028bc:	08f4ac23          	sw	a5,152(s1)
    800028c0:	f7dff06f          	j	8000283c <consoleread+0xb8>

00000000800028c4 <consputc>:
    800028c4:	10000793          	li	a5,256
    800028c8:	00f50663          	beq	a0,a5,800028d4 <consputc+0x10>
    800028cc:	00001317          	auipc	t1,0x1
    800028d0:	9f430067          	jr	-1548(t1) # 800032c0 <uartputc_sync>
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	00800513          	li	a0,8
    800028e8:	00001097          	auipc	ra,0x1
    800028ec:	9d8080e7          	jalr	-1576(ra) # 800032c0 <uartputc_sync>
    800028f0:	02000513          	li	a0,32
    800028f4:	00001097          	auipc	ra,0x1
    800028f8:	9cc080e7          	jalr	-1588(ra) # 800032c0 <uartputc_sync>
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	00813083          	ld	ra,8(sp)
    80002904:	00800513          	li	a0,8
    80002908:	01010113          	addi	sp,sp,16
    8000290c:	00001317          	auipc	t1,0x1
    80002910:	9b430067          	jr	-1612(t1) # 800032c0 <uartputc_sync>

0000000080002914 <consoleintr>:
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00813823          	sd	s0,16(sp)
    8000291c:	00913423          	sd	s1,8(sp)
    80002920:	01213023          	sd	s2,0(sp)
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	02010413          	addi	s0,sp,32
    8000292c:	00004917          	auipc	s2,0x4
    80002930:	10c90913          	addi	s2,s2,268 # 80006a38 <cons>
    80002934:	00050493          	mv	s1,a0
    80002938:	00090513          	mv	a0,s2
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	e40080e7          	jalr	-448(ra) # 8000377c <acquire>
    80002944:	02048c63          	beqz	s1,8000297c <consoleintr+0x68>
    80002948:	0a092783          	lw	a5,160(s2)
    8000294c:	09892703          	lw	a4,152(s2)
    80002950:	07f00693          	li	a3,127
    80002954:	40e7873b          	subw	a4,a5,a4
    80002958:	02e6e263          	bltu	a3,a4,8000297c <consoleintr+0x68>
    8000295c:	00d00713          	li	a4,13
    80002960:	04e48063          	beq	s1,a4,800029a0 <consoleintr+0x8c>
    80002964:	07f7f713          	andi	a4,a5,127
    80002968:	00e90733          	add	a4,s2,a4
    8000296c:	0017879b          	addiw	a5,a5,1
    80002970:	0af92023          	sw	a5,160(s2)
    80002974:	00970c23          	sb	s1,24(a4)
    80002978:	08f92e23          	sw	a5,156(s2)
    8000297c:	01013403          	ld	s0,16(sp)
    80002980:	01813083          	ld	ra,24(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	00013903          	ld	s2,0(sp)
    8000298c:	00004517          	auipc	a0,0x4
    80002990:	0ac50513          	addi	a0,a0,172 # 80006a38 <cons>
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00001317          	auipc	t1,0x1
    8000299c:	eb030067          	jr	-336(t1) # 80003848 <release>
    800029a0:	00a00493          	li	s1,10
    800029a4:	fc1ff06f          	j	80002964 <consoleintr+0x50>

00000000800029a8 <consoleinit>:
    800029a8:	fe010113          	addi	sp,sp,-32
    800029ac:	00113c23          	sd	ra,24(sp)
    800029b0:	00813823          	sd	s0,16(sp)
    800029b4:	00913423          	sd	s1,8(sp)
    800029b8:	02010413          	addi	s0,sp,32
    800029bc:	00004497          	auipc	s1,0x4
    800029c0:	07c48493          	addi	s1,s1,124 # 80006a38 <cons>
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00002597          	auipc	a1,0x2
    800029cc:	7e858593          	addi	a1,a1,2024 # 800051b0 <_ZZ12printIntegermE6digits+0x138>
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	d88080e7          	jalr	-632(ra) # 80003758 <initlock>
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	7ac080e7          	jalr	1964(ra) # 80003184 <uartinit>
    800029e0:	01813083          	ld	ra,24(sp)
    800029e4:	01013403          	ld	s0,16(sp)
    800029e8:	00000797          	auipc	a5,0x0
    800029ec:	d9c78793          	addi	a5,a5,-612 # 80002784 <consoleread>
    800029f0:	0af4bc23          	sd	a5,184(s1)
    800029f4:	00000797          	auipc	a5,0x0
    800029f8:	cec78793          	addi	a5,a5,-788 # 800026e0 <consolewrite>
    800029fc:	0cf4b023          	sd	a5,192(s1)
    80002a00:	00813483          	ld	s1,8(sp)
    80002a04:	02010113          	addi	sp,sp,32
    80002a08:	00008067          	ret

0000000080002a0c <console_read>:
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    80002a18:	00813403          	ld	s0,8(sp)
    80002a1c:	00004317          	auipc	t1,0x4
    80002a20:	0d433303          	ld	t1,212(t1) # 80006af0 <devsw+0x10>
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00030067          	jr	t1

0000000080002a2c <console_write>:
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00813423          	sd	s0,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00813403          	ld	s0,8(sp)
    80002a3c:	00004317          	auipc	t1,0x4
    80002a40:	0bc33303          	ld	t1,188(t1) # 80006af8 <devsw+0x18>
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00030067          	jr	t1

0000000080002a4c <panic>:
    80002a4c:	fe010113          	addi	sp,sp,-32
    80002a50:	00113c23          	sd	ra,24(sp)
    80002a54:	00813823          	sd	s0,16(sp)
    80002a58:	00913423          	sd	s1,8(sp)
    80002a5c:	02010413          	addi	s0,sp,32
    80002a60:	00050493          	mv	s1,a0
    80002a64:	00002517          	auipc	a0,0x2
    80002a68:	75450513          	addi	a0,a0,1876 # 800051b8 <_ZZ12printIntegermE6digits+0x140>
    80002a6c:	00004797          	auipc	a5,0x4
    80002a70:	1207a623          	sw	zero,300(a5) # 80006b98 <pr+0x18>
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	034080e7          	jalr	52(ra) # 80002aa8 <__printf>
    80002a7c:	00048513          	mv	a0,s1
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	028080e7          	jalr	40(ra) # 80002aa8 <__printf>
    80002a88:	00002517          	auipc	a0,0x2
    80002a8c:	5b850513          	addi	a0,a0,1464 # 80005040 <kvmincrease+0xe30>
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	018080e7          	jalr	24(ra) # 80002aa8 <__printf>
    80002a98:	00100793          	li	a5,1
    80002a9c:	00003717          	auipc	a4,0x3
    80002aa0:	e6f72623          	sw	a5,-404(a4) # 80005908 <panicked>
    80002aa4:	0000006f          	j	80002aa4 <panic+0x58>

0000000080002aa8 <__printf>:
    80002aa8:	f3010113          	addi	sp,sp,-208
    80002aac:	08813023          	sd	s0,128(sp)
    80002ab0:	07313423          	sd	s3,104(sp)
    80002ab4:	09010413          	addi	s0,sp,144
    80002ab8:	05813023          	sd	s8,64(sp)
    80002abc:	08113423          	sd	ra,136(sp)
    80002ac0:	06913c23          	sd	s1,120(sp)
    80002ac4:	07213823          	sd	s2,112(sp)
    80002ac8:	07413023          	sd	s4,96(sp)
    80002acc:	05513c23          	sd	s5,88(sp)
    80002ad0:	05613823          	sd	s6,80(sp)
    80002ad4:	05713423          	sd	s7,72(sp)
    80002ad8:	03913c23          	sd	s9,56(sp)
    80002adc:	03a13823          	sd	s10,48(sp)
    80002ae0:	03b13423          	sd	s11,40(sp)
    80002ae4:	00004317          	auipc	t1,0x4
    80002ae8:	09c30313          	addi	t1,t1,156 # 80006b80 <pr>
    80002aec:	01832c03          	lw	s8,24(t1)
    80002af0:	00b43423          	sd	a1,8(s0)
    80002af4:	00c43823          	sd	a2,16(s0)
    80002af8:	00d43c23          	sd	a3,24(s0)
    80002afc:	02e43023          	sd	a4,32(s0)
    80002b00:	02f43423          	sd	a5,40(s0)
    80002b04:	03043823          	sd	a6,48(s0)
    80002b08:	03143c23          	sd	a7,56(s0)
    80002b0c:	00050993          	mv	s3,a0
    80002b10:	4a0c1663          	bnez	s8,80002fbc <__printf+0x514>
    80002b14:	60098c63          	beqz	s3,8000312c <__printf+0x684>
    80002b18:	0009c503          	lbu	a0,0(s3)
    80002b1c:	00840793          	addi	a5,s0,8
    80002b20:	f6f43c23          	sd	a5,-136(s0)
    80002b24:	00000493          	li	s1,0
    80002b28:	22050063          	beqz	a0,80002d48 <__printf+0x2a0>
    80002b2c:	00002a37          	lui	s4,0x2
    80002b30:	00018ab7          	lui	s5,0x18
    80002b34:	000f4b37          	lui	s6,0xf4
    80002b38:	00989bb7          	lui	s7,0x989
    80002b3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b4c:	00148c9b          	addiw	s9,s1,1
    80002b50:	02500793          	li	a5,37
    80002b54:	01998933          	add	s2,s3,s9
    80002b58:	38f51263          	bne	a0,a5,80002edc <__printf+0x434>
    80002b5c:	00094783          	lbu	a5,0(s2)
    80002b60:	00078c9b          	sext.w	s9,a5
    80002b64:	1e078263          	beqz	a5,80002d48 <__printf+0x2a0>
    80002b68:	0024849b          	addiw	s1,s1,2
    80002b6c:	07000713          	li	a4,112
    80002b70:	00998933          	add	s2,s3,s1
    80002b74:	38e78a63          	beq	a5,a4,80002f08 <__printf+0x460>
    80002b78:	20f76863          	bltu	a4,a5,80002d88 <__printf+0x2e0>
    80002b7c:	42a78863          	beq	a5,a0,80002fac <__printf+0x504>
    80002b80:	06400713          	li	a4,100
    80002b84:	40e79663          	bne	a5,a4,80002f90 <__printf+0x4e8>
    80002b88:	f7843783          	ld	a5,-136(s0)
    80002b8c:	0007a603          	lw	a2,0(a5)
    80002b90:	00878793          	addi	a5,a5,8
    80002b94:	f6f43c23          	sd	a5,-136(s0)
    80002b98:	42064a63          	bltz	a2,80002fcc <__printf+0x524>
    80002b9c:	00a00713          	li	a4,10
    80002ba0:	02e677bb          	remuw	a5,a2,a4
    80002ba4:	00002d97          	auipc	s11,0x2
    80002ba8:	63cd8d93          	addi	s11,s11,1596 # 800051e0 <digits>
    80002bac:	00900593          	li	a1,9
    80002bb0:	0006051b          	sext.w	a0,a2
    80002bb4:	00000c93          	li	s9,0
    80002bb8:	02079793          	slli	a5,a5,0x20
    80002bbc:	0207d793          	srli	a5,a5,0x20
    80002bc0:	00fd87b3          	add	a5,s11,a5
    80002bc4:	0007c783          	lbu	a5,0(a5)
    80002bc8:	02e656bb          	divuw	a3,a2,a4
    80002bcc:	f8f40023          	sb	a5,-128(s0)
    80002bd0:	14c5d863          	bge	a1,a2,80002d20 <__printf+0x278>
    80002bd4:	06300593          	li	a1,99
    80002bd8:	00100c93          	li	s9,1
    80002bdc:	02e6f7bb          	remuw	a5,a3,a4
    80002be0:	02079793          	slli	a5,a5,0x20
    80002be4:	0207d793          	srli	a5,a5,0x20
    80002be8:	00fd87b3          	add	a5,s11,a5
    80002bec:	0007c783          	lbu	a5,0(a5)
    80002bf0:	02e6d73b          	divuw	a4,a3,a4
    80002bf4:	f8f400a3          	sb	a5,-127(s0)
    80002bf8:	12a5f463          	bgeu	a1,a0,80002d20 <__printf+0x278>
    80002bfc:	00a00693          	li	a3,10
    80002c00:	00900593          	li	a1,9
    80002c04:	02d777bb          	remuw	a5,a4,a3
    80002c08:	02079793          	slli	a5,a5,0x20
    80002c0c:	0207d793          	srli	a5,a5,0x20
    80002c10:	00fd87b3          	add	a5,s11,a5
    80002c14:	0007c503          	lbu	a0,0(a5)
    80002c18:	02d757bb          	divuw	a5,a4,a3
    80002c1c:	f8a40123          	sb	a0,-126(s0)
    80002c20:	48e5f263          	bgeu	a1,a4,800030a4 <__printf+0x5fc>
    80002c24:	06300513          	li	a0,99
    80002c28:	02d7f5bb          	remuw	a1,a5,a3
    80002c2c:	02059593          	slli	a1,a1,0x20
    80002c30:	0205d593          	srli	a1,a1,0x20
    80002c34:	00bd85b3          	add	a1,s11,a1
    80002c38:	0005c583          	lbu	a1,0(a1)
    80002c3c:	02d7d7bb          	divuw	a5,a5,a3
    80002c40:	f8b401a3          	sb	a1,-125(s0)
    80002c44:	48e57263          	bgeu	a0,a4,800030c8 <__printf+0x620>
    80002c48:	3e700513          	li	a0,999
    80002c4c:	02d7f5bb          	remuw	a1,a5,a3
    80002c50:	02059593          	slli	a1,a1,0x20
    80002c54:	0205d593          	srli	a1,a1,0x20
    80002c58:	00bd85b3          	add	a1,s11,a1
    80002c5c:	0005c583          	lbu	a1,0(a1)
    80002c60:	02d7d7bb          	divuw	a5,a5,a3
    80002c64:	f8b40223          	sb	a1,-124(s0)
    80002c68:	46e57663          	bgeu	a0,a4,800030d4 <__printf+0x62c>
    80002c6c:	02d7f5bb          	remuw	a1,a5,a3
    80002c70:	02059593          	slli	a1,a1,0x20
    80002c74:	0205d593          	srli	a1,a1,0x20
    80002c78:	00bd85b3          	add	a1,s11,a1
    80002c7c:	0005c583          	lbu	a1,0(a1)
    80002c80:	02d7d7bb          	divuw	a5,a5,a3
    80002c84:	f8b402a3          	sb	a1,-123(s0)
    80002c88:	46ea7863          	bgeu	s4,a4,800030f8 <__printf+0x650>
    80002c8c:	02d7f5bb          	remuw	a1,a5,a3
    80002c90:	02059593          	slli	a1,a1,0x20
    80002c94:	0205d593          	srli	a1,a1,0x20
    80002c98:	00bd85b3          	add	a1,s11,a1
    80002c9c:	0005c583          	lbu	a1,0(a1)
    80002ca0:	02d7d7bb          	divuw	a5,a5,a3
    80002ca4:	f8b40323          	sb	a1,-122(s0)
    80002ca8:	3eeaf863          	bgeu	s5,a4,80003098 <__printf+0x5f0>
    80002cac:	02d7f5bb          	remuw	a1,a5,a3
    80002cb0:	02059593          	slli	a1,a1,0x20
    80002cb4:	0205d593          	srli	a1,a1,0x20
    80002cb8:	00bd85b3          	add	a1,s11,a1
    80002cbc:	0005c583          	lbu	a1,0(a1)
    80002cc0:	02d7d7bb          	divuw	a5,a5,a3
    80002cc4:	f8b403a3          	sb	a1,-121(s0)
    80002cc8:	42eb7e63          	bgeu	s6,a4,80003104 <__printf+0x65c>
    80002ccc:	02d7f5bb          	remuw	a1,a5,a3
    80002cd0:	02059593          	slli	a1,a1,0x20
    80002cd4:	0205d593          	srli	a1,a1,0x20
    80002cd8:	00bd85b3          	add	a1,s11,a1
    80002cdc:	0005c583          	lbu	a1,0(a1)
    80002ce0:	02d7d7bb          	divuw	a5,a5,a3
    80002ce4:	f8b40423          	sb	a1,-120(s0)
    80002ce8:	42ebfc63          	bgeu	s7,a4,80003120 <__printf+0x678>
    80002cec:	02079793          	slli	a5,a5,0x20
    80002cf0:	0207d793          	srli	a5,a5,0x20
    80002cf4:	00fd8db3          	add	s11,s11,a5
    80002cf8:	000dc703          	lbu	a4,0(s11)
    80002cfc:	00a00793          	li	a5,10
    80002d00:	00900c93          	li	s9,9
    80002d04:	f8e404a3          	sb	a4,-119(s0)
    80002d08:	00065c63          	bgez	a2,80002d20 <__printf+0x278>
    80002d0c:	f9040713          	addi	a4,s0,-112
    80002d10:	00f70733          	add	a4,a4,a5
    80002d14:	02d00693          	li	a3,45
    80002d18:	fed70823          	sb	a3,-16(a4)
    80002d1c:	00078c93          	mv	s9,a5
    80002d20:	f8040793          	addi	a5,s0,-128
    80002d24:	01978cb3          	add	s9,a5,s9
    80002d28:	f7f40d13          	addi	s10,s0,-129
    80002d2c:	000cc503          	lbu	a0,0(s9)
    80002d30:	fffc8c93          	addi	s9,s9,-1
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	b90080e7          	jalr	-1136(ra) # 800028c4 <consputc>
    80002d3c:	ffac98e3          	bne	s9,s10,80002d2c <__printf+0x284>
    80002d40:	00094503          	lbu	a0,0(s2)
    80002d44:	e00514e3          	bnez	a0,80002b4c <__printf+0xa4>
    80002d48:	1a0c1663          	bnez	s8,80002ef4 <__printf+0x44c>
    80002d4c:	08813083          	ld	ra,136(sp)
    80002d50:	08013403          	ld	s0,128(sp)
    80002d54:	07813483          	ld	s1,120(sp)
    80002d58:	07013903          	ld	s2,112(sp)
    80002d5c:	06813983          	ld	s3,104(sp)
    80002d60:	06013a03          	ld	s4,96(sp)
    80002d64:	05813a83          	ld	s5,88(sp)
    80002d68:	05013b03          	ld	s6,80(sp)
    80002d6c:	04813b83          	ld	s7,72(sp)
    80002d70:	04013c03          	ld	s8,64(sp)
    80002d74:	03813c83          	ld	s9,56(sp)
    80002d78:	03013d03          	ld	s10,48(sp)
    80002d7c:	02813d83          	ld	s11,40(sp)
    80002d80:	0d010113          	addi	sp,sp,208
    80002d84:	00008067          	ret
    80002d88:	07300713          	li	a4,115
    80002d8c:	1ce78a63          	beq	a5,a4,80002f60 <__printf+0x4b8>
    80002d90:	07800713          	li	a4,120
    80002d94:	1ee79e63          	bne	a5,a4,80002f90 <__printf+0x4e8>
    80002d98:	f7843783          	ld	a5,-136(s0)
    80002d9c:	0007a703          	lw	a4,0(a5)
    80002da0:	00878793          	addi	a5,a5,8
    80002da4:	f6f43c23          	sd	a5,-136(s0)
    80002da8:	28074263          	bltz	a4,8000302c <__printf+0x584>
    80002dac:	00002d97          	auipc	s11,0x2
    80002db0:	434d8d93          	addi	s11,s11,1076 # 800051e0 <digits>
    80002db4:	00f77793          	andi	a5,a4,15
    80002db8:	00fd87b3          	add	a5,s11,a5
    80002dbc:	0007c683          	lbu	a3,0(a5)
    80002dc0:	00f00613          	li	a2,15
    80002dc4:	0007079b          	sext.w	a5,a4
    80002dc8:	f8d40023          	sb	a3,-128(s0)
    80002dcc:	0047559b          	srliw	a1,a4,0x4
    80002dd0:	0047569b          	srliw	a3,a4,0x4
    80002dd4:	00000c93          	li	s9,0
    80002dd8:	0ee65063          	bge	a2,a4,80002eb8 <__printf+0x410>
    80002ddc:	00f6f693          	andi	a3,a3,15
    80002de0:	00dd86b3          	add	a3,s11,a3
    80002de4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002de8:	0087d79b          	srliw	a5,a5,0x8
    80002dec:	00100c93          	li	s9,1
    80002df0:	f8d400a3          	sb	a3,-127(s0)
    80002df4:	0cb67263          	bgeu	a2,a1,80002eb8 <__printf+0x410>
    80002df8:	00f7f693          	andi	a3,a5,15
    80002dfc:	00dd86b3          	add	a3,s11,a3
    80002e00:	0006c583          	lbu	a1,0(a3)
    80002e04:	00f00613          	li	a2,15
    80002e08:	0047d69b          	srliw	a3,a5,0x4
    80002e0c:	f8b40123          	sb	a1,-126(s0)
    80002e10:	0047d593          	srli	a1,a5,0x4
    80002e14:	28f67e63          	bgeu	a2,a5,800030b0 <__printf+0x608>
    80002e18:	00f6f693          	andi	a3,a3,15
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c503          	lbu	a0,0(a3)
    80002e24:	0087d813          	srli	a6,a5,0x8
    80002e28:	0087d69b          	srliw	a3,a5,0x8
    80002e2c:	f8a401a3          	sb	a0,-125(s0)
    80002e30:	28b67663          	bgeu	a2,a1,800030bc <__printf+0x614>
    80002e34:	00f6f693          	andi	a3,a3,15
    80002e38:	00dd86b3          	add	a3,s11,a3
    80002e3c:	0006c583          	lbu	a1,0(a3)
    80002e40:	00c7d513          	srli	a0,a5,0xc
    80002e44:	00c7d69b          	srliw	a3,a5,0xc
    80002e48:	f8b40223          	sb	a1,-124(s0)
    80002e4c:	29067a63          	bgeu	a2,a6,800030e0 <__printf+0x638>
    80002e50:	00f6f693          	andi	a3,a3,15
    80002e54:	00dd86b3          	add	a3,s11,a3
    80002e58:	0006c583          	lbu	a1,0(a3)
    80002e5c:	0107d813          	srli	a6,a5,0x10
    80002e60:	0107d69b          	srliw	a3,a5,0x10
    80002e64:	f8b402a3          	sb	a1,-123(s0)
    80002e68:	28a67263          	bgeu	a2,a0,800030ec <__printf+0x644>
    80002e6c:	00f6f693          	andi	a3,a3,15
    80002e70:	00dd86b3          	add	a3,s11,a3
    80002e74:	0006c683          	lbu	a3,0(a3)
    80002e78:	0147d79b          	srliw	a5,a5,0x14
    80002e7c:	f8d40323          	sb	a3,-122(s0)
    80002e80:	21067663          	bgeu	a2,a6,8000308c <__printf+0x5e4>
    80002e84:	02079793          	slli	a5,a5,0x20
    80002e88:	0207d793          	srli	a5,a5,0x20
    80002e8c:	00fd8db3          	add	s11,s11,a5
    80002e90:	000dc683          	lbu	a3,0(s11)
    80002e94:	00800793          	li	a5,8
    80002e98:	00700c93          	li	s9,7
    80002e9c:	f8d403a3          	sb	a3,-121(s0)
    80002ea0:	00075c63          	bgez	a4,80002eb8 <__printf+0x410>
    80002ea4:	f9040713          	addi	a4,s0,-112
    80002ea8:	00f70733          	add	a4,a4,a5
    80002eac:	02d00693          	li	a3,45
    80002eb0:	fed70823          	sb	a3,-16(a4)
    80002eb4:	00078c93          	mv	s9,a5
    80002eb8:	f8040793          	addi	a5,s0,-128
    80002ebc:	01978cb3          	add	s9,a5,s9
    80002ec0:	f7f40d13          	addi	s10,s0,-129
    80002ec4:	000cc503          	lbu	a0,0(s9)
    80002ec8:	fffc8c93          	addi	s9,s9,-1
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	9f8080e7          	jalr	-1544(ra) # 800028c4 <consputc>
    80002ed4:	ff9d18e3          	bne	s10,s9,80002ec4 <__printf+0x41c>
    80002ed8:	0100006f          	j	80002ee8 <__printf+0x440>
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	9e8080e7          	jalr	-1560(ra) # 800028c4 <consputc>
    80002ee4:	000c8493          	mv	s1,s9
    80002ee8:	00094503          	lbu	a0,0(s2)
    80002eec:	c60510e3          	bnez	a0,80002b4c <__printf+0xa4>
    80002ef0:	e40c0ee3          	beqz	s8,80002d4c <__printf+0x2a4>
    80002ef4:	00004517          	auipc	a0,0x4
    80002ef8:	c8c50513          	addi	a0,a0,-884 # 80006b80 <pr>
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	94c080e7          	jalr	-1716(ra) # 80003848 <release>
    80002f04:	e49ff06f          	j	80002d4c <__printf+0x2a4>
    80002f08:	f7843783          	ld	a5,-136(s0)
    80002f0c:	03000513          	li	a0,48
    80002f10:	01000d13          	li	s10,16
    80002f14:	00878713          	addi	a4,a5,8
    80002f18:	0007bc83          	ld	s9,0(a5)
    80002f1c:	f6e43c23          	sd	a4,-136(s0)
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	9a4080e7          	jalr	-1628(ra) # 800028c4 <consputc>
    80002f28:	07800513          	li	a0,120
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	998080e7          	jalr	-1640(ra) # 800028c4 <consputc>
    80002f34:	00002d97          	auipc	s11,0x2
    80002f38:	2acd8d93          	addi	s11,s11,684 # 800051e0 <digits>
    80002f3c:	03ccd793          	srli	a5,s9,0x3c
    80002f40:	00fd87b3          	add	a5,s11,a5
    80002f44:	0007c503          	lbu	a0,0(a5)
    80002f48:	fffd0d1b          	addiw	s10,s10,-1
    80002f4c:	004c9c93          	slli	s9,s9,0x4
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	974080e7          	jalr	-1676(ra) # 800028c4 <consputc>
    80002f58:	fe0d12e3          	bnez	s10,80002f3c <__printf+0x494>
    80002f5c:	f8dff06f          	j	80002ee8 <__printf+0x440>
    80002f60:	f7843783          	ld	a5,-136(s0)
    80002f64:	0007bc83          	ld	s9,0(a5)
    80002f68:	00878793          	addi	a5,a5,8
    80002f6c:	f6f43c23          	sd	a5,-136(s0)
    80002f70:	000c9a63          	bnez	s9,80002f84 <__printf+0x4dc>
    80002f74:	1080006f          	j	8000307c <__printf+0x5d4>
    80002f78:	001c8c93          	addi	s9,s9,1
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	948080e7          	jalr	-1720(ra) # 800028c4 <consputc>
    80002f84:	000cc503          	lbu	a0,0(s9)
    80002f88:	fe0518e3          	bnez	a0,80002f78 <__printf+0x4d0>
    80002f8c:	f5dff06f          	j	80002ee8 <__printf+0x440>
    80002f90:	02500513          	li	a0,37
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	930080e7          	jalr	-1744(ra) # 800028c4 <consputc>
    80002f9c:	000c8513          	mv	a0,s9
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	924080e7          	jalr	-1756(ra) # 800028c4 <consputc>
    80002fa8:	f41ff06f          	j	80002ee8 <__printf+0x440>
    80002fac:	02500513          	li	a0,37
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	914080e7          	jalr	-1772(ra) # 800028c4 <consputc>
    80002fb8:	f31ff06f          	j	80002ee8 <__printf+0x440>
    80002fbc:	00030513          	mv	a0,t1
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	7bc080e7          	jalr	1980(ra) # 8000377c <acquire>
    80002fc8:	b4dff06f          	j	80002b14 <__printf+0x6c>
    80002fcc:	40c0053b          	negw	a0,a2
    80002fd0:	00a00713          	li	a4,10
    80002fd4:	02e576bb          	remuw	a3,a0,a4
    80002fd8:	00002d97          	auipc	s11,0x2
    80002fdc:	208d8d93          	addi	s11,s11,520 # 800051e0 <digits>
    80002fe0:	ff700593          	li	a1,-9
    80002fe4:	02069693          	slli	a3,a3,0x20
    80002fe8:	0206d693          	srli	a3,a3,0x20
    80002fec:	00dd86b3          	add	a3,s11,a3
    80002ff0:	0006c683          	lbu	a3,0(a3)
    80002ff4:	02e557bb          	divuw	a5,a0,a4
    80002ff8:	f8d40023          	sb	a3,-128(s0)
    80002ffc:	10b65e63          	bge	a2,a1,80003118 <__printf+0x670>
    80003000:	06300593          	li	a1,99
    80003004:	02e7f6bb          	remuw	a3,a5,a4
    80003008:	02069693          	slli	a3,a3,0x20
    8000300c:	0206d693          	srli	a3,a3,0x20
    80003010:	00dd86b3          	add	a3,s11,a3
    80003014:	0006c683          	lbu	a3,0(a3)
    80003018:	02e7d73b          	divuw	a4,a5,a4
    8000301c:	00200793          	li	a5,2
    80003020:	f8d400a3          	sb	a3,-127(s0)
    80003024:	bca5ece3          	bltu	a1,a0,80002bfc <__printf+0x154>
    80003028:	ce5ff06f          	j	80002d0c <__printf+0x264>
    8000302c:	40e007bb          	negw	a5,a4
    80003030:	00002d97          	auipc	s11,0x2
    80003034:	1b0d8d93          	addi	s11,s11,432 # 800051e0 <digits>
    80003038:	00f7f693          	andi	a3,a5,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c583          	lbu	a1,0(a3)
    80003044:	ff100613          	li	a2,-15
    80003048:	0047d69b          	srliw	a3,a5,0x4
    8000304c:	f8b40023          	sb	a1,-128(s0)
    80003050:	0047d59b          	srliw	a1,a5,0x4
    80003054:	0ac75e63          	bge	a4,a2,80003110 <__printf+0x668>
    80003058:	00f6f693          	andi	a3,a3,15
    8000305c:	00dd86b3          	add	a3,s11,a3
    80003060:	0006c603          	lbu	a2,0(a3)
    80003064:	00f00693          	li	a3,15
    80003068:	0087d79b          	srliw	a5,a5,0x8
    8000306c:	f8c400a3          	sb	a2,-127(s0)
    80003070:	d8b6e4e3          	bltu	a3,a1,80002df8 <__printf+0x350>
    80003074:	00200793          	li	a5,2
    80003078:	e2dff06f          	j	80002ea4 <__printf+0x3fc>
    8000307c:	00002c97          	auipc	s9,0x2
    80003080:	144c8c93          	addi	s9,s9,324 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80003084:	02800513          	li	a0,40
    80003088:	ef1ff06f          	j	80002f78 <__printf+0x4d0>
    8000308c:	00700793          	li	a5,7
    80003090:	00600c93          	li	s9,6
    80003094:	e0dff06f          	j	80002ea0 <__printf+0x3f8>
    80003098:	00700793          	li	a5,7
    8000309c:	00600c93          	li	s9,6
    800030a0:	c69ff06f          	j	80002d08 <__printf+0x260>
    800030a4:	00300793          	li	a5,3
    800030a8:	00200c93          	li	s9,2
    800030ac:	c5dff06f          	j	80002d08 <__printf+0x260>
    800030b0:	00300793          	li	a5,3
    800030b4:	00200c93          	li	s9,2
    800030b8:	de9ff06f          	j	80002ea0 <__printf+0x3f8>
    800030bc:	00400793          	li	a5,4
    800030c0:	00300c93          	li	s9,3
    800030c4:	dddff06f          	j	80002ea0 <__printf+0x3f8>
    800030c8:	00400793          	li	a5,4
    800030cc:	00300c93          	li	s9,3
    800030d0:	c39ff06f          	j	80002d08 <__printf+0x260>
    800030d4:	00500793          	li	a5,5
    800030d8:	00400c93          	li	s9,4
    800030dc:	c2dff06f          	j	80002d08 <__printf+0x260>
    800030e0:	00500793          	li	a5,5
    800030e4:	00400c93          	li	s9,4
    800030e8:	db9ff06f          	j	80002ea0 <__printf+0x3f8>
    800030ec:	00600793          	li	a5,6
    800030f0:	00500c93          	li	s9,5
    800030f4:	dadff06f          	j	80002ea0 <__printf+0x3f8>
    800030f8:	00600793          	li	a5,6
    800030fc:	00500c93          	li	s9,5
    80003100:	c09ff06f          	j	80002d08 <__printf+0x260>
    80003104:	00800793          	li	a5,8
    80003108:	00700c93          	li	s9,7
    8000310c:	bfdff06f          	j	80002d08 <__printf+0x260>
    80003110:	00100793          	li	a5,1
    80003114:	d91ff06f          	j	80002ea4 <__printf+0x3fc>
    80003118:	00100793          	li	a5,1
    8000311c:	bf1ff06f          	j	80002d0c <__printf+0x264>
    80003120:	00900793          	li	a5,9
    80003124:	00800c93          	li	s9,8
    80003128:	be1ff06f          	j	80002d08 <__printf+0x260>
    8000312c:	00002517          	auipc	a0,0x2
    80003130:	09c50513          	addi	a0,a0,156 # 800051c8 <_ZZ12printIntegermE6digits+0x150>
    80003134:	00000097          	auipc	ra,0x0
    80003138:	918080e7          	jalr	-1768(ra) # 80002a4c <panic>

000000008000313c <printfinit>:
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00813823          	sd	s0,16(sp)
    80003144:	00913423          	sd	s1,8(sp)
    80003148:	00113c23          	sd	ra,24(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	00004497          	auipc	s1,0x4
    80003154:	a3048493          	addi	s1,s1,-1488 # 80006b80 <pr>
    80003158:	00048513          	mv	a0,s1
    8000315c:	00002597          	auipc	a1,0x2
    80003160:	07c58593          	addi	a1,a1,124 # 800051d8 <_ZZ12printIntegermE6digits+0x160>
    80003164:	00000097          	auipc	ra,0x0
    80003168:	5f4080e7          	jalr	1524(ra) # 80003758 <initlock>
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	0004ac23          	sw	zero,24(s1)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret

0000000080003184 <uartinit>:
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    80003190:	100007b7          	lui	a5,0x10000
    80003194:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003198:	f8000713          	li	a4,-128
    8000319c:	00e781a3          	sb	a4,3(a5)
    800031a0:	00300713          	li	a4,3
    800031a4:	00e78023          	sb	a4,0(a5)
    800031a8:	000780a3          	sb	zero,1(a5)
    800031ac:	00e781a3          	sb	a4,3(a5)
    800031b0:	00700693          	li	a3,7
    800031b4:	00d78123          	sb	a3,2(a5)
    800031b8:	00e780a3          	sb	a4,1(a5)
    800031bc:	00813403          	ld	s0,8(sp)
    800031c0:	01010113          	addi	sp,sp,16
    800031c4:	00008067          	ret

00000000800031c8 <uartputc>:
    800031c8:	00002797          	auipc	a5,0x2
    800031cc:	7407a783          	lw	a5,1856(a5) # 80005908 <panicked>
    800031d0:	00078463          	beqz	a5,800031d8 <uartputc+0x10>
    800031d4:	0000006f          	j	800031d4 <uartputc+0xc>
    800031d8:	fd010113          	addi	sp,sp,-48
    800031dc:	02813023          	sd	s0,32(sp)
    800031e0:	00913c23          	sd	s1,24(sp)
    800031e4:	01213823          	sd	s2,16(sp)
    800031e8:	01313423          	sd	s3,8(sp)
    800031ec:	02113423          	sd	ra,40(sp)
    800031f0:	03010413          	addi	s0,sp,48
    800031f4:	00002917          	auipc	s2,0x2
    800031f8:	71c90913          	addi	s2,s2,1820 # 80005910 <uart_tx_r>
    800031fc:	00093783          	ld	a5,0(s2)
    80003200:	00002497          	auipc	s1,0x2
    80003204:	71848493          	addi	s1,s1,1816 # 80005918 <uart_tx_w>
    80003208:	0004b703          	ld	a4,0(s1)
    8000320c:	02078693          	addi	a3,a5,32
    80003210:	00050993          	mv	s3,a0
    80003214:	02e69c63          	bne	a3,a4,8000324c <uartputc+0x84>
    80003218:	00001097          	auipc	ra,0x1
    8000321c:	834080e7          	jalr	-1996(ra) # 80003a4c <push_on>
    80003220:	00093783          	ld	a5,0(s2)
    80003224:	0004b703          	ld	a4,0(s1)
    80003228:	02078793          	addi	a5,a5,32
    8000322c:	00e79463          	bne	a5,a4,80003234 <uartputc+0x6c>
    80003230:	0000006f          	j	80003230 <uartputc+0x68>
    80003234:	00001097          	auipc	ra,0x1
    80003238:	88c080e7          	jalr	-1908(ra) # 80003ac0 <pop_on>
    8000323c:	00093783          	ld	a5,0(s2)
    80003240:	0004b703          	ld	a4,0(s1)
    80003244:	02078693          	addi	a3,a5,32
    80003248:	fce688e3          	beq	a3,a4,80003218 <uartputc+0x50>
    8000324c:	01f77693          	andi	a3,a4,31
    80003250:	00004597          	auipc	a1,0x4
    80003254:	95058593          	addi	a1,a1,-1712 # 80006ba0 <uart_tx_buf>
    80003258:	00d586b3          	add	a3,a1,a3
    8000325c:	00170713          	addi	a4,a4,1
    80003260:	01368023          	sb	s3,0(a3)
    80003264:	00e4b023          	sd	a4,0(s1)
    80003268:	10000637          	lui	a2,0x10000
    8000326c:	02f71063          	bne	a4,a5,8000328c <uartputc+0xc4>
    80003270:	0340006f          	j	800032a4 <uartputc+0xdc>
    80003274:	00074703          	lbu	a4,0(a4)
    80003278:	00f93023          	sd	a5,0(s2)
    8000327c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003280:	00093783          	ld	a5,0(s2)
    80003284:	0004b703          	ld	a4,0(s1)
    80003288:	00f70e63          	beq	a4,a5,800032a4 <uartputc+0xdc>
    8000328c:	00564683          	lbu	a3,5(a2)
    80003290:	01f7f713          	andi	a4,a5,31
    80003294:	00e58733          	add	a4,a1,a4
    80003298:	0206f693          	andi	a3,a3,32
    8000329c:	00178793          	addi	a5,a5,1
    800032a0:	fc069ae3          	bnez	a3,80003274 <uartputc+0xac>
    800032a4:	02813083          	ld	ra,40(sp)
    800032a8:	02013403          	ld	s0,32(sp)
    800032ac:	01813483          	ld	s1,24(sp)
    800032b0:	01013903          	ld	s2,16(sp)
    800032b4:	00813983          	ld	s3,8(sp)
    800032b8:	03010113          	addi	sp,sp,48
    800032bc:	00008067          	ret

00000000800032c0 <uartputc_sync>:
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813423          	sd	s0,8(sp)
    800032c8:	01010413          	addi	s0,sp,16
    800032cc:	00002717          	auipc	a4,0x2
    800032d0:	63c72703          	lw	a4,1596(a4) # 80005908 <panicked>
    800032d4:	02071663          	bnez	a4,80003300 <uartputc_sync+0x40>
    800032d8:	00050793          	mv	a5,a0
    800032dc:	100006b7          	lui	a3,0x10000
    800032e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800032e4:	02077713          	andi	a4,a4,32
    800032e8:	fe070ce3          	beqz	a4,800032e0 <uartputc_sync+0x20>
    800032ec:	0ff7f793          	andi	a5,a5,255
    800032f0:	00f68023          	sb	a5,0(a3)
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret
    80003300:	0000006f          	j	80003300 <uartputc_sync+0x40>

0000000080003304 <uartstart>:
    80003304:	ff010113          	addi	sp,sp,-16
    80003308:	00813423          	sd	s0,8(sp)
    8000330c:	01010413          	addi	s0,sp,16
    80003310:	00002617          	auipc	a2,0x2
    80003314:	60060613          	addi	a2,a2,1536 # 80005910 <uart_tx_r>
    80003318:	00002517          	auipc	a0,0x2
    8000331c:	60050513          	addi	a0,a0,1536 # 80005918 <uart_tx_w>
    80003320:	00063783          	ld	a5,0(a2)
    80003324:	00053703          	ld	a4,0(a0)
    80003328:	04f70263          	beq	a4,a5,8000336c <uartstart+0x68>
    8000332c:	100005b7          	lui	a1,0x10000
    80003330:	00004817          	auipc	a6,0x4
    80003334:	87080813          	addi	a6,a6,-1936 # 80006ba0 <uart_tx_buf>
    80003338:	01c0006f          	j	80003354 <uartstart+0x50>
    8000333c:	0006c703          	lbu	a4,0(a3)
    80003340:	00f63023          	sd	a5,0(a2)
    80003344:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003348:	00063783          	ld	a5,0(a2)
    8000334c:	00053703          	ld	a4,0(a0)
    80003350:	00f70e63          	beq	a4,a5,8000336c <uartstart+0x68>
    80003354:	01f7f713          	andi	a4,a5,31
    80003358:	00e806b3          	add	a3,a6,a4
    8000335c:	0055c703          	lbu	a4,5(a1)
    80003360:	00178793          	addi	a5,a5,1
    80003364:	02077713          	andi	a4,a4,32
    80003368:	fc071ae3          	bnez	a4,8000333c <uartstart+0x38>
    8000336c:	00813403          	ld	s0,8(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <uartgetc>:
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00813423          	sd	s0,8(sp)
    80003380:	01010413          	addi	s0,sp,16
    80003384:	10000737          	lui	a4,0x10000
    80003388:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000338c:	0017f793          	andi	a5,a5,1
    80003390:	00078c63          	beqz	a5,800033a8 <uartgetc+0x30>
    80003394:	00074503          	lbu	a0,0(a4)
    80003398:	0ff57513          	andi	a0,a0,255
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret
    800033a8:	fff00513          	li	a0,-1
    800033ac:	ff1ff06f          	j	8000339c <uartgetc+0x24>

00000000800033b0 <uartintr>:
    800033b0:	100007b7          	lui	a5,0x10000
    800033b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800033b8:	0017f793          	andi	a5,a5,1
    800033bc:	0a078463          	beqz	a5,80003464 <uartintr+0xb4>
    800033c0:	fe010113          	addi	sp,sp,-32
    800033c4:	00813823          	sd	s0,16(sp)
    800033c8:	00913423          	sd	s1,8(sp)
    800033cc:	00113c23          	sd	ra,24(sp)
    800033d0:	02010413          	addi	s0,sp,32
    800033d4:	100004b7          	lui	s1,0x10000
    800033d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800033dc:	0ff57513          	andi	a0,a0,255
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	534080e7          	jalr	1332(ra) # 80002914 <consoleintr>
    800033e8:	0054c783          	lbu	a5,5(s1)
    800033ec:	0017f793          	andi	a5,a5,1
    800033f0:	fe0794e3          	bnez	a5,800033d8 <uartintr+0x28>
    800033f4:	00002617          	auipc	a2,0x2
    800033f8:	51c60613          	addi	a2,a2,1308 # 80005910 <uart_tx_r>
    800033fc:	00002517          	auipc	a0,0x2
    80003400:	51c50513          	addi	a0,a0,1308 # 80005918 <uart_tx_w>
    80003404:	00063783          	ld	a5,0(a2)
    80003408:	00053703          	ld	a4,0(a0)
    8000340c:	04f70263          	beq	a4,a5,80003450 <uartintr+0xa0>
    80003410:	100005b7          	lui	a1,0x10000
    80003414:	00003817          	auipc	a6,0x3
    80003418:	78c80813          	addi	a6,a6,1932 # 80006ba0 <uart_tx_buf>
    8000341c:	01c0006f          	j	80003438 <uartintr+0x88>
    80003420:	0006c703          	lbu	a4,0(a3)
    80003424:	00f63023          	sd	a5,0(a2)
    80003428:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000342c:	00063783          	ld	a5,0(a2)
    80003430:	00053703          	ld	a4,0(a0)
    80003434:	00f70e63          	beq	a4,a5,80003450 <uartintr+0xa0>
    80003438:	01f7f713          	andi	a4,a5,31
    8000343c:	00e806b3          	add	a3,a6,a4
    80003440:	0055c703          	lbu	a4,5(a1)
    80003444:	00178793          	addi	a5,a5,1
    80003448:	02077713          	andi	a4,a4,32
    8000344c:	fc071ae3          	bnez	a4,80003420 <uartintr+0x70>
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	00813483          	ld	s1,8(sp)
    8000345c:	02010113          	addi	sp,sp,32
    80003460:	00008067          	ret
    80003464:	00002617          	auipc	a2,0x2
    80003468:	4ac60613          	addi	a2,a2,1196 # 80005910 <uart_tx_r>
    8000346c:	00002517          	auipc	a0,0x2
    80003470:	4ac50513          	addi	a0,a0,1196 # 80005918 <uart_tx_w>
    80003474:	00063783          	ld	a5,0(a2)
    80003478:	00053703          	ld	a4,0(a0)
    8000347c:	04f70263          	beq	a4,a5,800034c0 <uartintr+0x110>
    80003480:	100005b7          	lui	a1,0x10000
    80003484:	00003817          	auipc	a6,0x3
    80003488:	71c80813          	addi	a6,a6,1820 # 80006ba0 <uart_tx_buf>
    8000348c:	01c0006f          	j	800034a8 <uartintr+0xf8>
    80003490:	0006c703          	lbu	a4,0(a3)
    80003494:	00f63023          	sd	a5,0(a2)
    80003498:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000349c:	00063783          	ld	a5,0(a2)
    800034a0:	00053703          	ld	a4,0(a0)
    800034a4:	02f70063          	beq	a4,a5,800034c4 <uartintr+0x114>
    800034a8:	01f7f713          	andi	a4,a5,31
    800034ac:	00e806b3          	add	a3,a6,a4
    800034b0:	0055c703          	lbu	a4,5(a1)
    800034b4:	00178793          	addi	a5,a5,1
    800034b8:	02077713          	andi	a4,a4,32
    800034bc:	fc071ae3          	bnez	a4,80003490 <uartintr+0xe0>
    800034c0:	00008067          	ret
    800034c4:	00008067          	ret

00000000800034c8 <kinit>:
    800034c8:	fc010113          	addi	sp,sp,-64
    800034cc:	02913423          	sd	s1,40(sp)
    800034d0:	fffff7b7          	lui	a5,0xfffff
    800034d4:	00004497          	auipc	s1,0x4
    800034d8:	6fb48493          	addi	s1,s1,1787 # 80007bcf <end+0xfff>
    800034dc:	02813823          	sd	s0,48(sp)
    800034e0:	01313c23          	sd	s3,24(sp)
    800034e4:	00f4f4b3          	and	s1,s1,a5
    800034e8:	02113c23          	sd	ra,56(sp)
    800034ec:	03213023          	sd	s2,32(sp)
    800034f0:	01413823          	sd	s4,16(sp)
    800034f4:	01513423          	sd	s5,8(sp)
    800034f8:	04010413          	addi	s0,sp,64
    800034fc:	000017b7          	lui	a5,0x1
    80003500:	01100993          	li	s3,17
    80003504:	00f487b3          	add	a5,s1,a5
    80003508:	01b99993          	slli	s3,s3,0x1b
    8000350c:	06f9e063          	bltu	s3,a5,8000356c <kinit+0xa4>
    80003510:	00003a97          	auipc	s5,0x3
    80003514:	6c0a8a93          	addi	s5,s5,1728 # 80006bd0 <end>
    80003518:	0754ec63          	bltu	s1,s5,80003590 <kinit+0xc8>
    8000351c:	0734fa63          	bgeu	s1,s3,80003590 <kinit+0xc8>
    80003520:	00088a37          	lui	s4,0x88
    80003524:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003528:	00002917          	auipc	s2,0x2
    8000352c:	3f890913          	addi	s2,s2,1016 # 80005920 <kmem>
    80003530:	00ca1a13          	slli	s4,s4,0xc
    80003534:	0140006f          	j	80003548 <kinit+0x80>
    80003538:	000017b7          	lui	a5,0x1
    8000353c:	00f484b3          	add	s1,s1,a5
    80003540:	0554e863          	bltu	s1,s5,80003590 <kinit+0xc8>
    80003544:	0534f663          	bgeu	s1,s3,80003590 <kinit+0xc8>
    80003548:	00001637          	lui	a2,0x1
    8000354c:	00100593          	li	a1,1
    80003550:	00048513          	mv	a0,s1
    80003554:	00000097          	auipc	ra,0x0
    80003558:	5e4080e7          	jalr	1508(ra) # 80003b38 <__memset>
    8000355c:	00093783          	ld	a5,0(s2)
    80003560:	00f4b023          	sd	a5,0(s1)
    80003564:	00993023          	sd	s1,0(s2)
    80003568:	fd4498e3          	bne	s1,s4,80003538 <kinit+0x70>
    8000356c:	03813083          	ld	ra,56(sp)
    80003570:	03013403          	ld	s0,48(sp)
    80003574:	02813483          	ld	s1,40(sp)
    80003578:	02013903          	ld	s2,32(sp)
    8000357c:	01813983          	ld	s3,24(sp)
    80003580:	01013a03          	ld	s4,16(sp)
    80003584:	00813a83          	ld	s5,8(sp)
    80003588:	04010113          	addi	sp,sp,64
    8000358c:	00008067          	ret
    80003590:	00002517          	auipc	a0,0x2
    80003594:	c6850513          	addi	a0,a0,-920 # 800051f8 <digits+0x18>
    80003598:	fffff097          	auipc	ra,0xfffff
    8000359c:	4b4080e7          	jalr	1204(ra) # 80002a4c <panic>

00000000800035a0 <freerange>:
    800035a0:	fc010113          	addi	sp,sp,-64
    800035a4:	000017b7          	lui	a5,0x1
    800035a8:	02913423          	sd	s1,40(sp)
    800035ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800035b0:	009504b3          	add	s1,a0,s1
    800035b4:	fffff537          	lui	a0,0xfffff
    800035b8:	02813823          	sd	s0,48(sp)
    800035bc:	02113c23          	sd	ra,56(sp)
    800035c0:	03213023          	sd	s2,32(sp)
    800035c4:	01313c23          	sd	s3,24(sp)
    800035c8:	01413823          	sd	s4,16(sp)
    800035cc:	01513423          	sd	s5,8(sp)
    800035d0:	01613023          	sd	s6,0(sp)
    800035d4:	04010413          	addi	s0,sp,64
    800035d8:	00a4f4b3          	and	s1,s1,a0
    800035dc:	00f487b3          	add	a5,s1,a5
    800035e0:	06f5e463          	bltu	a1,a5,80003648 <freerange+0xa8>
    800035e4:	00003a97          	auipc	s5,0x3
    800035e8:	5eca8a93          	addi	s5,s5,1516 # 80006bd0 <end>
    800035ec:	0954e263          	bltu	s1,s5,80003670 <freerange+0xd0>
    800035f0:	01100993          	li	s3,17
    800035f4:	01b99993          	slli	s3,s3,0x1b
    800035f8:	0734fc63          	bgeu	s1,s3,80003670 <freerange+0xd0>
    800035fc:	00058a13          	mv	s4,a1
    80003600:	00002917          	auipc	s2,0x2
    80003604:	32090913          	addi	s2,s2,800 # 80005920 <kmem>
    80003608:	00002b37          	lui	s6,0x2
    8000360c:	0140006f          	j	80003620 <freerange+0x80>
    80003610:	000017b7          	lui	a5,0x1
    80003614:	00f484b3          	add	s1,s1,a5
    80003618:	0554ec63          	bltu	s1,s5,80003670 <freerange+0xd0>
    8000361c:	0534fa63          	bgeu	s1,s3,80003670 <freerange+0xd0>
    80003620:	00001637          	lui	a2,0x1
    80003624:	00100593          	li	a1,1
    80003628:	00048513          	mv	a0,s1
    8000362c:	00000097          	auipc	ra,0x0
    80003630:	50c080e7          	jalr	1292(ra) # 80003b38 <__memset>
    80003634:	00093703          	ld	a4,0(s2)
    80003638:	016487b3          	add	a5,s1,s6
    8000363c:	00e4b023          	sd	a4,0(s1)
    80003640:	00993023          	sd	s1,0(s2)
    80003644:	fcfa76e3          	bgeu	s4,a5,80003610 <freerange+0x70>
    80003648:	03813083          	ld	ra,56(sp)
    8000364c:	03013403          	ld	s0,48(sp)
    80003650:	02813483          	ld	s1,40(sp)
    80003654:	02013903          	ld	s2,32(sp)
    80003658:	01813983          	ld	s3,24(sp)
    8000365c:	01013a03          	ld	s4,16(sp)
    80003660:	00813a83          	ld	s5,8(sp)
    80003664:	00013b03          	ld	s6,0(sp)
    80003668:	04010113          	addi	sp,sp,64
    8000366c:	00008067          	ret
    80003670:	00002517          	auipc	a0,0x2
    80003674:	b8850513          	addi	a0,a0,-1144 # 800051f8 <digits+0x18>
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	3d4080e7          	jalr	980(ra) # 80002a4c <panic>

0000000080003680 <kfree>:
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	00913423          	sd	s1,8(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	03451793          	slli	a5,a0,0x34
    80003698:	04079c63          	bnez	a5,800036f0 <kfree+0x70>
    8000369c:	00003797          	auipc	a5,0x3
    800036a0:	53478793          	addi	a5,a5,1332 # 80006bd0 <end>
    800036a4:	00050493          	mv	s1,a0
    800036a8:	04f56463          	bltu	a0,a5,800036f0 <kfree+0x70>
    800036ac:	01100793          	li	a5,17
    800036b0:	01b79793          	slli	a5,a5,0x1b
    800036b4:	02f57e63          	bgeu	a0,a5,800036f0 <kfree+0x70>
    800036b8:	00001637          	lui	a2,0x1
    800036bc:	00100593          	li	a1,1
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	478080e7          	jalr	1144(ra) # 80003b38 <__memset>
    800036c8:	00002797          	auipc	a5,0x2
    800036cc:	25878793          	addi	a5,a5,600 # 80005920 <kmem>
    800036d0:	0007b703          	ld	a4,0(a5)
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00e4b023          	sd	a4,0(s1)
    800036e0:	0097b023          	sd	s1,0(a5)
    800036e4:	00813483          	ld	s1,8(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret
    800036f0:	00002517          	auipc	a0,0x2
    800036f4:	b0850513          	addi	a0,a0,-1272 # 800051f8 <digits+0x18>
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	354080e7          	jalr	852(ra) # 80002a4c <panic>

0000000080003700 <kalloc>:
    80003700:	fe010113          	addi	sp,sp,-32
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	00113c23          	sd	ra,24(sp)
    80003710:	02010413          	addi	s0,sp,32
    80003714:	00002797          	auipc	a5,0x2
    80003718:	20c78793          	addi	a5,a5,524 # 80005920 <kmem>
    8000371c:	0007b483          	ld	s1,0(a5)
    80003720:	02048063          	beqz	s1,80003740 <kalloc+0x40>
    80003724:	0004b703          	ld	a4,0(s1)
    80003728:	00001637          	lui	a2,0x1
    8000372c:	00500593          	li	a1,5
    80003730:	00048513          	mv	a0,s1
    80003734:	00e7b023          	sd	a4,0(a5)
    80003738:	00000097          	auipc	ra,0x0
    8000373c:	400080e7          	jalr	1024(ra) # 80003b38 <__memset>
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	00048513          	mv	a0,s1
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <initlock>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	00813403          	ld	s0,8(sp)
    80003768:	00b53423          	sd	a1,8(a0)
    8000376c:	00052023          	sw	zero,0(a0)
    80003770:	00053823          	sd	zero,16(a0)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <acquire>:
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00813823          	sd	s0,16(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	01213023          	sd	s2,0(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00050493          	mv	s1,a0
    80003798:	10002973          	csrr	s2,sstatus
    8000379c:	100027f3          	csrr	a5,sstatus
    800037a0:	ffd7f793          	andi	a5,a5,-3
    800037a4:	10079073          	csrw	sstatus,a5
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	8e0080e7          	jalr	-1824(ra) # 80002088 <mycpu>
    800037b0:	07852783          	lw	a5,120(a0)
    800037b4:	06078e63          	beqz	a5,80003830 <acquire+0xb4>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	8d0080e7          	jalr	-1840(ra) # 80002088 <mycpu>
    800037c0:	07852783          	lw	a5,120(a0)
    800037c4:	0004a703          	lw	a4,0(s1)
    800037c8:	0017879b          	addiw	a5,a5,1
    800037cc:	06f52c23          	sw	a5,120(a0)
    800037d0:	04071063          	bnez	a4,80003810 <acquire+0x94>
    800037d4:	00100713          	li	a4,1
    800037d8:	00070793          	mv	a5,a4
    800037dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800037e0:	0007879b          	sext.w	a5,a5
    800037e4:	fe079ae3          	bnez	a5,800037d8 <acquire+0x5c>
    800037e8:	0ff0000f          	fence
    800037ec:	fffff097          	auipc	ra,0xfffff
    800037f0:	89c080e7          	jalr	-1892(ra) # 80002088 <mycpu>
    800037f4:	01813083          	ld	ra,24(sp)
    800037f8:	01013403          	ld	s0,16(sp)
    800037fc:	00a4b823          	sd	a0,16(s1)
    80003800:	00013903          	ld	s2,0(sp)
    80003804:	00813483          	ld	s1,8(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret
    80003810:	0104b903          	ld	s2,16(s1)
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	874080e7          	jalr	-1932(ra) # 80002088 <mycpu>
    8000381c:	faa91ce3          	bne	s2,a0,800037d4 <acquire+0x58>
    80003820:	00002517          	auipc	a0,0x2
    80003824:	9e050513          	addi	a0,a0,-1568 # 80005200 <digits+0x20>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	224080e7          	jalr	548(ra) # 80002a4c <panic>
    80003830:	00195913          	srli	s2,s2,0x1
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	854080e7          	jalr	-1964(ra) # 80002088 <mycpu>
    8000383c:	00197913          	andi	s2,s2,1
    80003840:	07252e23          	sw	s2,124(a0)
    80003844:	f75ff06f          	j	800037b8 <acquire+0x3c>

0000000080003848 <release>:
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00813823          	sd	s0,16(sp)
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00913423          	sd	s1,8(sp)
    80003858:	01213023          	sd	s2,0(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00052783          	lw	a5,0(a0)
    80003864:	00079a63          	bnez	a5,80003878 <release+0x30>
    80003868:	00002517          	auipc	a0,0x2
    8000386c:	9a050513          	addi	a0,a0,-1632 # 80005208 <digits+0x28>
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	1dc080e7          	jalr	476(ra) # 80002a4c <panic>
    80003878:	01053903          	ld	s2,16(a0)
    8000387c:	00050493          	mv	s1,a0
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	808080e7          	jalr	-2040(ra) # 80002088 <mycpu>
    80003888:	fea910e3          	bne	s2,a0,80003868 <release+0x20>
    8000388c:	0004b823          	sd	zero,16(s1)
    80003890:	0ff0000f          	fence
    80003894:	0f50000f          	fence	iorw,ow
    80003898:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	7ec080e7          	jalr	2028(ra) # 80002088 <mycpu>
    800038a4:	100027f3          	csrr	a5,sstatus
    800038a8:	0027f793          	andi	a5,a5,2
    800038ac:	04079a63          	bnez	a5,80003900 <release+0xb8>
    800038b0:	07852783          	lw	a5,120(a0)
    800038b4:	02f05e63          	blez	a5,800038f0 <release+0xa8>
    800038b8:	fff7871b          	addiw	a4,a5,-1
    800038bc:	06e52c23          	sw	a4,120(a0)
    800038c0:	00071c63          	bnez	a4,800038d8 <release+0x90>
    800038c4:	07c52783          	lw	a5,124(a0)
    800038c8:	00078863          	beqz	a5,800038d8 <release+0x90>
    800038cc:	100027f3          	csrr	a5,sstatus
    800038d0:	0027e793          	ori	a5,a5,2
    800038d4:	10079073          	csrw	sstatus,a5
    800038d8:	01813083          	ld	ra,24(sp)
    800038dc:	01013403          	ld	s0,16(sp)
    800038e0:	00813483          	ld	s1,8(sp)
    800038e4:	00013903          	ld	s2,0(sp)
    800038e8:	02010113          	addi	sp,sp,32
    800038ec:	00008067          	ret
    800038f0:	00002517          	auipc	a0,0x2
    800038f4:	93850513          	addi	a0,a0,-1736 # 80005228 <digits+0x48>
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	154080e7          	jalr	340(ra) # 80002a4c <panic>
    80003900:	00002517          	auipc	a0,0x2
    80003904:	91050513          	addi	a0,a0,-1776 # 80005210 <digits+0x30>
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	144080e7          	jalr	324(ra) # 80002a4c <panic>

0000000080003910 <holding>:
    80003910:	00052783          	lw	a5,0(a0)
    80003914:	00079663          	bnez	a5,80003920 <holding+0x10>
    80003918:	00000513          	li	a0,0
    8000391c:	00008067          	ret
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	01053483          	ld	s1,16(a0)
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	750080e7          	jalr	1872(ra) # 80002088 <mycpu>
    80003940:	01813083          	ld	ra,24(sp)
    80003944:	01013403          	ld	s0,16(sp)
    80003948:	40a48533          	sub	a0,s1,a0
    8000394c:	00153513          	seqz	a0,a0
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <push_off>:
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00813823          	sd	s0,16(sp)
    80003964:	00113c23          	sd	ra,24(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	02010413          	addi	s0,sp,32
    80003970:	100024f3          	csrr	s1,sstatus
    80003974:	100027f3          	csrr	a5,sstatus
    80003978:	ffd7f793          	andi	a5,a5,-3
    8000397c:	10079073          	csrw	sstatus,a5
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	708080e7          	jalr	1800(ra) # 80002088 <mycpu>
    80003988:	07852783          	lw	a5,120(a0)
    8000398c:	02078663          	beqz	a5,800039b8 <push_off+0x5c>
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	6f8080e7          	jalr	1784(ra) # 80002088 <mycpu>
    80003998:	07852783          	lw	a5,120(a0)
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	0017879b          	addiw	a5,a5,1
    800039a8:	06f52c23          	sw	a5,120(a0)
    800039ac:	00813483          	ld	s1,8(sp)
    800039b0:	02010113          	addi	sp,sp,32
    800039b4:	00008067          	ret
    800039b8:	0014d493          	srli	s1,s1,0x1
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	6cc080e7          	jalr	1740(ra) # 80002088 <mycpu>
    800039c4:	0014f493          	andi	s1,s1,1
    800039c8:	06952e23          	sw	s1,124(a0)
    800039cc:	fc5ff06f          	j	80003990 <push_off+0x34>

00000000800039d0 <pop_off>:
    800039d0:	ff010113          	addi	sp,sp,-16
    800039d4:	00813023          	sd	s0,0(sp)
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	01010413          	addi	s0,sp,16
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	6a8080e7          	jalr	1704(ra) # 80002088 <mycpu>
    800039e8:	100027f3          	csrr	a5,sstatus
    800039ec:	0027f793          	andi	a5,a5,2
    800039f0:	04079663          	bnez	a5,80003a3c <pop_off+0x6c>
    800039f4:	07852783          	lw	a5,120(a0)
    800039f8:	02f05a63          	blez	a5,80003a2c <pop_off+0x5c>
    800039fc:	fff7871b          	addiw	a4,a5,-1
    80003a00:	06e52c23          	sw	a4,120(a0)
    80003a04:	00071c63          	bnez	a4,80003a1c <pop_off+0x4c>
    80003a08:	07c52783          	lw	a5,124(a0)
    80003a0c:	00078863          	beqz	a5,80003a1c <pop_off+0x4c>
    80003a10:	100027f3          	csrr	a5,sstatus
    80003a14:	0027e793          	ori	a5,a5,2
    80003a18:	10079073          	csrw	sstatus,a5
    80003a1c:	00813083          	ld	ra,8(sp)
    80003a20:	00013403          	ld	s0,0(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret
    80003a2c:	00001517          	auipc	a0,0x1
    80003a30:	7fc50513          	addi	a0,a0,2044 # 80005228 <digits+0x48>
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	018080e7          	jalr	24(ra) # 80002a4c <panic>
    80003a3c:	00001517          	auipc	a0,0x1
    80003a40:	7d450513          	addi	a0,a0,2004 # 80005210 <digits+0x30>
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	008080e7          	jalr	8(ra) # 80002a4c <panic>

0000000080003a4c <push_on>:
    80003a4c:	fe010113          	addi	sp,sp,-32
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	00913423          	sd	s1,8(sp)
    80003a5c:	02010413          	addi	s0,sp,32
    80003a60:	100024f3          	csrr	s1,sstatus
    80003a64:	100027f3          	csrr	a5,sstatus
    80003a68:	0027e793          	ori	a5,a5,2
    80003a6c:	10079073          	csrw	sstatus,a5
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	618080e7          	jalr	1560(ra) # 80002088 <mycpu>
    80003a78:	07852783          	lw	a5,120(a0)
    80003a7c:	02078663          	beqz	a5,80003aa8 <push_on+0x5c>
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	608080e7          	jalr	1544(ra) # 80002088 <mycpu>
    80003a88:	07852783          	lw	a5,120(a0)
    80003a8c:	01813083          	ld	ra,24(sp)
    80003a90:	01013403          	ld	s0,16(sp)
    80003a94:	0017879b          	addiw	a5,a5,1
    80003a98:	06f52c23          	sw	a5,120(a0)
    80003a9c:	00813483          	ld	s1,8(sp)
    80003aa0:	02010113          	addi	sp,sp,32
    80003aa4:	00008067          	ret
    80003aa8:	0014d493          	srli	s1,s1,0x1
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	5dc080e7          	jalr	1500(ra) # 80002088 <mycpu>
    80003ab4:	0014f493          	andi	s1,s1,1
    80003ab8:	06952e23          	sw	s1,124(a0)
    80003abc:	fc5ff06f          	j	80003a80 <push_on+0x34>

0000000080003ac0 <pop_on>:
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00813023          	sd	s0,0(sp)
    80003ac8:	00113423          	sd	ra,8(sp)
    80003acc:	01010413          	addi	s0,sp,16
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	5b8080e7          	jalr	1464(ra) # 80002088 <mycpu>
    80003ad8:	100027f3          	csrr	a5,sstatus
    80003adc:	0027f793          	andi	a5,a5,2
    80003ae0:	04078463          	beqz	a5,80003b28 <pop_on+0x68>
    80003ae4:	07852783          	lw	a5,120(a0)
    80003ae8:	02f05863          	blez	a5,80003b18 <pop_on+0x58>
    80003aec:	fff7879b          	addiw	a5,a5,-1
    80003af0:	06f52c23          	sw	a5,120(a0)
    80003af4:	07853783          	ld	a5,120(a0)
    80003af8:	00079863          	bnez	a5,80003b08 <pop_on+0x48>
    80003afc:	100027f3          	csrr	a5,sstatus
    80003b00:	ffd7f793          	andi	a5,a5,-3
    80003b04:	10079073          	csrw	sstatus,a5
    80003b08:	00813083          	ld	ra,8(sp)
    80003b0c:	00013403          	ld	s0,0(sp)
    80003b10:	01010113          	addi	sp,sp,16
    80003b14:	00008067          	ret
    80003b18:	00001517          	auipc	a0,0x1
    80003b1c:	73850513          	addi	a0,a0,1848 # 80005250 <digits+0x70>
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	f2c080e7          	jalr	-212(ra) # 80002a4c <panic>
    80003b28:	00001517          	auipc	a0,0x1
    80003b2c:	70850513          	addi	a0,a0,1800 # 80005230 <digits+0x50>
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	f1c080e7          	jalr	-228(ra) # 80002a4c <panic>

0000000080003b38 <__memset>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	1a060e63          	beqz	a2,80003d00 <__memset+0x1c8>
    80003b48:	40a007b3          	neg	a5,a0
    80003b4c:	0077f793          	andi	a5,a5,7
    80003b50:	00778693          	addi	a3,a5,7
    80003b54:	00b00813          	li	a6,11
    80003b58:	0ff5f593          	andi	a1,a1,255
    80003b5c:	fff6071b          	addiw	a4,a2,-1
    80003b60:	1b06e663          	bltu	a3,a6,80003d0c <__memset+0x1d4>
    80003b64:	1cd76463          	bltu	a4,a3,80003d2c <__memset+0x1f4>
    80003b68:	1a078e63          	beqz	a5,80003d24 <__memset+0x1ec>
    80003b6c:	00b50023          	sb	a1,0(a0)
    80003b70:	00100713          	li	a4,1
    80003b74:	1ae78463          	beq	a5,a4,80003d1c <__memset+0x1e4>
    80003b78:	00b500a3          	sb	a1,1(a0)
    80003b7c:	00200713          	li	a4,2
    80003b80:	1ae78a63          	beq	a5,a4,80003d34 <__memset+0x1fc>
    80003b84:	00b50123          	sb	a1,2(a0)
    80003b88:	00300713          	li	a4,3
    80003b8c:	18e78463          	beq	a5,a4,80003d14 <__memset+0x1dc>
    80003b90:	00b501a3          	sb	a1,3(a0)
    80003b94:	00400713          	li	a4,4
    80003b98:	1ae78263          	beq	a5,a4,80003d3c <__memset+0x204>
    80003b9c:	00b50223          	sb	a1,4(a0)
    80003ba0:	00500713          	li	a4,5
    80003ba4:	1ae78063          	beq	a5,a4,80003d44 <__memset+0x20c>
    80003ba8:	00b502a3          	sb	a1,5(a0)
    80003bac:	00700713          	li	a4,7
    80003bb0:	18e79e63          	bne	a5,a4,80003d4c <__memset+0x214>
    80003bb4:	00b50323          	sb	a1,6(a0)
    80003bb8:	00700e93          	li	t4,7
    80003bbc:	00859713          	slli	a4,a1,0x8
    80003bc0:	00e5e733          	or	a4,a1,a4
    80003bc4:	01059e13          	slli	t3,a1,0x10
    80003bc8:	01c76e33          	or	t3,a4,t3
    80003bcc:	01859313          	slli	t1,a1,0x18
    80003bd0:	006e6333          	or	t1,t3,t1
    80003bd4:	02059893          	slli	a7,a1,0x20
    80003bd8:	40f60e3b          	subw	t3,a2,a5
    80003bdc:	011368b3          	or	a7,t1,a7
    80003be0:	02859813          	slli	a6,a1,0x28
    80003be4:	0108e833          	or	a6,a7,a6
    80003be8:	03059693          	slli	a3,a1,0x30
    80003bec:	003e589b          	srliw	a7,t3,0x3
    80003bf0:	00d866b3          	or	a3,a6,a3
    80003bf4:	03859713          	slli	a4,a1,0x38
    80003bf8:	00389813          	slli	a6,a7,0x3
    80003bfc:	00f507b3          	add	a5,a0,a5
    80003c00:	00e6e733          	or	a4,a3,a4
    80003c04:	000e089b          	sext.w	a7,t3
    80003c08:	00f806b3          	add	a3,a6,a5
    80003c0c:	00e7b023          	sd	a4,0(a5)
    80003c10:	00878793          	addi	a5,a5,8
    80003c14:	fed79ce3          	bne	a5,a3,80003c0c <__memset+0xd4>
    80003c18:	ff8e7793          	andi	a5,t3,-8
    80003c1c:	0007871b          	sext.w	a4,a5
    80003c20:	01d787bb          	addw	a5,a5,t4
    80003c24:	0ce88e63          	beq	a7,a4,80003d00 <__memset+0x1c8>
    80003c28:	00f50733          	add	a4,a0,a5
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0017871b          	addiw	a4,a5,1
    80003c34:	0cc77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0027871b          	addiw	a4,a5,2
    80003c44:	0ac77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0037871b          	addiw	a4,a5,3
    80003c54:	0ac77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0047871b          	addiw	a4,a5,4
    80003c64:	08c77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0057871b          	addiw	a4,a5,5
    80003c74:	08c77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0067871b          	addiw	a4,a5,6
    80003c84:	06c77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0077871b          	addiw	a4,a5,7
    80003c94:	06c77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	0087871b          	addiw	a4,a5,8
    80003ca4:	04c77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	0097871b          	addiw	a4,a5,9
    80003cb4:	04c77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	00a7871b          	addiw	a4,a5,10
    80003cc4:	02c77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	00b7871b          	addiw	a4,a5,11
    80003cd4:	02c77663          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	00c7871b          	addiw	a4,a5,12
    80003ce4:	00c77e63          	bgeu	a4,a2,80003d00 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	00d7879b          	addiw	a5,a5,13
    80003cf4:	00c7f663          	bgeu	a5,a2,80003d00 <__memset+0x1c8>
    80003cf8:	00f507b3          	add	a5,a0,a5
    80003cfc:	00b78023          	sb	a1,0(a5)
    80003d00:	00813403          	ld	s0,8(sp)
    80003d04:	01010113          	addi	sp,sp,16
    80003d08:	00008067          	ret
    80003d0c:	00b00693          	li	a3,11
    80003d10:	e55ff06f          	j	80003b64 <__memset+0x2c>
    80003d14:	00300e93          	li	t4,3
    80003d18:	ea5ff06f          	j	80003bbc <__memset+0x84>
    80003d1c:	00100e93          	li	t4,1
    80003d20:	e9dff06f          	j	80003bbc <__memset+0x84>
    80003d24:	00000e93          	li	t4,0
    80003d28:	e95ff06f          	j	80003bbc <__memset+0x84>
    80003d2c:	00000793          	li	a5,0
    80003d30:	ef9ff06f          	j	80003c28 <__memset+0xf0>
    80003d34:	00200e93          	li	t4,2
    80003d38:	e85ff06f          	j	80003bbc <__memset+0x84>
    80003d3c:	00400e93          	li	t4,4
    80003d40:	e7dff06f          	j	80003bbc <__memset+0x84>
    80003d44:	00500e93          	li	t4,5
    80003d48:	e75ff06f          	j	80003bbc <__memset+0x84>
    80003d4c:	00600e93          	li	t4,6
    80003d50:	e6dff06f          	j	80003bbc <__memset+0x84>

0000000080003d54 <__memmove>:
    80003d54:	ff010113          	addi	sp,sp,-16
    80003d58:	00813423          	sd	s0,8(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    80003d60:	0e060863          	beqz	a2,80003e50 <__memmove+0xfc>
    80003d64:	fff6069b          	addiw	a3,a2,-1
    80003d68:	0006881b          	sext.w	a6,a3
    80003d6c:	0ea5e863          	bltu	a1,a0,80003e5c <__memmove+0x108>
    80003d70:	00758713          	addi	a4,a1,7
    80003d74:	00a5e7b3          	or	a5,a1,a0
    80003d78:	40a70733          	sub	a4,a4,a0
    80003d7c:	0077f793          	andi	a5,a5,7
    80003d80:	00f73713          	sltiu	a4,a4,15
    80003d84:	00174713          	xori	a4,a4,1
    80003d88:	0017b793          	seqz	a5,a5
    80003d8c:	00e7f7b3          	and	a5,a5,a4
    80003d90:	10078863          	beqz	a5,80003ea0 <__memmove+0x14c>
    80003d94:	00900793          	li	a5,9
    80003d98:	1107f463          	bgeu	a5,a6,80003ea0 <__memmove+0x14c>
    80003d9c:	0036581b          	srliw	a6,a2,0x3
    80003da0:	fff8081b          	addiw	a6,a6,-1
    80003da4:	02081813          	slli	a6,a6,0x20
    80003da8:	01d85893          	srli	a7,a6,0x1d
    80003dac:	00858813          	addi	a6,a1,8
    80003db0:	00058793          	mv	a5,a1
    80003db4:	00050713          	mv	a4,a0
    80003db8:	01088833          	add	a6,a7,a6
    80003dbc:	0007b883          	ld	a7,0(a5)
    80003dc0:	00878793          	addi	a5,a5,8
    80003dc4:	00870713          	addi	a4,a4,8
    80003dc8:	ff173c23          	sd	a7,-8(a4)
    80003dcc:	ff0798e3          	bne	a5,a6,80003dbc <__memmove+0x68>
    80003dd0:	ff867713          	andi	a4,a2,-8
    80003dd4:	02071793          	slli	a5,a4,0x20
    80003dd8:	0207d793          	srli	a5,a5,0x20
    80003ddc:	00f585b3          	add	a1,a1,a5
    80003de0:	40e686bb          	subw	a3,a3,a4
    80003de4:	00f507b3          	add	a5,a0,a5
    80003de8:	06e60463          	beq	a2,a4,80003e50 <__memmove+0xfc>
    80003dec:	0005c703          	lbu	a4,0(a1)
    80003df0:	00e78023          	sb	a4,0(a5)
    80003df4:	04068e63          	beqz	a3,80003e50 <__memmove+0xfc>
    80003df8:	0015c603          	lbu	a2,1(a1)
    80003dfc:	00100713          	li	a4,1
    80003e00:	00c780a3          	sb	a2,1(a5)
    80003e04:	04e68663          	beq	a3,a4,80003e50 <__memmove+0xfc>
    80003e08:	0025c603          	lbu	a2,2(a1)
    80003e0c:	00200713          	li	a4,2
    80003e10:	00c78123          	sb	a2,2(a5)
    80003e14:	02e68e63          	beq	a3,a4,80003e50 <__memmove+0xfc>
    80003e18:	0035c603          	lbu	a2,3(a1)
    80003e1c:	00300713          	li	a4,3
    80003e20:	00c781a3          	sb	a2,3(a5)
    80003e24:	02e68663          	beq	a3,a4,80003e50 <__memmove+0xfc>
    80003e28:	0045c603          	lbu	a2,4(a1)
    80003e2c:	00400713          	li	a4,4
    80003e30:	00c78223          	sb	a2,4(a5)
    80003e34:	00e68e63          	beq	a3,a4,80003e50 <__memmove+0xfc>
    80003e38:	0055c603          	lbu	a2,5(a1)
    80003e3c:	00500713          	li	a4,5
    80003e40:	00c782a3          	sb	a2,5(a5)
    80003e44:	00e68663          	beq	a3,a4,80003e50 <__memmove+0xfc>
    80003e48:	0065c703          	lbu	a4,6(a1)
    80003e4c:	00e78323          	sb	a4,6(a5)
    80003e50:	00813403          	ld	s0,8(sp)
    80003e54:	01010113          	addi	sp,sp,16
    80003e58:	00008067          	ret
    80003e5c:	02061713          	slli	a4,a2,0x20
    80003e60:	02075713          	srli	a4,a4,0x20
    80003e64:	00e587b3          	add	a5,a1,a4
    80003e68:	f0f574e3          	bgeu	a0,a5,80003d70 <__memmove+0x1c>
    80003e6c:	02069613          	slli	a2,a3,0x20
    80003e70:	02065613          	srli	a2,a2,0x20
    80003e74:	fff64613          	not	a2,a2
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00c78633          	add	a2,a5,a2
    80003e80:	fff7c683          	lbu	a3,-1(a5)
    80003e84:	fff78793          	addi	a5,a5,-1
    80003e88:	fff70713          	addi	a4,a4,-1
    80003e8c:	00d70023          	sb	a3,0(a4)
    80003e90:	fec798e3          	bne	a5,a2,80003e80 <__memmove+0x12c>
    80003e94:	00813403          	ld	s0,8(sp)
    80003e98:	01010113          	addi	sp,sp,16
    80003e9c:	00008067          	ret
    80003ea0:	02069713          	slli	a4,a3,0x20
    80003ea4:	02075713          	srli	a4,a4,0x20
    80003ea8:	00170713          	addi	a4,a4,1
    80003eac:	00e50733          	add	a4,a0,a4
    80003eb0:	00050793          	mv	a5,a0
    80003eb4:	0005c683          	lbu	a3,0(a1)
    80003eb8:	00178793          	addi	a5,a5,1
    80003ebc:	00158593          	addi	a1,a1,1
    80003ec0:	fed78fa3          	sb	a3,-1(a5)
    80003ec4:	fee798e3          	bne	a5,a4,80003eb4 <__memmove+0x160>
    80003ec8:	f89ff06f          	j	80003e50 <__memmove+0xfc>

0000000080003ecc <__mem_free>:
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00002597          	auipc	a1,0x2
    80003edc:	a5058593          	addi	a1,a1,-1456 # 80005928 <freep>
    80003ee0:	0005b783          	ld	a5,0(a1)
    80003ee4:	ff050693          	addi	a3,a0,-16
    80003ee8:	0007b703          	ld	a4,0(a5)
    80003eec:	00d7fc63          	bgeu	a5,a3,80003f04 <__mem_free+0x38>
    80003ef0:	00e6ee63          	bltu	a3,a4,80003f0c <__mem_free+0x40>
    80003ef4:	00e7fc63          	bgeu	a5,a4,80003f0c <__mem_free+0x40>
    80003ef8:	00070793          	mv	a5,a4
    80003efc:	0007b703          	ld	a4,0(a5)
    80003f00:	fed7e8e3          	bltu	a5,a3,80003ef0 <__mem_free+0x24>
    80003f04:	fee7eae3          	bltu	a5,a4,80003ef8 <__mem_free+0x2c>
    80003f08:	fee6f8e3          	bgeu	a3,a4,80003ef8 <__mem_free+0x2c>
    80003f0c:	ff852803          	lw	a6,-8(a0)
    80003f10:	02081613          	slli	a2,a6,0x20
    80003f14:	01c65613          	srli	a2,a2,0x1c
    80003f18:	00c68633          	add	a2,a3,a2
    80003f1c:	02c70a63          	beq	a4,a2,80003f50 <__mem_free+0x84>
    80003f20:	fee53823          	sd	a4,-16(a0)
    80003f24:	0087a503          	lw	a0,8(a5)
    80003f28:	02051613          	slli	a2,a0,0x20
    80003f2c:	01c65613          	srli	a2,a2,0x1c
    80003f30:	00c78633          	add	a2,a5,a2
    80003f34:	04c68263          	beq	a3,a2,80003f78 <__mem_free+0xac>
    80003f38:	00813403          	ld	s0,8(sp)
    80003f3c:	00d7b023          	sd	a3,0(a5)
    80003f40:	00f5b023          	sd	a5,0(a1)
    80003f44:	00000513          	li	a0,0
    80003f48:	01010113          	addi	sp,sp,16
    80003f4c:	00008067          	ret
    80003f50:	00872603          	lw	a2,8(a4)
    80003f54:	00073703          	ld	a4,0(a4)
    80003f58:	0106083b          	addw	a6,a2,a6
    80003f5c:	ff052c23          	sw	a6,-8(a0)
    80003f60:	fee53823          	sd	a4,-16(a0)
    80003f64:	0087a503          	lw	a0,8(a5)
    80003f68:	02051613          	slli	a2,a0,0x20
    80003f6c:	01c65613          	srli	a2,a2,0x1c
    80003f70:	00c78633          	add	a2,a5,a2
    80003f74:	fcc692e3          	bne	a3,a2,80003f38 <__mem_free+0x6c>
    80003f78:	00813403          	ld	s0,8(sp)
    80003f7c:	0105053b          	addw	a0,a0,a6
    80003f80:	00a7a423          	sw	a0,8(a5)
    80003f84:	00e7b023          	sd	a4,0(a5)
    80003f88:	00f5b023          	sd	a5,0(a1)
    80003f8c:	00000513          	li	a0,0
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <__mem_alloc>:
    80003f98:	fc010113          	addi	sp,sp,-64
    80003f9c:	02813823          	sd	s0,48(sp)
    80003fa0:	02913423          	sd	s1,40(sp)
    80003fa4:	03213023          	sd	s2,32(sp)
    80003fa8:	01513423          	sd	s5,8(sp)
    80003fac:	02113c23          	sd	ra,56(sp)
    80003fb0:	01313c23          	sd	s3,24(sp)
    80003fb4:	01413823          	sd	s4,16(sp)
    80003fb8:	01613023          	sd	s6,0(sp)
    80003fbc:	04010413          	addi	s0,sp,64
    80003fc0:	00002a97          	auipc	s5,0x2
    80003fc4:	968a8a93          	addi	s5,s5,-1688 # 80005928 <freep>
    80003fc8:	00f50913          	addi	s2,a0,15
    80003fcc:	000ab683          	ld	a3,0(s5)
    80003fd0:	00495913          	srli	s2,s2,0x4
    80003fd4:	0019049b          	addiw	s1,s2,1
    80003fd8:	00048913          	mv	s2,s1
    80003fdc:	0c068c63          	beqz	a3,800040b4 <__mem_alloc+0x11c>
    80003fe0:	0006b503          	ld	a0,0(a3)
    80003fe4:	00852703          	lw	a4,8(a0)
    80003fe8:	10977063          	bgeu	a4,s1,800040e8 <__mem_alloc+0x150>
    80003fec:	000017b7          	lui	a5,0x1
    80003ff0:	0009099b          	sext.w	s3,s2
    80003ff4:	0af4e863          	bltu	s1,a5,800040a4 <__mem_alloc+0x10c>
    80003ff8:	02099a13          	slli	s4,s3,0x20
    80003ffc:	01ca5a13          	srli	s4,s4,0x1c
    80004000:	fff00b13          	li	s6,-1
    80004004:	0100006f          	j	80004014 <__mem_alloc+0x7c>
    80004008:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000400c:	00852703          	lw	a4,8(a0)
    80004010:	04977463          	bgeu	a4,s1,80004058 <__mem_alloc+0xc0>
    80004014:	00050793          	mv	a5,a0
    80004018:	fea698e3          	bne	a3,a0,80004008 <__mem_alloc+0x70>
    8000401c:	000a0513          	mv	a0,s4
    80004020:	00000097          	auipc	ra,0x0
    80004024:	1f0080e7          	jalr	496(ra) # 80004210 <kvmincrease>
    80004028:	00050793          	mv	a5,a0
    8000402c:	01050513          	addi	a0,a0,16
    80004030:	07678e63          	beq	a5,s6,800040ac <__mem_alloc+0x114>
    80004034:	0137a423          	sw	s3,8(a5)
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	e94080e7          	jalr	-364(ra) # 80003ecc <__mem_free>
    80004040:	000ab783          	ld	a5,0(s5)
    80004044:	06078463          	beqz	a5,800040ac <__mem_alloc+0x114>
    80004048:	0007b503          	ld	a0,0(a5)
    8000404c:	00078693          	mv	a3,a5
    80004050:	00852703          	lw	a4,8(a0)
    80004054:	fc9760e3          	bltu	a4,s1,80004014 <__mem_alloc+0x7c>
    80004058:	08e48263          	beq	s1,a4,800040dc <__mem_alloc+0x144>
    8000405c:	4127073b          	subw	a4,a4,s2
    80004060:	02071693          	slli	a3,a4,0x20
    80004064:	01c6d693          	srli	a3,a3,0x1c
    80004068:	00e52423          	sw	a4,8(a0)
    8000406c:	00d50533          	add	a0,a0,a3
    80004070:	01252423          	sw	s2,8(a0)
    80004074:	00fab023          	sd	a5,0(s5)
    80004078:	01050513          	addi	a0,a0,16
    8000407c:	03813083          	ld	ra,56(sp)
    80004080:	03013403          	ld	s0,48(sp)
    80004084:	02813483          	ld	s1,40(sp)
    80004088:	02013903          	ld	s2,32(sp)
    8000408c:	01813983          	ld	s3,24(sp)
    80004090:	01013a03          	ld	s4,16(sp)
    80004094:	00813a83          	ld	s5,8(sp)
    80004098:	00013b03          	ld	s6,0(sp)
    8000409c:	04010113          	addi	sp,sp,64
    800040a0:	00008067          	ret
    800040a4:	000019b7          	lui	s3,0x1
    800040a8:	f51ff06f          	j	80003ff8 <__mem_alloc+0x60>
    800040ac:	00000513          	li	a0,0
    800040b0:	fcdff06f          	j	8000407c <__mem_alloc+0xe4>
    800040b4:	00003797          	auipc	a5,0x3
    800040b8:	b0c78793          	addi	a5,a5,-1268 # 80006bc0 <base>
    800040bc:	00078513          	mv	a0,a5
    800040c0:	00fab023          	sd	a5,0(s5)
    800040c4:	00f7b023          	sd	a5,0(a5)
    800040c8:	00000713          	li	a4,0
    800040cc:	00003797          	auipc	a5,0x3
    800040d0:	ae07ae23          	sw	zero,-1284(a5) # 80006bc8 <base+0x8>
    800040d4:	00050693          	mv	a3,a0
    800040d8:	f11ff06f          	j	80003fe8 <__mem_alloc+0x50>
    800040dc:	00053703          	ld	a4,0(a0)
    800040e0:	00e7b023          	sd	a4,0(a5)
    800040e4:	f91ff06f          	j	80004074 <__mem_alloc+0xdc>
    800040e8:	00068793          	mv	a5,a3
    800040ec:	f6dff06f          	j	80004058 <__mem_alloc+0xc0>

00000000800040f0 <__putc>:
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	02010413          	addi	s0,sp,32
    80004100:	00050793          	mv	a5,a0
    80004104:	fef40593          	addi	a1,s0,-17
    80004108:	00100613          	li	a2,1
    8000410c:	00000513          	li	a0,0
    80004110:	fef407a3          	sb	a5,-17(s0)
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	918080e7          	jalr	-1768(ra) # 80002a2c <console_write>
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	02010113          	addi	sp,sp,32
    80004128:	00008067          	ret

000000008000412c <__getc>:
    8000412c:	fe010113          	addi	sp,sp,-32
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00113c23          	sd	ra,24(sp)
    80004138:	02010413          	addi	s0,sp,32
    8000413c:	fe840593          	addi	a1,s0,-24
    80004140:	00100613          	li	a2,1
    80004144:	00000513          	li	a0,0
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	8c4080e7          	jalr	-1852(ra) # 80002a0c <console_read>
    80004150:	fe844503          	lbu	a0,-24(s0)
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret

0000000080004164 <console_handler>:
    80004164:	fe010113          	addi	sp,sp,-32
    80004168:	00813823          	sd	s0,16(sp)
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	00913423          	sd	s1,8(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	14202773          	csrr	a4,scause
    8000417c:	100027f3          	csrr	a5,sstatus
    80004180:	0027f793          	andi	a5,a5,2
    80004184:	06079e63          	bnez	a5,80004200 <console_handler+0x9c>
    80004188:	00074c63          	bltz	a4,800041a0 <console_handler+0x3c>
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret
    800041a0:	0ff77713          	andi	a4,a4,255
    800041a4:	00900793          	li	a5,9
    800041a8:	fef712e3          	bne	a4,a5,8000418c <console_handler+0x28>
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	4b8080e7          	jalr	1208(ra) # 80002664 <plic_claim>
    800041b4:	00a00793          	li	a5,10
    800041b8:	00050493          	mv	s1,a0
    800041bc:	02f50c63          	beq	a0,a5,800041f4 <console_handler+0x90>
    800041c0:	fc0506e3          	beqz	a0,8000418c <console_handler+0x28>
    800041c4:	00050593          	mv	a1,a0
    800041c8:	00001517          	auipc	a0,0x1
    800041cc:	f9050513          	addi	a0,a0,-112 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    800041d0:	fffff097          	auipc	ra,0xfffff
    800041d4:	8d8080e7          	jalr	-1832(ra) # 80002aa8 <__printf>
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	00048513          	mv	a0,s1
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	ffffe317          	auipc	t1,0xffffe
    800041f0:	4b030067          	jr	1200(t1) # 8000269c <plic_complete>
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	1bc080e7          	jalr	444(ra) # 800033b0 <uartintr>
    800041fc:	fddff06f          	j	800041d8 <console_handler+0x74>
    80004200:	00001517          	auipc	a0,0x1
    80004204:	05850513          	addi	a0,a0,88 # 80005258 <digits+0x78>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	844080e7          	jalr	-1980(ra) # 80002a4c <panic>

0000000080004210 <kvmincrease>:
    80004210:	fe010113          	addi	sp,sp,-32
    80004214:	01213023          	sd	s2,0(sp)
    80004218:	00001937          	lui	s2,0x1
    8000421c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004220:	00813823          	sd	s0,16(sp)
    80004224:	00113c23          	sd	ra,24(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	02010413          	addi	s0,sp,32
    80004230:	01250933          	add	s2,a0,s2
    80004234:	00c95913          	srli	s2,s2,0xc
    80004238:	02090863          	beqz	s2,80004268 <kvmincrease+0x58>
    8000423c:	00000493          	li	s1,0
    80004240:	00148493          	addi	s1,s1,1
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	4bc080e7          	jalr	1212(ra) # 80003700 <kalloc>
    8000424c:	fe991ae3          	bne	s2,s1,80004240 <kvmincrease+0x30>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	00013903          	ld	s2,0(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret
    80004268:	01813083          	ld	ra,24(sp)
    8000426c:	01013403          	ld	s0,16(sp)
    80004270:	00813483          	ld	s1,8(sp)
    80004274:	00013903          	ld	s2,0(sp)
    80004278:	00000513          	li	a0,0
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret
	...

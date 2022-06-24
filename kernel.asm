
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	91013103          	ld	sp,-1776(sp) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	691010ef          	jal	ra,80001eac <start>

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
    80001080:	3ed000ef          	jal	ra,80001c6c <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000115c:	bd8080e7          	jalr	-1064(ra) # 80001d30 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000118c:	7f870713          	addi	a4,a4,2040 # 80005980 <_ZN7_thread8globalIdE>
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
    800011e8:	57c080e7          	jalr	1404(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
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
    running->body(running->arg);   //call the function with argument arg
    80001240:	00004497          	auipc	s1,0x4
    80001244:	74048493          	addi	s1,s1,1856 # 80005980 <_ZN7_thread8globalIdE>
    80001248:	0084b783          	ld	a5,8(s1)
    8000124c:	0007b703          	ld	a4,0(a5)
    80001250:	0307b503          	ld	a0,48(a5)
    80001254:	000700e7          	jalr	a4
    running->setFinished(true);
    80001258:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

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
    80001298:	6f44b483          	ld	s1,1780(s1) # 80005988 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    8000129c:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a0:	02078c63          	beqz	a5,800012d8 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	454080e7          	jalr	1108(ra) # 800016f8 <_ZN9Scheduler3getEv>
    800012ac:	00004797          	auipc	a5,0x4
    800012b0:	6ca7be23          	sd	a0,1756(a5) # 80005988 <_ZN7_thread7runningE>
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
    800012e0:	484080e7          	jalr	1156(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
    800012e4:	fc1ff06f          	j	800012a4 <_ZN7_thread8dispatchEv+0x24>

00000000800012e8 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	a38080e7          	jalr	-1480(ra) # 80001d30 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001324:	a10080e7          	jalr	-1520(ra) # 80001d30 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000134c:	a10080e7          	jalr	-1520(ra) # 80001d58 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013c4:	6b8080e7          	jalr	1720(ra) # 80006a78 <_Unwind_Resume>
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
    800013fc:	960080e7          	jalr	-1696(ra) # 80001d58 <_ZN15MemoryAllocator9kmem_freeEPv>
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

0000000080001520 <_Z11thread_exitv>:

int thread_exit (){
    80001520:	fd010113          	addi	sp,sp,-48
    80001524:	02113423          	sd	ra,40(sp)
    80001528:	02813023          	sd	s0,32(sp)
    8000152c:	03010413          	addi	s0,sp,48
    args myArgs;
    myArgs.a0=0x12;
    80001530:	01200793          	li	a5,18
    80001534:	fcf43823          	sd	a5,-48(s0)

    syscall(&myArgs);
    80001538:	fd040513          	addi	a0,s0,-48
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	ed4080e7          	jalr	-300(ra) # 80001410 <_Z7syscallP4args>

    return 0;
}
    80001544:	00000513          	li	a0,0
    80001548:	02813083          	ld	ra,40(sp)
    8000154c:	02013403          	ld	s0,32(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret

0000000080001558 <_Z15thread_dispatchv>:


void thread_dispatch (){
    80001558:	fd010113          	addi	sp,sp,-48
    8000155c:	02113423          	sd	ra,40(sp)
    80001560:	02813023          	sd	s0,32(sp)
    80001564:	03010413          	addi	s0,sp,48
    args myArgs;
    myArgs.a0=0x13;
    80001568:	01300793          	li	a5,19
    8000156c:	fcf43823          	sd	a5,-48(s0)

    syscall(&myArgs);
    80001570:	fd040513          	addi	a0,s0,-48
    80001574:	00000097          	auipc	ra,0x0
    80001578:	e9c080e7          	jalr	-356(ra) # 80001410 <_Z7syscallP4args>


}
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	03010113          	addi	sp,sp,48
    80001588:	00008067          	ret

000000008000158c <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	00913423          	sd	s1,8(sp)
    8000159c:	01213023          	sd	s2,0(sp)
    800015a0:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    800015a4:	00004797          	auipc	a5,0x4
    800015a8:	3647b783          	ld	a5,868(a5) # 80005908 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015ac:	10579073          	csrw	stvec,a5
//    }
//    else{
//        printString("not freed \n");
//    }

    _thread* main = _thread::createThread(nullptr, nullptr);
    800015b0:	00000593          	li	a1,0
    800015b4:	00000513          	li	a0,0
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	da8080e7          	jalr	-600(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    800015c0:	00050493          	mv	s1,a0
    main->start();
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	c08080e7          	jalr	-1016(ra) # 800011cc <_ZN7_thread5startEv>
    _thread::running=main;
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	3347b783          	ld	a5,820(a5) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015d4:	0097b023          	sd	s1,0(a5)

    _thread* t1 = _thread::createThread(workerBodyA, nullptr);
    800015d8:	00000593          	li	a1,0
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	33c53503          	ld	a0,828(a0) # 80005918 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	d7c080e7          	jalr	-644(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    800015ec:	00050493          	mv	s1,a0
    if(t1 != nullptr){
    800015f0:	04050e63          	beqz	a0,8000164c <main+0xc0>
        printString("thread created \n");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	a0c50513          	addi	a0,a0,-1524 # 80005000 <kvmincrease+0xd50>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	784080e7          	jalr	1924(ra) # 80001d80 <_Z11printStringPKc>
    } else{
        printString("error \n");
    }


    t1->start();
    80001604:	00048513          	mv	a0,s1
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	bc4080e7          	jalr	-1084(ra) # 800011cc <_ZN7_thread5startEv>

    _thread* t2 = _thread::createThread(workerBodyB, nullptr);
    80001610:	00000593          	li	a1,0
    80001614:	00004517          	auipc	a0,0x4
    80001618:	30c53503          	ld	a0,780(a0) # 80005920 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	d44080e7          	jalr	-700(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
    80001624:	00050913          	mv	s2,a0
    if(t2 != nullptr){
    80001628:	02050c63          	beqz	a0,80001660 <main+0xd4>
        printString("thread created \n");
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	9d450513          	addi	a0,a0,-1580 # 80005000 <kvmincrease+0xd50>
    80001634:	00000097          	auipc	ra,0x0
    80001638:	74c080e7          	jalr	1868(ra) # 80001d80 <_Z11printStringPKc>
    } else{
        printString("error \n");
    }
    t2->start();
    8000163c:	00090513          	mv	a0,s2
    80001640:	00000097          	auipc	ra,0x0
    80001644:	b8c080e7          	jalr	-1140(ra) # 800011cc <_ZN7_thread5startEv>
    80001648:	0340006f          	j	8000167c <main+0xf0>
        printString("error \n");
    8000164c:	00004517          	auipc	a0,0x4
    80001650:	9cc50513          	addi	a0,a0,-1588 # 80005018 <kvmincrease+0xd68>
    80001654:	00000097          	auipc	ra,0x0
    80001658:	72c080e7          	jalr	1836(ra) # 80001d80 <_Z11printStringPKc>
    8000165c:	fa9ff06f          	j	80001604 <main+0x78>
        printString("error \n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	9b850513          	addi	a0,a0,-1608 # 80005018 <kvmincrease+0xd68>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	718080e7          	jalr	1816(ra) # 80001d80 <_Z11printStringPKc>
    80001670:	fcdff06f          	j	8000163c <main+0xb0>
//    if(!ret){
//        printString("thread exited");
//    }

    while(!(t1->isFinished() && t2->isFinished())){
        _thread::yield();
    80001674:	00000097          	auipc	ra,0x0
    80001678:	b8c080e7          	jalr	-1140(ra) # 80001200 <_ZN7_thread5yieldEv>
    8000167c:	0284c783          	lbu	a5,40(s1)
    while(!(t1->isFinished() && t2->isFinished())){
    80001680:	fe078ae3          	beqz	a5,80001674 <main+0xe8>
    80001684:	02894783          	lbu	a5,40(s2)
    80001688:	fe0786e3          	beqz	a5,80001674 <main+0xe8>
    //memory leak without delete
//    delete main;
//    delete t1;
//    delete t2;

    printString("finished \n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	99450513          	addi	a0,a0,-1644 # 80005020 <kvmincrease+0xd70>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	6ec080e7          	jalr	1772(ra) # 80001d80 <_Z11printStringPKc>

    return 0;
}
    8000169c:	00000513          	li	a0,0
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	00013903          	ld	s2,0(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16
    800016c4:	00100793          	li	a5,1
    800016c8:	00f50863          	beq	a0,a5,800016d8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret
    800016d8:	000107b7          	lui	a5,0x10
    800016dc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016e0:	fef596e3          	bne	a1,a5,800016cc <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800016e4:	00004797          	auipc	a5,0x4
    800016e8:	2b478793          	addi	a5,a5,692 # 80005998 <_ZN9Scheduler16readyThreadQueueE>
    800016ec:	0007b023          	sd	zero,0(a5)
    800016f0:	0007b423          	sd	zero,8(a5)
    800016f4:	fd9ff06f          	j	800016cc <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800016f8 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000170c:	00004517          	auipc	a0,0x4
    80001710:	28c53503          	ld	a0,652(a0) # 80005998 <_ZN9Scheduler16readyThreadQueueE>
    80001714:	04050263          	beqz	a0,80001758 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001718:	00853783          	ld	a5,8(a0)
    8000171c:	00004717          	auipc	a4,0x4
    80001720:	26f73e23          	sd	a5,636(a4) # 80005998 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001724:	02078463          	beqz	a5,8000174c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001728:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	62c080e7          	jalr	1580(ra) # 80001d58 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001734:	00048513          	mv	a0,s1
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	00813483          	ld	s1,8(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret
        if (!head) { tail = 0; }
    8000174c:	00004797          	auipc	a5,0x4
    80001750:	2407ba23          	sd	zero,596(a5) # 800059a0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001754:	fd5ff06f          	j	80001728 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001758:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000175c:	fd9ff06f          	j	80001734 <_ZN9Scheduler3getEv+0x3c>

0000000080001760 <_ZN9Scheduler3putEP7_thread>:
{
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00113c23          	sd	ra,24(sp)
    80001768:	00813823          	sd	s0,16(sp)
    8000176c:	00913423          	sd	s1,8(sp)
    80001770:	02010413          	addi	s0,sp,32
    80001774:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001778:	01000513          	li	a0,16
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	5b4080e7          	jalr	1460(ra) # 80001d30 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001784:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001788:	00053423          	sd	zero,8(a0)
        if (tail)
    8000178c:	00004797          	auipc	a5,0x4
    80001790:	2147b783          	ld	a5,532(a5) # 800059a0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001794:	02078263          	beqz	a5,800017b8 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001798:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000179c:	00004797          	auipc	a5,0x4
    800017a0:	20a7b223          	sd	a0,516(a5) # 800059a0 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800017a4:	01813083          	ld	ra,24(sp)
    800017a8:	01013403          	ld	s0,16(sp)
    800017ac:	00813483          	ld	s1,8(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret
            head = tail = elem;
    800017b8:	00004797          	auipc	a5,0x4
    800017bc:	1e078793          	addi	a5,a5,480 # 80005998 <_ZN9Scheduler16readyThreadQueueE>
    800017c0:	00a7b423          	sd	a0,8(a5)
    800017c4:	00a7b023          	sd	a0,0(a5)
    800017c8:	fddff06f          	j	800017a4 <_ZN9Scheduler3putEP7_thread+0x44>

00000000800017cc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	00813023          	sd	s0,0(sp)
    800017d8:	01010413          	addi	s0,sp,16
    800017dc:	000105b7          	lui	a1,0x10
    800017e0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017e4:	00100513          	li	a0,1
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	ed0080e7          	jalr	-304(ra) # 800016b8 <_Z41__static_initialization_and_destruction_0ii>
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00113423          	sd	ra,8(sp)
    80001808:	00813023          	sd	s0,0(sp)
    8000180c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001810:	00000097          	auipc	ra,0x0
    80001814:	c3c080e7          	jalr	-964(ra) # 8000144c <_Z9mem_allocm>
}
    80001818:	00813083          	ld	ra,8(sp)
    8000181c:	00013403          	ld	s0,0(sp)
    80001820:	01010113          	addi	sp,sp,16
    80001824:	00008067          	ret

0000000080001828 <_Znam>:

void* operator new[](size_t n){
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00113423          	sd	ra,8(sp)
    80001830:	00813023          	sd	s0,0(sp)
    80001834:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	c14080e7          	jalr	-1004(ra) # 8000144c <_Z9mem_allocm>
}
    80001840:	00813083          	ld	ra,8(sp)
    80001844:	00013403          	ld	s0,0(sp)
    80001848:	01010113          	addi	sp,sp,16
    8000184c:	00008067          	ret

0000000080001850 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00113423          	sd	ra,8(sp)
    80001858:	00813023          	sd	s0,0(sp)
    8000185c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001860:	00000097          	auipc	ra,0x0
    80001864:	c38080e7          	jalr	-968(ra) # 80001498 <_Z8mem_freePv>
}
    80001868:	00813083          	ld	ra,8(sp)
    8000186c:	00013403          	ld	s0,0(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00113423          	sd	ra,8(sp)
    80001880:	00813023          	sd	s0,0(sp)
    80001884:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	c10080e7          	jalr	-1008(ra) # 80001498 <_Z8mem_freePv>

}
    80001890:	00813083          	ld	ra,8(sp)
    80001894:	00013403          	ld	s0,0(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00113c23          	sd	ra,24(sp)
    800018a8:	00813823          	sd	s0,16(sp)
    800018ac:	00913423          	sd	s1,8(sp)
    800018b0:	01213023          	sd	s2,0(sp)
    800018b4:	02010413          	addi	s0,sp,32
    800018b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800018bc:	00100793          	li	a5,1
    800018c0:	02a7f663          	bgeu	a5,a0,800018ec <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    800018c4:	00357793          	andi	a5,a0,3
    800018c8:	02078e63          	beqz	a5,80001904 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800018cc:	fff48513          	addi	a0,s1,-1
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	fd0080e7          	jalr	-48(ra) # 800018a0 <_ZL9fibonaccim>
    800018d8:	00050913          	mv	s2,a0
    800018dc:	ffe48513          	addi	a0,s1,-2
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	fc0080e7          	jalr	-64(ra) # 800018a0 <_ZL9fibonaccim>
    800018e8:	00a90533          	add	a0,s2,a0
}
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	00013903          	ld	s2,0(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    80001904:	00000097          	auipc	ra,0x0
    80001908:	8fc080e7          	jalr	-1796(ra) # 80001200 <_ZN7_thread5yieldEv>
    8000190c:	fc1ff06f          	j	800018cc <_ZL9fibonaccim+0x2c>

0000000080001910 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	01213023          	sd	s2,0(sp)
    80001924:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001928:	00000493          	li	s1,0
    8000192c:	0380006f          	j	80001964 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001930:	00003517          	auipc	a0,0x3
    80001934:	70050513          	addi	a0,a0,1792 # 80005030 <kvmincrease+0xd80>
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	448080e7          	jalr	1096(ra) # 80001d80 <_Z11printStringPKc>
        printInteger(i);
    80001940:	00048513          	mv	a0,s1
    80001944:	00000097          	auipc	ra,0x0
    80001948:	4ac080e7          	jalr	1196(ra) # 80001df0 <_Z12printIntegerm>
        printString("\n");
    8000194c:	00003517          	auipc	a0,0x3
    80001950:	6f450513          	addi	a0,a0,1780 # 80005040 <kvmincrease+0xd90>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	42c080e7          	jalr	1068(ra) # 80001d80 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000195c:	0014849b          	addiw	s1,s1,1
    80001960:	0ff4f493          	andi	s1,s1,255
    80001964:	00200793          	li	a5,2
    80001968:	fc97f4e3          	bgeu	a5,s1,80001930 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    8000196c:	00003517          	auipc	a0,0x3
    80001970:	6cc50513          	addi	a0,a0,1740 # 80005038 <kvmincrease+0xd88>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	40c080e7          	jalr	1036(ra) # 80001d80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000197c:	00700313          	li	t1,7
    _thread::yield();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	880080e7          	jalr	-1920(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001988:	00030913          	mv	s2,t1

    printString("A: t1=");
    8000198c:	00003517          	auipc	a0,0x3
    80001990:	6bc50513          	addi	a0,a0,1724 # 80005048 <kvmincrease+0xd98>
    80001994:	00000097          	auipc	ra,0x0
    80001998:	3ec080e7          	jalr	1004(ra) # 80001d80 <_Z11printStringPKc>
    printInteger(t1);
    8000199c:	00090513          	mv	a0,s2
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	450080e7          	jalr	1104(ra) # 80001df0 <_Z12printIntegerm>
    printString("\n");
    800019a8:	00003517          	auipc	a0,0x3
    800019ac:	69850513          	addi	a0,a0,1688 # 80005040 <kvmincrease+0xd90>
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	3d0080e7          	jalr	976(ra) # 80001d80 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800019b8:	01400513          	li	a0,20
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	ee4080e7          	jalr	-284(ra) # 800018a0 <_ZL9fibonaccim>
    800019c4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019c8:	00003517          	auipc	a0,0x3
    800019cc:	68850513          	addi	a0,a0,1672 # 80005050 <kvmincrease+0xda0>
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	3b0080e7          	jalr	944(ra) # 80001d80 <_Z11printStringPKc>
    printInteger(result);
    800019d8:	00090513          	mv	a0,s2
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	414080e7          	jalr	1044(ra) # 80001df0 <_Z12printIntegerm>
    printString("\n");
    800019e4:	00003517          	auipc	a0,0x3
    800019e8:	65c50513          	addi	a0,a0,1628 # 80005040 <kvmincrease+0xd90>
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	394080e7          	jalr	916(ra) # 80001d80 <_Z11printStringPKc>
    800019f4:	0380006f          	j	80001a2c <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019f8:	00003517          	auipc	a0,0x3
    800019fc:	63850513          	addi	a0,a0,1592 # 80005030 <kvmincrease+0xd80>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	380080e7          	jalr	896(ra) # 80001d80 <_Z11printStringPKc>
        printInteger(i);
    80001a08:	00048513          	mv	a0,s1
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	3e4080e7          	jalr	996(ra) # 80001df0 <_Z12printIntegerm>
        printString("\n");
    80001a14:	00003517          	auipc	a0,0x3
    80001a18:	62c50513          	addi	a0,a0,1580 # 80005040 <kvmincrease+0xd90>
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	364080e7          	jalr	868(ra) # 80001d80 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001a24:	0014849b          	addiw	s1,s1,1
    80001a28:	0ff4f493          	andi	s1,s1,255
    80001a2c:	00500793          	li	a5,5
    80001a30:	fc97f4e3          	bgeu	a5,s1,800019f8 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001a34:	00004797          	auipc	a5,0x4
    80001a38:	ecc7b783          	ld	a5,-308(a5) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a3c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001a40:	00100713          	li	a4,1
    80001a44:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a48:	fffff097          	auipc	ra,0xfffff
    80001a4c:	7b8080e7          	jalr	1976(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	00013903          	ld	s2,0(sp)
    80001a60:	02010113          	addi	sp,sp,32
    80001a64:	00008067          	ret

0000000080001a68 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001a68:	fe010113          	addi	sp,sp,-32
    80001a6c:	00113c23          	sd	ra,24(sp)
    80001a70:	00813823          	sd	s0,16(sp)
    80001a74:	00913423          	sd	s1,8(sp)
    80001a78:	01213023          	sd	s2,0(sp)
    80001a7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a80:	00a00493          	li	s1,10
    80001a84:	0380006f          	j	80001abc <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a88:	00003517          	auipc	a0,0x3
    80001a8c:	5d850513          	addi	a0,a0,1496 # 80005060 <kvmincrease+0xdb0>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	2f0080e7          	jalr	752(ra) # 80001d80 <_Z11printStringPKc>
        printInteger(i);
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	354080e7          	jalr	852(ra) # 80001df0 <_Z12printIntegerm>
        printString("\n");
    80001aa4:	00003517          	auipc	a0,0x3
    80001aa8:	59c50513          	addi	a0,a0,1436 # 80005040 <kvmincrease+0xd90>
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	2d4080e7          	jalr	724(ra) # 80001d80 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001ab4:	0014849b          	addiw	s1,s1,1
    80001ab8:	0ff4f493          	andi	s1,s1,255
    80001abc:	00c00793          	li	a5,12
    80001ac0:	fc97f4e3          	bgeu	a5,s1,80001a88 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001ac4:	00003517          	auipc	a0,0x3
    80001ac8:	5a450513          	addi	a0,a0,1444 # 80005068 <kvmincrease+0xdb8>
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	2b4080e7          	jalr	692(ra) # 80001d80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001ad4:	00500313          	li	t1,5
    _thread::yield();
    80001ad8:	fffff097          	auipc	ra,0xfffff
    80001adc:	728080e7          	jalr	1832(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001ae0:	01700513          	li	a0,23
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	dbc080e7          	jalr	-580(ra) # 800018a0 <_ZL9fibonaccim>
    80001aec:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001af0:	00003517          	auipc	a0,0x3
    80001af4:	56050513          	addi	a0,a0,1376 # 80005050 <kvmincrease+0xda0>
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	288080e7          	jalr	648(ra) # 80001d80 <_Z11printStringPKc>
    printInteger(result);
    80001b00:	00090513          	mv	a0,s2
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	2ec080e7          	jalr	748(ra) # 80001df0 <_Z12printIntegerm>
    printString("\n");
    80001b0c:	00003517          	auipc	a0,0x3
    80001b10:	53450513          	addi	a0,a0,1332 # 80005040 <kvmincrease+0xd90>
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	26c080e7          	jalr	620(ra) # 80001d80 <_Z11printStringPKc>
    80001b1c:	0380006f          	j	80001b54 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001b20:	00003517          	auipc	a0,0x3
    80001b24:	54050513          	addi	a0,a0,1344 # 80005060 <kvmincrease+0xdb0>
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	258080e7          	jalr	600(ra) # 80001d80 <_Z11printStringPKc>
        printInteger(i);
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	2bc080e7          	jalr	700(ra) # 80001df0 <_Z12printIntegerm>
        printString("\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	50450513          	addi	a0,a0,1284 # 80005040 <kvmincrease+0xd90>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	23c080e7          	jalr	572(ra) # 80001d80 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b4c:	0014849b          	addiw	s1,s1,1
    80001b50:	0ff4f493          	andi	s1,s1,255
    80001b54:	00f00793          	li	a5,15
    80001b58:	fc97f4e3          	bgeu	a5,s1,80001b20 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b5c:	00004797          	auipc	a5,0x4
    80001b60:	da47b783          	ld	a5,-604(a5) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b64:	0007b783          	ld	a5,0(a5)
    80001b68:	00100713          	li	a4,1
    80001b6c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	690080e7          	jalr	1680(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001b78:	01813083          	ld	ra,24(sp)
    80001b7c:	01013403          	ld	s0,16(sp)
    80001b80:	00813483          	ld	s1,8(sp)
    80001b84:	00013903          	ld	s2,0(sp)
    80001b88:	02010113          	addi	sp,sp,32
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001ba0:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001ba4:	00100713          	li	a4,1
    80001ba8:	02e78a63          	beq	a5,a4,80001bdc <_ZN5Riscv14syscallHandlerEv+0x4c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001bac:	00200713          	li	a4,2
    80001bb0:	04e78063          	beq	a5,a4,80001bf0 <_ZN5Riscv14syscallHandlerEv+0x60>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001bb4:	01100713          	li	a4,17
    80001bb8:	04e78663          	beq	a5,a4,80001c04 <_ZN5Riscv14syscallHandlerEv+0x74>
        //return _thread* adress through a0
        uint64 ret = (uint64)t;
        __asm__ volatile("mv a0, %0" : : "r" (ret));

    }
    else if(arg0==0x12){
    80001bbc:	01200713          	li	a4,18
    80001bc0:	06e78063          	beq	a5,a4,80001c20 <_ZN5Riscv14syscallHandlerEv+0x90>
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
    80001bc4:	01300713          	li	a4,19
    80001bc8:	06e78c63          	beq	a5,a4,80001c40 <_ZN5Riscv14syscallHandlerEv+0xb0>
        _thread::dispatch();

    }

}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001bdc:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	150080e7          	jalr	336(ra) # 80001d30 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001be8:	00050513          	mv	a0,a0
    80001bec:	fe1ff06f          	j	80001bcc <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001bf0:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	164080e7          	jalr	356(ra) # 80001d58 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001bfc:	00050513          	mv	a0,a0
    80001c00:	fcdff06f          	j	80001bcc <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001c04:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001c08:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001c0c:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	750080e7          	jalr	1872(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001c18:	00050513          	mv	a0,a0
    80001c1c:	fb1ff06f          	j	80001bcc <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::running->finished=true;
    80001c20:	00004797          	auipc	a5,0x4
    80001c24:	ce07b783          	ld	a5,-800(a5) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c28:	0007b783          	ld	a5,0(a5)
    80001c2c:	00100713          	li	a4,1
    80001c30:	02e78423          	sb	a4,40(a5)
        _thread::dispatch();
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	64c080e7          	jalr	1612(ra) # 80001280 <_ZN7_thread8dispatchEv>
    80001c3c:	f91ff06f          	j	80001bcc <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::dispatch();
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	640080e7          	jalr	1600(ra) # 80001280 <_ZN7_thread8dispatchEv>
}
    80001c48:	f85ff06f          	j	80001bcc <_ZN5Riscv14syscallHandlerEv+0x3c>

0000000080001c4c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c58:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001c5c:	10200073          	sret
}
    80001c60:	00813403          	ld	s0,8(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c6c:	fb010113          	addi	sp,sp,-80
    80001c70:	04113423          	sd	ra,72(sp)
    80001c74:	04813023          	sd	s0,64(sp)
    80001c78:	02913c23          	sd	s1,56(sp)
    80001c7c:	03213823          	sd	s2,48(sp)
    80001c80:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c84:	142027f3          	csrr	a5,scause
    80001c88:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001c8c:	fb843783          	ld	a5,-72(s0)
    uint scause = r_scause();
    80001c90:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001c94:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001c98:	ff87879b          	addiw	a5,a5,-8
    80001c9c:	00100713          	li	a4,1
    80001ca0:	00f77e63          	bgeu	a4,a5,80001cbc <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001ca4:	04813083          	ld	ra,72(sp)
    80001ca8:	04013403          	ld	s0,64(sp)
    80001cac:	03813483          	ld	s1,56(sp)
    80001cb0:	03013903          	ld	s2,48(sp)
    80001cb4:	05010113          	addi	sp,sp,80
    80001cb8:	00008067          	ret
        if(a0reg==0x04){
    80001cbc:	00400793          	li	a5,4
    80001cc0:	02f68a63          	beq	a3,a5,80001cf4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cc4:	141027f3          	csrr	a5,sepc
    80001cc8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ccc:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80001cd0:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cd4:	100027f3          	csrr	a5,sstatus
    80001cd8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cdc:	fd043903          	ld	s2,-48(s0)
            syscallHandler();
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	eb0080e7          	jalr	-336(ra) # 80001b90 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ce8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cec:	14149073          	csrw	sepc,s1
}
    80001cf0:	fb5ff06f          	j	80001ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cf4:	141027f3          	csrr	a5,sepc
    80001cf8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001cfc:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001d00:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d04:	100027f3          	csrr	a5,sstatus
    80001d08:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001d0c:	fc043903          	ld	s2,-64(s0)
            _thread::timeSliceCounter = 0;
    80001d10:	00004797          	auipc	a5,0x4
    80001d14:	c187b783          	ld	a5,-1000(a5) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d18:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001d1c:	fffff097          	auipc	ra,0xfffff
    80001d20:	564080e7          	jalr	1380(ra) # 80001280 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d24:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d28:	14149073          	csrw	sepc,s1
}
    80001d2c:	f79ff06f          	j	80001ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x38>

0000000080001d30 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00113423          	sd	ra,8(sp)
    80001d38:	00813023          	sd	s0,0(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001d40:	00002097          	auipc	ra,0x2
    80001d44:	2f8080e7          	jalr	760(ra) # 80004038 <__mem_alloc>
}
    80001d48:	00813083          	ld	ra,8(sp)
    80001d4c:	00013403          	ld	s0,0(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00113423          	sd	ra,8(sp)
    80001d60:	00813023          	sd	s0,0(sp)
    80001d64:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001d68:	00002097          	auipc	ra,0x2
    80001d6c:	204080e7          	jalr	516(ra) # 80003f6c <__mem_free>
    80001d70:	00813083          	ld	ra,8(sp)
    80001d74:	00013403          	ld	s0,0(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001d80:	fd010113          	addi	sp,sp,-48
    80001d84:	02113423          	sd	ra,40(sp)
    80001d88:	02813023          	sd	s0,32(sp)
    80001d8c:	00913c23          	sd	s1,24(sp)
    80001d90:	01213823          	sd	s2,16(sp)
    80001d94:	03010413          	addi	s0,sp,48
    80001d98:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d9c:	100027f3          	csrr	a5,sstatus
    80001da0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001da4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001da8:	00200793          	li	a5,2
    80001dac:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001db0:	0004c503          	lbu	a0,0(s1)
    80001db4:	00050a63          	beqz	a0,80001dc8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001db8:	00002097          	auipc	ra,0x2
    80001dbc:	3d8080e7          	jalr	984(ra) # 80004190 <__putc>
        string++;
    80001dc0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001dc4:	fedff06f          	j	80001db0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001dc8:	0009091b          	sext.w	s2,s2
    80001dcc:	00297913          	andi	s2,s2,2
    80001dd0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001dd4:	10092073          	csrs	sstatus,s2
}
    80001dd8:	02813083          	ld	ra,40(sp)
    80001ddc:	02013403          	ld	s0,32(sp)
    80001de0:	01813483          	ld	s1,24(sp)
    80001de4:	01013903          	ld	s2,16(sp)
    80001de8:	03010113          	addi	sp,sp,48
    80001dec:	00008067          	ret

0000000080001df0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001df0:	fc010113          	addi	sp,sp,-64
    80001df4:	02113c23          	sd	ra,56(sp)
    80001df8:	02813823          	sd	s0,48(sp)
    80001dfc:	02913423          	sd	s1,40(sp)
    80001e00:	03213023          	sd	s2,32(sp)
    80001e04:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e08:	100027f3          	csrr	a5,sstatus
    80001e0c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e10:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e14:	00200793          	li	a5,2
    80001e18:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e1c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e20:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e24:	00a00613          	li	a2,10
    80001e28:	02c5773b          	remuw	a4,a0,a2
    80001e2c:	02071693          	slli	a3,a4,0x20
    80001e30:	0206d693          	srli	a3,a3,0x20
    80001e34:	00003717          	auipc	a4,0x3
    80001e38:	24470713          	addi	a4,a4,580 # 80005078 <_ZZ12printIntegermE6digits>
    80001e3c:	00d70733          	add	a4,a4,a3
    80001e40:	00074703          	lbu	a4,0(a4)
    80001e44:	fe040693          	addi	a3,s0,-32
    80001e48:	009687b3          	add	a5,a3,s1
    80001e4c:	0014849b          	addiw	s1,s1,1
    80001e50:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001e54:	0005071b          	sext.w	a4,a0
    80001e58:	02c5553b          	divuw	a0,a0,a2
    80001e5c:	00900793          	li	a5,9
    80001e60:	fce7e2e3          	bltu	a5,a4,80001e24 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001e64:	fff4849b          	addiw	s1,s1,-1
    80001e68:	0004ce63          	bltz	s1,80001e84 <_Z12printIntegerm+0x94>
    80001e6c:	fe040793          	addi	a5,s0,-32
    80001e70:	009787b3          	add	a5,a5,s1
    80001e74:	ff07c503          	lbu	a0,-16(a5)
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	318080e7          	jalr	792(ra) # 80004190 <__putc>
    80001e80:	fe5ff06f          	j	80001e64 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e84:	0009091b          	sext.w	s2,s2
    80001e88:	00297913          	andi	s2,s2,2
    80001e8c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e90:	10092073          	csrs	sstatus,s2
}
    80001e94:	03813083          	ld	ra,56(sp)
    80001e98:	03013403          	ld	s0,48(sp)
    80001e9c:	02813483          	ld	s1,40(sp)
    80001ea0:	02013903          	ld	s2,32(sp)
    80001ea4:	04010113          	addi	sp,sp,64
    80001ea8:	00008067          	ret

0000000080001eac <start>:
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	300027f3          	csrr	a5,mstatus
    80001ebc:	ffffe737          	lui	a4,0xffffe
    80001ec0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bdf>
    80001ec4:	00e7f7b3          	and	a5,a5,a4
    80001ec8:	00001737          	lui	a4,0x1
    80001ecc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ed0:	00e7e7b3          	or	a5,a5,a4
    80001ed4:	30079073          	csrw	mstatus,a5
    80001ed8:	00000797          	auipc	a5,0x0
    80001edc:	16078793          	addi	a5,a5,352 # 80002038 <system_main>
    80001ee0:	34179073          	csrw	mepc,a5
    80001ee4:	00000793          	li	a5,0
    80001ee8:	18079073          	csrw	satp,a5
    80001eec:	000107b7          	lui	a5,0x10
    80001ef0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ef4:	30279073          	csrw	medeleg,a5
    80001ef8:	30379073          	csrw	mideleg,a5
    80001efc:	104027f3          	csrr	a5,sie
    80001f00:	2227e793          	ori	a5,a5,546
    80001f04:	10479073          	csrw	sie,a5
    80001f08:	fff00793          	li	a5,-1
    80001f0c:	00a7d793          	srli	a5,a5,0xa
    80001f10:	3b079073          	csrw	pmpaddr0,a5
    80001f14:	00f00793          	li	a5,15
    80001f18:	3a079073          	csrw	pmpcfg0,a5
    80001f1c:	f14027f3          	csrr	a5,mhartid
    80001f20:	0200c737          	lui	a4,0x200c
    80001f24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f28:	0007869b          	sext.w	a3,a5
    80001f2c:	00269713          	slli	a4,a3,0x2
    80001f30:	000f4637          	lui	a2,0xf4
    80001f34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f38:	00d70733          	add	a4,a4,a3
    80001f3c:	0037979b          	slliw	a5,a5,0x3
    80001f40:	020046b7          	lui	a3,0x2004
    80001f44:	00d787b3          	add	a5,a5,a3
    80001f48:	00c585b3          	add	a1,a1,a2
    80001f4c:	00371693          	slli	a3,a4,0x3
    80001f50:	00004717          	auipc	a4,0x4
    80001f54:	a6070713          	addi	a4,a4,-1440 # 800059b0 <timer_scratch>
    80001f58:	00b7b023          	sd	a1,0(a5)
    80001f5c:	00d70733          	add	a4,a4,a3
    80001f60:	00f73c23          	sd	a5,24(a4)
    80001f64:	02c73023          	sd	a2,32(a4)
    80001f68:	34071073          	csrw	mscratch,a4
    80001f6c:	00000797          	auipc	a5,0x0
    80001f70:	6e478793          	addi	a5,a5,1764 # 80002650 <timervec>
    80001f74:	30579073          	csrw	mtvec,a5
    80001f78:	300027f3          	csrr	a5,mstatus
    80001f7c:	0087e793          	ori	a5,a5,8
    80001f80:	30079073          	csrw	mstatus,a5
    80001f84:	304027f3          	csrr	a5,mie
    80001f88:	0807e793          	ori	a5,a5,128
    80001f8c:	30479073          	csrw	mie,a5
    80001f90:	f14027f3          	csrr	a5,mhartid
    80001f94:	0007879b          	sext.w	a5,a5
    80001f98:	00078213          	mv	tp,a5
    80001f9c:	30200073          	mret
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <timerinit>:
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00813423          	sd	s0,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    80001fb8:	f14027f3          	csrr	a5,mhartid
    80001fbc:	0200c737          	lui	a4,0x200c
    80001fc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fc4:	0007869b          	sext.w	a3,a5
    80001fc8:	00269713          	slli	a4,a3,0x2
    80001fcc:	000f4637          	lui	a2,0xf4
    80001fd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fd4:	00d70733          	add	a4,a4,a3
    80001fd8:	0037979b          	slliw	a5,a5,0x3
    80001fdc:	020046b7          	lui	a3,0x2004
    80001fe0:	00d787b3          	add	a5,a5,a3
    80001fe4:	00c585b3          	add	a1,a1,a2
    80001fe8:	00371693          	slli	a3,a4,0x3
    80001fec:	00004717          	auipc	a4,0x4
    80001ff0:	9c470713          	addi	a4,a4,-1596 # 800059b0 <timer_scratch>
    80001ff4:	00b7b023          	sd	a1,0(a5)
    80001ff8:	00d70733          	add	a4,a4,a3
    80001ffc:	00f73c23          	sd	a5,24(a4)
    80002000:	02c73023          	sd	a2,32(a4)
    80002004:	34071073          	csrw	mscratch,a4
    80002008:	00000797          	auipc	a5,0x0
    8000200c:	64878793          	addi	a5,a5,1608 # 80002650 <timervec>
    80002010:	30579073          	csrw	mtvec,a5
    80002014:	300027f3          	csrr	a5,mstatus
    80002018:	0087e793          	ori	a5,a5,8
    8000201c:	30079073          	csrw	mstatus,a5
    80002020:	304027f3          	csrr	a5,mie
    80002024:	0807e793          	ori	a5,a5,128
    80002028:	30479073          	csrw	mie,a5
    8000202c:	00813403          	ld	s0,8(sp)
    80002030:	01010113          	addi	sp,sp,16
    80002034:	00008067          	ret

0000000080002038 <system_main>:
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00813823          	sd	s0,16(sp)
    80002040:	00913423          	sd	s1,8(sp)
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	02010413          	addi	s0,sp,32
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	0c4080e7          	jalr	196(ra) # 80002110 <cpuid>
    80002054:	00004497          	auipc	s1,0x4
    80002058:	8fc48493          	addi	s1,s1,-1796 # 80005950 <started>
    8000205c:	02050263          	beqz	a0,80002080 <system_main+0x48>
    80002060:	0004a783          	lw	a5,0(s1)
    80002064:	0007879b          	sext.w	a5,a5
    80002068:	fe078ce3          	beqz	a5,80002060 <system_main+0x28>
    8000206c:	0ff0000f          	fence
    80002070:	00003517          	auipc	a0,0x3
    80002074:	04850513          	addi	a0,a0,72 # 800050b8 <_ZZ12printIntegermE6digits+0x40>
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	a74080e7          	jalr	-1420(ra) # 80002aec <panic>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	9c8080e7          	jalr	-1592(ra) # 80002a48 <consoleinit>
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	154080e7          	jalr	340(ra) # 800031dc <printfinit>
    80002090:	00003517          	auipc	a0,0x3
    80002094:	fb050513          	addi	a0,a0,-80 # 80005040 <kvmincrease+0xd90>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	ab0080e7          	jalr	-1360(ra) # 80002b48 <__printf>
    800020a0:	00003517          	auipc	a0,0x3
    800020a4:	fe850513          	addi	a0,a0,-24 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	aa0080e7          	jalr	-1376(ra) # 80002b48 <__printf>
    800020b0:	00003517          	auipc	a0,0x3
    800020b4:	f9050513          	addi	a0,a0,-112 # 80005040 <kvmincrease+0xd90>
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	a90080e7          	jalr	-1392(ra) # 80002b48 <__printf>
    800020c0:	00001097          	auipc	ra,0x1
    800020c4:	4a8080e7          	jalr	1192(ra) # 80003568 <kinit>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	148080e7          	jalr	328(ra) # 80002210 <trapinit>
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	16c080e7          	jalr	364(ra) # 8000223c <trapinithart>
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	5b8080e7          	jalr	1464(ra) # 80002690 <plicinit>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	5d8080e7          	jalr	1496(ra) # 800026b8 <plicinithart>
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	078080e7          	jalr	120(ra) # 80002160 <userinit>
    800020f0:	0ff0000f          	fence
    800020f4:	00100793          	li	a5,1
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	fa850513          	addi	a0,a0,-88 # 800050a0 <_ZZ12printIntegermE6digits+0x28>
    80002100:	00f4a023          	sw	a5,0(s1)
    80002104:	00001097          	auipc	ra,0x1
    80002108:	a44080e7          	jalr	-1468(ra) # 80002b48 <__printf>
    8000210c:	0000006f          	j	8000210c <system_main+0xd4>

0000000080002110 <cpuid>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00020513          	mv	a0,tp
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	0005051b          	sext.w	a0,a0
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <mycpu>:
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00813423          	sd	s0,8(sp)
    80002138:	01010413          	addi	s0,sp,16
    8000213c:	00020793          	mv	a5,tp
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	0007879b          	sext.w	a5,a5
    80002148:	00779793          	slli	a5,a5,0x7
    8000214c:	00005517          	auipc	a0,0x5
    80002150:	89450513          	addi	a0,a0,-1900 # 800069e0 <cpus>
    80002154:	00f50533          	add	a0,a0,a5
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <userinit>:
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	fffff317          	auipc	t1,0xfffff
    80002178:	41830067          	jr	1048(t1) # 8000158c <main>

000000008000217c <either_copyout>:
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813023          	sd	s0,0(sp)
    80002184:	00113423          	sd	ra,8(sp)
    80002188:	01010413          	addi	s0,sp,16
    8000218c:	02051663          	bnez	a0,800021b8 <either_copyout+0x3c>
    80002190:	00058513          	mv	a0,a1
    80002194:	00060593          	mv	a1,a2
    80002198:	0006861b          	sext.w	a2,a3
    8000219c:	00002097          	auipc	ra,0x2
    800021a0:	c58080e7          	jalr	-936(ra) # 80003df4 <__memmove>
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	00000513          	li	a0,0
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret
    800021b8:	00003517          	auipc	a0,0x3
    800021bc:	f2850513          	addi	a0,a0,-216 # 800050e0 <_ZZ12printIntegermE6digits+0x68>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	92c080e7          	jalr	-1748(ra) # 80002aec <panic>

00000000800021c8 <either_copyin>:
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	01010413          	addi	s0,sp,16
    800021d8:	02059463          	bnez	a1,80002200 <either_copyin+0x38>
    800021dc:	00060593          	mv	a1,a2
    800021e0:	0006861b          	sext.w	a2,a3
    800021e4:	00002097          	auipc	ra,0x2
    800021e8:	c10080e7          	jalr	-1008(ra) # 80003df4 <__memmove>
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	00000513          	li	a0,0
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret
    80002200:	00003517          	auipc	a0,0x3
    80002204:	f0850513          	addi	a0,a0,-248 # 80005108 <_ZZ12printIntegermE6digits+0x90>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	8e4080e7          	jalr	-1820(ra) # 80002aec <panic>

0000000080002210 <trapinit>:
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00813423          	sd	s0,8(sp)
    80002218:	01010413          	addi	s0,sp,16
    8000221c:	00813403          	ld	s0,8(sp)
    80002220:	00003597          	auipc	a1,0x3
    80002224:	f1058593          	addi	a1,a1,-240 # 80005130 <_ZZ12printIntegermE6digits+0xb8>
    80002228:	00005517          	auipc	a0,0x5
    8000222c:	83850513          	addi	a0,a0,-1992 # 80006a60 <tickslock>
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00001317          	auipc	t1,0x1
    80002238:	5c430067          	jr	1476(t1) # 800037f8 <initlock>

000000008000223c <trapinithart>:
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00813423          	sd	s0,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00000797          	auipc	a5,0x0
    8000224c:	2f878793          	addi	a5,a5,760 # 80002540 <kernelvec>
    80002250:	10579073          	csrw	stvec,a5
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <usertrap>:
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <usertrapret>:
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <kerneltrap>:
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00813823          	sd	s0,16(sp)
    80002298:	00113c23          	sd	ra,24(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    800022a4:	142025f3          	csrr	a1,scause
    800022a8:	100027f3          	csrr	a5,sstatus
    800022ac:	0027f793          	andi	a5,a5,2
    800022b0:	10079c63          	bnez	a5,800023c8 <kerneltrap+0x138>
    800022b4:	142027f3          	csrr	a5,scause
    800022b8:	0207ce63          	bltz	a5,800022f4 <kerneltrap+0x64>
    800022bc:	00003517          	auipc	a0,0x3
    800022c0:	ebc50513          	addi	a0,a0,-324 # 80005178 <_ZZ12printIntegermE6digits+0x100>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	884080e7          	jalr	-1916(ra) # 80002b48 <__printf>
    800022cc:	141025f3          	csrr	a1,sepc
    800022d0:	14302673          	csrr	a2,stval
    800022d4:	00003517          	auipc	a0,0x3
    800022d8:	eb450513          	addi	a0,a0,-332 # 80005188 <_ZZ12printIntegermE6digits+0x110>
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	86c080e7          	jalr	-1940(ra) # 80002b48 <__printf>
    800022e4:	00003517          	auipc	a0,0x3
    800022e8:	ebc50513          	addi	a0,a0,-324 # 800051a0 <_ZZ12printIntegermE6digits+0x128>
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	800080e7          	jalr	-2048(ra) # 80002aec <panic>
    800022f4:	0ff7f713          	andi	a4,a5,255
    800022f8:	00900693          	li	a3,9
    800022fc:	04d70063          	beq	a4,a3,8000233c <kerneltrap+0xac>
    80002300:	fff00713          	li	a4,-1
    80002304:	03f71713          	slli	a4,a4,0x3f
    80002308:	00170713          	addi	a4,a4,1
    8000230c:	fae798e3          	bne	a5,a4,800022bc <kerneltrap+0x2c>
    80002310:	00000097          	auipc	ra,0x0
    80002314:	e00080e7          	jalr	-512(ra) # 80002110 <cpuid>
    80002318:	06050663          	beqz	a0,80002384 <kerneltrap+0xf4>
    8000231c:	144027f3          	csrr	a5,sip
    80002320:	ffd7f793          	andi	a5,a5,-3
    80002324:	14479073          	csrw	sip,a5
    80002328:	01813083          	ld	ra,24(sp)
    8000232c:	01013403          	ld	s0,16(sp)
    80002330:	00813483          	ld	s1,8(sp)
    80002334:	02010113          	addi	sp,sp,32
    80002338:	00008067          	ret
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	3c8080e7          	jalr	968(ra) # 80002704 <plic_claim>
    80002344:	00a00793          	li	a5,10
    80002348:	00050493          	mv	s1,a0
    8000234c:	06f50863          	beq	a0,a5,800023bc <kerneltrap+0x12c>
    80002350:	fc050ce3          	beqz	a0,80002328 <kerneltrap+0x98>
    80002354:	00050593          	mv	a1,a0
    80002358:	00003517          	auipc	a0,0x3
    8000235c:	e0050513          	addi	a0,a0,-512 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    80002360:	00000097          	auipc	ra,0x0
    80002364:	7e8080e7          	jalr	2024(ra) # 80002b48 <__printf>
    80002368:	01013403          	ld	s0,16(sp)
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	00048513          	mv	a0,s1
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00000317          	auipc	t1,0x0
    80002380:	3c030067          	jr	960(t1) # 8000273c <plic_complete>
    80002384:	00004517          	auipc	a0,0x4
    80002388:	6dc50513          	addi	a0,a0,1756 # 80006a60 <tickslock>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	490080e7          	jalr	1168(ra) # 8000381c <acquire>
    80002394:	00003717          	auipc	a4,0x3
    80002398:	5c070713          	addi	a4,a4,1472 # 80005954 <ticks>
    8000239c:	00072783          	lw	a5,0(a4)
    800023a0:	00004517          	auipc	a0,0x4
    800023a4:	6c050513          	addi	a0,a0,1728 # 80006a60 <tickslock>
    800023a8:	0017879b          	addiw	a5,a5,1
    800023ac:	00f72023          	sw	a5,0(a4)
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	538080e7          	jalr	1336(ra) # 800038e8 <release>
    800023b8:	f65ff06f          	j	8000231c <kerneltrap+0x8c>
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	094080e7          	jalr	148(ra) # 80003450 <uartintr>
    800023c4:	fa5ff06f          	j	80002368 <kerneltrap+0xd8>
    800023c8:	00003517          	auipc	a0,0x3
    800023cc:	d7050513          	addi	a0,a0,-656 # 80005138 <_ZZ12printIntegermE6digits+0xc0>
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	71c080e7          	jalr	1820(ra) # 80002aec <panic>

00000000800023d8 <clockintr>:
    800023d8:	fe010113          	addi	sp,sp,-32
    800023dc:	00813823          	sd	s0,16(sp)
    800023e0:	00913423          	sd	s1,8(sp)
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	02010413          	addi	s0,sp,32
    800023ec:	00004497          	auipc	s1,0x4
    800023f0:	67448493          	addi	s1,s1,1652 # 80006a60 <tickslock>
    800023f4:	00048513          	mv	a0,s1
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	424080e7          	jalr	1060(ra) # 8000381c <acquire>
    80002400:	00003717          	auipc	a4,0x3
    80002404:	55470713          	addi	a4,a4,1364 # 80005954 <ticks>
    80002408:	00072783          	lw	a5,0(a4)
    8000240c:	01013403          	ld	s0,16(sp)
    80002410:	01813083          	ld	ra,24(sp)
    80002414:	00048513          	mv	a0,s1
    80002418:	0017879b          	addiw	a5,a5,1
    8000241c:	00813483          	ld	s1,8(sp)
    80002420:	00f72023          	sw	a5,0(a4)
    80002424:	02010113          	addi	sp,sp,32
    80002428:	00001317          	auipc	t1,0x1
    8000242c:	4c030067          	jr	1216(t1) # 800038e8 <release>

0000000080002430 <devintr>:
    80002430:	142027f3          	csrr	a5,scause
    80002434:	00000513          	li	a0,0
    80002438:	0007c463          	bltz	a5,80002440 <devintr+0x10>
    8000243c:	00008067          	ret
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	02010413          	addi	s0,sp,32
    80002454:	0ff7f713          	andi	a4,a5,255
    80002458:	00900693          	li	a3,9
    8000245c:	04d70c63          	beq	a4,a3,800024b4 <devintr+0x84>
    80002460:	fff00713          	li	a4,-1
    80002464:	03f71713          	slli	a4,a4,0x3f
    80002468:	00170713          	addi	a4,a4,1
    8000246c:	00e78c63          	beq	a5,a4,80002484 <devintr+0x54>
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret
    80002484:	00000097          	auipc	ra,0x0
    80002488:	c8c080e7          	jalr	-884(ra) # 80002110 <cpuid>
    8000248c:	06050663          	beqz	a0,800024f8 <devintr+0xc8>
    80002490:	144027f3          	csrr	a5,sip
    80002494:	ffd7f793          	andi	a5,a5,-3
    80002498:	14479073          	csrw	sip,a5
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00200513          	li	a0,2
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	250080e7          	jalr	592(ra) # 80002704 <plic_claim>
    800024bc:	00a00793          	li	a5,10
    800024c0:	00050493          	mv	s1,a0
    800024c4:	06f50663          	beq	a0,a5,80002530 <devintr+0x100>
    800024c8:	00100513          	li	a0,1
    800024cc:	fa0482e3          	beqz	s1,80002470 <devintr+0x40>
    800024d0:	00048593          	mv	a1,s1
    800024d4:	00003517          	auipc	a0,0x3
    800024d8:	c8450513          	addi	a0,a0,-892 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	66c080e7          	jalr	1644(ra) # 80002b48 <__printf>
    800024e4:	00048513          	mv	a0,s1
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	254080e7          	jalr	596(ra) # 8000273c <plic_complete>
    800024f0:	00100513          	li	a0,1
    800024f4:	f7dff06f          	j	80002470 <devintr+0x40>
    800024f8:	00004517          	auipc	a0,0x4
    800024fc:	56850513          	addi	a0,a0,1384 # 80006a60 <tickslock>
    80002500:	00001097          	auipc	ra,0x1
    80002504:	31c080e7          	jalr	796(ra) # 8000381c <acquire>
    80002508:	00003717          	auipc	a4,0x3
    8000250c:	44c70713          	addi	a4,a4,1100 # 80005954 <ticks>
    80002510:	00072783          	lw	a5,0(a4)
    80002514:	00004517          	auipc	a0,0x4
    80002518:	54c50513          	addi	a0,a0,1356 # 80006a60 <tickslock>
    8000251c:	0017879b          	addiw	a5,a5,1
    80002520:	00f72023          	sw	a5,0(a4)
    80002524:	00001097          	auipc	ra,0x1
    80002528:	3c4080e7          	jalr	964(ra) # 800038e8 <release>
    8000252c:	f65ff06f          	j	80002490 <devintr+0x60>
    80002530:	00001097          	auipc	ra,0x1
    80002534:	f20080e7          	jalr	-224(ra) # 80003450 <uartintr>
    80002538:	fadff06f          	j	800024e4 <devintr+0xb4>
    8000253c:	0000                	unimp
	...

0000000080002540 <kernelvec>:
    80002540:	f0010113          	addi	sp,sp,-256
    80002544:	00113023          	sd	ra,0(sp)
    80002548:	00213423          	sd	sp,8(sp)
    8000254c:	00313823          	sd	gp,16(sp)
    80002550:	00413c23          	sd	tp,24(sp)
    80002554:	02513023          	sd	t0,32(sp)
    80002558:	02613423          	sd	t1,40(sp)
    8000255c:	02713823          	sd	t2,48(sp)
    80002560:	02813c23          	sd	s0,56(sp)
    80002564:	04913023          	sd	s1,64(sp)
    80002568:	04a13423          	sd	a0,72(sp)
    8000256c:	04b13823          	sd	a1,80(sp)
    80002570:	04c13c23          	sd	a2,88(sp)
    80002574:	06d13023          	sd	a3,96(sp)
    80002578:	06e13423          	sd	a4,104(sp)
    8000257c:	06f13823          	sd	a5,112(sp)
    80002580:	07013c23          	sd	a6,120(sp)
    80002584:	09113023          	sd	a7,128(sp)
    80002588:	09213423          	sd	s2,136(sp)
    8000258c:	09313823          	sd	s3,144(sp)
    80002590:	09413c23          	sd	s4,152(sp)
    80002594:	0b513023          	sd	s5,160(sp)
    80002598:	0b613423          	sd	s6,168(sp)
    8000259c:	0b713823          	sd	s7,176(sp)
    800025a0:	0b813c23          	sd	s8,184(sp)
    800025a4:	0d913023          	sd	s9,192(sp)
    800025a8:	0da13423          	sd	s10,200(sp)
    800025ac:	0db13823          	sd	s11,208(sp)
    800025b0:	0dc13c23          	sd	t3,216(sp)
    800025b4:	0fd13023          	sd	t4,224(sp)
    800025b8:	0fe13423          	sd	t5,232(sp)
    800025bc:	0ff13823          	sd	t6,240(sp)
    800025c0:	cd1ff0ef          	jal	ra,80002290 <kerneltrap>
    800025c4:	00013083          	ld	ra,0(sp)
    800025c8:	00813103          	ld	sp,8(sp)
    800025cc:	01013183          	ld	gp,16(sp)
    800025d0:	02013283          	ld	t0,32(sp)
    800025d4:	02813303          	ld	t1,40(sp)
    800025d8:	03013383          	ld	t2,48(sp)
    800025dc:	03813403          	ld	s0,56(sp)
    800025e0:	04013483          	ld	s1,64(sp)
    800025e4:	04813503          	ld	a0,72(sp)
    800025e8:	05013583          	ld	a1,80(sp)
    800025ec:	05813603          	ld	a2,88(sp)
    800025f0:	06013683          	ld	a3,96(sp)
    800025f4:	06813703          	ld	a4,104(sp)
    800025f8:	07013783          	ld	a5,112(sp)
    800025fc:	07813803          	ld	a6,120(sp)
    80002600:	08013883          	ld	a7,128(sp)
    80002604:	08813903          	ld	s2,136(sp)
    80002608:	09013983          	ld	s3,144(sp)
    8000260c:	09813a03          	ld	s4,152(sp)
    80002610:	0a013a83          	ld	s5,160(sp)
    80002614:	0a813b03          	ld	s6,168(sp)
    80002618:	0b013b83          	ld	s7,176(sp)
    8000261c:	0b813c03          	ld	s8,184(sp)
    80002620:	0c013c83          	ld	s9,192(sp)
    80002624:	0c813d03          	ld	s10,200(sp)
    80002628:	0d013d83          	ld	s11,208(sp)
    8000262c:	0d813e03          	ld	t3,216(sp)
    80002630:	0e013e83          	ld	t4,224(sp)
    80002634:	0e813f03          	ld	t5,232(sp)
    80002638:	0f013f83          	ld	t6,240(sp)
    8000263c:	10010113          	addi	sp,sp,256
    80002640:	10200073          	sret
    80002644:	00000013          	nop
    80002648:	00000013          	nop
    8000264c:	00000013          	nop

0000000080002650 <timervec>:
    80002650:	34051573          	csrrw	a0,mscratch,a0
    80002654:	00b53023          	sd	a1,0(a0)
    80002658:	00c53423          	sd	a2,8(a0)
    8000265c:	00d53823          	sd	a3,16(a0)
    80002660:	01853583          	ld	a1,24(a0)
    80002664:	02053603          	ld	a2,32(a0)
    80002668:	0005b683          	ld	a3,0(a1)
    8000266c:	00c686b3          	add	a3,a3,a2
    80002670:	00d5b023          	sd	a3,0(a1)
    80002674:	00200593          	li	a1,2
    80002678:	14459073          	csrw	sip,a1
    8000267c:	01053683          	ld	a3,16(a0)
    80002680:	00853603          	ld	a2,8(a0)
    80002684:	00053583          	ld	a1,0(a0)
    80002688:	34051573          	csrrw	a0,mscratch,a0
    8000268c:	30200073          	mret

0000000080002690 <plicinit>:
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00813423          	sd	s0,8(sp)
    80002698:	01010413          	addi	s0,sp,16
    8000269c:	00813403          	ld	s0,8(sp)
    800026a0:	0c0007b7          	lui	a5,0xc000
    800026a4:	00100713          	li	a4,1
    800026a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800026ac:	00e7a223          	sw	a4,4(a5)
    800026b0:	01010113          	addi	sp,sp,16
    800026b4:	00008067          	ret

00000000800026b8 <plicinithart>:
    800026b8:	ff010113          	addi	sp,sp,-16
    800026bc:	00813023          	sd	s0,0(sp)
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	01010413          	addi	s0,sp,16
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	a48080e7          	jalr	-1464(ra) # 80002110 <cpuid>
    800026d0:	0085171b          	slliw	a4,a0,0x8
    800026d4:	0c0027b7          	lui	a5,0xc002
    800026d8:	00e787b3          	add	a5,a5,a4
    800026dc:	40200713          	li	a4,1026
    800026e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	00d5151b          	slliw	a0,a0,0xd
    800026f0:	0c2017b7          	lui	a5,0xc201
    800026f4:	00a78533          	add	a0,a5,a0
    800026f8:	00052023          	sw	zero,0(a0)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <plic_claim>:
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	00113423          	sd	ra,8(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00000097          	auipc	ra,0x0
    80002718:	9fc080e7          	jalr	-1540(ra) # 80002110 <cpuid>
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	00d5151b          	slliw	a0,a0,0xd
    80002728:	0c2017b7          	lui	a5,0xc201
    8000272c:	00a78533          	add	a0,a5,a0
    80002730:	00452503          	lw	a0,4(a0)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <plic_complete>:
    8000273c:	fe010113          	addi	sp,sp,-32
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	00113c23          	sd	ra,24(sp)
    8000274c:	02010413          	addi	s0,sp,32
    80002750:	00050493          	mv	s1,a0
    80002754:	00000097          	auipc	ra,0x0
    80002758:	9bc080e7          	jalr	-1604(ra) # 80002110 <cpuid>
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00d5179b          	slliw	a5,a0,0xd
    80002768:	0c201737          	lui	a4,0xc201
    8000276c:	00f707b3          	add	a5,a4,a5
    80002770:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	02010113          	addi	sp,sp,32
    8000277c:	00008067          	ret

0000000080002780 <consolewrite>:
    80002780:	fb010113          	addi	sp,sp,-80
    80002784:	04813023          	sd	s0,64(sp)
    80002788:	04113423          	sd	ra,72(sp)
    8000278c:	02913c23          	sd	s1,56(sp)
    80002790:	03213823          	sd	s2,48(sp)
    80002794:	03313423          	sd	s3,40(sp)
    80002798:	03413023          	sd	s4,32(sp)
    8000279c:	01513c23          	sd	s5,24(sp)
    800027a0:	05010413          	addi	s0,sp,80
    800027a4:	06c05c63          	blez	a2,8000281c <consolewrite+0x9c>
    800027a8:	00060993          	mv	s3,a2
    800027ac:	00050a13          	mv	s4,a0
    800027b0:	00058493          	mv	s1,a1
    800027b4:	00000913          	li	s2,0
    800027b8:	fff00a93          	li	s5,-1
    800027bc:	01c0006f          	j	800027d8 <consolewrite+0x58>
    800027c0:	fbf44503          	lbu	a0,-65(s0)
    800027c4:	0019091b          	addiw	s2,s2,1
    800027c8:	00148493          	addi	s1,s1,1
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	a9c080e7          	jalr	-1380(ra) # 80003268 <uartputc>
    800027d4:	03298063          	beq	s3,s2,800027f4 <consolewrite+0x74>
    800027d8:	00048613          	mv	a2,s1
    800027dc:	00100693          	li	a3,1
    800027e0:	000a0593          	mv	a1,s4
    800027e4:	fbf40513          	addi	a0,s0,-65
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	9e0080e7          	jalr	-1568(ra) # 800021c8 <either_copyin>
    800027f0:	fd5518e3          	bne	a0,s5,800027c0 <consolewrite+0x40>
    800027f4:	04813083          	ld	ra,72(sp)
    800027f8:	04013403          	ld	s0,64(sp)
    800027fc:	03813483          	ld	s1,56(sp)
    80002800:	02813983          	ld	s3,40(sp)
    80002804:	02013a03          	ld	s4,32(sp)
    80002808:	01813a83          	ld	s5,24(sp)
    8000280c:	00090513          	mv	a0,s2
    80002810:	03013903          	ld	s2,48(sp)
    80002814:	05010113          	addi	sp,sp,80
    80002818:	00008067          	ret
    8000281c:	00000913          	li	s2,0
    80002820:	fd5ff06f          	j	800027f4 <consolewrite+0x74>

0000000080002824 <consoleread>:
    80002824:	f9010113          	addi	sp,sp,-112
    80002828:	06813023          	sd	s0,96(sp)
    8000282c:	04913c23          	sd	s1,88(sp)
    80002830:	05213823          	sd	s2,80(sp)
    80002834:	05313423          	sd	s3,72(sp)
    80002838:	05413023          	sd	s4,64(sp)
    8000283c:	03513c23          	sd	s5,56(sp)
    80002840:	03613823          	sd	s6,48(sp)
    80002844:	03713423          	sd	s7,40(sp)
    80002848:	03813023          	sd	s8,32(sp)
    8000284c:	06113423          	sd	ra,104(sp)
    80002850:	01913c23          	sd	s9,24(sp)
    80002854:	07010413          	addi	s0,sp,112
    80002858:	00060b93          	mv	s7,a2
    8000285c:	00050913          	mv	s2,a0
    80002860:	00058c13          	mv	s8,a1
    80002864:	00060b1b          	sext.w	s6,a2
    80002868:	00004497          	auipc	s1,0x4
    8000286c:	22048493          	addi	s1,s1,544 # 80006a88 <cons>
    80002870:	00400993          	li	s3,4
    80002874:	fff00a13          	li	s4,-1
    80002878:	00a00a93          	li	s5,10
    8000287c:	05705e63          	blez	s7,800028d8 <consoleread+0xb4>
    80002880:	09c4a703          	lw	a4,156(s1)
    80002884:	0984a783          	lw	a5,152(s1)
    80002888:	0007071b          	sext.w	a4,a4
    8000288c:	08e78463          	beq	a5,a4,80002914 <consoleread+0xf0>
    80002890:	07f7f713          	andi	a4,a5,127
    80002894:	00e48733          	add	a4,s1,a4
    80002898:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000289c:	0017869b          	addiw	a3,a5,1
    800028a0:	08d4ac23          	sw	a3,152(s1)
    800028a4:	00070c9b          	sext.w	s9,a4
    800028a8:	0b370663          	beq	a4,s3,80002954 <consoleread+0x130>
    800028ac:	00100693          	li	a3,1
    800028b0:	f9f40613          	addi	a2,s0,-97
    800028b4:	000c0593          	mv	a1,s8
    800028b8:	00090513          	mv	a0,s2
    800028bc:	f8e40fa3          	sb	a4,-97(s0)
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	8bc080e7          	jalr	-1860(ra) # 8000217c <either_copyout>
    800028c8:	01450863          	beq	a0,s4,800028d8 <consoleread+0xb4>
    800028cc:	001c0c13          	addi	s8,s8,1
    800028d0:	fffb8b9b          	addiw	s7,s7,-1
    800028d4:	fb5c94e3          	bne	s9,s5,8000287c <consoleread+0x58>
    800028d8:	000b851b          	sext.w	a0,s7
    800028dc:	06813083          	ld	ra,104(sp)
    800028e0:	06013403          	ld	s0,96(sp)
    800028e4:	05813483          	ld	s1,88(sp)
    800028e8:	05013903          	ld	s2,80(sp)
    800028ec:	04813983          	ld	s3,72(sp)
    800028f0:	04013a03          	ld	s4,64(sp)
    800028f4:	03813a83          	ld	s5,56(sp)
    800028f8:	02813b83          	ld	s7,40(sp)
    800028fc:	02013c03          	ld	s8,32(sp)
    80002900:	01813c83          	ld	s9,24(sp)
    80002904:	40ab053b          	subw	a0,s6,a0
    80002908:	03013b03          	ld	s6,48(sp)
    8000290c:	07010113          	addi	sp,sp,112
    80002910:	00008067          	ret
    80002914:	00001097          	auipc	ra,0x1
    80002918:	1d8080e7          	jalr	472(ra) # 80003aec <push_on>
    8000291c:	0984a703          	lw	a4,152(s1)
    80002920:	09c4a783          	lw	a5,156(s1)
    80002924:	0007879b          	sext.w	a5,a5
    80002928:	fef70ce3          	beq	a4,a5,80002920 <consoleread+0xfc>
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	234080e7          	jalr	564(ra) # 80003b60 <pop_on>
    80002934:	0984a783          	lw	a5,152(s1)
    80002938:	07f7f713          	andi	a4,a5,127
    8000293c:	00e48733          	add	a4,s1,a4
    80002940:	01874703          	lbu	a4,24(a4)
    80002944:	0017869b          	addiw	a3,a5,1
    80002948:	08d4ac23          	sw	a3,152(s1)
    8000294c:	00070c9b          	sext.w	s9,a4
    80002950:	f5371ee3          	bne	a4,s3,800028ac <consoleread+0x88>
    80002954:	000b851b          	sext.w	a0,s7
    80002958:	f96bf2e3          	bgeu	s7,s6,800028dc <consoleread+0xb8>
    8000295c:	08f4ac23          	sw	a5,152(s1)
    80002960:	f7dff06f          	j	800028dc <consoleread+0xb8>

0000000080002964 <consputc>:
    80002964:	10000793          	li	a5,256
    80002968:	00f50663          	beq	a0,a5,80002974 <consputc+0x10>
    8000296c:	00001317          	auipc	t1,0x1
    80002970:	9f430067          	jr	-1548(t1) # 80003360 <uartputc_sync>
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00113423          	sd	ra,8(sp)
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	01010413          	addi	s0,sp,16
    80002984:	00800513          	li	a0,8
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	9d8080e7          	jalr	-1576(ra) # 80003360 <uartputc_sync>
    80002990:	02000513          	li	a0,32
    80002994:	00001097          	auipc	ra,0x1
    80002998:	9cc080e7          	jalr	-1588(ra) # 80003360 <uartputc_sync>
    8000299c:	00013403          	ld	s0,0(sp)
    800029a0:	00813083          	ld	ra,8(sp)
    800029a4:	00800513          	li	a0,8
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00001317          	auipc	t1,0x1
    800029b0:	9b430067          	jr	-1612(t1) # 80003360 <uartputc_sync>

00000000800029b4 <consoleintr>:
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00813823          	sd	s0,16(sp)
    800029bc:	00913423          	sd	s1,8(sp)
    800029c0:	01213023          	sd	s2,0(sp)
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	02010413          	addi	s0,sp,32
    800029cc:	00004917          	auipc	s2,0x4
    800029d0:	0bc90913          	addi	s2,s2,188 # 80006a88 <cons>
    800029d4:	00050493          	mv	s1,a0
    800029d8:	00090513          	mv	a0,s2
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	e40080e7          	jalr	-448(ra) # 8000381c <acquire>
    800029e4:	02048c63          	beqz	s1,80002a1c <consoleintr+0x68>
    800029e8:	0a092783          	lw	a5,160(s2)
    800029ec:	09892703          	lw	a4,152(s2)
    800029f0:	07f00693          	li	a3,127
    800029f4:	40e7873b          	subw	a4,a5,a4
    800029f8:	02e6e263          	bltu	a3,a4,80002a1c <consoleintr+0x68>
    800029fc:	00d00713          	li	a4,13
    80002a00:	04e48063          	beq	s1,a4,80002a40 <consoleintr+0x8c>
    80002a04:	07f7f713          	andi	a4,a5,127
    80002a08:	00e90733          	add	a4,s2,a4
    80002a0c:	0017879b          	addiw	a5,a5,1
    80002a10:	0af92023          	sw	a5,160(s2)
    80002a14:	00970c23          	sb	s1,24(a4)
    80002a18:	08f92e23          	sw	a5,156(s2)
    80002a1c:	01013403          	ld	s0,16(sp)
    80002a20:	01813083          	ld	ra,24(sp)
    80002a24:	00813483          	ld	s1,8(sp)
    80002a28:	00013903          	ld	s2,0(sp)
    80002a2c:	00004517          	auipc	a0,0x4
    80002a30:	05c50513          	addi	a0,a0,92 # 80006a88 <cons>
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00001317          	auipc	t1,0x1
    80002a3c:	eb030067          	jr	-336(t1) # 800038e8 <release>
    80002a40:	00a00493          	li	s1,10
    80002a44:	fc1ff06f          	j	80002a04 <consoleintr+0x50>

0000000080002a48 <consoleinit>:
    80002a48:	fe010113          	addi	sp,sp,-32
    80002a4c:	00113c23          	sd	ra,24(sp)
    80002a50:	00813823          	sd	s0,16(sp)
    80002a54:	00913423          	sd	s1,8(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00004497          	auipc	s1,0x4
    80002a60:	02c48493          	addi	s1,s1,44 # 80006a88 <cons>
    80002a64:	00048513          	mv	a0,s1
    80002a68:	00002597          	auipc	a1,0x2
    80002a6c:	74858593          	addi	a1,a1,1864 # 800051b0 <_ZZ12printIntegermE6digits+0x138>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	d88080e7          	jalr	-632(ra) # 800037f8 <initlock>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	7ac080e7          	jalr	1964(ra) # 80003224 <uartinit>
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00000797          	auipc	a5,0x0
    80002a8c:	d9c78793          	addi	a5,a5,-612 # 80002824 <consoleread>
    80002a90:	0af4bc23          	sd	a5,184(s1)
    80002a94:	00000797          	auipc	a5,0x0
    80002a98:	cec78793          	addi	a5,a5,-788 # 80002780 <consolewrite>
    80002a9c:	0cf4b023          	sd	a5,192(s1)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret

0000000080002aac <console_read>:
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00813423          	sd	s0,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	00004317          	auipc	t1,0x4
    80002ac0:	08433303          	ld	t1,132(t1) # 80006b40 <devsw+0x10>
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00030067          	jr	t1

0000000080002acc <console_write>:
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00813423          	sd	s0,8(sp)
    80002ad4:	01010413          	addi	s0,sp,16
    80002ad8:	00813403          	ld	s0,8(sp)
    80002adc:	00004317          	auipc	t1,0x4
    80002ae0:	06c33303          	ld	t1,108(t1) # 80006b48 <devsw+0x18>
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00030067          	jr	t1

0000000080002aec <panic>:
    80002aec:	fe010113          	addi	sp,sp,-32
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00913423          	sd	s1,8(sp)
    80002afc:	02010413          	addi	s0,sp,32
    80002b00:	00050493          	mv	s1,a0
    80002b04:	00002517          	auipc	a0,0x2
    80002b08:	6b450513          	addi	a0,a0,1716 # 800051b8 <_ZZ12printIntegermE6digits+0x140>
    80002b0c:	00004797          	auipc	a5,0x4
    80002b10:	0c07ae23          	sw	zero,220(a5) # 80006be8 <pr+0x18>
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	034080e7          	jalr	52(ra) # 80002b48 <__printf>
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	028080e7          	jalr	40(ra) # 80002b48 <__printf>
    80002b28:	00002517          	auipc	a0,0x2
    80002b2c:	51850513          	addi	a0,a0,1304 # 80005040 <kvmincrease+0xd90>
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	018080e7          	jalr	24(ra) # 80002b48 <__printf>
    80002b38:	00100793          	li	a5,1
    80002b3c:	00003717          	auipc	a4,0x3
    80002b40:	e0f72e23          	sw	a5,-484(a4) # 80005958 <panicked>
    80002b44:	0000006f          	j	80002b44 <panic+0x58>

0000000080002b48 <__printf>:
    80002b48:	f3010113          	addi	sp,sp,-208
    80002b4c:	08813023          	sd	s0,128(sp)
    80002b50:	07313423          	sd	s3,104(sp)
    80002b54:	09010413          	addi	s0,sp,144
    80002b58:	05813023          	sd	s8,64(sp)
    80002b5c:	08113423          	sd	ra,136(sp)
    80002b60:	06913c23          	sd	s1,120(sp)
    80002b64:	07213823          	sd	s2,112(sp)
    80002b68:	07413023          	sd	s4,96(sp)
    80002b6c:	05513c23          	sd	s5,88(sp)
    80002b70:	05613823          	sd	s6,80(sp)
    80002b74:	05713423          	sd	s7,72(sp)
    80002b78:	03913c23          	sd	s9,56(sp)
    80002b7c:	03a13823          	sd	s10,48(sp)
    80002b80:	03b13423          	sd	s11,40(sp)
    80002b84:	00004317          	auipc	t1,0x4
    80002b88:	04c30313          	addi	t1,t1,76 # 80006bd0 <pr>
    80002b8c:	01832c03          	lw	s8,24(t1)
    80002b90:	00b43423          	sd	a1,8(s0)
    80002b94:	00c43823          	sd	a2,16(s0)
    80002b98:	00d43c23          	sd	a3,24(s0)
    80002b9c:	02e43023          	sd	a4,32(s0)
    80002ba0:	02f43423          	sd	a5,40(s0)
    80002ba4:	03043823          	sd	a6,48(s0)
    80002ba8:	03143c23          	sd	a7,56(s0)
    80002bac:	00050993          	mv	s3,a0
    80002bb0:	4a0c1663          	bnez	s8,8000305c <__printf+0x514>
    80002bb4:	60098c63          	beqz	s3,800031cc <__printf+0x684>
    80002bb8:	0009c503          	lbu	a0,0(s3)
    80002bbc:	00840793          	addi	a5,s0,8
    80002bc0:	f6f43c23          	sd	a5,-136(s0)
    80002bc4:	00000493          	li	s1,0
    80002bc8:	22050063          	beqz	a0,80002de8 <__printf+0x2a0>
    80002bcc:	00002a37          	lui	s4,0x2
    80002bd0:	00018ab7          	lui	s5,0x18
    80002bd4:	000f4b37          	lui	s6,0xf4
    80002bd8:	00989bb7          	lui	s7,0x989
    80002bdc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002be0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002be4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002be8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002bec:	00148c9b          	addiw	s9,s1,1
    80002bf0:	02500793          	li	a5,37
    80002bf4:	01998933          	add	s2,s3,s9
    80002bf8:	38f51263          	bne	a0,a5,80002f7c <__printf+0x434>
    80002bfc:	00094783          	lbu	a5,0(s2)
    80002c00:	00078c9b          	sext.w	s9,a5
    80002c04:	1e078263          	beqz	a5,80002de8 <__printf+0x2a0>
    80002c08:	0024849b          	addiw	s1,s1,2
    80002c0c:	07000713          	li	a4,112
    80002c10:	00998933          	add	s2,s3,s1
    80002c14:	38e78a63          	beq	a5,a4,80002fa8 <__printf+0x460>
    80002c18:	20f76863          	bltu	a4,a5,80002e28 <__printf+0x2e0>
    80002c1c:	42a78863          	beq	a5,a0,8000304c <__printf+0x504>
    80002c20:	06400713          	li	a4,100
    80002c24:	40e79663          	bne	a5,a4,80003030 <__printf+0x4e8>
    80002c28:	f7843783          	ld	a5,-136(s0)
    80002c2c:	0007a603          	lw	a2,0(a5)
    80002c30:	00878793          	addi	a5,a5,8
    80002c34:	f6f43c23          	sd	a5,-136(s0)
    80002c38:	42064a63          	bltz	a2,8000306c <__printf+0x524>
    80002c3c:	00a00713          	li	a4,10
    80002c40:	02e677bb          	remuw	a5,a2,a4
    80002c44:	00002d97          	auipc	s11,0x2
    80002c48:	59cd8d93          	addi	s11,s11,1436 # 800051e0 <digits>
    80002c4c:	00900593          	li	a1,9
    80002c50:	0006051b          	sext.w	a0,a2
    80002c54:	00000c93          	li	s9,0
    80002c58:	02079793          	slli	a5,a5,0x20
    80002c5c:	0207d793          	srli	a5,a5,0x20
    80002c60:	00fd87b3          	add	a5,s11,a5
    80002c64:	0007c783          	lbu	a5,0(a5)
    80002c68:	02e656bb          	divuw	a3,a2,a4
    80002c6c:	f8f40023          	sb	a5,-128(s0)
    80002c70:	14c5d863          	bge	a1,a2,80002dc0 <__printf+0x278>
    80002c74:	06300593          	li	a1,99
    80002c78:	00100c93          	li	s9,1
    80002c7c:	02e6f7bb          	remuw	a5,a3,a4
    80002c80:	02079793          	slli	a5,a5,0x20
    80002c84:	0207d793          	srli	a5,a5,0x20
    80002c88:	00fd87b3          	add	a5,s11,a5
    80002c8c:	0007c783          	lbu	a5,0(a5)
    80002c90:	02e6d73b          	divuw	a4,a3,a4
    80002c94:	f8f400a3          	sb	a5,-127(s0)
    80002c98:	12a5f463          	bgeu	a1,a0,80002dc0 <__printf+0x278>
    80002c9c:	00a00693          	li	a3,10
    80002ca0:	00900593          	li	a1,9
    80002ca4:	02d777bb          	remuw	a5,a4,a3
    80002ca8:	02079793          	slli	a5,a5,0x20
    80002cac:	0207d793          	srli	a5,a5,0x20
    80002cb0:	00fd87b3          	add	a5,s11,a5
    80002cb4:	0007c503          	lbu	a0,0(a5)
    80002cb8:	02d757bb          	divuw	a5,a4,a3
    80002cbc:	f8a40123          	sb	a0,-126(s0)
    80002cc0:	48e5f263          	bgeu	a1,a4,80003144 <__printf+0x5fc>
    80002cc4:	06300513          	li	a0,99
    80002cc8:	02d7f5bb          	remuw	a1,a5,a3
    80002ccc:	02059593          	slli	a1,a1,0x20
    80002cd0:	0205d593          	srli	a1,a1,0x20
    80002cd4:	00bd85b3          	add	a1,s11,a1
    80002cd8:	0005c583          	lbu	a1,0(a1)
    80002cdc:	02d7d7bb          	divuw	a5,a5,a3
    80002ce0:	f8b401a3          	sb	a1,-125(s0)
    80002ce4:	48e57263          	bgeu	a0,a4,80003168 <__printf+0x620>
    80002ce8:	3e700513          	li	a0,999
    80002cec:	02d7f5bb          	remuw	a1,a5,a3
    80002cf0:	02059593          	slli	a1,a1,0x20
    80002cf4:	0205d593          	srli	a1,a1,0x20
    80002cf8:	00bd85b3          	add	a1,s11,a1
    80002cfc:	0005c583          	lbu	a1,0(a1)
    80002d00:	02d7d7bb          	divuw	a5,a5,a3
    80002d04:	f8b40223          	sb	a1,-124(s0)
    80002d08:	46e57663          	bgeu	a0,a4,80003174 <__printf+0x62c>
    80002d0c:	02d7f5bb          	remuw	a1,a5,a3
    80002d10:	02059593          	slli	a1,a1,0x20
    80002d14:	0205d593          	srli	a1,a1,0x20
    80002d18:	00bd85b3          	add	a1,s11,a1
    80002d1c:	0005c583          	lbu	a1,0(a1)
    80002d20:	02d7d7bb          	divuw	a5,a5,a3
    80002d24:	f8b402a3          	sb	a1,-123(s0)
    80002d28:	46ea7863          	bgeu	s4,a4,80003198 <__printf+0x650>
    80002d2c:	02d7f5bb          	remuw	a1,a5,a3
    80002d30:	02059593          	slli	a1,a1,0x20
    80002d34:	0205d593          	srli	a1,a1,0x20
    80002d38:	00bd85b3          	add	a1,s11,a1
    80002d3c:	0005c583          	lbu	a1,0(a1)
    80002d40:	02d7d7bb          	divuw	a5,a5,a3
    80002d44:	f8b40323          	sb	a1,-122(s0)
    80002d48:	3eeaf863          	bgeu	s5,a4,80003138 <__printf+0x5f0>
    80002d4c:	02d7f5bb          	remuw	a1,a5,a3
    80002d50:	02059593          	slli	a1,a1,0x20
    80002d54:	0205d593          	srli	a1,a1,0x20
    80002d58:	00bd85b3          	add	a1,s11,a1
    80002d5c:	0005c583          	lbu	a1,0(a1)
    80002d60:	02d7d7bb          	divuw	a5,a5,a3
    80002d64:	f8b403a3          	sb	a1,-121(s0)
    80002d68:	42eb7e63          	bgeu	s6,a4,800031a4 <__printf+0x65c>
    80002d6c:	02d7f5bb          	remuw	a1,a5,a3
    80002d70:	02059593          	slli	a1,a1,0x20
    80002d74:	0205d593          	srli	a1,a1,0x20
    80002d78:	00bd85b3          	add	a1,s11,a1
    80002d7c:	0005c583          	lbu	a1,0(a1)
    80002d80:	02d7d7bb          	divuw	a5,a5,a3
    80002d84:	f8b40423          	sb	a1,-120(s0)
    80002d88:	42ebfc63          	bgeu	s7,a4,800031c0 <__printf+0x678>
    80002d8c:	02079793          	slli	a5,a5,0x20
    80002d90:	0207d793          	srli	a5,a5,0x20
    80002d94:	00fd8db3          	add	s11,s11,a5
    80002d98:	000dc703          	lbu	a4,0(s11)
    80002d9c:	00a00793          	li	a5,10
    80002da0:	00900c93          	li	s9,9
    80002da4:	f8e404a3          	sb	a4,-119(s0)
    80002da8:	00065c63          	bgez	a2,80002dc0 <__printf+0x278>
    80002dac:	f9040713          	addi	a4,s0,-112
    80002db0:	00f70733          	add	a4,a4,a5
    80002db4:	02d00693          	li	a3,45
    80002db8:	fed70823          	sb	a3,-16(a4)
    80002dbc:	00078c93          	mv	s9,a5
    80002dc0:	f8040793          	addi	a5,s0,-128
    80002dc4:	01978cb3          	add	s9,a5,s9
    80002dc8:	f7f40d13          	addi	s10,s0,-129
    80002dcc:	000cc503          	lbu	a0,0(s9)
    80002dd0:	fffc8c93          	addi	s9,s9,-1
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	b90080e7          	jalr	-1136(ra) # 80002964 <consputc>
    80002ddc:	ffac98e3          	bne	s9,s10,80002dcc <__printf+0x284>
    80002de0:	00094503          	lbu	a0,0(s2)
    80002de4:	e00514e3          	bnez	a0,80002bec <__printf+0xa4>
    80002de8:	1a0c1663          	bnez	s8,80002f94 <__printf+0x44c>
    80002dec:	08813083          	ld	ra,136(sp)
    80002df0:	08013403          	ld	s0,128(sp)
    80002df4:	07813483          	ld	s1,120(sp)
    80002df8:	07013903          	ld	s2,112(sp)
    80002dfc:	06813983          	ld	s3,104(sp)
    80002e00:	06013a03          	ld	s4,96(sp)
    80002e04:	05813a83          	ld	s5,88(sp)
    80002e08:	05013b03          	ld	s6,80(sp)
    80002e0c:	04813b83          	ld	s7,72(sp)
    80002e10:	04013c03          	ld	s8,64(sp)
    80002e14:	03813c83          	ld	s9,56(sp)
    80002e18:	03013d03          	ld	s10,48(sp)
    80002e1c:	02813d83          	ld	s11,40(sp)
    80002e20:	0d010113          	addi	sp,sp,208
    80002e24:	00008067          	ret
    80002e28:	07300713          	li	a4,115
    80002e2c:	1ce78a63          	beq	a5,a4,80003000 <__printf+0x4b8>
    80002e30:	07800713          	li	a4,120
    80002e34:	1ee79e63          	bne	a5,a4,80003030 <__printf+0x4e8>
    80002e38:	f7843783          	ld	a5,-136(s0)
    80002e3c:	0007a703          	lw	a4,0(a5)
    80002e40:	00878793          	addi	a5,a5,8
    80002e44:	f6f43c23          	sd	a5,-136(s0)
    80002e48:	28074263          	bltz	a4,800030cc <__printf+0x584>
    80002e4c:	00002d97          	auipc	s11,0x2
    80002e50:	394d8d93          	addi	s11,s11,916 # 800051e0 <digits>
    80002e54:	00f77793          	andi	a5,a4,15
    80002e58:	00fd87b3          	add	a5,s11,a5
    80002e5c:	0007c683          	lbu	a3,0(a5)
    80002e60:	00f00613          	li	a2,15
    80002e64:	0007079b          	sext.w	a5,a4
    80002e68:	f8d40023          	sb	a3,-128(s0)
    80002e6c:	0047559b          	srliw	a1,a4,0x4
    80002e70:	0047569b          	srliw	a3,a4,0x4
    80002e74:	00000c93          	li	s9,0
    80002e78:	0ee65063          	bge	a2,a4,80002f58 <__printf+0x410>
    80002e7c:	00f6f693          	andi	a3,a3,15
    80002e80:	00dd86b3          	add	a3,s11,a3
    80002e84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e88:	0087d79b          	srliw	a5,a5,0x8
    80002e8c:	00100c93          	li	s9,1
    80002e90:	f8d400a3          	sb	a3,-127(s0)
    80002e94:	0cb67263          	bgeu	a2,a1,80002f58 <__printf+0x410>
    80002e98:	00f7f693          	andi	a3,a5,15
    80002e9c:	00dd86b3          	add	a3,s11,a3
    80002ea0:	0006c583          	lbu	a1,0(a3)
    80002ea4:	00f00613          	li	a2,15
    80002ea8:	0047d69b          	srliw	a3,a5,0x4
    80002eac:	f8b40123          	sb	a1,-126(s0)
    80002eb0:	0047d593          	srli	a1,a5,0x4
    80002eb4:	28f67e63          	bgeu	a2,a5,80003150 <__printf+0x608>
    80002eb8:	00f6f693          	andi	a3,a3,15
    80002ebc:	00dd86b3          	add	a3,s11,a3
    80002ec0:	0006c503          	lbu	a0,0(a3)
    80002ec4:	0087d813          	srli	a6,a5,0x8
    80002ec8:	0087d69b          	srliw	a3,a5,0x8
    80002ecc:	f8a401a3          	sb	a0,-125(s0)
    80002ed0:	28b67663          	bgeu	a2,a1,8000315c <__printf+0x614>
    80002ed4:	00f6f693          	andi	a3,a3,15
    80002ed8:	00dd86b3          	add	a3,s11,a3
    80002edc:	0006c583          	lbu	a1,0(a3)
    80002ee0:	00c7d513          	srli	a0,a5,0xc
    80002ee4:	00c7d69b          	srliw	a3,a5,0xc
    80002ee8:	f8b40223          	sb	a1,-124(s0)
    80002eec:	29067a63          	bgeu	a2,a6,80003180 <__printf+0x638>
    80002ef0:	00f6f693          	andi	a3,a3,15
    80002ef4:	00dd86b3          	add	a3,s11,a3
    80002ef8:	0006c583          	lbu	a1,0(a3)
    80002efc:	0107d813          	srli	a6,a5,0x10
    80002f00:	0107d69b          	srliw	a3,a5,0x10
    80002f04:	f8b402a3          	sb	a1,-123(s0)
    80002f08:	28a67263          	bgeu	a2,a0,8000318c <__printf+0x644>
    80002f0c:	00f6f693          	andi	a3,a3,15
    80002f10:	00dd86b3          	add	a3,s11,a3
    80002f14:	0006c683          	lbu	a3,0(a3)
    80002f18:	0147d79b          	srliw	a5,a5,0x14
    80002f1c:	f8d40323          	sb	a3,-122(s0)
    80002f20:	21067663          	bgeu	a2,a6,8000312c <__printf+0x5e4>
    80002f24:	02079793          	slli	a5,a5,0x20
    80002f28:	0207d793          	srli	a5,a5,0x20
    80002f2c:	00fd8db3          	add	s11,s11,a5
    80002f30:	000dc683          	lbu	a3,0(s11)
    80002f34:	00800793          	li	a5,8
    80002f38:	00700c93          	li	s9,7
    80002f3c:	f8d403a3          	sb	a3,-121(s0)
    80002f40:	00075c63          	bgez	a4,80002f58 <__printf+0x410>
    80002f44:	f9040713          	addi	a4,s0,-112
    80002f48:	00f70733          	add	a4,a4,a5
    80002f4c:	02d00693          	li	a3,45
    80002f50:	fed70823          	sb	a3,-16(a4)
    80002f54:	00078c93          	mv	s9,a5
    80002f58:	f8040793          	addi	a5,s0,-128
    80002f5c:	01978cb3          	add	s9,a5,s9
    80002f60:	f7f40d13          	addi	s10,s0,-129
    80002f64:	000cc503          	lbu	a0,0(s9)
    80002f68:	fffc8c93          	addi	s9,s9,-1
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	9f8080e7          	jalr	-1544(ra) # 80002964 <consputc>
    80002f74:	ff9d18e3          	bne	s10,s9,80002f64 <__printf+0x41c>
    80002f78:	0100006f          	j	80002f88 <__printf+0x440>
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	9e8080e7          	jalr	-1560(ra) # 80002964 <consputc>
    80002f84:	000c8493          	mv	s1,s9
    80002f88:	00094503          	lbu	a0,0(s2)
    80002f8c:	c60510e3          	bnez	a0,80002bec <__printf+0xa4>
    80002f90:	e40c0ee3          	beqz	s8,80002dec <__printf+0x2a4>
    80002f94:	00004517          	auipc	a0,0x4
    80002f98:	c3c50513          	addi	a0,a0,-964 # 80006bd0 <pr>
    80002f9c:	00001097          	auipc	ra,0x1
    80002fa0:	94c080e7          	jalr	-1716(ra) # 800038e8 <release>
    80002fa4:	e49ff06f          	j	80002dec <__printf+0x2a4>
    80002fa8:	f7843783          	ld	a5,-136(s0)
    80002fac:	03000513          	li	a0,48
    80002fb0:	01000d13          	li	s10,16
    80002fb4:	00878713          	addi	a4,a5,8
    80002fb8:	0007bc83          	ld	s9,0(a5)
    80002fbc:	f6e43c23          	sd	a4,-136(s0)
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	9a4080e7          	jalr	-1628(ra) # 80002964 <consputc>
    80002fc8:	07800513          	li	a0,120
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	998080e7          	jalr	-1640(ra) # 80002964 <consputc>
    80002fd4:	00002d97          	auipc	s11,0x2
    80002fd8:	20cd8d93          	addi	s11,s11,524 # 800051e0 <digits>
    80002fdc:	03ccd793          	srli	a5,s9,0x3c
    80002fe0:	00fd87b3          	add	a5,s11,a5
    80002fe4:	0007c503          	lbu	a0,0(a5)
    80002fe8:	fffd0d1b          	addiw	s10,s10,-1
    80002fec:	004c9c93          	slli	s9,s9,0x4
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	974080e7          	jalr	-1676(ra) # 80002964 <consputc>
    80002ff8:	fe0d12e3          	bnez	s10,80002fdc <__printf+0x494>
    80002ffc:	f8dff06f          	j	80002f88 <__printf+0x440>
    80003000:	f7843783          	ld	a5,-136(s0)
    80003004:	0007bc83          	ld	s9,0(a5)
    80003008:	00878793          	addi	a5,a5,8
    8000300c:	f6f43c23          	sd	a5,-136(s0)
    80003010:	000c9a63          	bnez	s9,80003024 <__printf+0x4dc>
    80003014:	1080006f          	j	8000311c <__printf+0x5d4>
    80003018:	001c8c93          	addi	s9,s9,1
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	948080e7          	jalr	-1720(ra) # 80002964 <consputc>
    80003024:	000cc503          	lbu	a0,0(s9)
    80003028:	fe0518e3          	bnez	a0,80003018 <__printf+0x4d0>
    8000302c:	f5dff06f          	j	80002f88 <__printf+0x440>
    80003030:	02500513          	li	a0,37
    80003034:	00000097          	auipc	ra,0x0
    80003038:	930080e7          	jalr	-1744(ra) # 80002964 <consputc>
    8000303c:	000c8513          	mv	a0,s9
    80003040:	00000097          	auipc	ra,0x0
    80003044:	924080e7          	jalr	-1756(ra) # 80002964 <consputc>
    80003048:	f41ff06f          	j	80002f88 <__printf+0x440>
    8000304c:	02500513          	li	a0,37
    80003050:	00000097          	auipc	ra,0x0
    80003054:	914080e7          	jalr	-1772(ra) # 80002964 <consputc>
    80003058:	f31ff06f          	j	80002f88 <__printf+0x440>
    8000305c:	00030513          	mv	a0,t1
    80003060:	00000097          	auipc	ra,0x0
    80003064:	7bc080e7          	jalr	1980(ra) # 8000381c <acquire>
    80003068:	b4dff06f          	j	80002bb4 <__printf+0x6c>
    8000306c:	40c0053b          	negw	a0,a2
    80003070:	00a00713          	li	a4,10
    80003074:	02e576bb          	remuw	a3,a0,a4
    80003078:	00002d97          	auipc	s11,0x2
    8000307c:	168d8d93          	addi	s11,s11,360 # 800051e0 <digits>
    80003080:	ff700593          	li	a1,-9
    80003084:	02069693          	slli	a3,a3,0x20
    80003088:	0206d693          	srli	a3,a3,0x20
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c683          	lbu	a3,0(a3)
    80003094:	02e557bb          	divuw	a5,a0,a4
    80003098:	f8d40023          	sb	a3,-128(s0)
    8000309c:	10b65e63          	bge	a2,a1,800031b8 <__printf+0x670>
    800030a0:	06300593          	li	a1,99
    800030a4:	02e7f6bb          	remuw	a3,a5,a4
    800030a8:	02069693          	slli	a3,a3,0x20
    800030ac:	0206d693          	srli	a3,a3,0x20
    800030b0:	00dd86b3          	add	a3,s11,a3
    800030b4:	0006c683          	lbu	a3,0(a3)
    800030b8:	02e7d73b          	divuw	a4,a5,a4
    800030bc:	00200793          	li	a5,2
    800030c0:	f8d400a3          	sb	a3,-127(s0)
    800030c4:	bca5ece3          	bltu	a1,a0,80002c9c <__printf+0x154>
    800030c8:	ce5ff06f          	j	80002dac <__printf+0x264>
    800030cc:	40e007bb          	negw	a5,a4
    800030d0:	00002d97          	auipc	s11,0x2
    800030d4:	110d8d93          	addi	s11,s11,272 # 800051e0 <digits>
    800030d8:	00f7f693          	andi	a3,a5,15
    800030dc:	00dd86b3          	add	a3,s11,a3
    800030e0:	0006c583          	lbu	a1,0(a3)
    800030e4:	ff100613          	li	a2,-15
    800030e8:	0047d69b          	srliw	a3,a5,0x4
    800030ec:	f8b40023          	sb	a1,-128(s0)
    800030f0:	0047d59b          	srliw	a1,a5,0x4
    800030f4:	0ac75e63          	bge	a4,a2,800031b0 <__printf+0x668>
    800030f8:	00f6f693          	andi	a3,a3,15
    800030fc:	00dd86b3          	add	a3,s11,a3
    80003100:	0006c603          	lbu	a2,0(a3)
    80003104:	00f00693          	li	a3,15
    80003108:	0087d79b          	srliw	a5,a5,0x8
    8000310c:	f8c400a3          	sb	a2,-127(s0)
    80003110:	d8b6e4e3          	bltu	a3,a1,80002e98 <__printf+0x350>
    80003114:	00200793          	li	a5,2
    80003118:	e2dff06f          	j	80002f44 <__printf+0x3fc>
    8000311c:	00002c97          	auipc	s9,0x2
    80003120:	0a4c8c93          	addi	s9,s9,164 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80003124:	02800513          	li	a0,40
    80003128:	ef1ff06f          	j	80003018 <__printf+0x4d0>
    8000312c:	00700793          	li	a5,7
    80003130:	00600c93          	li	s9,6
    80003134:	e0dff06f          	j	80002f40 <__printf+0x3f8>
    80003138:	00700793          	li	a5,7
    8000313c:	00600c93          	li	s9,6
    80003140:	c69ff06f          	j	80002da8 <__printf+0x260>
    80003144:	00300793          	li	a5,3
    80003148:	00200c93          	li	s9,2
    8000314c:	c5dff06f          	j	80002da8 <__printf+0x260>
    80003150:	00300793          	li	a5,3
    80003154:	00200c93          	li	s9,2
    80003158:	de9ff06f          	j	80002f40 <__printf+0x3f8>
    8000315c:	00400793          	li	a5,4
    80003160:	00300c93          	li	s9,3
    80003164:	dddff06f          	j	80002f40 <__printf+0x3f8>
    80003168:	00400793          	li	a5,4
    8000316c:	00300c93          	li	s9,3
    80003170:	c39ff06f          	j	80002da8 <__printf+0x260>
    80003174:	00500793          	li	a5,5
    80003178:	00400c93          	li	s9,4
    8000317c:	c2dff06f          	j	80002da8 <__printf+0x260>
    80003180:	00500793          	li	a5,5
    80003184:	00400c93          	li	s9,4
    80003188:	db9ff06f          	j	80002f40 <__printf+0x3f8>
    8000318c:	00600793          	li	a5,6
    80003190:	00500c93          	li	s9,5
    80003194:	dadff06f          	j	80002f40 <__printf+0x3f8>
    80003198:	00600793          	li	a5,6
    8000319c:	00500c93          	li	s9,5
    800031a0:	c09ff06f          	j	80002da8 <__printf+0x260>
    800031a4:	00800793          	li	a5,8
    800031a8:	00700c93          	li	s9,7
    800031ac:	bfdff06f          	j	80002da8 <__printf+0x260>
    800031b0:	00100793          	li	a5,1
    800031b4:	d91ff06f          	j	80002f44 <__printf+0x3fc>
    800031b8:	00100793          	li	a5,1
    800031bc:	bf1ff06f          	j	80002dac <__printf+0x264>
    800031c0:	00900793          	li	a5,9
    800031c4:	00800c93          	li	s9,8
    800031c8:	be1ff06f          	j	80002da8 <__printf+0x260>
    800031cc:	00002517          	auipc	a0,0x2
    800031d0:	ffc50513          	addi	a0,a0,-4 # 800051c8 <_ZZ12printIntegermE6digits+0x150>
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	918080e7          	jalr	-1768(ra) # 80002aec <panic>

00000000800031dc <printfinit>:
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00913423          	sd	s1,8(sp)
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	02010413          	addi	s0,sp,32
    800031f0:	00004497          	auipc	s1,0x4
    800031f4:	9e048493          	addi	s1,s1,-1568 # 80006bd0 <pr>
    800031f8:	00048513          	mv	a0,s1
    800031fc:	00002597          	auipc	a1,0x2
    80003200:	fdc58593          	addi	a1,a1,-36 # 800051d8 <_ZZ12printIntegermE6digits+0x160>
    80003204:	00000097          	auipc	ra,0x0
    80003208:	5f4080e7          	jalr	1524(ra) # 800037f8 <initlock>
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	0004ac23          	sw	zero,24(s1)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	02010113          	addi	sp,sp,32
    80003220:	00008067          	ret

0000000080003224 <uartinit>:
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00813423          	sd	s0,8(sp)
    8000322c:	01010413          	addi	s0,sp,16
    80003230:	100007b7          	lui	a5,0x10000
    80003234:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003238:	f8000713          	li	a4,-128
    8000323c:	00e781a3          	sb	a4,3(a5)
    80003240:	00300713          	li	a4,3
    80003244:	00e78023          	sb	a4,0(a5)
    80003248:	000780a3          	sb	zero,1(a5)
    8000324c:	00e781a3          	sb	a4,3(a5)
    80003250:	00700693          	li	a3,7
    80003254:	00d78123          	sb	a3,2(a5)
    80003258:	00e780a3          	sb	a4,1(a5)
    8000325c:	00813403          	ld	s0,8(sp)
    80003260:	01010113          	addi	sp,sp,16
    80003264:	00008067          	ret

0000000080003268 <uartputc>:
    80003268:	00002797          	auipc	a5,0x2
    8000326c:	6f07a783          	lw	a5,1776(a5) # 80005958 <panicked>
    80003270:	00078463          	beqz	a5,80003278 <uartputc+0x10>
    80003274:	0000006f          	j	80003274 <uartputc+0xc>
    80003278:	fd010113          	addi	sp,sp,-48
    8000327c:	02813023          	sd	s0,32(sp)
    80003280:	00913c23          	sd	s1,24(sp)
    80003284:	01213823          	sd	s2,16(sp)
    80003288:	01313423          	sd	s3,8(sp)
    8000328c:	02113423          	sd	ra,40(sp)
    80003290:	03010413          	addi	s0,sp,48
    80003294:	00002917          	auipc	s2,0x2
    80003298:	6cc90913          	addi	s2,s2,1740 # 80005960 <uart_tx_r>
    8000329c:	00093783          	ld	a5,0(s2)
    800032a0:	00002497          	auipc	s1,0x2
    800032a4:	6c848493          	addi	s1,s1,1736 # 80005968 <uart_tx_w>
    800032a8:	0004b703          	ld	a4,0(s1)
    800032ac:	02078693          	addi	a3,a5,32
    800032b0:	00050993          	mv	s3,a0
    800032b4:	02e69c63          	bne	a3,a4,800032ec <uartputc+0x84>
    800032b8:	00001097          	auipc	ra,0x1
    800032bc:	834080e7          	jalr	-1996(ra) # 80003aec <push_on>
    800032c0:	00093783          	ld	a5,0(s2)
    800032c4:	0004b703          	ld	a4,0(s1)
    800032c8:	02078793          	addi	a5,a5,32
    800032cc:	00e79463          	bne	a5,a4,800032d4 <uartputc+0x6c>
    800032d0:	0000006f          	j	800032d0 <uartputc+0x68>
    800032d4:	00001097          	auipc	ra,0x1
    800032d8:	88c080e7          	jalr	-1908(ra) # 80003b60 <pop_on>
    800032dc:	00093783          	ld	a5,0(s2)
    800032e0:	0004b703          	ld	a4,0(s1)
    800032e4:	02078693          	addi	a3,a5,32
    800032e8:	fce688e3          	beq	a3,a4,800032b8 <uartputc+0x50>
    800032ec:	01f77693          	andi	a3,a4,31
    800032f0:	00004597          	auipc	a1,0x4
    800032f4:	90058593          	addi	a1,a1,-1792 # 80006bf0 <uart_tx_buf>
    800032f8:	00d586b3          	add	a3,a1,a3
    800032fc:	00170713          	addi	a4,a4,1
    80003300:	01368023          	sb	s3,0(a3)
    80003304:	00e4b023          	sd	a4,0(s1)
    80003308:	10000637          	lui	a2,0x10000
    8000330c:	02f71063          	bne	a4,a5,8000332c <uartputc+0xc4>
    80003310:	0340006f          	j	80003344 <uartputc+0xdc>
    80003314:	00074703          	lbu	a4,0(a4)
    80003318:	00f93023          	sd	a5,0(s2)
    8000331c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003320:	00093783          	ld	a5,0(s2)
    80003324:	0004b703          	ld	a4,0(s1)
    80003328:	00f70e63          	beq	a4,a5,80003344 <uartputc+0xdc>
    8000332c:	00564683          	lbu	a3,5(a2)
    80003330:	01f7f713          	andi	a4,a5,31
    80003334:	00e58733          	add	a4,a1,a4
    80003338:	0206f693          	andi	a3,a3,32
    8000333c:	00178793          	addi	a5,a5,1
    80003340:	fc069ae3          	bnez	a3,80003314 <uartputc+0xac>
    80003344:	02813083          	ld	ra,40(sp)
    80003348:	02013403          	ld	s0,32(sp)
    8000334c:	01813483          	ld	s1,24(sp)
    80003350:	01013903          	ld	s2,16(sp)
    80003354:	00813983          	ld	s3,8(sp)
    80003358:	03010113          	addi	sp,sp,48
    8000335c:	00008067          	ret

0000000080003360 <uartputc_sync>:
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00813423          	sd	s0,8(sp)
    80003368:	01010413          	addi	s0,sp,16
    8000336c:	00002717          	auipc	a4,0x2
    80003370:	5ec72703          	lw	a4,1516(a4) # 80005958 <panicked>
    80003374:	02071663          	bnez	a4,800033a0 <uartputc_sync+0x40>
    80003378:	00050793          	mv	a5,a0
    8000337c:	100006b7          	lui	a3,0x10000
    80003380:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003384:	02077713          	andi	a4,a4,32
    80003388:	fe070ce3          	beqz	a4,80003380 <uartputc_sync+0x20>
    8000338c:	0ff7f793          	andi	a5,a5,255
    80003390:	00f68023          	sb	a5,0(a3)
    80003394:	00813403          	ld	s0,8(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret
    800033a0:	0000006f          	j	800033a0 <uartputc_sync+0x40>

00000000800033a4 <uartstart>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	00002617          	auipc	a2,0x2
    800033b4:	5b060613          	addi	a2,a2,1456 # 80005960 <uart_tx_r>
    800033b8:	00002517          	auipc	a0,0x2
    800033bc:	5b050513          	addi	a0,a0,1456 # 80005968 <uart_tx_w>
    800033c0:	00063783          	ld	a5,0(a2)
    800033c4:	00053703          	ld	a4,0(a0)
    800033c8:	04f70263          	beq	a4,a5,8000340c <uartstart+0x68>
    800033cc:	100005b7          	lui	a1,0x10000
    800033d0:	00004817          	auipc	a6,0x4
    800033d4:	82080813          	addi	a6,a6,-2016 # 80006bf0 <uart_tx_buf>
    800033d8:	01c0006f          	j	800033f4 <uartstart+0x50>
    800033dc:	0006c703          	lbu	a4,0(a3)
    800033e0:	00f63023          	sd	a5,0(a2)
    800033e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033e8:	00063783          	ld	a5,0(a2)
    800033ec:	00053703          	ld	a4,0(a0)
    800033f0:	00f70e63          	beq	a4,a5,8000340c <uartstart+0x68>
    800033f4:	01f7f713          	andi	a4,a5,31
    800033f8:	00e806b3          	add	a3,a6,a4
    800033fc:	0055c703          	lbu	a4,5(a1)
    80003400:	00178793          	addi	a5,a5,1
    80003404:	02077713          	andi	a4,a4,32
    80003408:	fc071ae3          	bnez	a4,800033dc <uartstart+0x38>
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <uartgetc>:
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	10000737          	lui	a4,0x10000
    80003428:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000342c:	0017f793          	andi	a5,a5,1
    80003430:	00078c63          	beqz	a5,80003448 <uartgetc+0x30>
    80003434:	00074503          	lbu	a0,0(a4)
    80003438:	0ff57513          	andi	a0,a0,255
    8000343c:	00813403          	ld	s0,8(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret
    80003448:	fff00513          	li	a0,-1
    8000344c:	ff1ff06f          	j	8000343c <uartgetc+0x24>

0000000080003450 <uartintr>:
    80003450:	100007b7          	lui	a5,0x10000
    80003454:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003458:	0017f793          	andi	a5,a5,1
    8000345c:	0a078463          	beqz	a5,80003504 <uartintr+0xb4>
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	02010413          	addi	s0,sp,32
    80003474:	100004b7          	lui	s1,0x10000
    80003478:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000347c:	0ff57513          	andi	a0,a0,255
    80003480:	fffff097          	auipc	ra,0xfffff
    80003484:	534080e7          	jalr	1332(ra) # 800029b4 <consoleintr>
    80003488:	0054c783          	lbu	a5,5(s1)
    8000348c:	0017f793          	andi	a5,a5,1
    80003490:	fe0794e3          	bnez	a5,80003478 <uartintr+0x28>
    80003494:	00002617          	auipc	a2,0x2
    80003498:	4cc60613          	addi	a2,a2,1228 # 80005960 <uart_tx_r>
    8000349c:	00002517          	auipc	a0,0x2
    800034a0:	4cc50513          	addi	a0,a0,1228 # 80005968 <uart_tx_w>
    800034a4:	00063783          	ld	a5,0(a2)
    800034a8:	00053703          	ld	a4,0(a0)
    800034ac:	04f70263          	beq	a4,a5,800034f0 <uartintr+0xa0>
    800034b0:	100005b7          	lui	a1,0x10000
    800034b4:	00003817          	auipc	a6,0x3
    800034b8:	73c80813          	addi	a6,a6,1852 # 80006bf0 <uart_tx_buf>
    800034bc:	01c0006f          	j	800034d8 <uartintr+0x88>
    800034c0:	0006c703          	lbu	a4,0(a3)
    800034c4:	00f63023          	sd	a5,0(a2)
    800034c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034cc:	00063783          	ld	a5,0(a2)
    800034d0:	00053703          	ld	a4,0(a0)
    800034d4:	00f70e63          	beq	a4,a5,800034f0 <uartintr+0xa0>
    800034d8:	01f7f713          	andi	a4,a5,31
    800034dc:	00e806b3          	add	a3,a6,a4
    800034e0:	0055c703          	lbu	a4,5(a1)
    800034e4:	00178793          	addi	a5,a5,1
    800034e8:	02077713          	andi	a4,a4,32
    800034ec:	fc071ae3          	bnez	a4,800034c0 <uartintr+0x70>
    800034f0:	01813083          	ld	ra,24(sp)
    800034f4:	01013403          	ld	s0,16(sp)
    800034f8:	00813483          	ld	s1,8(sp)
    800034fc:	02010113          	addi	sp,sp,32
    80003500:	00008067          	ret
    80003504:	00002617          	auipc	a2,0x2
    80003508:	45c60613          	addi	a2,a2,1116 # 80005960 <uart_tx_r>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	45c50513          	addi	a0,a0,1116 # 80005968 <uart_tx_w>
    80003514:	00063783          	ld	a5,0(a2)
    80003518:	00053703          	ld	a4,0(a0)
    8000351c:	04f70263          	beq	a4,a5,80003560 <uartintr+0x110>
    80003520:	100005b7          	lui	a1,0x10000
    80003524:	00003817          	auipc	a6,0x3
    80003528:	6cc80813          	addi	a6,a6,1740 # 80006bf0 <uart_tx_buf>
    8000352c:	01c0006f          	j	80003548 <uartintr+0xf8>
    80003530:	0006c703          	lbu	a4,0(a3)
    80003534:	00f63023          	sd	a5,0(a2)
    80003538:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000353c:	00063783          	ld	a5,0(a2)
    80003540:	00053703          	ld	a4,0(a0)
    80003544:	02f70063          	beq	a4,a5,80003564 <uartintr+0x114>
    80003548:	01f7f713          	andi	a4,a5,31
    8000354c:	00e806b3          	add	a3,a6,a4
    80003550:	0055c703          	lbu	a4,5(a1)
    80003554:	00178793          	addi	a5,a5,1
    80003558:	02077713          	andi	a4,a4,32
    8000355c:	fc071ae3          	bnez	a4,80003530 <uartintr+0xe0>
    80003560:	00008067          	ret
    80003564:	00008067          	ret

0000000080003568 <kinit>:
    80003568:	fc010113          	addi	sp,sp,-64
    8000356c:	02913423          	sd	s1,40(sp)
    80003570:	fffff7b7          	lui	a5,0xfffff
    80003574:	00004497          	auipc	s1,0x4
    80003578:	6ab48493          	addi	s1,s1,1707 # 80007c1f <end+0xfff>
    8000357c:	02813823          	sd	s0,48(sp)
    80003580:	01313c23          	sd	s3,24(sp)
    80003584:	00f4f4b3          	and	s1,s1,a5
    80003588:	02113c23          	sd	ra,56(sp)
    8000358c:	03213023          	sd	s2,32(sp)
    80003590:	01413823          	sd	s4,16(sp)
    80003594:	01513423          	sd	s5,8(sp)
    80003598:	04010413          	addi	s0,sp,64
    8000359c:	000017b7          	lui	a5,0x1
    800035a0:	01100993          	li	s3,17
    800035a4:	00f487b3          	add	a5,s1,a5
    800035a8:	01b99993          	slli	s3,s3,0x1b
    800035ac:	06f9e063          	bltu	s3,a5,8000360c <kinit+0xa4>
    800035b0:	00003a97          	auipc	s5,0x3
    800035b4:	670a8a93          	addi	s5,s5,1648 # 80006c20 <end>
    800035b8:	0754ec63          	bltu	s1,s5,80003630 <kinit+0xc8>
    800035bc:	0734fa63          	bgeu	s1,s3,80003630 <kinit+0xc8>
    800035c0:	00088a37          	lui	s4,0x88
    800035c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800035c8:	00002917          	auipc	s2,0x2
    800035cc:	3a890913          	addi	s2,s2,936 # 80005970 <kmem>
    800035d0:	00ca1a13          	slli	s4,s4,0xc
    800035d4:	0140006f          	j	800035e8 <kinit+0x80>
    800035d8:	000017b7          	lui	a5,0x1
    800035dc:	00f484b3          	add	s1,s1,a5
    800035e0:	0554e863          	bltu	s1,s5,80003630 <kinit+0xc8>
    800035e4:	0534f663          	bgeu	s1,s3,80003630 <kinit+0xc8>
    800035e8:	00001637          	lui	a2,0x1
    800035ec:	00100593          	li	a1,1
    800035f0:	00048513          	mv	a0,s1
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	5e4080e7          	jalr	1508(ra) # 80003bd8 <__memset>
    800035fc:	00093783          	ld	a5,0(s2)
    80003600:	00f4b023          	sd	a5,0(s1)
    80003604:	00993023          	sd	s1,0(s2)
    80003608:	fd4498e3          	bne	s1,s4,800035d8 <kinit+0x70>
    8000360c:	03813083          	ld	ra,56(sp)
    80003610:	03013403          	ld	s0,48(sp)
    80003614:	02813483          	ld	s1,40(sp)
    80003618:	02013903          	ld	s2,32(sp)
    8000361c:	01813983          	ld	s3,24(sp)
    80003620:	01013a03          	ld	s4,16(sp)
    80003624:	00813a83          	ld	s5,8(sp)
    80003628:	04010113          	addi	sp,sp,64
    8000362c:	00008067          	ret
    80003630:	00002517          	auipc	a0,0x2
    80003634:	bc850513          	addi	a0,a0,-1080 # 800051f8 <digits+0x18>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	4b4080e7          	jalr	1204(ra) # 80002aec <panic>

0000000080003640 <freerange>:
    80003640:	fc010113          	addi	sp,sp,-64
    80003644:	000017b7          	lui	a5,0x1
    80003648:	02913423          	sd	s1,40(sp)
    8000364c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003650:	009504b3          	add	s1,a0,s1
    80003654:	fffff537          	lui	a0,0xfffff
    80003658:	02813823          	sd	s0,48(sp)
    8000365c:	02113c23          	sd	ra,56(sp)
    80003660:	03213023          	sd	s2,32(sp)
    80003664:	01313c23          	sd	s3,24(sp)
    80003668:	01413823          	sd	s4,16(sp)
    8000366c:	01513423          	sd	s5,8(sp)
    80003670:	01613023          	sd	s6,0(sp)
    80003674:	04010413          	addi	s0,sp,64
    80003678:	00a4f4b3          	and	s1,s1,a0
    8000367c:	00f487b3          	add	a5,s1,a5
    80003680:	06f5e463          	bltu	a1,a5,800036e8 <freerange+0xa8>
    80003684:	00003a97          	auipc	s5,0x3
    80003688:	59ca8a93          	addi	s5,s5,1436 # 80006c20 <end>
    8000368c:	0954e263          	bltu	s1,s5,80003710 <freerange+0xd0>
    80003690:	01100993          	li	s3,17
    80003694:	01b99993          	slli	s3,s3,0x1b
    80003698:	0734fc63          	bgeu	s1,s3,80003710 <freerange+0xd0>
    8000369c:	00058a13          	mv	s4,a1
    800036a0:	00002917          	auipc	s2,0x2
    800036a4:	2d090913          	addi	s2,s2,720 # 80005970 <kmem>
    800036a8:	00002b37          	lui	s6,0x2
    800036ac:	0140006f          	j	800036c0 <freerange+0x80>
    800036b0:	000017b7          	lui	a5,0x1
    800036b4:	00f484b3          	add	s1,s1,a5
    800036b8:	0554ec63          	bltu	s1,s5,80003710 <freerange+0xd0>
    800036bc:	0534fa63          	bgeu	s1,s3,80003710 <freerange+0xd0>
    800036c0:	00001637          	lui	a2,0x1
    800036c4:	00100593          	li	a1,1
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	50c080e7          	jalr	1292(ra) # 80003bd8 <__memset>
    800036d4:	00093703          	ld	a4,0(s2)
    800036d8:	016487b3          	add	a5,s1,s6
    800036dc:	00e4b023          	sd	a4,0(s1)
    800036e0:	00993023          	sd	s1,0(s2)
    800036e4:	fcfa76e3          	bgeu	s4,a5,800036b0 <freerange+0x70>
    800036e8:	03813083          	ld	ra,56(sp)
    800036ec:	03013403          	ld	s0,48(sp)
    800036f0:	02813483          	ld	s1,40(sp)
    800036f4:	02013903          	ld	s2,32(sp)
    800036f8:	01813983          	ld	s3,24(sp)
    800036fc:	01013a03          	ld	s4,16(sp)
    80003700:	00813a83          	ld	s5,8(sp)
    80003704:	00013b03          	ld	s6,0(sp)
    80003708:	04010113          	addi	sp,sp,64
    8000370c:	00008067          	ret
    80003710:	00002517          	auipc	a0,0x2
    80003714:	ae850513          	addi	a0,a0,-1304 # 800051f8 <digits+0x18>
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	3d4080e7          	jalr	980(ra) # 80002aec <panic>

0000000080003720 <kfree>:
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00113c23          	sd	ra,24(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	03451793          	slli	a5,a0,0x34
    80003738:	04079c63          	bnez	a5,80003790 <kfree+0x70>
    8000373c:	00003797          	auipc	a5,0x3
    80003740:	4e478793          	addi	a5,a5,1252 # 80006c20 <end>
    80003744:	00050493          	mv	s1,a0
    80003748:	04f56463          	bltu	a0,a5,80003790 <kfree+0x70>
    8000374c:	01100793          	li	a5,17
    80003750:	01b79793          	slli	a5,a5,0x1b
    80003754:	02f57e63          	bgeu	a0,a5,80003790 <kfree+0x70>
    80003758:	00001637          	lui	a2,0x1
    8000375c:	00100593          	li	a1,1
    80003760:	00000097          	auipc	ra,0x0
    80003764:	478080e7          	jalr	1144(ra) # 80003bd8 <__memset>
    80003768:	00002797          	auipc	a5,0x2
    8000376c:	20878793          	addi	a5,a5,520 # 80005970 <kmem>
    80003770:	0007b703          	ld	a4,0(a5)
    80003774:	01813083          	ld	ra,24(sp)
    80003778:	01013403          	ld	s0,16(sp)
    8000377c:	00e4b023          	sd	a4,0(s1)
    80003780:	0097b023          	sd	s1,0(a5)
    80003784:	00813483          	ld	s1,8(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret
    80003790:	00002517          	auipc	a0,0x2
    80003794:	a6850513          	addi	a0,a0,-1432 # 800051f8 <digits+0x18>
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	354080e7          	jalr	852(ra) # 80002aec <panic>

00000000800037a0 <kalloc>:
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	00002797          	auipc	a5,0x2
    800037b8:	1bc78793          	addi	a5,a5,444 # 80005970 <kmem>
    800037bc:	0007b483          	ld	s1,0(a5)
    800037c0:	02048063          	beqz	s1,800037e0 <kalloc+0x40>
    800037c4:	0004b703          	ld	a4,0(s1)
    800037c8:	00001637          	lui	a2,0x1
    800037cc:	00500593          	li	a1,5
    800037d0:	00048513          	mv	a0,s1
    800037d4:	00e7b023          	sd	a4,0(a5)
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	400080e7          	jalr	1024(ra) # 80003bd8 <__memset>
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	01013403          	ld	s0,16(sp)
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	02010113          	addi	sp,sp,32
    800037f4:	00008067          	ret

00000000800037f8 <initlock>:
    800037f8:	ff010113          	addi	sp,sp,-16
    800037fc:	00813423          	sd	s0,8(sp)
    80003800:	01010413          	addi	s0,sp,16
    80003804:	00813403          	ld	s0,8(sp)
    80003808:	00b53423          	sd	a1,8(a0)
    8000380c:	00052023          	sw	zero,0(a0)
    80003810:	00053823          	sd	zero,16(a0)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret

000000008000381c <acquire>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00913423          	sd	s1,8(sp)
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	01213023          	sd	s2,0(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	00050493          	mv	s1,a0
    80003838:	10002973          	csrr	s2,sstatus
    8000383c:	100027f3          	csrr	a5,sstatus
    80003840:	ffd7f793          	andi	a5,a5,-3
    80003844:	10079073          	csrw	sstatus,a5
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	8e8080e7          	jalr	-1816(ra) # 80002130 <mycpu>
    80003850:	07852783          	lw	a5,120(a0)
    80003854:	06078e63          	beqz	a5,800038d0 <acquire+0xb4>
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	8d8080e7          	jalr	-1832(ra) # 80002130 <mycpu>
    80003860:	07852783          	lw	a5,120(a0)
    80003864:	0004a703          	lw	a4,0(s1)
    80003868:	0017879b          	addiw	a5,a5,1
    8000386c:	06f52c23          	sw	a5,120(a0)
    80003870:	04071063          	bnez	a4,800038b0 <acquire+0x94>
    80003874:	00100713          	li	a4,1
    80003878:	00070793          	mv	a5,a4
    8000387c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003880:	0007879b          	sext.w	a5,a5
    80003884:	fe079ae3          	bnez	a5,80003878 <acquire+0x5c>
    80003888:	0ff0000f          	fence
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	8a4080e7          	jalr	-1884(ra) # 80002130 <mycpu>
    80003894:	01813083          	ld	ra,24(sp)
    80003898:	01013403          	ld	s0,16(sp)
    8000389c:	00a4b823          	sd	a0,16(s1)
    800038a0:	00013903          	ld	s2,0(sp)
    800038a4:	00813483          	ld	s1,8(sp)
    800038a8:	02010113          	addi	sp,sp,32
    800038ac:	00008067          	ret
    800038b0:	0104b903          	ld	s2,16(s1)
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	87c080e7          	jalr	-1924(ra) # 80002130 <mycpu>
    800038bc:	faa91ce3          	bne	s2,a0,80003874 <acquire+0x58>
    800038c0:	00002517          	auipc	a0,0x2
    800038c4:	94050513          	addi	a0,a0,-1728 # 80005200 <digits+0x20>
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	224080e7          	jalr	548(ra) # 80002aec <panic>
    800038d0:	00195913          	srli	s2,s2,0x1
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	85c080e7          	jalr	-1956(ra) # 80002130 <mycpu>
    800038dc:	00197913          	andi	s2,s2,1
    800038e0:	07252e23          	sw	s2,124(a0)
    800038e4:	f75ff06f          	j	80003858 <acquire+0x3c>

00000000800038e8 <release>:
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	01213023          	sd	s2,0(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00052783          	lw	a5,0(a0)
    80003904:	00079a63          	bnez	a5,80003918 <release+0x30>
    80003908:	00002517          	auipc	a0,0x2
    8000390c:	90050513          	addi	a0,a0,-1792 # 80005208 <digits+0x28>
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	1dc080e7          	jalr	476(ra) # 80002aec <panic>
    80003918:	01053903          	ld	s2,16(a0)
    8000391c:	00050493          	mv	s1,a0
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	810080e7          	jalr	-2032(ra) # 80002130 <mycpu>
    80003928:	fea910e3          	bne	s2,a0,80003908 <release+0x20>
    8000392c:	0004b823          	sd	zero,16(s1)
    80003930:	0ff0000f          	fence
    80003934:	0f50000f          	fence	iorw,ow
    80003938:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	7f4080e7          	jalr	2036(ra) # 80002130 <mycpu>
    80003944:	100027f3          	csrr	a5,sstatus
    80003948:	0027f793          	andi	a5,a5,2
    8000394c:	04079a63          	bnez	a5,800039a0 <release+0xb8>
    80003950:	07852783          	lw	a5,120(a0)
    80003954:	02f05e63          	blez	a5,80003990 <release+0xa8>
    80003958:	fff7871b          	addiw	a4,a5,-1
    8000395c:	06e52c23          	sw	a4,120(a0)
    80003960:	00071c63          	bnez	a4,80003978 <release+0x90>
    80003964:	07c52783          	lw	a5,124(a0)
    80003968:	00078863          	beqz	a5,80003978 <release+0x90>
    8000396c:	100027f3          	csrr	a5,sstatus
    80003970:	0027e793          	ori	a5,a5,2
    80003974:	10079073          	csrw	sstatus,a5
    80003978:	01813083          	ld	ra,24(sp)
    8000397c:	01013403          	ld	s0,16(sp)
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	00013903          	ld	s2,0(sp)
    80003988:	02010113          	addi	sp,sp,32
    8000398c:	00008067          	ret
    80003990:	00002517          	auipc	a0,0x2
    80003994:	89850513          	addi	a0,a0,-1896 # 80005228 <digits+0x48>
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	154080e7          	jalr	340(ra) # 80002aec <panic>
    800039a0:	00002517          	auipc	a0,0x2
    800039a4:	87050513          	addi	a0,a0,-1936 # 80005210 <digits+0x30>
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	144080e7          	jalr	324(ra) # 80002aec <panic>

00000000800039b0 <holding>:
    800039b0:	00052783          	lw	a5,0(a0)
    800039b4:	00079663          	bnez	a5,800039c0 <holding+0x10>
    800039b8:	00000513          	li	a0,0
    800039bc:	00008067          	ret
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	00113c23          	sd	ra,24(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	01053483          	ld	s1,16(a0)
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	758080e7          	jalr	1880(ra) # 80002130 <mycpu>
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	40a48533          	sub	a0,s1,a0
    800039ec:	00153513          	seqz	a0,a0
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <push_off>:
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00113c23          	sd	ra,24(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	100024f3          	csrr	s1,sstatus
    80003a14:	100027f3          	csrr	a5,sstatus
    80003a18:	ffd7f793          	andi	a5,a5,-3
    80003a1c:	10079073          	csrw	sstatus,a5
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	710080e7          	jalr	1808(ra) # 80002130 <mycpu>
    80003a28:	07852783          	lw	a5,120(a0)
    80003a2c:	02078663          	beqz	a5,80003a58 <push_off+0x5c>
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	700080e7          	jalr	1792(ra) # 80002130 <mycpu>
    80003a38:	07852783          	lw	a5,120(a0)
    80003a3c:	01813083          	ld	ra,24(sp)
    80003a40:	01013403          	ld	s0,16(sp)
    80003a44:	0017879b          	addiw	a5,a5,1
    80003a48:	06f52c23          	sw	a5,120(a0)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret
    80003a58:	0014d493          	srli	s1,s1,0x1
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	6d4080e7          	jalr	1748(ra) # 80002130 <mycpu>
    80003a64:	0014f493          	andi	s1,s1,1
    80003a68:	06952e23          	sw	s1,124(a0)
    80003a6c:	fc5ff06f          	j	80003a30 <push_off+0x34>

0000000080003a70 <pop_off>:
    80003a70:	ff010113          	addi	sp,sp,-16
    80003a74:	00813023          	sd	s0,0(sp)
    80003a78:	00113423          	sd	ra,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	6b0080e7          	jalr	1712(ra) # 80002130 <mycpu>
    80003a88:	100027f3          	csrr	a5,sstatus
    80003a8c:	0027f793          	andi	a5,a5,2
    80003a90:	04079663          	bnez	a5,80003adc <pop_off+0x6c>
    80003a94:	07852783          	lw	a5,120(a0)
    80003a98:	02f05a63          	blez	a5,80003acc <pop_off+0x5c>
    80003a9c:	fff7871b          	addiw	a4,a5,-1
    80003aa0:	06e52c23          	sw	a4,120(a0)
    80003aa4:	00071c63          	bnez	a4,80003abc <pop_off+0x4c>
    80003aa8:	07c52783          	lw	a5,124(a0)
    80003aac:	00078863          	beqz	a5,80003abc <pop_off+0x4c>
    80003ab0:	100027f3          	csrr	a5,sstatus
    80003ab4:	0027e793          	ori	a5,a5,2
    80003ab8:	10079073          	csrw	sstatus,a5
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret
    80003acc:	00001517          	auipc	a0,0x1
    80003ad0:	75c50513          	addi	a0,a0,1884 # 80005228 <digits+0x48>
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	018080e7          	jalr	24(ra) # 80002aec <panic>
    80003adc:	00001517          	auipc	a0,0x1
    80003ae0:	73450513          	addi	a0,a0,1844 # 80005210 <digits+0x30>
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	008080e7          	jalr	8(ra) # 80002aec <panic>

0000000080003aec <push_on>:
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00113c23          	sd	ra,24(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	02010413          	addi	s0,sp,32
    80003b00:	100024f3          	csrr	s1,sstatus
    80003b04:	100027f3          	csrr	a5,sstatus
    80003b08:	0027e793          	ori	a5,a5,2
    80003b0c:	10079073          	csrw	sstatus,a5
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	620080e7          	jalr	1568(ra) # 80002130 <mycpu>
    80003b18:	07852783          	lw	a5,120(a0)
    80003b1c:	02078663          	beqz	a5,80003b48 <push_on+0x5c>
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	610080e7          	jalr	1552(ra) # 80002130 <mycpu>
    80003b28:	07852783          	lw	a5,120(a0)
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	0017879b          	addiw	a5,a5,1
    80003b38:	06f52c23          	sw	a5,120(a0)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret
    80003b48:	0014d493          	srli	s1,s1,0x1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	5e4080e7          	jalr	1508(ra) # 80002130 <mycpu>
    80003b54:	0014f493          	andi	s1,s1,1
    80003b58:	06952e23          	sw	s1,124(a0)
    80003b5c:	fc5ff06f          	j	80003b20 <push_on+0x34>

0000000080003b60 <pop_on>:
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00813023          	sd	s0,0(sp)
    80003b68:	00113423          	sd	ra,8(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	5c0080e7          	jalr	1472(ra) # 80002130 <mycpu>
    80003b78:	100027f3          	csrr	a5,sstatus
    80003b7c:	0027f793          	andi	a5,a5,2
    80003b80:	04078463          	beqz	a5,80003bc8 <pop_on+0x68>
    80003b84:	07852783          	lw	a5,120(a0)
    80003b88:	02f05863          	blez	a5,80003bb8 <pop_on+0x58>
    80003b8c:	fff7879b          	addiw	a5,a5,-1
    80003b90:	06f52c23          	sw	a5,120(a0)
    80003b94:	07853783          	ld	a5,120(a0)
    80003b98:	00079863          	bnez	a5,80003ba8 <pop_on+0x48>
    80003b9c:	100027f3          	csrr	a5,sstatus
    80003ba0:	ffd7f793          	andi	a5,a5,-3
    80003ba4:	10079073          	csrw	sstatus,a5
    80003ba8:	00813083          	ld	ra,8(sp)
    80003bac:	00013403          	ld	s0,0(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret
    80003bb8:	00001517          	auipc	a0,0x1
    80003bbc:	69850513          	addi	a0,a0,1688 # 80005250 <digits+0x70>
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	f2c080e7          	jalr	-212(ra) # 80002aec <panic>
    80003bc8:	00001517          	auipc	a0,0x1
    80003bcc:	66850513          	addi	a0,a0,1640 # 80005230 <digits+0x50>
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	f1c080e7          	jalr	-228(ra) # 80002aec <panic>

0000000080003bd8 <__memset>:
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00813423          	sd	s0,8(sp)
    80003be0:	01010413          	addi	s0,sp,16
    80003be4:	1a060e63          	beqz	a2,80003da0 <__memset+0x1c8>
    80003be8:	40a007b3          	neg	a5,a0
    80003bec:	0077f793          	andi	a5,a5,7
    80003bf0:	00778693          	addi	a3,a5,7
    80003bf4:	00b00813          	li	a6,11
    80003bf8:	0ff5f593          	andi	a1,a1,255
    80003bfc:	fff6071b          	addiw	a4,a2,-1
    80003c00:	1b06e663          	bltu	a3,a6,80003dac <__memset+0x1d4>
    80003c04:	1cd76463          	bltu	a4,a3,80003dcc <__memset+0x1f4>
    80003c08:	1a078e63          	beqz	a5,80003dc4 <__memset+0x1ec>
    80003c0c:	00b50023          	sb	a1,0(a0)
    80003c10:	00100713          	li	a4,1
    80003c14:	1ae78463          	beq	a5,a4,80003dbc <__memset+0x1e4>
    80003c18:	00b500a3          	sb	a1,1(a0)
    80003c1c:	00200713          	li	a4,2
    80003c20:	1ae78a63          	beq	a5,a4,80003dd4 <__memset+0x1fc>
    80003c24:	00b50123          	sb	a1,2(a0)
    80003c28:	00300713          	li	a4,3
    80003c2c:	18e78463          	beq	a5,a4,80003db4 <__memset+0x1dc>
    80003c30:	00b501a3          	sb	a1,3(a0)
    80003c34:	00400713          	li	a4,4
    80003c38:	1ae78263          	beq	a5,a4,80003ddc <__memset+0x204>
    80003c3c:	00b50223          	sb	a1,4(a0)
    80003c40:	00500713          	li	a4,5
    80003c44:	1ae78063          	beq	a5,a4,80003de4 <__memset+0x20c>
    80003c48:	00b502a3          	sb	a1,5(a0)
    80003c4c:	00700713          	li	a4,7
    80003c50:	18e79e63          	bne	a5,a4,80003dec <__memset+0x214>
    80003c54:	00b50323          	sb	a1,6(a0)
    80003c58:	00700e93          	li	t4,7
    80003c5c:	00859713          	slli	a4,a1,0x8
    80003c60:	00e5e733          	or	a4,a1,a4
    80003c64:	01059e13          	slli	t3,a1,0x10
    80003c68:	01c76e33          	or	t3,a4,t3
    80003c6c:	01859313          	slli	t1,a1,0x18
    80003c70:	006e6333          	or	t1,t3,t1
    80003c74:	02059893          	slli	a7,a1,0x20
    80003c78:	40f60e3b          	subw	t3,a2,a5
    80003c7c:	011368b3          	or	a7,t1,a7
    80003c80:	02859813          	slli	a6,a1,0x28
    80003c84:	0108e833          	or	a6,a7,a6
    80003c88:	03059693          	slli	a3,a1,0x30
    80003c8c:	003e589b          	srliw	a7,t3,0x3
    80003c90:	00d866b3          	or	a3,a6,a3
    80003c94:	03859713          	slli	a4,a1,0x38
    80003c98:	00389813          	slli	a6,a7,0x3
    80003c9c:	00f507b3          	add	a5,a0,a5
    80003ca0:	00e6e733          	or	a4,a3,a4
    80003ca4:	000e089b          	sext.w	a7,t3
    80003ca8:	00f806b3          	add	a3,a6,a5
    80003cac:	00e7b023          	sd	a4,0(a5)
    80003cb0:	00878793          	addi	a5,a5,8
    80003cb4:	fed79ce3          	bne	a5,a3,80003cac <__memset+0xd4>
    80003cb8:	ff8e7793          	andi	a5,t3,-8
    80003cbc:	0007871b          	sext.w	a4,a5
    80003cc0:	01d787bb          	addw	a5,a5,t4
    80003cc4:	0ce88e63          	beq	a7,a4,80003da0 <__memset+0x1c8>
    80003cc8:	00f50733          	add	a4,a0,a5
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0017871b          	addiw	a4,a5,1
    80003cd4:	0cc77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0027871b          	addiw	a4,a5,2
    80003ce4:	0ac77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	0037871b          	addiw	a4,a5,3
    80003cf4:	0ac77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	0047871b          	addiw	a4,a5,4
    80003d04:	08c77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	0057871b          	addiw	a4,a5,5
    80003d14:	08c77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	0067871b          	addiw	a4,a5,6
    80003d24:	06c77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0077871b          	addiw	a4,a5,7
    80003d34:	06c77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0087871b          	addiw	a4,a5,8
    80003d44:	04c77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0097871b          	addiw	a4,a5,9
    80003d54:	04c77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	00a7871b          	addiw	a4,a5,10
    80003d64:	02c77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	00b7871b          	addiw	a4,a5,11
    80003d74:	02c77663          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	00c7871b          	addiw	a4,a5,12
    80003d84:	00c77e63          	bgeu	a4,a2,80003da0 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	00d7879b          	addiw	a5,a5,13
    80003d94:	00c7f663          	bgeu	a5,a2,80003da0 <__memset+0x1c8>
    80003d98:	00f507b3          	add	a5,a0,a5
    80003d9c:	00b78023          	sb	a1,0(a5)
    80003da0:	00813403          	ld	s0,8(sp)
    80003da4:	01010113          	addi	sp,sp,16
    80003da8:	00008067          	ret
    80003dac:	00b00693          	li	a3,11
    80003db0:	e55ff06f          	j	80003c04 <__memset+0x2c>
    80003db4:	00300e93          	li	t4,3
    80003db8:	ea5ff06f          	j	80003c5c <__memset+0x84>
    80003dbc:	00100e93          	li	t4,1
    80003dc0:	e9dff06f          	j	80003c5c <__memset+0x84>
    80003dc4:	00000e93          	li	t4,0
    80003dc8:	e95ff06f          	j	80003c5c <__memset+0x84>
    80003dcc:	00000793          	li	a5,0
    80003dd0:	ef9ff06f          	j	80003cc8 <__memset+0xf0>
    80003dd4:	00200e93          	li	t4,2
    80003dd8:	e85ff06f          	j	80003c5c <__memset+0x84>
    80003ddc:	00400e93          	li	t4,4
    80003de0:	e7dff06f          	j	80003c5c <__memset+0x84>
    80003de4:	00500e93          	li	t4,5
    80003de8:	e75ff06f          	j	80003c5c <__memset+0x84>
    80003dec:	00600e93          	li	t4,6
    80003df0:	e6dff06f          	j	80003c5c <__memset+0x84>

0000000080003df4 <__memmove>:
    80003df4:	ff010113          	addi	sp,sp,-16
    80003df8:	00813423          	sd	s0,8(sp)
    80003dfc:	01010413          	addi	s0,sp,16
    80003e00:	0e060863          	beqz	a2,80003ef0 <__memmove+0xfc>
    80003e04:	fff6069b          	addiw	a3,a2,-1
    80003e08:	0006881b          	sext.w	a6,a3
    80003e0c:	0ea5e863          	bltu	a1,a0,80003efc <__memmove+0x108>
    80003e10:	00758713          	addi	a4,a1,7
    80003e14:	00a5e7b3          	or	a5,a1,a0
    80003e18:	40a70733          	sub	a4,a4,a0
    80003e1c:	0077f793          	andi	a5,a5,7
    80003e20:	00f73713          	sltiu	a4,a4,15
    80003e24:	00174713          	xori	a4,a4,1
    80003e28:	0017b793          	seqz	a5,a5
    80003e2c:	00e7f7b3          	and	a5,a5,a4
    80003e30:	10078863          	beqz	a5,80003f40 <__memmove+0x14c>
    80003e34:	00900793          	li	a5,9
    80003e38:	1107f463          	bgeu	a5,a6,80003f40 <__memmove+0x14c>
    80003e3c:	0036581b          	srliw	a6,a2,0x3
    80003e40:	fff8081b          	addiw	a6,a6,-1
    80003e44:	02081813          	slli	a6,a6,0x20
    80003e48:	01d85893          	srli	a7,a6,0x1d
    80003e4c:	00858813          	addi	a6,a1,8
    80003e50:	00058793          	mv	a5,a1
    80003e54:	00050713          	mv	a4,a0
    80003e58:	01088833          	add	a6,a7,a6
    80003e5c:	0007b883          	ld	a7,0(a5)
    80003e60:	00878793          	addi	a5,a5,8
    80003e64:	00870713          	addi	a4,a4,8
    80003e68:	ff173c23          	sd	a7,-8(a4)
    80003e6c:	ff0798e3          	bne	a5,a6,80003e5c <__memmove+0x68>
    80003e70:	ff867713          	andi	a4,a2,-8
    80003e74:	02071793          	slli	a5,a4,0x20
    80003e78:	0207d793          	srli	a5,a5,0x20
    80003e7c:	00f585b3          	add	a1,a1,a5
    80003e80:	40e686bb          	subw	a3,a3,a4
    80003e84:	00f507b3          	add	a5,a0,a5
    80003e88:	06e60463          	beq	a2,a4,80003ef0 <__memmove+0xfc>
    80003e8c:	0005c703          	lbu	a4,0(a1)
    80003e90:	00e78023          	sb	a4,0(a5)
    80003e94:	04068e63          	beqz	a3,80003ef0 <__memmove+0xfc>
    80003e98:	0015c603          	lbu	a2,1(a1)
    80003e9c:	00100713          	li	a4,1
    80003ea0:	00c780a3          	sb	a2,1(a5)
    80003ea4:	04e68663          	beq	a3,a4,80003ef0 <__memmove+0xfc>
    80003ea8:	0025c603          	lbu	a2,2(a1)
    80003eac:	00200713          	li	a4,2
    80003eb0:	00c78123          	sb	a2,2(a5)
    80003eb4:	02e68e63          	beq	a3,a4,80003ef0 <__memmove+0xfc>
    80003eb8:	0035c603          	lbu	a2,3(a1)
    80003ebc:	00300713          	li	a4,3
    80003ec0:	00c781a3          	sb	a2,3(a5)
    80003ec4:	02e68663          	beq	a3,a4,80003ef0 <__memmove+0xfc>
    80003ec8:	0045c603          	lbu	a2,4(a1)
    80003ecc:	00400713          	li	a4,4
    80003ed0:	00c78223          	sb	a2,4(a5)
    80003ed4:	00e68e63          	beq	a3,a4,80003ef0 <__memmove+0xfc>
    80003ed8:	0055c603          	lbu	a2,5(a1)
    80003edc:	00500713          	li	a4,5
    80003ee0:	00c782a3          	sb	a2,5(a5)
    80003ee4:	00e68663          	beq	a3,a4,80003ef0 <__memmove+0xfc>
    80003ee8:	0065c703          	lbu	a4,6(a1)
    80003eec:	00e78323          	sb	a4,6(a5)
    80003ef0:	00813403          	ld	s0,8(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret
    80003efc:	02061713          	slli	a4,a2,0x20
    80003f00:	02075713          	srli	a4,a4,0x20
    80003f04:	00e587b3          	add	a5,a1,a4
    80003f08:	f0f574e3          	bgeu	a0,a5,80003e10 <__memmove+0x1c>
    80003f0c:	02069613          	slli	a2,a3,0x20
    80003f10:	02065613          	srli	a2,a2,0x20
    80003f14:	fff64613          	not	a2,a2
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00c78633          	add	a2,a5,a2
    80003f20:	fff7c683          	lbu	a3,-1(a5)
    80003f24:	fff78793          	addi	a5,a5,-1
    80003f28:	fff70713          	addi	a4,a4,-1
    80003f2c:	00d70023          	sb	a3,0(a4)
    80003f30:	fec798e3          	bne	a5,a2,80003f20 <__memmove+0x12c>
    80003f34:	00813403          	ld	s0,8(sp)
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret
    80003f40:	02069713          	slli	a4,a3,0x20
    80003f44:	02075713          	srli	a4,a4,0x20
    80003f48:	00170713          	addi	a4,a4,1
    80003f4c:	00e50733          	add	a4,a0,a4
    80003f50:	00050793          	mv	a5,a0
    80003f54:	0005c683          	lbu	a3,0(a1)
    80003f58:	00178793          	addi	a5,a5,1
    80003f5c:	00158593          	addi	a1,a1,1
    80003f60:	fed78fa3          	sb	a3,-1(a5)
    80003f64:	fee798e3          	bne	a5,a4,80003f54 <__memmove+0x160>
    80003f68:	f89ff06f          	j	80003ef0 <__memmove+0xfc>

0000000080003f6c <__mem_free>:
    80003f6c:	ff010113          	addi	sp,sp,-16
    80003f70:	00813423          	sd	s0,8(sp)
    80003f74:	01010413          	addi	s0,sp,16
    80003f78:	00002597          	auipc	a1,0x2
    80003f7c:	a0058593          	addi	a1,a1,-1536 # 80005978 <freep>
    80003f80:	0005b783          	ld	a5,0(a1)
    80003f84:	ff050693          	addi	a3,a0,-16
    80003f88:	0007b703          	ld	a4,0(a5)
    80003f8c:	00d7fc63          	bgeu	a5,a3,80003fa4 <__mem_free+0x38>
    80003f90:	00e6ee63          	bltu	a3,a4,80003fac <__mem_free+0x40>
    80003f94:	00e7fc63          	bgeu	a5,a4,80003fac <__mem_free+0x40>
    80003f98:	00070793          	mv	a5,a4
    80003f9c:	0007b703          	ld	a4,0(a5)
    80003fa0:	fed7e8e3          	bltu	a5,a3,80003f90 <__mem_free+0x24>
    80003fa4:	fee7eae3          	bltu	a5,a4,80003f98 <__mem_free+0x2c>
    80003fa8:	fee6f8e3          	bgeu	a3,a4,80003f98 <__mem_free+0x2c>
    80003fac:	ff852803          	lw	a6,-8(a0)
    80003fb0:	02081613          	slli	a2,a6,0x20
    80003fb4:	01c65613          	srli	a2,a2,0x1c
    80003fb8:	00c68633          	add	a2,a3,a2
    80003fbc:	02c70a63          	beq	a4,a2,80003ff0 <__mem_free+0x84>
    80003fc0:	fee53823          	sd	a4,-16(a0)
    80003fc4:	0087a503          	lw	a0,8(a5)
    80003fc8:	02051613          	slli	a2,a0,0x20
    80003fcc:	01c65613          	srli	a2,a2,0x1c
    80003fd0:	00c78633          	add	a2,a5,a2
    80003fd4:	04c68263          	beq	a3,a2,80004018 <__mem_free+0xac>
    80003fd8:	00813403          	ld	s0,8(sp)
    80003fdc:	00d7b023          	sd	a3,0(a5)
    80003fe0:	00f5b023          	sd	a5,0(a1)
    80003fe4:	00000513          	li	a0,0
    80003fe8:	01010113          	addi	sp,sp,16
    80003fec:	00008067          	ret
    80003ff0:	00872603          	lw	a2,8(a4)
    80003ff4:	00073703          	ld	a4,0(a4)
    80003ff8:	0106083b          	addw	a6,a2,a6
    80003ffc:	ff052c23          	sw	a6,-8(a0)
    80004000:	fee53823          	sd	a4,-16(a0)
    80004004:	0087a503          	lw	a0,8(a5)
    80004008:	02051613          	slli	a2,a0,0x20
    8000400c:	01c65613          	srli	a2,a2,0x1c
    80004010:	00c78633          	add	a2,a5,a2
    80004014:	fcc692e3          	bne	a3,a2,80003fd8 <__mem_free+0x6c>
    80004018:	00813403          	ld	s0,8(sp)
    8000401c:	0105053b          	addw	a0,a0,a6
    80004020:	00a7a423          	sw	a0,8(a5)
    80004024:	00e7b023          	sd	a4,0(a5)
    80004028:	00f5b023          	sd	a5,0(a1)
    8000402c:	00000513          	li	a0,0
    80004030:	01010113          	addi	sp,sp,16
    80004034:	00008067          	ret

0000000080004038 <__mem_alloc>:
    80004038:	fc010113          	addi	sp,sp,-64
    8000403c:	02813823          	sd	s0,48(sp)
    80004040:	02913423          	sd	s1,40(sp)
    80004044:	03213023          	sd	s2,32(sp)
    80004048:	01513423          	sd	s5,8(sp)
    8000404c:	02113c23          	sd	ra,56(sp)
    80004050:	01313c23          	sd	s3,24(sp)
    80004054:	01413823          	sd	s4,16(sp)
    80004058:	01613023          	sd	s6,0(sp)
    8000405c:	04010413          	addi	s0,sp,64
    80004060:	00002a97          	auipc	s5,0x2
    80004064:	918a8a93          	addi	s5,s5,-1768 # 80005978 <freep>
    80004068:	00f50913          	addi	s2,a0,15
    8000406c:	000ab683          	ld	a3,0(s5)
    80004070:	00495913          	srli	s2,s2,0x4
    80004074:	0019049b          	addiw	s1,s2,1
    80004078:	00048913          	mv	s2,s1
    8000407c:	0c068c63          	beqz	a3,80004154 <__mem_alloc+0x11c>
    80004080:	0006b503          	ld	a0,0(a3)
    80004084:	00852703          	lw	a4,8(a0)
    80004088:	10977063          	bgeu	a4,s1,80004188 <__mem_alloc+0x150>
    8000408c:	000017b7          	lui	a5,0x1
    80004090:	0009099b          	sext.w	s3,s2
    80004094:	0af4e863          	bltu	s1,a5,80004144 <__mem_alloc+0x10c>
    80004098:	02099a13          	slli	s4,s3,0x20
    8000409c:	01ca5a13          	srli	s4,s4,0x1c
    800040a0:	fff00b13          	li	s6,-1
    800040a4:	0100006f          	j	800040b4 <__mem_alloc+0x7c>
    800040a8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800040ac:	00852703          	lw	a4,8(a0)
    800040b0:	04977463          	bgeu	a4,s1,800040f8 <__mem_alloc+0xc0>
    800040b4:	00050793          	mv	a5,a0
    800040b8:	fea698e3          	bne	a3,a0,800040a8 <__mem_alloc+0x70>
    800040bc:	000a0513          	mv	a0,s4
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	1f0080e7          	jalr	496(ra) # 800042b0 <kvmincrease>
    800040c8:	00050793          	mv	a5,a0
    800040cc:	01050513          	addi	a0,a0,16
    800040d0:	07678e63          	beq	a5,s6,8000414c <__mem_alloc+0x114>
    800040d4:	0137a423          	sw	s3,8(a5)
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	e94080e7          	jalr	-364(ra) # 80003f6c <__mem_free>
    800040e0:	000ab783          	ld	a5,0(s5)
    800040e4:	06078463          	beqz	a5,8000414c <__mem_alloc+0x114>
    800040e8:	0007b503          	ld	a0,0(a5)
    800040ec:	00078693          	mv	a3,a5
    800040f0:	00852703          	lw	a4,8(a0)
    800040f4:	fc9760e3          	bltu	a4,s1,800040b4 <__mem_alloc+0x7c>
    800040f8:	08e48263          	beq	s1,a4,8000417c <__mem_alloc+0x144>
    800040fc:	4127073b          	subw	a4,a4,s2
    80004100:	02071693          	slli	a3,a4,0x20
    80004104:	01c6d693          	srli	a3,a3,0x1c
    80004108:	00e52423          	sw	a4,8(a0)
    8000410c:	00d50533          	add	a0,a0,a3
    80004110:	01252423          	sw	s2,8(a0)
    80004114:	00fab023          	sd	a5,0(s5)
    80004118:	01050513          	addi	a0,a0,16
    8000411c:	03813083          	ld	ra,56(sp)
    80004120:	03013403          	ld	s0,48(sp)
    80004124:	02813483          	ld	s1,40(sp)
    80004128:	02013903          	ld	s2,32(sp)
    8000412c:	01813983          	ld	s3,24(sp)
    80004130:	01013a03          	ld	s4,16(sp)
    80004134:	00813a83          	ld	s5,8(sp)
    80004138:	00013b03          	ld	s6,0(sp)
    8000413c:	04010113          	addi	sp,sp,64
    80004140:	00008067          	ret
    80004144:	000019b7          	lui	s3,0x1
    80004148:	f51ff06f          	j	80004098 <__mem_alloc+0x60>
    8000414c:	00000513          	li	a0,0
    80004150:	fcdff06f          	j	8000411c <__mem_alloc+0xe4>
    80004154:	00003797          	auipc	a5,0x3
    80004158:	abc78793          	addi	a5,a5,-1348 # 80006c10 <base>
    8000415c:	00078513          	mv	a0,a5
    80004160:	00fab023          	sd	a5,0(s5)
    80004164:	00f7b023          	sd	a5,0(a5)
    80004168:	00000713          	li	a4,0
    8000416c:	00003797          	auipc	a5,0x3
    80004170:	aa07a623          	sw	zero,-1364(a5) # 80006c18 <base+0x8>
    80004174:	00050693          	mv	a3,a0
    80004178:	f11ff06f          	j	80004088 <__mem_alloc+0x50>
    8000417c:	00053703          	ld	a4,0(a0)
    80004180:	00e7b023          	sd	a4,0(a5)
    80004184:	f91ff06f          	j	80004114 <__mem_alloc+0xdc>
    80004188:	00068793          	mv	a5,a3
    8000418c:	f6dff06f          	j	800040f8 <__mem_alloc+0xc0>

0000000080004190 <__putc>:
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00813823          	sd	s0,16(sp)
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	02010413          	addi	s0,sp,32
    800041a0:	00050793          	mv	a5,a0
    800041a4:	fef40593          	addi	a1,s0,-17
    800041a8:	00100613          	li	a2,1
    800041ac:	00000513          	li	a0,0
    800041b0:	fef407a3          	sb	a5,-17(s0)
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	918080e7          	jalr	-1768(ra) # 80002acc <console_write>
    800041bc:	01813083          	ld	ra,24(sp)
    800041c0:	01013403          	ld	s0,16(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <__getc>:
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	fe840593          	addi	a1,s0,-24
    800041e0:	00100613          	li	a2,1
    800041e4:	00000513          	li	a0,0
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	8c4080e7          	jalr	-1852(ra) # 80002aac <console_read>
    800041f0:	fe844503          	lbu	a0,-24(s0)
    800041f4:	01813083          	ld	ra,24(sp)
    800041f8:	01013403          	ld	s0,16(sp)
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret

0000000080004204 <console_handler>:
    80004204:	fe010113          	addi	sp,sp,-32
    80004208:	00813823          	sd	s0,16(sp)
    8000420c:	00113c23          	sd	ra,24(sp)
    80004210:	00913423          	sd	s1,8(sp)
    80004214:	02010413          	addi	s0,sp,32
    80004218:	14202773          	csrr	a4,scause
    8000421c:	100027f3          	csrr	a5,sstatus
    80004220:	0027f793          	andi	a5,a5,2
    80004224:	06079e63          	bnez	a5,800042a0 <console_handler+0x9c>
    80004228:	00074c63          	bltz	a4,80004240 <console_handler+0x3c>
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret
    80004240:	0ff77713          	andi	a4,a4,255
    80004244:	00900793          	li	a5,9
    80004248:	fef712e3          	bne	a4,a5,8000422c <console_handler+0x28>
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	4b8080e7          	jalr	1208(ra) # 80002704 <plic_claim>
    80004254:	00a00793          	li	a5,10
    80004258:	00050493          	mv	s1,a0
    8000425c:	02f50c63          	beq	a0,a5,80004294 <console_handler+0x90>
    80004260:	fc0506e3          	beqz	a0,8000422c <console_handler+0x28>
    80004264:	00050593          	mv	a1,a0
    80004268:	00001517          	auipc	a0,0x1
    8000426c:	ef050513          	addi	a0,a0,-272 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    80004270:	fffff097          	auipc	ra,0xfffff
    80004274:	8d8080e7          	jalr	-1832(ra) # 80002b48 <__printf>
    80004278:	01013403          	ld	s0,16(sp)
    8000427c:	01813083          	ld	ra,24(sp)
    80004280:	00048513          	mv	a0,s1
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	02010113          	addi	sp,sp,32
    8000428c:	ffffe317          	auipc	t1,0xffffe
    80004290:	4b030067          	jr	1200(t1) # 8000273c <plic_complete>
    80004294:	fffff097          	auipc	ra,0xfffff
    80004298:	1bc080e7          	jalr	444(ra) # 80003450 <uartintr>
    8000429c:	fddff06f          	j	80004278 <console_handler+0x74>
    800042a0:	00001517          	auipc	a0,0x1
    800042a4:	fb850513          	addi	a0,a0,-72 # 80005258 <digits+0x78>
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	844080e7          	jalr	-1980(ra) # 80002aec <panic>

00000000800042b0 <kvmincrease>:
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	01213023          	sd	s2,0(sp)
    800042b8:	00001937          	lui	s2,0x1
    800042bc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00113c23          	sd	ra,24(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	01250933          	add	s2,a0,s2
    800042d4:	00c95913          	srli	s2,s2,0xc
    800042d8:	02090863          	beqz	s2,80004308 <kvmincrease+0x58>
    800042dc:	00000493          	li	s1,0
    800042e0:	00148493          	addi	s1,s1,1
    800042e4:	fffff097          	auipc	ra,0xfffff
    800042e8:	4bc080e7          	jalr	1212(ra) # 800037a0 <kalloc>
    800042ec:	fe991ae3          	bne	s2,s1,800042e0 <kvmincrease+0x30>
    800042f0:	01813083          	ld	ra,24(sp)
    800042f4:	01013403          	ld	s0,16(sp)
    800042f8:	00813483          	ld	s1,8(sp)
    800042fc:	00013903          	ld	s2,0(sp)
    80004300:	02010113          	addi	sp,sp,32
    80004304:	00008067          	ret
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	00000513          	li	a0,0
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret
	...

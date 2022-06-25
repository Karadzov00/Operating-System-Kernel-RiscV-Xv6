
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	90013103          	ld	sp,-1792(sp) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6dd010ef          	jal	ra,80001ef8 <start>

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
    80001080:	3c1000ef          	jal	ra,80001c40 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000115c:	c24080e7          	jalr	-988(ra) # 80001d7c <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000118c:	7e870713          	addi	a4,a4,2024 # 80005970 <_ZN7_thread8globalIdE>
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
    800011e8:	574080e7          	jalr	1396(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
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
    80001244:	73048493          	addi	s1,s1,1840 # 80005970 <_ZN7_thread8globalIdE>
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
    80001298:	6e44b483          	ld	s1,1764(s1) # 80005978 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    8000129c:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a0:	02078c63          	beqz	a5,800012d8 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	44c080e7          	jalr	1100(ra) # 800016f0 <_ZN9Scheduler3getEv>
    800012ac:	00004797          	auipc	a5,0x4
    800012b0:	6ca7b623          	sd	a0,1740(a5) # 80005978 <_ZN7_thread7runningE>
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
    800012e0:	47c080e7          	jalr	1148(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
    800012e4:	fc1ff06f          	j	800012a4 <_ZN7_thread8dispatchEv+0x24>

00000000800012e8 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	a84080e7          	jalr	-1404(ra) # 80001d7c <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001324:	a5c080e7          	jalr	-1444(ra) # 80001d7c <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000134c:	a5c080e7          	jalr	-1444(ra) # 80001da4 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013c4:	6a8080e7          	jalr	1704(ra) # 80006a68 <_Unwind_Resume>
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
    800013fc:	9ac080e7          	jalr	-1620(ra) # 80001da4 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001508:	00050513          	mv	a0,a0

    return ret;


}
    8000150c:	0005051b          	sext.w	a0,a0
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
    8000158c:	fd010113          	addi	sp,sp,-48
    80001590:	02113423          	sd	ra,40(sp)
    80001594:	02813023          	sd	s0,32(sp)
    80001598:	03010413          	addi	s0,sp,48


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    8000159c:	00004797          	auipc	a5,0x4
    800015a0:	35c7b783          	ld	a5,860(a5) # 800058f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015a4:	10579073          	csrw	stvec,a5

    _thread* threads[3];

    if(!thread_create(&threads[0], nullptr, nullptr)){
    800015a8:	00000613          	li	a2,0
    800015ac:	00000593          	li	a1,0
    800015b0:	fd840513          	addi	a0,s0,-40
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f24080e7          	jalr	-220(ra) # 800014d8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015bc:	06050a63          	beqz	a0,80001630 <main+0xa4>
        printString("thread created");
    }
    threads[0]->start();
    800015c0:	fd843503          	ld	a0,-40(s0)
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	c08080e7          	jalr	-1016(ra) # 800011cc <_ZN7_thread5startEv>
    _thread::running=threads[0];
    800015cc:	fd843703          	ld	a4,-40(s0)
    800015d0:	00004797          	auipc	a5,0x4
    800015d4:	3207b783          	ld	a5,800(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015d8:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyA, nullptr)){
    800015dc:	00000613          	li	a2,0
    800015e0:	00004597          	auipc	a1,0x4
    800015e4:	3285b583          	ld	a1,808(a1) # 80005908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015e8:	fe040513          	addi	a0,s0,-32
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	eec080e7          	jalr	-276(ra) # 800014d8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015f4:	04050863          	beqz	a0,80001644 <main+0xb8>
        printString("thread created");
    }
    threads[1]->start();
    800015f8:	fe043503          	ld	a0,-32(s0)
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	bd0080e7          	jalr	-1072(ra) # 800011cc <_ZN7_thread5startEv>

    if(!thread_create(&threads[2], workerBodyB, nullptr)){
    80001604:	00000613          	li	a2,0
    80001608:	00004597          	auipc	a1,0x4
    8000160c:	3085b583          	ld	a1,776(a1) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001610:	fe840513          	addi	a0,s0,-24
    80001614:	00000097          	auipc	ra,0x0
    80001618:	ec4080e7          	jalr	-316(ra) # 800014d8 <_Z13thread_createPP7_threadPFvPvES2_>
    8000161c:	02050e63          	beqz	a0,80001658 <main+0xcc>
        printString("thread created");
    }
    threads[2]->start();
    80001620:	fe843503          	ld	a0,-24(s0)
    80001624:	00000097          	auipc	ra,0x0
    80001628:	ba8080e7          	jalr	-1112(ra) # 800011cc <_ZN7_thread5startEv>
    8000162c:	0480006f          	j	80001674 <main+0xe8>
        printString("thread created");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	9d050513          	addi	a0,a0,-1584 # 80005000 <kvmincrease+0xd00>
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	794080e7          	jalr	1940(ra) # 80001dcc <_Z11printStringPKc>
    80001640:	f81ff06f          	j	800015c0 <main+0x34>
        printString("thread created");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	9bc50513          	addi	a0,a0,-1604 # 80005000 <kvmincrease+0xd00>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	780080e7          	jalr	1920(ra) # 80001dcc <_Z11printStringPKc>
    80001654:	fa5ff06f          	j	800015f8 <main+0x6c>
        printString("thread created");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	9a850513          	addi	a0,a0,-1624 # 80005000 <kvmincrease+0xd00>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	76c080e7          	jalr	1900(ra) # 80001dcc <_Z11printStringPKc>
    80001668:	fb9ff06f          	j	80001620 <main+0x94>

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	b94080e7          	jalr	-1132(ra) # 80001200 <_ZN7_thread5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001674:	fe043783          	ld	a5,-32(s0)
    80001678:	0287c783          	lbu	a5,40(a5)
    8000167c:	fe0788e3          	beqz	a5,8000166c <main+0xe0>
    80001680:	fe843783          	ld	a5,-24(s0)
    80001684:	0287c783          	lbu	a5,40(a5)
    80001688:	fe0782e3          	beqz	a5,8000166c <main+0xe0>
    }


    printString("finished \n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	98450513          	addi	a0,a0,-1660 # 80005010 <kvmincrease+0xd10>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	738080e7          	jalr	1848(ra) # 80001dcc <_Z11printStringPKc>

    return 0;
}
    8000169c:	00000513          	li	a0,0
    800016a0:	02813083          	ld	ra,40(sp)
    800016a4:	02013403          	ld	s0,32(sp)
    800016a8:	03010113          	addi	sp,sp,48
    800016ac:	00008067          	ret

00000000800016b0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00813423          	sd	s0,8(sp)
    800016b8:	01010413          	addi	s0,sp,16
    800016bc:	00100793          	li	a5,1
    800016c0:	00f50863          	beq	a0,a5,800016d0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800016c4:	00813403          	ld	s0,8(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret
    800016d0:	000107b7          	lui	a5,0x10
    800016d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016d8:	fef596e3          	bne	a1,a5,800016c4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800016dc:	00004797          	auipc	a5,0x4
    800016e0:	2ac78793          	addi	a5,a5,684 # 80005988 <_ZN9Scheduler16readyThreadQueueE>
    800016e4:	0007b023          	sd	zero,0(a5)
    800016e8:	0007b423          	sd	zero,8(a5)
    800016ec:	fd9ff06f          	j	800016c4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800016f0 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001704:	00004517          	auipc	a0,0x4
    80001708:	28453503          	ld	a0,644(a0) # 80005988 <_ZN9Scheduler16readyThreadQueueE>
    8000170c:	04050263          	beqz	a0,80001750 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001710:	00853783          	ld	a5,8(a0)
    80001714:	00004717          	auipc	a4,0x4
    80001718:	26f73a23          	sd	a5,628(a4) # 80005988 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000171c:	02078463          	beqz	a5,80001744 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001720:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001724:	00000097          	auipc	ra,0x0
    80001728:	680080e7          	jalr	1664(ra) # 80001da4 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000172c:	00048513          	mv	a0,s1
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret
        if (!head) { tail = 0; }
    80001744:	00004797          	auipc	a5,0x4
    80001748:	2407b623          	sd	zero,588(a5) # 80005990 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000174c:	fd5ff06f          	j	80001720 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001750:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001754:	fd9ff06f          	j	8000172c <_ZN9Scheduler3getEv+0x3c>

0000000080001758 <_ZN9Scheduler3putEP7_thread>:
{
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001770:	01000513          	li	a0,16
    80001774:	00000097          	auipc	ra,0x0
    80001778:	608080e7          	jalr	1544(ra) # 80001d7c <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    8000177c:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001780:	00053423          	sd	zero,8(a0)
        if (tail)
    80001784:	00004797          	auipc	a5,0x4
    80001788:	20c7b783          	ld	a5,524(a5) # 80005990 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000178c:	02078263          	beqz	a5,800017b0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001790:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001794:	00004797          	auipc	a5,0x4
    80001798:	1ea7be23          	sd	a0,508(a5) # 80005990 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret
            head = tail = elem;
    800017b0:	00004797          	auipc	a5,0x4
    800017b4:	1d878793          	addi	a5,a5,472 # 80005988 <_ZN9Scheduler16readyThreadQueueE>
    800017b8:	00a7b423          	sd	a0,8(a5)
    800017bc:	00a7b023          	sd	a0,0(a5)
    800017c0:	fddff06f          	j	8000179c <_ZN9Scheduler3putEP7_thread+0x44>

00000000800017c4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    800017d4:	000105b7          	lui	a1,0x10
    800017d8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017dc:	00100513          	li	a0,1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	ed0080e7          	jalr	-304(ra) # 800016b0 <_Z41__static_initialization_and_destruction_0ii>
    800017e8:	00813083          	ld	ra,8(sp)
    800017ec:	00013403          	ld	s0,0(sp)
    800017f0:	01010113          	addi	sp,sp,16
    800017f4:	00008067          	ret

00000000800017f8 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800017f8:	ff010113          	addi	sp,sp,-16
    800017fc:	00113423          	sd	ra,8(sp)
    80001800:	00813023          	sd	s0,0(sp)
    80001804:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	c44080e7          	jalr	-956(ra) # 8000144c <_Z9mem_allocm>
}
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Znam>:

void* operator new[](size_t n){
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001830:	00000097          	auipc	ra,0x0
    80001834:	c1c080e7          	jalr	-996(ra) # 8000144c <_Z9mem_allocm>
}
    80001838:	00813083          	ld	ra,8(sp)
    8000183c:	00013403          	ld	s0,0(sp)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret

0000000080001848 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00113423          	sd	ra,8(sp)
    80001850:	00813023          	sd	s0,0(sp)
    80001854:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	c40080e7          	jalr	-960(ra) # 80001498 <_Z8mem_freePv>
}
    80001860:	00813083          	ld	ra,8(sp)
    80001864:	00013403          	ld	s0,0(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001870:	ff010113          	addi	sp,sp,-16
    80001874:	00113423          	sd	ra,8(sp)
    80001878:	00813023          	sd	s0,0(sp)
    8000187c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001880:	00000097          	auipc	ra,0x0
    80001884:	c18080e7          	jalr	-1000(ra) # 80001498 <_Z8mem_freePv>

}
    80001888:	00813083          	ld	ra,8(sp)
    8000188c:	00013403          	ld	s0,0(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret

0000000080001898 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    80001898:	fe010113          	addi	sp,sp,-32
    8000189c:	00113c23          	sd	ra,24(sp)
    800018a0:	00813823          	sd	s0,16(sp)
    800018a4:	00913423          	sd	s1,8(sp)
    800018a8:	01213023          	sd	s2,0(sp)
    800018ac:	02010413          	addi	s0,sp,32
    800018b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800018b4:	00100793          	li	a5,1
    800018b8:	02a7f663          	bgeu	a5,a0,800018e4 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    800018bc:	00357793          	andi	a5,a0,3
    800018c0:	02078e63          	beqz	a5,800018fc <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800018c4:	fff48513          	addi	a0,s1,-1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	fd0080e7          	jalr	-48(ra) # 80001898 <_ZL9fibonaccim>
    800018d0:	00050913          	mv	s2,a0
    800018d4:	ffe48513          	addi	a0,s1,-2
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	fc0080e7          	jalr	-64(ra) # 80001898 <_ZL9fibonaccim>
    800018e0:	00a90533          	add	a0,s2,a0
}
    800018e4:	01813083          	ld	ra,24(sp)
    800018e8:	01013403          	ld	s0,16(sp)
    800018ec:	00813483          	ld	s1,8(sp)
    800018f0:	00013903          	ld	s2,0(sp)
    800018f4:	02010113          	addi	sp,sp,32
    800018f8:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	904080e7          	jalr	-1788(ra) # 80001200 <_ZN7_thread5yieldEv>
    80001904:	fc1ff06f          	j	800018c4 <_ZL9fibonaccim+0x2c>

0000000080001908 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001920:	00000493          	li	s1,0
    80001924:	0380006f          	j	8000195c <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	6f850513          	addi	a0,a0,1784 # 80005020 <kvmincrease+0xd20>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	49c080e7          	jalr	1180(ra) # 80001dcc <_Z11printStringPKc>
        printInteger(i);
    80001938:	00048513          	mv	a0,s1
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	500080e7          	jalr	1280(ra) # 80001e3c <_Z12printIntegerm>
        printString("\n");
    80001944:	00003517          	auipc	a0,0x3
    80001948:	6ec50513          	addi	a0,a0,1772 # 80005030 <kvmincrease+0xd30>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	480080e7          	jalr	1152(ra) # 80001dcc <_Z11printStringPKc>
    for (; i < 3; i++)
    80001954:	0014849b          	addiw	s1,s1,1
    80001958:	0ff4f493          	andi	s1,s1,255
    8000195c:	00200793          	li	a5,2
    80001960:	fc97f4e3          	bgeu	a5,s1,80001928 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6c450513          	addi	a0,a0,1732 # 80005028 <kvmincrease+0xd28>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	460080e7          	jalr	1120(ra) # 80001dcc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001974:	00700313          	li	t1,7
    _thread::yield();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	888080e7          	jalr	-1912(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001980:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6b450513          	addi	a0,a0,1716 # 80005038 <kvmincrease+0xd38>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	440080e7          	jalr	1088(ra) # 80001dcc <_Z11printStringPKc>
    printInteger(t1);
    80001994:	00090513          	mv	a0,s2
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	4a4080e7          	jalr	1188(ra) # 80001e3c <_Z12printIntegerm>
    printString("\n");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	69050513          	addi	a0,a0,1680 # 80005030 <kvmincrease+0xd30>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	424080e7          	jalr	1060(ra) # 80001dcc <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800019b0:	01400513          	li	a0,20
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	ee4080e7          	jalr	-284(ra) # 80001898 <_ZL9fibonaccim>
    800019bc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	68050513          	addi	a0,a0,1664 # 80005040 <kvmincrease+0xd40>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	404080e7          	jalr	1028(ra) # 80001dcc <_Z11printStringPKc>
    printInteger(result);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	468080e7          	jalr	1128(ra) # 80001e3c <_Z12printIntegerm>
    printString("\n");
    800019dc:	00003517          	auipc	a0,0x3
    800019e0:	65450513          	addi	a0,a0,1620 # 80005030 <kvmincrease+0xd30>
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	3e8080e7          	jalr	1000(ra) # 80001dcc <_Z11printStringPKc>
    800019ec:	0380006f          	j	80001a24 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019f0:	00003517          	auipc	a0,0x3
    800019f4:	63050513          	addi	a0,a0,1584 # 80005020 <kvmincrease+0xd20>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	3d4080e7          	jalr	980(ra) # 80001dcc <_Z11printStringPKc>
        printInteger(i);
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	438080e7          	jalr	1080(ra) # 80001e3c <_Z12printIntegerm>
        printString("\n");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	62450513          	addi	a0,a0,1572 # 80005030 <kvmincrease+0xd30>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	3b8080e7          	jalr	952(ra) # 80001dcc <_Z11printStringPKc>
    for (; i < 6; i++)
    80001a1c:	0014849b          	addiw	s1,s1,1
    80001a20:	0ff4f493          	andi	s1,s1,255
    80001a24:	00500793          	li	a5,5
    80001a28:	fc97f4e3          	bgeu	a5,s1,800019f0 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	ec47b783          	ld	a5,-316(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a34:	0007b783          	ld	a5,0(a5)

    uint64 getTimeSlice() const { return timeSlice; }
    80001a38:	00100713          	li	a4,1
    80001a3c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a40:	fffff097          	auipc	ra,0xfffff
    80001a44:	7c0080e7          	jalr	1984(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	00013903          	ld	s2,0(sp)
    80001a58:	02010113          	addi	sp,sp,32
    80001a5c:	00008067          	ret

0000000080001a60 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001a60:	fe010113          	addi	sp,sp,-32
    80001a64:	00113c23          	sd	ra,24(sp)
    80001a68:	00813823          	sd	s0,16(sp)
    80001a6c:	00913423          	sd	s1,8(sp)
    80001a70:	01213023          	sd	s2,0(sp)
    80001a74:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a78:	00a00493          	li	s1,10
    80001a7c:	0380006f          	j	80001ab4 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	5d050513          	addi	a0,a0,1488 # 80005050 <kvmincrease+0xd50>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	344080e7          	jalr	836(ra) # 80001dcc <_Z11printStringPKc>
        printInteger(i);
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	3a8080e7          	jalr	936(ra) # 80001e3c <_Z12printIntegerm>
        printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	59450513          	addi	a0,a0,1428 # 80005030 <kvmincrease+0xd30>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	328080e7          	jalr	808(ra) # 80001dcc <_Z11printStringPKc>
    for (; i < 13; i++)
    80001aac:	0014849b          	addiw	s1,s1,1
    80001ab0:	0ff4f493          	andi	s1,s1,255
    80001ab4:	00c00793          	li	a5,12
    80001ab8:	fc97f4e3          	bgeu	a5,s1,80001a80 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001abc:	00003517          	auipc	a0,0x3
    80001ac0:	59c50513          	addi	a0,a0,1436 # 80005058 <kvmincrease+0xd58>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	308080e7          	jalr	776(ra) # 80001dcc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001acc:	00500313          	li	t1,5
    _thread::yield();
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	730080e7          	jalr	1840(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001ad8:	01700513          	li	a0,23
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	dbc080e7          	jalr	-580(ra) # 80001898 <_ZL9fibonaccim>
    80001ae4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	55850513          	addi	a0,a0,1368 # 80005040 <kvmincrease+0xd40>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	2dc080e7          	jalr	732(ra) # 80001dcc <_Z11printStringPKc>
    printInteger(result);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	340080e7          	jalr	832(ra) # 80001e3c <_Z12printIntegerm>
    printString("\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	52c50513          	addi	a0,a0,1324 # 80005030 <kvmincrease+0xd30>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	2c0080e7          	jalr	704(ra) # 80001dcc <_Z11printStringPKc>
    80001b14:	0380006f          	j	80001b4c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	53850513          	addi	a0,a0,1336 # 80005050 <kvmincrease+0xd50>
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	2ac080e7          	jalr	684(ra) # 80001dcc <_Z11printStringPKc>
        printInteger(i);
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	310080e7          	jalr	784(ra) # 80001e3c <_Z12printIntegerm>
        printString("\n");
    80001b34:	00003517          	auipc	a0,0x3
    80001b38:	4fc50513          	addi	a0,a0,1276 # 80005030 <kvmincrease+0xd30>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	290080e7          	jalr	656(ra) # 80001dcc <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b44:	0014849b          	addiw	s1,s1,1
    80001b48:	0ff4f493          	andi	s1,s1,255
    80001b4c:	00f00793          	li	a5,15
    80001b50:	fc97f4e3          	bgeu	a5,s1,80001b18 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b54:	00004797          	auipc	a5,0x4
    80001b58:	d9c7b783          	ld	a5,-612(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b5c:	0007b783          	ld	a5,0(a5)
    80001b60:	00100713          	li	a4,1
    80001b64:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b68:	fffff097          	auipc	ra,0xfffff
    80001b6c:	698080e7          	jalr	1688(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001b70:	01813083          	ld	ra,24(sp)
    80001b74:	01013403          	ld	s0,16(sp)
    80001b78:	00813483          	ld	s1,8(sp)
    80001b7c:	00013903          	ld	s2,0(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret

0000000080001b88 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    //read syscall code from register a0

    uint64 arg0;
    uint64 arg1;

    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b98:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b9c:	00100713          	li	a4,1
    80001ba0:	02e78663          	beq	a5,a4,80001bcc <_ZN5Riscv14syscallHandlerEv+0x44>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001ba4:	00200713          	li	a4,2
    80001ba8:	02e78c63          	beq	a5,a4,80001be0 <_ZN5Riscv14syscallHandlerEv+0x58>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

    else if(arg0==0x12){
    80001bac:	01200713          	li	a4,18
    80001bb0:	04e78263          	beq	a5,a4,80001bf4 <_ZN5Riscv14syscallHandlerEv+0x6c>
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
    80001bb4:	01300713          	li	a4,19
    80001bb8:	04e78e63          	beq	a5,a4,80001c14 <_ZN5Riscv14syscallHandlerEv+0x8c>
        _thread::dispatch();

    }

}
    80001bbc:	00813083          	ld	ra,8(sp)
    80001bc0:	00013403          	ld	s0,0(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001bcc:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	1ac080e7          	jalr	428(ra) # 80001d7c <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001bd8:	00050513          	mv	a0,a0
    80001bdc:	fe1ff06f          	j	80001bbc <_ZN5Riscv14syscallHandlerEv+0x34>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001be0:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	1c0080e7          	jalr	448(ra) # 80001da4 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001bec:	00050513          	mv	a0,a0
    80001bf0:	fcdff06f          	j	80001bbc <_ZN5Riscv14syscallHandlerEv+0x34>
        _thread::running->finished=true;
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	cfc7b783          	ld	a5,-772(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bfc:	0007b783          	ld	a5,0(a5)
    80001c00:	00100713          	li	a4,1
    80001c04:	02e78423          	sb	a4,40(a5)
        _thread::dispatch();
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	678080e7          	jalr	1656(ra) # 80001280 <_ZN7_thread8dispatchEv>
    80001c10:	fadff06f          	j	80001bbc <_ZN5Riscv14syscallHandlerEv+0x34>
        _thread::dispatch();
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	66c080e7          	jalr	1644(ra) # 80001280 <_ZN7_thread8dispatchEv>
}
    80001c1c:	fa1ff06f          	j	80001bbc <_ZN5Riscv14syscallHandlerEv+0x34>

0000000080001c20 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c2c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001c30:	10200073          	sret
}
    80001c34:	00813403          	ld	s0,8(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c40:	f9010113          	addi	sp,sp,-112
    80001c44:	06113423          	sd	ra,104(sp)
    80001c48:	06813023          	sd	s0,96(sp)
    80001c4c:	04913c23          	sd	s1,88(sp)
    80001c50:	05213823          	sd	s2,80(sp)
    80001c54:	05313423          	sd	s3,72(sp)
    80001c58:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c5c:	142027f3          	csrr	a5,scause
    80001c60:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80001c64:	f9843783          	ld	a5,-104(s0)
    uint scause = r_scause();
    80001c68:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001c6c:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001c70:	ff87879b          	addiw	a5,a5,-8
    80001c74:	00100713          	li	a4,1
    80001c78:	02f77063          	bgeu	a4,a5,80001c98 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001c7c:	06813083          	ld	ra,104(sp)
    80001c80:	06013403          	ld	s0,96(sp)
    80001c84:	05813483          	ld	s1,88(sp)
    80001c88:	05013903          	ld	s2,80(sp)
    80001c8c:	04813983          	ld	s3,72(sp)
    80001c90:	07010113          	addi	sp,sp,112
    80001c94:	00008067          	ret
        if(a0reg==0x04){
    80001c98:	00400793          	li	a5,4
    80001c9c:	02f68e63          	beq	a3,a5,80001cd8 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        else if(a0reg==0x11){
    80001ca0:	01100793          	li	a5,17
    80001ca4:	06f68863          	beq	a3,a5,80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ca8:	141027f3          	csrr	a5,sepc
    80001cac:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001cb0:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001cb4:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cb8:	100027f3          	csrr	a5,sstatus
    80001cbc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001cc0:	fc043903          	ld	s2,-64(s0)
            syscallHandler();
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	ec4080e7          	jalr	-316(ra) # 80001b88 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ccc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd0:	14149073          	csrw	sepc,s1
}
    80001cd4:	fa9ff06f          	j	80001c7c <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cd8:	141027f3          	csrr	a5,sepc
    80001cdc:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001ce0:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001ce4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce8:	100027f3          	csrr	a5,sstatus
    80001cec:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001cf0:	fa043903          	ld	s2,-96(s0)
            _thread::timeSliceCounter = 0;
    80001cf4:	00004797          	auipc	a5,0x4
    80001cf8:	c247b783          	ld	a5,-988(a5) # 80005918 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cfc:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001d00:	fffff097          	auipc	ra,0xfffff
    80001d04:	580080e7          	jalr	1408(ra) # 80001280 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d08:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d0c:	14149073          	csrw	sepc,s1
}
    80001d10:	f6dff06f          	j	80001c7c <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d14:	141027f3          	csrr	a5,sepc
    80001d18:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d1c:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001d20:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d24:	100027f3          	csrr	a5,sstatus
    80001d28:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001d2c:	fb043903          	ld	s2,-80(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001d30:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001d34:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001d38:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001d3c:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001d40:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001d44:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001d48:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001d4c:	00070793          	mv	a5,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3);    //t je thread_t
    80001d50:	fffff097          	auipc	ra,0xfffff
    80001d54:	610080e7          	jalr	1552(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
            *arg1=t;
    80001d58:	00a9b023          	sd	a0,0(s3)
            if(t!= nullptr)ret=0;
    80001d5c:	00050c63          	beqz	a0,80001d74 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
    80001d60:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001d64:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d68:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d6c:	14149073          	csrw	sepc,s1
}
    80001d70:	f0dff06f          	j	80001c7c <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
            else ret =-1;
    80001d74:	fff00793          	li	a5,-1
    80001d78:	fedff06f          	j	80001d64 <_ZN5Riscv20handleSupervisorTrapEv+0x124>

0000000080001d7c <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001d8c:	00002097          	auipc	ra,0x2
    80001d90:	2fc080e7          	jalr	764(ra) # 80004088 <__mem_alloc>
}
    80001d94:	00813083          	ld	ra,8(sp)
    80001d98:	00013403          	ld	s0,0(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	208080e7          	jalr	520(ra) # 80003fbc <__mem_free>
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001dcc:	fd010113          	addi	sp,sp,-48
    80001dd0:	02113423          	sd	ra,40(sp)
    80001dd4:	02813023          	sd	s0,32(sp)
    80001dd8:	00913c23          	sd	s1,24(sp)
    80001ddc:	01213823          	sd	s2,16(sp)
    80001de0:	03010413          	addi	s0,sp,48
    80001de4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001de8:	100027f3          	csrr	a5,sstatus
    80001dec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001df0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001df4:	00200793          	li	a5,2
    80001df8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001dfc:	0004c503          	lbu	a0,0(s1)
    80001e00:	00050a63          	beqz	a0,80001e14 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e04:	00002097          	auipc	ra,0x2
    80001e08:	3dc080e7          	jalr	988(ra) # 800041e0 <__putc>
        string++;
    80001e0c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e10:	fedff06f          	j	80001dfc <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001e14:	0009091b          	sext.w	s2,s2
    80001e18:	00297913          	andi	s2,s2,2
    80001e1c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e20:	10092073          	csrs	sstatus,s2
}
    80001e24:	02813083          	ld	ra,40(sp)
    80001e28:	02013403          	ld	s0,32(sp)
    80001e2c:	01813483          	ld	s1,24(sp)
    80001e30:	01013903          	ld	s2,16(sp)
    80001e34:	03010113          	addi	sp,sp,48
    80001e38:	00008067          	ret

0000000080001e3c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e3c:	fc010113          	addi	sp,sp,-64
    80001e40:	02113c23          	sd	ra,56(sp)
    80001e44:	02813823          	sd	s0,48(sp)
    80001e48:	02913423          	sd	s1,40(sp)
    80001e4c:	03213023          	sd	s2,32(sp)
    80001e50:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e54:	100027f3          	csrr	a5,sstatus
    80001e58:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e5c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e60:	00200793          	li	a5,2
    80001e64:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e68:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e6c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e70:	00a00613          	li	a2,10
    80001e74:	02c5773b          	remuw	a4,a0,a2
    80001e78:	02071693          	slli	a3,a4,0x20
    80001e7c:	0206d693          	srli	a3,a3,0x20
    80001e80:	00003717          	auipc	a4,0x3
    80001e84:	1e870713          	addi	a4,a4,488 # 80005068 <_ZZ12printIntegermE6digits>
    80001e88:	00d70733          	add	a4,a4,a3
    80001e8c:	00074703          	lbu	a4,0(a4)
    80001e90:	fe040693          	addi	a3,s0,-32
    80001e94:	009687b3          	add	a5,a3,s1
    80001e98:	0014849b          	addiw	s1,s1,1
    80001e9c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ea0:	0005071b          	sext.w	a4,a0
    80001ea4:	02c5553b          	divuw	a0,a0,a2
    80001ea8:	00900793          	li	a5,9
    80001eac:	fce7e2e3          	bltu	a5,a4,80001e70 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001eb0:	fff4849b          	addiw	s1,s1,-1
    80001eb4:	0004ce63          	bltz	s1,80001ed0 <_Z12printIntegerm+0x94>
    80001eb8:	fe040793          	addi	a5,s0,-32
    80001ebc:	009787b3          	add	a5,a5,s1
    80001ec0:	ff07c503          	lbu	a0,-16(a5)
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	31c080e7          	jalr	796(ra) # 800041e0 <__putc>
    80001ecc:	fe5ff06f          	j	80001eb0 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ed0:	0009091b          	sext.w	s2,s2
    80001ed4:	00297913          	andi	s2,s2,2
    80001ed8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001edc:	10092073          	csrs	sstatus,s2
}
    80001ee0:	03813083          	ld	ra,56(sp)
    80001ee4:	03013403          	ld	s0,48(sp)
    80001ee8:	02813483          	ld	s1,40(sp)
    80001eec:	02013903          	ld	s2,32(sp)
    80001ef0:	04010113          	addi	sp,sp,64
    80001ef4:	00008067          	ret

0000000080001ef8 <start>:
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813423          	sd	s0,8(sp)
    80001f00:	01010413          	addi	s0,sp,16
    80001f04:	300027f3          	csrr	a5,mstatus
    80001f08:	ffffe737          	lui	a4,0xffffe
    80001f0c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bef>
    80001f10:	00e7f7b3          	and	a5,a5,a4
    80001f14:	00001737          	lui	a4,0x1
    80001f18:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f1c:	00e7e7b3          	or	a5,a5,a4
    80001f20:	30079073          	csrw	mstatus,a5
    80001f24:	00000797          	auipc	a5,0x0
    80001f28:	16078793          	addi	a5,a5,352 # 80002084 <system_main>
    80001f2c:	34179073          	csrw	mepc,a5
    80001f30:	00000793          	li	a5,0
    80001f34:	18079073          	csrw	satp,a5
    80001f38:	000107b7          	lui	a5,0x10
    80001f3c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f40:	30279073          	csrw	medeleg,a5
    80001f44:	30379073          	csrw	mideleg,a5
    80001f48:	104027f3          	csrr	a5,sie
    80001f4c:	2227e793          	ori	a5,a5,546
    80001f50:	10479073          	csrw	sie,a5
    80001f54:	fff00793          	li	a5,-1
    80001f58:	00a7d793          	srli	a5,a5,0xa
    80001f5c:	3b079073          	csrw	pmpaddr0,a5
    80001f60:	00f00793          	li	a5,15
    80001f64:	3a079073          	csrw	pmpcfg0,a5
    80001f68:	f14027f3          	csrr	a5,mhartid
    80001f6c:	0200c737          	lui	a4,0x200c
    80001f70:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f74:	0007869b          	sext.w	a3,a5
    80001f78:	00269713          	slli	a4,a3,0x2
    80001f7c:	000f4637          	lui	a2,0xf4
    80001f80:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f84:	00d70733          	add	a4,a4,a3
    80001f88:	0037979b          	slliw	a5,a5,0x3
    80001f8c:	020046b7          	lui	a3,0x2004
    80001f90:	00d787b3          	add	a5,a5,a3
    80001f94:	00c585b3          	add	a1,a1,a2
    80001f98:	00371693          	slli	a3,a4,0x3
    80001f9c:	00004717          	auipc	a4,0x4
    80001fa0:	a0470713          	addi	a4,a4,-1532 # 800059a0 <timer_scratch>
    80001fa4:	00b7b023          	sd	a1,0(a5)
    80001fa8:	00d70733          	add	a4,a4,a3
    80001fac:	00f73c23          	sd	a5,24(a4)
    80001fb0:	02c73023          	sd	a2,32(a4)
    80001fb4:	34071073          	csrw	mscratch,a4
    80001fb8:	00000797          	auipc	a5,0x0
    80001fbc:	6e878793          	addi	a5,a5,1768 # 800026a0 <timervec>
    80001fc0:	30579073          	csrw	mtvec,a5
    80001fc4:	300027f3          	csrr	a5,mstatus
    80001fc8:	0087e793          	ori	a5,a5,8
    80001fcc:	30079073          	csrw	mstatus,a5
    80001fd0:	304027f3          	csrr	a5,mie
    80001fd4:	0807e793          	ori	a5,a5,128
    80001fd8:	30479073          	csrw	mie,a5
    80001fdc:	f14027f3          	csrr	a5,mhartid
    80001fe0:	0007879b          	sext.w	a5,a5
    80001fe4:	00078213          	mv	tp,a5
    80001fe8:	30200073          	mret
    80001fec:	00813403          	ld	s0,8(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <timerinit>:
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	f14027f3          	csrr	a5,mhartid
    80002008:	0200c737          	lui	a4,0x200c
    8000200c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002010:	0007869b          	sext.w	a3,a5
    80002014:	00269713          	slli	a4,a3,0x2
    80002018:	000f4637          	lui	a2,0xf4
    8000201c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002020:	00d70733          	add	a4,a4,a3
    80002024:	0037979b          	slliw	a5,a5,0x3
    80002028:	020046b7          	lui	a3,0x2004
    8000202c:	00d787b3          	add	a5,a5,a3
    80002030:	00c585b3          	add	a1,a1,a2
    80002034:	00371693          	slli	a3,a4,0x3
    80002038:	00004717          	auipc	a4,0x4
    8000203c:	96870713          	addi	a4,a4,-1688 # 800059a0 <timer_scratch>
    80002040:	00b7b023          	sd	a1,0(a5)
    80002044:	00d70733          	add	a4,a4,a3
    80002048:	00f73c23          	sd	a5,24(a4)
    8000204c:	02c73023          	sd	a2,32(a4)
    80002050:	34071073          	csrw	mscratch,a4
    80002054:	00000797          	auipc	a5,0x0
    80002058:	64c78793          	addi	a5,a5,1612 # 800026a0 <timervec>
    8000205c:	30579073          	csrw	mtvec,a5
    80002060:	300027f3          	csrr	a5,mstatus
    80002064:	0087e793          	ori	a5,a5,8
    80002068:	30079073          	csrw	mstatus,a5
    8000206c:	304027f3          	csrr	a5,mie
    80002070:	0807e793          	ori	a5,a5,128
    80002074:	30479073          	csrw	mie,a5
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <system_main>:
    80002084:	fe010113          	addi	sp,sp,-32
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	00113c23          	sd	ra,24(sp)
    80002094:	02010413          	addi	s0,sp,32
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	0c4080e7          	jalr	196(ra) # 8000215c <cpuid>
    800020a0:	00004497          	auipc	s1,0x4
    800020a4:	8a048493          	addi	s1,s1,-1888 # 80005940 <started>
    800020a8:	02050263          	beqz	a0,800020cc <system_main+0x48>
    800020ac:	0004a783          	lw	a5,0(s1)
    800020b0:	0007879b          	sext.w	a5,a5
    800020b4:	fe078ce3          	beqz	a5,800020ac <system_main+0x28>
    800020b8:	0ff0000f          	fence
    800020bc:	00003517          	auipc	a0,0x3
    800020c0:	fec50513          	addi	a0,a0,-20 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	a78080e7          	jalr	-1416(ra) # 80002b3c <panic>
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	9cc080e7          	jalr	-1588(ra) # 80002a98 <consoleinit>
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	158080e7          	jalr	344(ra) # 8000322c <printfinit>
    800020dc:	00003517          	auipc	a0,0x3
    800020e0:	f5450513          	addi	a0,a0,-172 # 80005030 <kvmincrease+0xd30>
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	ab4080e7          	jalr	-1356(ra) # 80002b98 <__printf>
    800020ec:	00003517          	auipc	a0,0x3
    800020f0:	f8c50513          	addi	a0,a0,-116 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	aa4080e7          	jalr	-1372(ra) # 80002b98 <__printf>
    800020fc:	00003517          	auipc	a0,0x3
    80002100:	f3450513          	addi	a0,a0,-204 # 80005030 <kvmincrease+0xd30>
    80002104:	00001097          	auipc	ra,0x1
    80002108:	a94080e7          	jalr	-1388(ra) # 80002b98 <__printf>
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	4ac080e7          	jalr	1196(ra) # 800035b8 <kinit>
    80002114:	00000097          	auipc	ra,0x0
    80002118:	148080e7          	jalr	328(ra) # 8000225c <trapinit>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	16c080e7          	jalr	364(ra) # 80002288 <trapinithart>
    80002124:	00000097          	auipc	ra,0x0
    80002128:	5bc080e7          	jalr	1468(ra) # 800026e0 <plicinit>
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	5dc080e7          	jalr	1500(ra) # 80002708 <plicinithart>
    80002134:	00000097          	auipc	ra,0x0
    80002138:	078080e7          	jalr	120(ra) # 800021ac <userinit>
    8000213c:	0ff0000f          	fence
    80002140:	00100793          	li	a5,1
    80002144:	00003517          	auipc	a0,0x3
    80002148:	f4c50513          	addi	a0,a0,-180 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    8000214c:	00f4a023          	sw	a5,0(s1)
    80002150:	00001097          	auipc	ra,0x1
    80002154:	a48080e7          	jalr	-1464(ra) # 80002b98 <__printf>
    80002158:	0000006f          	j	80002158 <system_main+0xd4>

000000008000215c <cpuid>:
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00813423          	sd	s0,8(sp)
    80002164:	01010413          	addi	s0,sp,16
    80002168:	00020513          	mv	a0,tp
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	0005051b          	sext.w	a0,a0
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <mycpu>:
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
    80002188:	00020793          	mv	a5,tp
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	0007879b          	sext.w	a5,a5
    80002194:	00779793          	slli	a5,a5,0x7
    80002198:	00005517          	auipc	a0,0x5
    8000219c:	83850513          	addi	a0,a0,-1992 # 800069d0 <cpus>
    800021a0:	00f50533          	add	a0,a0,a5
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <userinit>:
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00813423          	sd	s0,8(sp)
    800021b4:	01010413          	addi	s0,sp,16
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	fffff317          	auipc	t1,0xfffff
    800021c4:	3cc30067          	jr	972(t1) # 8000158c <main>

00000000800021c8 <either_copyout>:
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	01010413          	addi	s0,sp,16
    800021d8:	02051663          	bnez	a0,80002204 <either_copyout+0x3c>
    800021dc:	00058513          	mv	a0,a1
    800021e0:	00060593          	mv	a1,a2
    800021e4:	0006861b          	sext.w	a2,a3
    800021e8:	00002097          	auipc	ra,0x2
    800021ec:	c5c080e7          	jalr	-932(ra) # 80003e44 <__memmove>
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	00000513          	li	a0,0
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret
    80002204:	00003517          	auipc	a0,0x3
    80002208:	ecc50513          	addi	a0,a0,-308 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	930080e7          	jalr	-1744(ra) # 80002b3c <panic>

0000000080002214 <either_copyin>:
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00813023          	sd	s0,0(sp)
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	01010413          	addi	s0,sp,16
    80002224:	02059463          	bnez	a1,8000224c <either_copyin+0x38>
    80002228:	00060593          	mv	a1,a2
    8000222c:	0006861b          	sext.w	a2,a3
    80002230:	00002097          	auipc	ra,0x2
    80002234:	c14080e7          	jalr	-1004(ra) # 80003e44 <__memmove>
    80002238:	00813083          	ld	ra,8(sp)
    8000223c:	00013403          	ld	s0,0(sp)
    80002240:	00000513          	li	a0,0
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	eac50513          	addi	a0,a0,-340 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	8e8080e7          	jalr	-1816(ra) # 80002b3c <panic>

000000008000225c <trapinit>:
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	00003597          	auipc	a1,0x3
    80002270:	eb458593          	addi	a1,a1,-332 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    80002274:	00004517          	auipc	a0,0x4
    80002278:	7dc50513          	addi	a0,a0,2012 # 80006a50 <tickslock>
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00001317          	auipc	t1,0x1
    80002284:	5c830067          	jr	1480(t1) # 80003848 <initlock>

0000000080002288 <trapinithart>:
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    80002294:	00000797          	auipc	a5,0x0
    80002298:	2fc78793          	addi	a5,a5,764 # 80002590 <kernelvec>
    8000229c:	10579073          	csrw	stvec,a5
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <usertrap>:
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <usertrapret>:
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <kerneltrap>:
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00113c23          	sd	ra,24(sp)
    800022e8:	00913423          	sd	s1,8(sp)
    800022ec:	02010413          	addi	s0,sp,32
    800022f0:	142025f3          	csrr	a1,scause
    800022f4:	100027f3          	csrr	a5,sstatus
    800022f8:	0027f793          	andi	a5,a5,2
    800022fc:	10079c63          	bnez	a5,80002414 <kerneltrap+0x138>
    80002300:	142027f3          	csrr	a5,scause
    80002304:	0207ce63          	bltz	a5,80002340 <kerneltrap+0x64>
    80002308:	00003517          	auipc	a0,0x3
    8000230c:	e6050513          	addi	a0,a0,-416 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    80002310:	00001097          	auipc	ra,0x1
    80002314:	888080e7          	jalr	-1912(ra) # 80002b98 <__printf>
    80002318:	141025f3          	csrr	a1,sepc
    8000231c:	14302673          	csrr	a2,stval
    80002320:	00003517          	auipc	a0,0x3
    80002324:	e5850513          	addi	a0,a0,-424 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	870080e7          	jalr	-1936(ra) # 80002b98 <__printf>
    80002330:	00003517          	auipc	a0,0x3
    80002334:	e6050513          	addi	a0,a0,-416 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	804080e7          	jalr	-2044(ra) # 80002b3c <panic>
    80002340:	0ff7f713          	andi	a4,a5,255
    80002344:	00900693          	li	a3,9
    80002348:	04d70063          	beq	a4,a3,80002388 <kerneltrap+0xac>
    8000234c:	fff00713          	li	a4,-1
    80002350:	03f71713          	slli	a4,a4,0x3f
    80002354:	00170713          	addi	a4,a4,1
    80002358:	fae798e3          	bne	a5,a4,80002308 <kerneltrap+0x2c>
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	e00080e7          	jalr	-512(ra) # 8000215c <cpuid>
    80002364:	06050663          	beqz	a0,800023d0 <kerneltrap+0xf4>
    80002368:	144027f3          	csrr	a5,sip
    8000236c:	ffd7f793          	andi	a5,a5,-3
    80002370:	14479073          	csrw	sip,a5
    80002374:	01813083          	ld	ra,24(sp)
    80002378:	01013403          	ld	s0,16(sp)
    8000237c:	00813483          	ld	s1,8(sp)
    80002380:	02010113          	addi	sp,sp,32
    80002384:	00008067          	ret
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	3cc080e7          	jalr	972(ra) # 80002754 <plic_claim>
    80002390:	00a00793          	li	a5,10
    80002394:	00050493          	mv	s1,a0
    80002398:	06f50863          	beq	a0,a5,80002408 <kerneltrap+0x12c>
    8000239c:	fc050ce3          	beqz	a0,80002374 <kerneltrap+0x98>
    800023a0:	00050593          	mv	a1,a0
    800023a4:	00003517          	auipc	a0,0x3
    800023a8:	da450513          	addi	a0,a0,-604 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	7ec080e7          	jalr	2028(ra) # 80002b98 <__printf>
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	00048513          	mv	a0,s1
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00000317          	auipc	t1,0x0
    800023cc:	3c430067          	jr	964(t1) # 8000278c <plic_complete>
    800023d0:	00004517          	auipc	a0,0x4
    800023d4:	68050513          	addi	a0,a0,1664 # 80006a50 <tickslock>
    800023d8:	00001097          	auipc	ra,0x1
    800023dc:	494080e7          	jalr	1172(ra) # 8000386c <acquire>
    800023e0:	00003717          	auipc	a4,0x3
    800023e4:	56470713          	addi	a4,a4,1380 # 80005944 <ticks>
    800023e8:	00072783          	lw	a5,0(a4)
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	66450513          	addi	a0,a0,1636 # 80006a50 <tickslock>
    800023f4:	0017879b          	addiw	a5,a5,1
    800023f8:	00f72023          	sw	a5,0(a4)
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	53c080e7          	jalr	1340(ra) # 80003938 <release>
    80002404:	f65ff06f          	j	80002368 <kerneltrap+0x8c>
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	098080e7          	jalr	152(ra) # 800034a0 <uartintr>
    80002410:	fa5ff06f          	j	800023b4 <kerneltrap+0xd8>
    80002414:	00003517          	auipc	a0,0x3
    80002418:	d1450513          	addi	a0,a0,-748 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	720080e7          	jalr	1824(ra) # 80002b3c <panic>

0000000080002424 <clockintr>:
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	00113c23          	sd	ra,24(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00004497          	auipc	s1,0x4
    8000243c:	61848493          	addi	s1,s1,1560 # 80006a50 <tickslock>
    80002440:	00048513          	mv	a0,s1
    80002444:	00001097          	auipc	ra,0x1
    80002448:	428080e7          	jalr	1064(ra) # 8000386c <acquire>
    8000244c:	00003717          	auipc	a4,0x3
    80002450:	4f870713          	addi	a4,a4,1272 # 80005944 <ticks>
    80002454:	00072783          	lw	a5,0(a4)
    80002458:	01013403          	ld	s0,16(sp)
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	00048513          	mv	a0,s1
    80002464:	0017879b          	addiw	a5,a5,1
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	00f72023          	sw	a5,0(a4)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00001317          	auipc	t1,0x1
    80002478:	4c430067          	jr	1220(t1) # 80003938 <release>

000000008000247c <devintr>:
    8000247c:	142027f3          	csrr	a5,scause
    80002480:	00000513          	li	a0,0
    80002484:	0007c463          	bltz	a5,8000248c <devintr+0x10>
    80002488:	00008067          	ret
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00113c23          	sd	ra,24(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	0ff7f713          	andi	a4,a5,255
    800024a4:	00900693          	li	a3,9
    800024a8:	04d70c63          	beq	a4,a3,80002500 <devintr+0x84>
    800024ac:	fff00713          	li	a4,-1
    800024b0:	03f71713          	slli	a4,a4,0x3f
    800024b4:	00170713          	addi	a4,a4,1
    800024b8:	00e78c63          	beq	a5,a4,800024d0 <devintr+0x54>
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	c8c080e7          	jalr	-884(ra) # 8000215c <cpuid>
    800024d8:	06050663          	beqz	a0,80002544 <devintr+0xc8>
    800024dc:	144027f3          	csrr	a5,sip
    800024e0:	ffd7f793          	andi	a5,a5,-3
    800024e4:	14479073          	csrw	sip,a5
    800024e8:	01813083          	ld	ra,24(sp)
    800024ec:	01013403          	ld	s0,16(sp)
    800024f0:	00813483          	ld	s1,8(sp)
    800024f4:	00200513          	li	a0,2
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret
    80002500:	00000097          	auipc	ra,0x0
    80002504:	254080e7          	jalr	596(ra) # 80002754 <plic_claim>
    80002508:	00a00793          	li	a5,10
    8000250c:	00050493          	mv	s1,a0
    80002510:	06f50663          	beq	a0,a5,8000257c <devintr+0x100>
    80002514:	00100513          	li	a0,1
    80002518:	fa0482e3          	beqz	s1,800024bc <devintr+0x40>
    8000251c:	00048593          	mv	a1,s1
    80002520:	00003517          	auipc	a0,0x3
    80002524:	c2850513          	addi	a0,a0,-984 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	670080e7          	jalr	1648(ra) # 80002b98 <__printf>
    80002530:	00048513          	mv	a0,s1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	258080e7          	jalr	600(ra) # 8000278c <plic_complete>
    8000253c:	00100513          	li	a0,1
    80002540:	f7dff06f          	j	800024bc <devintr+0x40>
    80002544:	00004517          	auipc	a0,0x4
    80002548:	50c50513          	addi	a0,a0,1292 # 80006a50 <tickslock>
    8000254c:	00001097          	auipc	ra,0x1
    80002550:	320080e7          	jalr	800(ra) # 8000386c <acquire>
    80002554:	00003717          	auipc	a4,0x3
    80002558:	3f070713          	addi	a4,a4,1008 # 80005944 <ticks>
    8000255c:	00072783          	lw	a5,0(a4)
    80002560:	00004517          	auipc	a0,0x4
    80002564:	4f050513          	addi	a0,a0,1264 # 80006a50 <tickslock>
    80002568:	0017879b          	addiw	a5,a5,1
    8000256c:	00f72023          	sw	a5,0(a4)
    80002570:	00001097          	auipc	ra,0x1
    80002574:	3c8080e7          	jalr	968(ra) # 80003938 <release>
    80002578:	f65ff06f          	j	800024dc <devintr+0x60>
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	f24080e7          	jalr	-220(ra) # 800034a0 <uartintr>
    80002584:	fadff06f          	j	80002530 <devintr+0xb4>
	...

0000000080002590 <kernelvec>:
    80002590:	f0010113          	addi	sp,sp,-256
    80002594:	00113023          	sd	ra,0(sp)
    80002598:	00213423          	sd	sp,8(sp)
    8000259c:	00313823          	sd	gp,16(sp)
    800025a0:	00413c23          	sd	tp,24(sp)
    800025a4:	02513023          	sd	t0,32(sp)
    800025a8:	02613423          	sd	t1,40(sp)
    800025ac:	02713823          	sd	t2,48(sp)
    800025b0:	02813c23          	sd	s0,56(sp)
    800025b4:	04913023          	sd	s1,64(sp)
    800025b8:	04a13423          	sd	a0,72(sp)
    800025bc:	04b13823          	sd	a1,80(sp)
    800025c0:	04c13c23          	sd	a2,88(sp)
    800025c4:	06d13023          	sd	a3,96(sp)
    800025c8:	06e13423          	sd	a4,104(sp)
    800025cc:	06f13823          	sd	a5,112(sp)
    800025d0:	07013c23          	sd	a6,120(sp)
    800025d4:	09113023          	sd	a7,128(sp)
    800025d8:	09213423          	sd	s2,136(sp)
    800025dc:	09313823          	sd	s3,144(sp)
    800025e0:	09413c23          	sd	s4,152(sp)
    800025e4:	0b513023          	sd	s5,160(sp)
    800025e8:	0b613423          	sd	s6,168(sp)
    800025ec:	0b713823          	sd	s7,176(sp)
    800025f0:	0b813c23          	sd	s8,184(sp)
    800025f4:	0d913023          	sd	s9,192(sp)
    800025f8:	0da13423          	sd	s10,200(sp)
    800025fc:	0db13823          	sd	s11,208(sp)
    80002600:	0dc13c23          	sd	t3,216(sp)
    80002604:	0fd13023          	sd	t4,224(sp)
    80002608:	0fe13423          	sd	t5,232(sp)
    8000260c:	0ff13823          	sd	t6,240(sp)
    80002610:	ccdff0ef          	jal	ra,800022dc <kerneltrap>
    80002614:	00013083          	ld	ra,0(sp)
    80002618:	00813103          	ld	sp,8(sp)
    8000261c:	01013183          	ld	gp,16(sp)
    80002620:	02013283          	ld	t0,32(sp)
    80002624:	02813303          	ld	t1,40(sp)
    80002628:	03013383          	ld	t2,48(sp)
    8000262c:	03813403          	ld	s0,56(sp)
    80002630:	04013483          	ld	s1,64(sp)
    80002634:	04813503          	ld	a0,72(sp)
    80002638:	05013583          	ld	a1,80(sp)
    8000263c:	05813603          	ld	a2,88(sp)
    80002640:	06013683          	ld	a3,96(sp)
    80002644:	06813703          	ld	a4,104(sp)
    80002648:	07013783          	ld	a5,112(sp)
    8000264c:	07813803          	ld	a6,120(sp)
    80002650:	08013883          	ld	a7,128(sp)
    80002654:	08813903          	ld	s2,136(sp)
    80002658:	09013983          	ld	s3,144(sp)
    8000265c:	09813a03          	ld	s4,152(sp)
    80002660:	0a013a83          	ld	s5,160(sp)
    80002664:	0a813b03          	ld	s6,168(sp)
    80002668:	0b013b83          	ld	s7,176(sp)
    8000266c:	0b813c03          	ld	s8,184(sp)
    80002670:	0c013c83          	ld	s9,192(sp)
    80002674:	0c813d03          	ld	s10,200(sp)
    80002678:	0d013d83          	ld	s11,208(sp)
    8000267c:	0d813e03          	ld	t3,216(sp)
    80002680:	0e013e83          	ld	t4,224(sp)
    80002684:	0e813f03          	ld	t5,232(sp)
    80002688:	0f013f83          	ld	t6,240(sp)
    8000268c:	10010113          	addi	sp,sp,256
    80002690:	10200073          	sret
    80002694:	00000013          	nop
    80002698:	00000013          	nop
    8000269c:	00000013          	nop

00000000800026a0 <timervec>:
    800026a0:	34051573          	csrrw	a0,mscratch,a0
    800026a4:	00b53023          	sd	a1,0(a0)
    800026a8:	00c53423          	sd	a2,8(a0)
    800026ac:	00d53823          	sd	a3,16(a0)
    800026b0:	01853583          	ld	a1,24(a0)
    800026b4:	02053603          	ld	a2,32(a0)
    800026b8:	0005b683          	ld	a3,0(a1)
    800026bc:	00c686b3          	add	a3,a3,a2
    800026c0:	00d5b023          	sd	a3,0(a1)
    800026c4:	00200593          	li	a1,2
    800026c8:	14459073          	csrw	sip,a1
    800026cc:	01053683          	ld	a3,16(a0)
    800026d0:	00853603          	ld	a2,8(a0)
    800026d4:	00053583          	ld	a1,0(a0)
    800026d8:	34051573          	csrrw	a0,mscratch,a0
    800026dc:	30200073          	mret

00000000800026e0 <plicinit>:
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    800026ec:	00813403          	ld	s0,8(sp)
    800026f0:	0c0007b7          	lui	a5,0xc000
    800026f4:	00100713          	li	a4,1
    800026f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800026fc:	00e7a223          	sw	a4,4(a5)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret

0000000080002708 <plicinithart>:
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	a44080e7          	jalr	-1468(ra) # 8000215c <cpuid>
    80002720:	0085171b          	slliw	a4,a0,0x8
    80002724:	0c0027b7          	lui	a5,0xc002
    80002728:	00e787b3          	add	a5,a5,a4
    8000272c:	40200713          	li	a4,1026
    80002730:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002734:	00813083          	ld	ra,8(sp)
    80002738:	00013403          	ld	s0,0(sp)
    8000273c:	00d5151b          	slliw	a0,a0,0xd
    80002740:	0c2017b7          	lui	a5,0xc201
    80002744:	00a78533          	add	a0,a5,a0
    80002748:	00052023          	sw	zero,0(a0)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <plic_claim>:
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	01010413          	addi	s0,sp,16
    80002764:	00000097          	auipc	ra,0x0
    80002768:	9f8080e7          	jalr	-1544(ra) # 8000215c <cpuid>
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	00d5151b          	slliw	a0,a0,0xd
    80002778:	0c2017b7          	lui	a5,0xc201
    8000277c:	00a78533          	add	a0,a5,a0
    80002780:	00452503          	lw	a0,4(a0)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <plic_complete>:
    8000278c:	fe010113          	addi	sp,sp,-32
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	00113c23          	sd	ra,24(sp)
    8000279c:	02010413          	addi	s0,sp,32
    800027a0:	00050493          	mv	s1,a0
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	9b8080e7          	jalr	-1608(ra) # 8000215c <cpuid>
    800027ac:	01813083          	ld	ra,24(sp)
    800027b0:	01013403          	ld	s0,16(sp)
    800027b4:	00d5179b          	slliw	a5,a0,0xd
    800027b8:	0c201737          	lui	a4,0xc201
    800027bc:	00f707b3          	add	a5,a4,a5
    800027c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	02010113          	addi	sp,sp,32
    800027cc:	00008067          	ret

00000000800027d0 <consolewrite>:
    800027d0:	fb010113          	addi	sp,sp,-80
    800027d4:	04813023          	sd	s0,64(sp)
    800027d8:	04113423          	sd	ra,72(sp)
    800027dc:	02913c23          	sd	s1,56(sp)
    800027e0:	03213823          	sd	s2,48(sp)
    800027e4:	03313423          	sd	s3,40(sp)
    800027e8:	03413023          	sd	s4,32(sp)
    800027ec:	01513c23          	sd	s5,24(sp)
    800027f0:	05010413          	addi	s0,sp,80
    800027f4:	06c05c63          	blez	a2,8000286c <consolewrite+0x9c>
    800027f8:	00060993          	mv	s3,a2
    800027fc:	00050a13          	mv	s4,a0
    80002800:	00058493          	mv	s1,a1
    80002804:	00000913          	li	s2,0
    80002808:	fff00a93          	li	s5,-1
    8000280c:	01c0006f          	j	80002828 <consolewrite+0x58>
    80002810:	fbf44503          	lbu	a0,-65(s0)
    80002814:	0019091b          	addiw	s2,s2,1
    80002818:	00148493          	addi	s1,s1,1
    8000281c:	00001097          	auipc	ra,0x1
    80002820:	a9c080e7          	jalr	-1380(ra) # 800032b8 <uartputc>
    80002824:	03298063          	beq	s3,s2,80002844 <consolewrite+0x74>
    80002828:	00048613          	mv	a2,s1
    8000282c:	00100693          	li	a3,1
    80002830:	000a0593          	mv	a1,s4
    80002834:	fbf40513          	addi	a0,s0,-65
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	9dc080e7          	jalr	-1572(ra) # 80002214 <either_copyin>
    80002840:	fd5518e3          	bne	a0,s5,80002810 <consolewrite+0x40>
    80002844:	04813083          	ld	ra,72(sp)
    80002848:	04013403          	ld	s0,64(sp)
    8000284c:	03813483          	ld	s1,56(sp)
    80002850:	02813983          	ld	s3,40(sp)
    80002854:	02013a03          	ld	s4,32(sp)
    80002858:	01813a83          	ld	s5,24(sp)
    8000285c:	00090513          	mv	a0,s2
    80002860:	03013903          	ld	s2,48(sp)
    80002864:	05010113          	addi	sp,sp,80
    80002868:	00008067          	ret
    8000286c:	00000913          	li	s2,0
    80002870:	fd5ff06f          	j	80002844 <consolewrite+0x74>

0000000080002874 <consoleread>:
    80002874:	f9010113          	addi	sp,sp,-112
    80002878:	06813023          	sd	s0,96(sp)
    8000287c:	04913c23          	sd	s1,88(sp)
    80002880:	05213823          	sd	s2,80(sp)
    80002884:	05313423          	sd	s3,72(sp)
    80002888:	05413023          	sd	s4,64(sp)
    8000288c:	03513c23          	sd	s5,56(sp)
    80002890:	03613823          	sd	s6,48(sp)
    80002894:	03713423          	sd	s7,40(sp)
    80002898:	03813023          	sd	s8,32(sp)
    8000289c:	06113423          	sd	ra,104(sp)
    800028a0:	01913c23          	sd	s9,24(sp)
    800028a4:	07010413          	addi	s0,sp,112
    800028a8:	00060b93          	mv	s7,a2
    800028ac:	00050913          	mv	s2,a0
    800028b0:	00058c13          	mv	s8,a1
    800028b4:	00060b1b          	sext.w	s6,a2
    800028b8:	00004497          	auipc	s1,0x4
    800028bc:	1c048493          	addi	s1,s1,448 # 80006a78 <cons>
    800028c0:	00400993          	li	s3,4
    800028c4:	fff00a13          	li	s4,-1
    800028c8:	00a00a93          	li	s5,10
    800028cc:	05705e63          	blez	s7,80002928 <consoleread+0xb4>
    800028d0:	09c4a703          	lw	a4,156(s1)
    800028d4:	0984a783          	lw	a5,152(s1)
    800028d8:	0007071b          	sext.w	a4,a4
    800028dc:	08e78463          	beq	a5,a4,80002964 <consoleread+0xf0>
    800028e0:	07f7f713          	andi	a4,a5,127
    800028e4:	00e48733          	add	a4,s1,a4
    800028e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800028ec:	0017869b          	addiw	a3,a5,1
    800028f0:	08d4ac23          	sw	a3,152(s1)
    800028f4:	00070c9b          	sext.w	s9,a4
    800028f8:	0b370663          	beq	a4,s3,800029a4 <consoleread+0x130>
    800028fc:	00100693          	li	a3,1
    80002900:	f9f40613          	addi	a2,s0,-97
    80002904:	000c0593          	mv	a1,s8
    80002908:	00090513          	mv	a0,s2
    8000290c:	f8e40fa3          	sb	a4,-97(s0)
    80002910:	00000097          	auipc	ra,0x0
    80002914:	8b8080e7          	jalr	-1864(ra) # 800021c8 <either_copyout>
    80002918:	01450863          	beq	a0,s4,80002928 <consoleread+0xb4>
    8000291c:	001c0c13          	addi	s8,s8,1
    80002920:	fffb8b9b          	addiw	s7,s7,-1
    80002924:	fb5c94e3          	bne	s9,s5,800028cc <consoleread+0x58>
    80002928:	000b851b          	sext.w	a0,s7
    8000292c:	06813083          	ld	ra,104(sp)
    80002930:	06013403          	ld	s0,96(sp)
    80002934:	05813483          	ld	s1,88(sp)
    80002938:	05013903          	ld	s2,80(sp)
    8000293c:	04813983          	ld	s3,72(sp)
    80002940:	04013a03          	ld	s4,64(sp)
    80002944:	03813a83          	ld	s5,56(sp)
    80002948:	02813b83          	ld	s7,40(sp)
    8000294c:	02013c03          	ld	s8,32(sp)
    80002950:	01813c83          	ld	s9,24(sp)
    80002954:	40ab053b          	subw	a0,s6,a0
    80002958:	03013b03          	ld	s6,48(sp)
    8000295c:	07010113          	addi	sp,sp,112
    80002960:	00008067          	ret
    80002964:	00001097          	auipc	ra,0x1
    80002968:	1d8080e7          	jalr	472(ra) # 80003b3c <push_on>
    8000296c:	0984a703          	lw	a4,152(s1)
    80002970:	09c4a783          	lw	a5,156(s1)
    80002974:	0007879b          	sext.w	a5,a5
    80002978:	fef70ce3          	beq	a4,a5,80002970 <consoleread+0xfc>
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	234080e7          	jalr	564(ra) # 80003bb0 <pop_on>
    80002984:	0984a783          	lw	a5,152(s1)
    80002988:	07f7f713          	andi	a4,a5,127
    8000298c:	00e48733          	add	a4,s1,a4
    80002990:	01874703          	lbu	a4,24(a4)
    80002994:	0017869b          	addiw	a3,a5,1
    80002998:	08d4ac23          	sw	a3,152(s1)
    8000299c:	00070c9b          	sext.w	s9,a4
    800029a0:	f5371ee3          	bne	a4,s3,800028fc <consoleread+0x88>
    800029a4:	000b851b          	sext.w	a0,s7
    800029a8:	f96bf2e3          	bgeu	s7,s6,8000292c <consoleread+0xb8>
    800029ac:	08f4ac23          	sw	a5,152(s1)
    800029b0:	f7dff06f          	j	8000292c <consoleread+0xb8>

00000000800029b4 <consputc>:
    800029b4:	10000793          	li	a5,256
    800029b8:	00f50663          	beq	a0,a5,800029c4 <consputc+0x10>
    800029bc:	00001317          	auipc	t1,0x1
    800029c0:	9f430067          	jr	-1548(t1) # 800033b0 <uartputc_sync>
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00113423          	sd	ra,8(sp)
    800029cc:	00813023          	sd	s0,0(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	00800513          	li	a0,8
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	9d8080e7          	jalr	-1576(ra) # 800033b0 <uartputc_sync>
    800029e0:	02000513          	li	a0,32
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	9cc080e7          	jalr	-1588(ra) # 800033b0 <uartputc_sync>
    800029ec:	00013403          	ld	s0,0(sp)
    800029f0:	00813083          	ld	ra,8(sp)
    800029f4:	00800513          	li	a0,8
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00001317          	auipc	t1,0x1
    80002a00:	9b430067          	jr	-1612(t1) # 800033b0 <uartputc_sync>

0000000080002a04 <consoleintr>:
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	01213023          	sd	s2,0(sp)
    80002a14:	00113c23          	sd	ra,24(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00004917          	auipc	s2,0x4
    80002a20:	05c90913          	addi	s2,s2,92 # 80006a78 <cons>
    80002a24:	00050493          	mv	s1,a0
    80002a28:	00090513          	mv	a0,s2
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	e40080e7          	jalr	-448(ra) # 8000386c <acquire>
    80002a34:	02048c63          	beqz	s1,80002a6c <consoleintr+0x68>
    80002a38:	0a092783          	lw	a5,160(s2)
    80002a3c:	09892703          	lw	a4,152(s2)
    80002a40:	07f00693          	li	a3,127
    80002a44:	40e7873b          	subw	a4,a5,a4
    80002a48:	02e6e263          	bltu	a3,a4,80002a6c <consoleintr+0x68>
    80002a4c:	00d00713          	li	a4,13
    80002a50:	04e48063          	beq	s1,a4,80002a90 <consoleintr+0x8c>
    80002a54:	07f7f713          	andi	a4,a5,127
    80002a58:	00e90733          	add	a4,s2,a4
    80002a5c:	0017879b          	addiw	a5,a5,1
    80002a60:	0af92023          	sw	a5,160(s2)
    80002a64:	00970c23          	sb	s1,24(a4)
    80002a68:	08f92e23          	sw	a5,156(s2)
    80002a6c:	01013403          	ld	s0,16(sp)
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	00013903          	ld	s2,0(sp)
    80002a7c:	00004517          	auipc	a0,0x4
    80002a80:	ffc50513          	addi	a0,a0,-4 # 80006a78 <cons>
    80002a84:	02010113          	addi	sp,sp,32
    80002a88:	00001317          	auipc	t1,0x1
    80002a8c:	eb030067          	jr	-336(t1) # 80003938 <release>
    80002a90:	00a00493          	li	s1,10
    80002a94:	fc1ff06f          	j	80002a54 <consoleintr+0x50>

0000000080002a98 <consoleinit>:
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00004497          	auipc	s1,0x4
    80002ab0:	fcc48493          	addi	s1,s1,-52 # 80006a78 <cons>
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00002597          	auipc	a1,0x2
    80002abc:	6e858593          	addi	a1,a1,1768 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002ac0:	00001097          	auipc	ra,0x1
    80002ac4:	d88080e7          	jalr	-632(ra) # 80003848 <initlock>
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	7ac080e7          	jalr	1964(ra) # 80003274 <uartinit>
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00000797          	auipc	a5,0x0
    80002adc:	d9c78793          	addi	a5,a5,-612 # 80002874 <consoleread>
    80002ae0:	0af4bc23          	sd	a5,184(s1)
    80002ae4:	00000797          	auipc	a5,0x0
    80002ae8:	cec78793          	addi	a5,a5,-788 # 800027d0 <consolewrite>
    80002aec:	0cf4b023          	sd	a5,192(s1)
    80002af0:	00813483          	ld	s1,8(sp)
    80002af4:	02010113          	addi	sp,sp,32
    80002af8:	00008067          	ret

0000000080002afc <console_read>:
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00813423          	sd	s0,8(sp)
    80002b04:	01010413          	addi	s0,sp,16
    80002b08:	00813403          	ld	s0,8(sp)
    80002b0c:	00004317          	auipc	t1,0x4
    80002b10:	02433303          	ld	t1,36(t1) # 80006b30 <devsw+0x10>
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00030067          	jr	t1

0000000080002b1c <console_write>:
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00813423          	sd	s0,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	00004317          	auipc	t1,0x4
    80002b30:	00c33303          	ld	t1,12(t1) # 80006b38 <devsw+0x18>
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00030067          	jr	t1

0000000080002b3c <panic>:
    80002b3c:	fe010113          	addi	sp,sp,-32
    80002b40:	00113c23          	sd	ra,24(sp)
    80002b44:	00813823          	sd	s0,16(sp)
    80002b48:	00913423          	sd	s1,8(sp)
    80002b4c:	02010413          	addi	s0,sp,32
    80002b50:	00050493          	mv	s1,a0
    80002b54:	00002517          	auipc	a0,0x2
    80002b58:	65450513          	addi	a0,a0,1620 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002b5c:	00004797          	auipc	a5,0x4
    80002b60:	0607ae23          	sw	zero,124(a5) # 80006bd8 <pr+0x18>
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	034080e7          	jalr	52(ra) # 80002b98 <__printf>
    80002b6c:	00048513          	mv	a0,s1
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	028080e7          	jalr	40(ra) # 80002b98 <__printf>
    80002b78:	00002517          	auipc	a0,0x2
    80002b7c:	4b850513          	addi	a0,a0,1208 # 80005030 <kvmincrease+0xd30>
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	018080e7          	jalr	24(ra) # 80002b98 <__printf>
    80002b88:	00100793          	li	a5,1
    80002b8c:	00003717          	auipc	a4,0x3
    80002b90:	daf72e23          	sw	a5,-580(a4) # 80005948 <panicked>
    80002b94:	0000006f          	j	80002b94 <panic+0x58>

0000000080002b98 <__printf>:
    80002b98:	f3010113          	addi	sp,sp,-208
    80002b9c:	08813023          	sd	s0,128(sp)
    80002ba0:	07313423          	sd	s3,104(sp)
    80002ba4:	09010413          	addi	s0,sp,144
    80002ba8:	05813023          	sd	s8,64(sp)
    80002bac:	08113423          	sd	ra,136(sp)
    80002bb0:	06913c23          	sd	s1,120(sp)
    80002bb4:	07213823          	sd	s2,112(sp)
    80002bb8:	07413023          	sd	s4,96(sp)
    80002bbc:	05513c23          	sd	s5,88(sp)
    80002bc0:	05613823          	sd	s6,80(sp)
    80002bc4:	05713423          	sd	s7,72(sp)
    80002bc8:	03913c23          	sd	s9,56(sp)
    80002bcc:	03a13823          	sd	s10,48(sp)
    80002bd0:	03b13423          	sd	s11,40(sp)
    80002bd4:	00004317          	auipc	t1,0x4
    80002bd8:	fec30313          	addi	t1,t1,-20 # 80006bc0 <pr>
    80002bdc:	01832c03          	lw	s8,24(t1)
    80002be0:	00b43423          	sd	a1,8(s0)
    80002be4:	00c43823          	sd	a2,16(s0)
    80002be8:	00d43c23          	sd	a3,24(s0)
    80002bec:	02e43023          	sd	a4,32(s0)
    80002bf0:	02f43423          	sd	a5,40(s0)
    80002bf4:	03043823          	sd	a6,48(s0)
    80002bf8:	03143c23          	sd	a7,56(s0)
    80002bfc:	00050993          	mv	s3,a0
    80002c00:	4a0c1663          	bnez	s8,800030ac <__printf+0x514>
    80002c04:	60098c63          	beqz	s3,8000321c <__printf+0x684>
    80002c08:	0009c503          	lbu	a0,0(s3)
    80002c0c:	00840793          	addi	a5,s0,8
    80002c10:	f6f43c23          	sd	a5,-136(s0)
    80002c14:	00000493          	li	s1,0
    80002c18:	22050063          	beqz	a0,80002e38 <__printf+0x2a0>
    80002c1c:	00002a37          	lui	s4,0x2
    80002c20:	00018ab7          	lui	s5,0x18
    80002c24:	000f4b37          	lui	s6,0xf4
    80002c28:	00989bb7          	lui	s7,0x989
    80002c2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c3c:	00148c9b          	addiw	s9,s1,1
    80002c40:	02500793          	li	a5,37
    80002c44:	01998933          	add	s2,s3,s9
    80002c48:	38f51263          	bne	a0,a5,80002fcc <__printf+0x434>
    80002c4c:	00094783          	lbu	a5,0(s2)
    80002c50:	00078c9b          	sext.w	s9,a5
    80002c54:	1e078263          	beqz	a5,80002e38 <__printf+0x2a0>
    80002c58:	0024849b          	addiw	s1,s1,2
    80002c5c:	07000713          	li	a4,112
    80002c60:	00998933          	add	s2,s3,s1
    80002c64:	38e78a63          	beq	a5,a4,80002ff8 <__printf+0x460>
    80002c68:	20f76863          	bltu	a4,a5,80002e78 <__printf+0x2e0>
    80002c6c:	42a78863          	beq	a5,a0,8000309c <__printf+0x504>
    80002c70:	06400713          	li	a4,100
    80002c74:	40e79663          	bne	a5,a4,80003080 <__printf+0x4e8>
    80002c78:	f7843783          	ld	a5,-136(s0)
    80002c7c:	0007a603          	lw	a2,0(a5)
    80002c80:	00878793          	addi	a5,a5,8
    80002c84:	f6f43c23          	sd	a5,-136(s0)
    80002c88:	42064a63          	bltz	a2,800030bc <__printf+0x524>
    80002c8c:	00a00713          	li	a4,10
    80002c90:	02e677bb          	remuw	a5,a2,a4
    80002c94:	00002d97          	auipc	s11,0x2
    80002c98:	53cd8d93          	addi	s11,s11,1340 # 800051d0 <digits>
    80002c9c:	00900593          	li	a1,9
    80002ca0:	0006051b          	sext.w	a0,a2
    80002ca4:	00000c93          	li	s9,0
    80002ca8:	02079793          	slli	a5,a5,0x20
    80002cac:	0207d793          	srli	a5,a5,0x20
    80002cb0:	00fd87b3          	add	a5,s11,a5
    80002cb4:	0007c783          	lbu	a5,0(a5)
    80002cb8:	02e656bb          	divuw	a3,a2,a4
    80002cbc:	f8f40023          	sb	a5,-128(s0)
    80002cc0:	14c5d863          	bge	a1,a2,80002e10 <__printf+0x278>
    80002cc4:	06300593          	li	a1,99
    80002cc8:	00100c93          	li	s9,1
    80002ccc:	02e6f7bb          	remuw	a5,a3,a4
    80002cd0:	02079793          	slli	a5,a5,0x20
    80002cd4:	0207d793          	srli	a5,a5,0x20
    80002cd8:	00fd87b3          	add	a5,s11,a5
    80002cdc:	0007c783          	lbu	a5,0(a5)
    80002ce0:	02e6d73b          	divuw	a4,a3,a4
    80002ce4:	f8f400a3          	sb	a5,-127(s0)
    80002ce8:	12a5f463          	bgeu	a1,a0,80002e10 <__printf+0x278>
    80002cec:	00a00693          	li	a3,10
    80002cf0:	00900593          	li	a1,9
    80002cf4:	02d777bb          	remuw	a5,a4,a3
    80002cf8:	02079793          	slli	a5,a5,0x20
    80002cfc:	0207d793          	srli	a5,a5,0x20
    80002d00:	00fd87b3          	add	a5,s11,a5
    80002d04:	0007c503          	lbu	a0,0(a5)
    80002d08:	02d757bb          	divuw	a5,a4,a3
    80002d0c:	f8a40123          	sb	a0,-126(s0)
    80002d10:	48e5f263          	bgeu	a1,a4,80003194 <__printf+0x5fc>
    80002d14:	06300513          	li	a0,99
    80002d18:	02d7f5bb          	remuw	a1,a5,a3
    80002d1c:	02059593          	slli	a1,a1,0x20
    80002d20:	0205d593          	srli	a1,a1,0x20
    80002d24:	00bd85b3          	add	a1,s11,a1
    80002d28:	0005c583          	lbu	a1,0(a1)
    80002d2c:	02d7d7bb          	divuw	a5,a5,a3
    80002d30:	f8b401a3          	sb	a1,-125(s0)
    80002d34:	48e57263          	bgeu	a0,a4,800031b8 <__printf+0x620>
    80002d38:	3e700513          	li	a0,999
    80002d3c:	02d7f5bb          	remuw	a1,a5,a3
    80002d40:	02059593          	slli	a1,a1,0x20
    80002d44:	0205d593          	srli	a1,a1,0x20
    80002d48:	00bd85b3          	add	a1,s11,a1
    80002d4c:	0005c583          	lbu	a1,0(a1)
    80002d50:	02d7d7bb          	divuw	a5,a5,a3
    80002d54:	f8b40223          	sb	a1,-124(s0)
    80002d58:	46e57663          	bgeu	a0,a4,800031c4 <__printf+0x62c>
    80002d5c:	02d7f5bb          	remuw	a1,a5,a3
    80002d60:	02059593          	slli	a1,a1,0x20
    80002d64:	0205d593          	srli	a1,a1,0x20
    80002d68:	00bd85b3          	add	a1,s11,a1
    80002d6c:	0005c583          	lbu	a1,0(a1)
    80002d70:	02d7d7bb          	divuw	a5,a5,a3
    80002d74:	f8b402a3          	sb	a1,-123(s0)
    80002d78:	46ea7863          	bgeu	s4,a4,800031e8 <__printf+0x650>
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b40323          	sb	a1,-122(s0)
    80002d98:	3eeaf863          	bgeu	s5,a4,80003188 <__printf+0x5f0>
    80002d9c:	02d7f5bb          	remuw	a1,a5,a3
    80002da0:	02059593          	slli	a1,a1,0x20
    80002da4:	0205d593          	srli	a1,a1,0x20
    80002da8:	00bd85b3          	add	a1,s11,a1
    80002dac:	0005c583          	lbu	a1,0(a1)
    80002db0:	02d7d7bb          	divuw	a5,a5,a3
    80002db4:	f8b403a3          	sb	a1,-121(s0)
    80002db8:	42eb7e63          	bgeu	s6,a4,800031f4 <__printf+0x65c>
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b40423          	sb	a1,-120(s0)
    80002dd8:	42ebfc63          	bgeu	s7,a4,80003210 <__printf+0x678>
    80002ddc:	02079793          	slli	a5,a5,0x20
    80002de0:	0207d793          	srli	a5,a5,0x20
    80002de4:	00fd8db3          	add	s11,s11,a5
    80002de8:	000dc703          	lbu	a4,0(s11)
    80002dec:	00a00793          	li	a5,10
    80002df0:	00900c93          	li	s9,9
    80002df4:	f8e404a3          	sb	a4,-119(s0)
    80002df8:	00065c63          	bgez	a2,80002e10 <__printf+0x278>
    80002dfc:	f9040713          	addi	a4,s0,-112
    80002e00:	00f70733          	add	a4,a4,a5
    80002e04:	02d00693          	li	a3,45
    80002e08:	fed70823          	sb	a3,-16(a4)
    80002e0c:	00078c93          	mv	s9,a5
    80002e10:	f8040793          	addi	a5,s0,-128
    80002e14:	01978cb3          	add	s9,a5,s9
    80002e18:	f7f40d13          	addi	s10,s0,-129
    80002e1c:	000cc503          	lbu	a0,0(s9)
    80002e20:	fffc8c93          	addi	s9,s9,-1
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	b90080e7          	jalr	-1136(ra) # 800029b4 <consputc>
    80002e2c:	ffac98e3          	bne	s9,s10,80002e1c <__printf+0x284>
    80002e30:	00094503          	lbu	a0,0(s2)
    80002e34:	e00514e3          	bnez	a0,80002c3c <__printf+0xa4>
    80002e38:	1a0c1663          	bnez	s8,80002fe4 <__printf+0x44c>
    80002e3c:	08813083          	ld	ra,136(sp)
    80002e40:	08013403          	ld	s0,128(sp)
    80002e44:	07813483          	ld	s1,120(sp)
    80002e48:	07013903          	ld	s2,112(sp)
    80002e4c:	06813983          	ld	s3,104(sp)
    80002e50:	06013a03          	ld	s4,96(sp)
    80002e54:	05813a83          	ld	s5,88(sp)
    80002e58:	05013b03          	ld	s6,80(sp)
    80002e5c:	04813b83          	ld	s7,72(sp)
    80002e60:	04013c03          	ld	s8,64(sp)
    80002e64:	03813c83          	ld	s9,56(sp)
    80002e68:	03013d03          	ld	s10,48(sp)
    80002e6c:	02813d83          	ld	s11,40(sp)
    80002e70:	0d010113          	addi	sp,sp,208
    80002e74:	00008067          	ret
    80002e78:	07300713          	li	a4,115
    80002e7c:	1ce78a63          	beq	a5,a4,80003050 <__printf+0x4b8>
    80002e80:	07800713          	li	a4,120
    80002e84:	1ee79e63          	bne	a5,a4,80003080 <__printf+0x4e8>
    80002e88:	f7843783          	ld	a5,-136(s0)
    80002e8c:	0007a703          	lw	a4,0(a5)
    80002e90:	00878793          	addi	a5,a5,8
    80002e94:	f6f43c23          	sd	a5,-136(s0)
    80002e98:	28074263          	bltz	a4,8000311c <__printf+0x584>
    80002e9c:	00002d97          	auipc	s11,0x2
    80002ea0:	334d8d93          	addi	s11,s11,820 # 800051d0 <digits>
    80002ea4:	00f77793          	andi	a5,a4,15
    80002ea8:	00fd87b3          	add	a5,s11,a5
    80002eac:	0007c683          	lbu	a3,0(a5)
    80002eb0:	00f00613          	li	a2,15
    80002eb4:	0007079b          	sext.w	a5,a4
    80002eb8:	f8d40023          	sb	a3,-128(s0)
    80002ebc:	0047559b          	srliw	a1,a4,0x4
    80002ec0:	0047569b          	srliw	a3,a4,0x4
    80002ec4:	00000c93          	li	s9,0
    80002ec8:	0ee65063          	bge	a2,a4,80002fa8 <__printf+0x410>
    80002ecc:	00f6f693          	andi	a3,a3,15
    80002ed0:	00dd86b3          	add	a3,s11,a3
    80002ed4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ed8:	0087d79b          	srliw	a5,a5,0x8
    80002edc:	00100c93          	li	s9,1
    80002ee0:	f8d400a3          	sb	a3,-127(s0)
    80002ee4:	0cb67263          	bgeu	a2,a1,80002fa8 <__printf+0x410>
    80002ee8:	00f7f693          	andi	a3,a5,15
    80002eec:	00dd86b3          	add	a3,s11,a3
    80002ef0:	0006c583          	lbu	a1,0(a3)
    80002ef4:	00f00613          	li	a2,15
    80002ef8:	0047d69b          	srliw	a3,a5,0x4
    80002efc:	f8b40123          	sb	a1,-126(s0)
    80002f00:	0047d593          	srli	a1,a5,0x4
    80002f04:	28f67e63          	bgeu	a2,a5,800031a0 <__printf+0x608>
    80002f08:	00f6f693          	andi	a3,a3,15
    80002f0c:	00dd86b3          	add	a3,s11,a3
    80002f10:	0006c503          	lbu	a0,0(a3)
    80002f14:	0087d813          	srli	a6,a5,0x8
    80002f18:	0087d69b          	srliw	a3,a5,0x8
    80002f1c:	f8a401a3          	sb	a0,-125(s0)
    80002f20:	28b67663          	bgeu	a2,a1,800031ac <__printf+0x614>
    80002f24:	00f6f693          	andi	a3,a3,15
    80002f28:	00dd86b3          	add	a3,s11,a3
    80002f2c:	0006c583          	lbu	a1,0(a3)
    80002f30:	00c7d513          	srli	a0,a5,0xc
    80002f34:	00c7d69b          	srliw	a3,a5,0xc
    80002f38:	f8b40223          	sb	a1,-124(s0)
    80002f3c:	29067a63          	bgeu	a2,a6,800031d0 <__printf+0x638>
    80002f40:	00f6f693          	andi	a3,a3,15
    80002f44:	00dd86b3          	add	a3,s11,a3
    80002f48:	0006c583          	lbu	a1,0(a3)
    80002f4c:	0107d813          	srli	a6,a5,0x10
    80002f50:	0107d69b          	srliw	a3,a5,0x10
    80002f54:	f8b402a3          	sb	a1,-123(s0)
    80002f58:	28a67263          	bgeu	a2,a0,800031dc <__printf+0x644>
    80002f5c:	00f6f693          	andi	a3,a3,15
    80002f60:	00dd86b3          	add	a3,s11,a3
    80002f64:	0006c683          	lbu	a3,0(a3)
    80002f68:	0147d79b          	srliw	a5,a5,0x14
    80002f6c:	f8d40323          	sb	a3,-122(s0)
    80002f70:	21067663          	bgeu	a2,a6,8000317c <__printf+0x5e4>
    80002f74:	02079793          	slli	a5,a5,0x20
    80002f78:	0207d793          	srli	a5,a5,0x20
    80002f7c:	00fd8db3          	add	s11,s11,a5
    80002f80:	000dc683          	lbu	a3,0(s11)
    80002f84:	00800793          	li	a5,8
    80002f88:	00700c93          	li	s9,7
    80002f8c:	f8d403a3          	sb	a3,-121(s0)
    80002f90:	00075c63          	bgez	a4,80002fa8 <__printf+0x410>
    80002f94:	f9040713          	addi	a4,s0,-112
    80002f98:	00f70733          	add	a4,a4,a5
    80002f9c:	02d00693          	li	a3,45
    80002fa0:	fed70823          	sb	a3,-16(a4)
    80002fa4:	00078c93          	mv	s9,a5
    80002fa8:	f8040793          	addi	a5,s0,-128
    80002fac:	01978cb3          	add	s9,a5,s9
    80002fb0:	f7f40d13          	addi	s10,s0,-129
    80002fb4:	000cc503          	lbu	a0,0(s9)
    80002fb8:	fffc8c93          	addi	s9,s9,-1
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	9f8080e7          	jalr	-1544(ra) # 800029b4 <consputc>
    80002fc4:	ff9d18e3          	bne	s10,s9,80002fb4 <__printf+0x41c>
    80002fc8:	0100006f          	j	80002fd8 <__printf+0x440>
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	9e8080e7          	jalr	-1560(ra) # 800029b4 <consputc>
    80002fd4:	000c8493          	mv	s1,s9
    80002fd8:	00094503          	lbu	a0,0(s2)
    80002fdc:	c60510e3          	bnez	a0,80002c3c <__printf+0xa4>
    80002fe0:	e40c0ee3          	beqz	s8,80002e3c <__printf+0x2a4>
    80002fe4:	00004517          	auipc	a0,0x4
    80002fe8:	bdc50513          	addi	a0,a0,-1060 # 80006bc0 <pr>
    80002fec:	00001097          	auipc	ra,0x1
    80002ff0:	94c080e7          	jalr	-1716(ra) # 80003938 <release>
    80002ff4:	e49ff06f          	j	80002e3c <__printf+0x2a4>
    80002ff8:	f7843783          	ld	a5,-136(s0)
    80002ffc:	03000513          	li	a0,48
    80003000:	01000d13          	li	s10,16
    80003004:	00878713          	addi	a4,a5,8
    80003008:	0007bc83          	ld	s9,0(a5)
    8000300c:	f6e43c23          	sd	a4,-136(s0)
    80003010:	00000097          	auipc	ra,0x0
    80003014:	9a4080e7          	jalr	-1628(ra) # 800029b4 <consputc>
    80003018:	07800513          	li	a0,120
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	998080e7          	jalr	-1640(ra) # 800029b4 <consputc>
    80003024:	00002d97          	auipc	s11,0x2
    80003028:	1acd8d93          	addi	s11,s11,428 # 800051d0 <digits>
    8000302c:	03ccd793          	srli	a5,s9,0x3c
    80003030:	00fd87b3          	add	a5,s11,a5
    80003034:	0007c503          	lbu	a0,0(a5)
    80003038:	fffd0d1b          	addiw	s10,s10,-1
    8000303c:	004c9c93          	slli	s9,s9,0x4
    80003040:	00000097          	auipc	ra,0x0
    80003044:	974080e7          	jalr	-1676(ra) # 800029b4 <consputc>
    80003048:	fe0d12e3          	bnez	s10,8000302c <__printf+0x494>
    8000304c:	f8dff06f          	j	80002fd8 <__printf+0x440>
    80003050:	f7843783          	ld	a5,-136(s0)
    80003054:	0007bc83          	ld	s9,0(a5)
    80003058:	00878793          	addi	a5,a5,8
    8000305c:	f6f43c23          	sd	a5,-136(s0)
    80003060:	000c9a63          	bnez	s9,80003074 <__printf+0x4dc>
    80003064:	1080006f          	j	8000316c <__printf+0x5d4>
    80003068:	001c8c93          	addi	s9,s9,1
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	948080e7          	jalr	-1720(ra) # 800029b4 <consputc>
    80003074:	000cc503          	lbu	a0,0(s9)
    80003078:	fe0518e3          	bnez	a0,80003068 <__printf+0x4d0>
    8000307c:	f5dff06f          	j	80002fd8 <__printf+0x440>
    80003080:	02500513          	li	a0,37
    80003084:	00000097          	auipc	ra,0x0
    80003088:	930080e7          	jalr	-1744(ra) # 800029b4 <consputc>
    8000308c:	000c8513          	mv	a0,s9
    80003090:	00000097          	auipc	ra,0x0
    80003094:	924080e7          	jalr	-1756(ra) # 800029b4 <consputc>
    80003098:	f41ff06f          	j	80002fd8 <__printf+0x440>
    8000309c:	02500513          	li	a0,37
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	914080e7          	jalr	-1772(ra) # 800029b4 <consputc>
    800030a8:	f31ff06f          	j	80002fd8 <__printf+0x440>
    800030ac:	00030513          	mv	a0,t1
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	7bc080e7          	jalr	1980(ra) # 8000386c <acquire>
    800030b8:	b4dff06f          	j	80002c04 <__printf+0x6c>
    800030bc:	40c0053b          	negw	a0,a2
    800030c0:	00a00713          	li	a4,10
    800030c4:	02e576bb          	remuw	a3,a0,a4
    800030c8:	00002d97          	auipc	s11,0x2
    800030cc:	108d8d93          	addi	s11,s11,264 # 800051d0 <digits>
    800030d0:	ff700593          	li	a1,-9
    800030d4:	02069693          	slli	a3,a3,0x20
    800030d8:	0206d693          	srli	a3,a3,0x20
    800030dc:	00dd86b3          	add	a3,s11,a3
    800030e0:	0006c683          	lbu	a3,0(a3)
    800030e4:	02e557bb          	divuw	a5,a0,a4
    800030e8:	f8d40023          	sb	a3,-128(s0)
    800030ec:	10b65e63          	bge	a2,a1,80003208 <__printf+0x670>
    800030f0:	06300593          	li	a1,99
    800030f4:	02e7f6bb          	remuw	a3,a5,a4
    800030f8:	02069693          	slli	a3,a3,0x20
    800030fc:	0206d693          	srli	a3,a3,0x20
    80003100:	00dd86b3          	add	a3,s11,a3
    80003104:	0006c683          	lbu	a3,0(a3)
    80003108:	02e7d73b          	divuw	a4,a5,a4
    8000310c:	00200793          	li	a5,2
    80003110:	f8d400a3          	sb	a3,-127(s0)
    80003114:	bca5ece3          	bltu	a1,a0,80002cec <__printf+0x154>
    80003118:	ce5ff06f          	j	80002dfc <__printf+0x264>
    8000311c:	40e007bb          	negw	a5,a4
    80003120:	00002d97          	auipc	s11,0x2
    80003124:	0b0d8d93          	addi	s11,s11,176 # 800051d0 <digits>
    80003128:	00f7f693          	andi	a3,a5,15
    8000312c:	00dd86b3          	add	a3,s11,a3
    80003130:	0006c583          	lbu	a1,0(a3)
    80003134:	ff100613          	li	a2,-15
    80003138:	0047d69b          	srliw	a3,a5,0x4
    8000313c:	f8b40023          	sb	a1,-128(s0)
    80003140:	0047d59b          	srliw	a1,a5,0x4
    80003144:	0ac75e63          	bge	a4,a2,80003200 <__printf+0x668>
    80003148:	00f6f693          	andi	a3,a3,15
    8000314c:	00dd86b3          	add	a3,s11,a3
    80003150:	0006c603          	lbu	a2,0(a3)
    80003154:	00f00693          	li	a3,15
    80003158:	0087d79b          	srliw	a5,a5,0x8
    8000315c:	f8c400a3          	sb	a2,-127(s0)
    80003160:	d8b6e4e3          	bltu	a3,a1,80002ee8 <__printf+0x350>
    80003164:	00200793          	li	a5,2
    80003168:	e2dff06f          	j	80002f94 <__printf+0x3fc>
    8000316c:	00002c97          	auipc	s9,0x2
    80003170:	044c8c93          	addi	s9,s9,68 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    80003174:	02800513          	li	a0,40
    80003178:	ef1ff06f          	j	80003068 <__printf+0x4d0>
    8000317c:	00700793          	li	a5,7
    80003180:	00600c93          	li	s9,6
    80003184:	e0dff06f          	j	80002f90 <__printf+0x3f8>
    80003188:	00700793          	li	a5,7
    8000318c:	00600c93          	li	s9,6
    80003190:	c69ff06f          	j	80002df8 <__printf+0x260>
    80003194:	00300793          	li	a5,3
    80003198:	00200c93          	li	s9,2
    8000319c:	c5dff06f          	j	80002df8 <__printf+0x260>
    800031a0:	00300793          	li	a5,3
    800031a4:	00200c93          	li	s9,2
    800031a8:	de9ff06f          	j	80002f90 <__printf+0x3f8>
    800031ac:	00400793          	li	a5,4
    800031b0:	00300c93          	li	s9,3
    800031b4:	dddff06f          	j	80002f90 <__printf+0x3f8>
    800031b8:	00400793          	li	a5,4
    800031bc:	00300c93          	li	s9,3
    800031c0:	c39ff06f          	j	80002df8 <__printf+0x260>
    800031c4:	00500793          	li	a5,5
    800031c8:	00400c93          	li	s9,4
    800031cc:	c2dff06f          	j	80002df8 <__printf+0x260>
    800031d0:	00500793          	li	a5,5
    800031d4:	00400c93          	li	s9,4
    800031d8:	db9ff06f          	j	80002f90 <__printf+0x3f8>
    800031dc:	00600793          	li	a5,6
    800031e0:	00500c93          	li	s9,5
    800031e4:	dadff06f          	j	80002f90 <__printf+0x3f8>
    800031e8:	00600793          	li	a5,6
    800031ec:	00500c93          	li	s9,5
    800031f0:	c09ff06f          	j	80002df8 <__printf+0x260>
    800031f4:	00800793          	li	a5,8
    800031f8:	00700c93          	li	s9,7
    800031fc:	bfdff06f          	j	80002df8 <__printf+0x260>
    80003200:	00100793          	li	a5,1
    80003204:	d91ff06f          	j	80002f94 <__printf+0x3fc>
    80003208:	00100793          	li	a5,1
    8000320c:	bf1ff06f          	j	80002dfc <__printf+0x264>
    80003210:	00900793          	li	a5,9
    80003214:	00800c93          	li	s9,8
    80003218:	be1ff06f          	j	80002df8 <__printf+0x260>
    8000321c:	00002517          	auipc	a0,0x2
    80003220:	f9c50513          	addi	a0,a0,-100 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    80003224:	00000097          	auipc	ra,0x0
    80003228:	918080e7          	jalr	-1768(ra) # 80002b3c <panic>

000000008000322c <printfinit>:
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	00113c23          	sd	ra,24(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00004497          	auipc	s1,0x4
    80003244:	98048493          	addi	s1,s1,-1664 # 80006bc0 <pr>
    80003248:	00048513          	mv	a0,s1
    8000324c:	00002597          	auipc	a1,0x2
    80003250:	f7c58593          	addi	a1,a1,-132 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    80003254:	00000097          	auipc	ra,0x0
    80003258:	5f4080e7          	jalr	1524(ra) # 80003848 <initlock>
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	0004ac23          	sw	zero,24(s1)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <uartinit>:
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00813423          	sd	s0,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
    80003280:	100007b7          	lui	a5,0x10000
    80003284:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003288:	f8000713          	li	a4,-128
    8000328c:	00e781a3          	sb	a4,3(a5)
    80003290:	00300713          	li	a4,3
    80003294:	00e78023          	sb	a4,0(a5)
    80003298:	000780a3          	sb	zero,1(a5)
    8000329c:	00e781a3          	sb	a4,3(a5)
    800032a0:	00700693          	li	a3,7
    800032a4:	00d78123          	sb	a3,2(a5)
    800032a8:	00e780a3          	sb	a4,1(a5)
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <uartputc>:
    800032b8:	00002797          	auipc	a5,0x2
    800032bc:	6907a783          	lw	a5,1680(a5) # 80005948 <panicked>
    800032c0:	00078463          	beqz	a5,800032c8 <uartputc+0x10>
    800032c4:	0000006f          	j	800032c4 <uartputc+0xc>
    800032c8:	fd010113          	addi	sp,sp,-48
    800032cc:	02813023          	sd	s0,32(sp)
    800032d0:	00913c23          	sd	s1,24(sp)
    800032d4:	01213823          	sd	s2,16(sp)
    800032d8:	01313423          	sd	s3,8(sp)
    800032dc:	02113423          	sd	ra,40(sp)
    800032e0:	03010413          	addi	s0,sp,48
    800032e4:	00002917          	auipc	s2,0x2
    800032e8:	66c90913          	addi	s2,s2,1644 # 80005950 <uart_tx_r>
    800032ec:	00093783          	ld	a5,0(s2)
    800032f0:	00002497          	auipc	s1,0x2
    800032f4:	66848493          	addi	s1,s1,1640 # 80005958 <uart_tx_w>
    800032f8:	0004b703          	ld	a4,0(s1)
    800032fc:	02078693          	addi	a3,a5,32
    80003300:	00050993          	mv	s3,a0
    80003304:	02e69c63          	bne	a3,a4,8000333c <uartputc+0x84>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	834080e7          	jalr	-1996(ra) # 80003b3c <push_on>
    80003310:	00093783          	ld	a5,0(s2)
    80003314:	0004b703          	ld	a4,0(s1)
    80003318:	02078793          	addi	a5,a5,32
    8000331c:	00e79463          	bne	a5,a4,80003324 <uartputc+0x6c>
    80003320:	0000006f          	j	80003320 <uartputc+0x68>
    80003324:	00001097          	auipc	ra,0x1
    80003328:	88c080e7          	jalr	-1908(ra) # 80003bb0 <pop_on>
    8000332c:	00093783          	ld	a5,0(s2)
    80003330:	0004b703          	ld	a4,0(s1)
    80003334:	02078693          	addi	a3,a5,32
    80003338:	fce688e3          	beq	a3,a4,80003308 <uartputc+0x50>
    8000333c:	01f77693          	andi	a3,a4,31
    80003340:	00004597          	auipc	a1,0x4
    80003344:	8a058593          	addi	a1,a1,-1888 # 80006be0 <uart_tx_buf>
    80003348:	00d586b3          	add	a3,a1,a3
    8000334c:	00170713          	addi	a4,a4,1
    80003350:	01368023          	sb	s3,0(a3)
    80003354:	00e4b023          	sd	a4,0(s1)
    80003358:	10000637          	lui	a2,0x10000
    8000335c:	02f71063          	bne	a4,a5,8000337c <uartputc+0xc4>
    80003360:	0340006f          	j	80003394 <uartputc+0xdc>
    80003364:	00074703          	lbu	a4,0(a4)
    80003368:	00f93023          	sd	a5,0(s2)
    8000336c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003370:	00093783          	ld	a5,0(s2)
    80003374:	0004b703          	ld	a4,0(s1)
    80003378:	00f70e63          	beq	a4,a5,80003394 <uartputc+0xdc>
    8000337c:	00564683          	lbu	a3,5(a2)
    80003380:	01f7f713          	andi	a4,a5,31
    80003384:	00e58733          	add	a4,a1,a4
    80003388:	0206f693          	andi	a3,a3,32
    8000338c:	00178793          	addi	a5,a5,1
    80003390:	fc069ae3          	bnez	a3,80003364 <uartputc+0xac>
    80003394:	02813083          	ld	ra,40(sp)
    80003398:	02013403          	ld	s0,32(sp)
    8000339c:	01813483          	ld	s1,24(sp)
    800033a0:	01013903          	ld	s2,16(sp)
    800033a4:	00813983          	ld	s3,8(sp)
    800033a8:	03010113          	addi	sp,sp,48
    800033ac:	00008067          	ret

00000000800033b0 <uartputc_sync>:
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00813423          	sd	s0,8(sp)
    800033b8:	01010413          	addi	s0,sp,16
    800033bc:	00002717          	auipc	a4,0x2
    800033c0:	58c72703          	lw	a4,1420(a4) # 80005948 <panicked>
    800033c4:	02071663          	bnez	a4,800033f0 <uartputc_sync+0x40>
    800033c8:	00050793          	mv	a5,a0
    800033cc:	100006b7          	lui	a3,0x10000
    800033d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800033d4:	02077713          	andi	a4,a4,32
    800033d8:	fe070ce3          	beqz	a4,800033d0 <uartputc_sync+0x20>
    800033dc:	0ff7f793          	andi	a5,a5,255
    800033e0:	00f68023          	sb	a5,0(a3)
    800033e4:	00813403          	ld	s0,8(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret
    800033f0:	0000006f          	j	800033f0 <uartputc_sync+0x40>

00000000800033f4 <uartstart>:
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	00002617          	auipc	a2,0x2
    80003404:	55060613          	addi	a2,a2,1360 # 80005950 <uart_tx_r>
    80003408:	00002517          	auipc	a0,0x2
    8000340c:	55050513          	addi	a0,a0,1360 # 80005958 <uart_tx_w>
    80003410:	00063783          	ld	a5,0(a2)
    80003414:	00053703          	ld	a4,0(a0)
    80003418:	04f70263          	beq	a4,a5,8000345c <uartstart+0x68>
    8000341c:	100005b7          	lui	a1,0x10000
    80003420:	00003817          	auipc	a6,0x3
    80003424:	7c080813          	addi	a6,a6,1984 # 80006be0 <uart_tx_buf>
    80003428:	01c0006f          	j	80003444 <uartstart+0x50>
    8000342c:	0006c703          	lbu	a4,0(a3)
    80003430:	00f63023          	sd	a5,0(a2)
    80003434:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003438:	00063783          	ld	a5,0(a2)
    8000343c:	00053703          	ld	a4,0(a0)
    80003440:	00f70e63          	beq	a4,a5,8000345c <uartstart+0x68>
    80003444:	01f7f713          	andi	a4,a5,31
    80003448:	00e806b3          	add	a3,a6,a4
    8000344c:	0055c703          	lbu	a4,5(a1)
    80003450:	00178793          	addi	a5,a5,1
    80003454:	02077713          	andi	a4,a4,32
    80003458:	fc071ae3          	bnez	a4,8000342c <uartstart+0x38>
    8000345c:	00813403          	ld	s0,8(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <uartgetc>:
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00813423          	sd	s0,8(sp)
    80003470:	01010413          	addi	s0,sp,16
    80003474:	10000737          	lui	a4,0x10000
    80003478:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000347c:	0017f793          	andi	a5,a5,1
    80003480:	00078c63          	beqz	a5,80003498 <uartgetc+0x30>
    80003484:	00074503          	lbu	a0,0(a4)
    80003488:	0ff57513          	andi	a0,a0,255
    8000348c:	00813403          	ld	s0,8(sp)
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00008067          	ret
    80003498:	fff00513          	li	a0,-1
    8000349c:	ff1ff06f          	j	8000348c <uartgetc+0x24>

00000000800034a0 <uartintr>:
    800034a0:	100007b7          	lui	a5,0x10000
    800034a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034a8:	0017f793          	andi	a5,a5,1
    800034ac:	0a078463          	beqz	a5,80003554 <uartintr+0xb4>
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	00113c23          	sd	ra,24(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	100004b7          	lui	s1,0x10000
    800034c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800034cc:	0ff57513          	andi	a0,a0,255
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	534080e7          	jalr	1332(ra) # 80002a04 <consoleintr>
    800034d8:	0054c783          	lbu	a5,5(s1)
    800034dc:	0017f793          	andi	a5,a5,1
    800034e0:	fe0794e3          	bnez	a5,800034c8 <uartintr+0x28>
    800034e4:	00002617          	auipc	a2,0x2
    800034e8:	46c60613          	addi	a2,a2,1132 # 80005950 <uart_tx_r>
    800034ec:	00002517          	auipc	a0,0x2
    800034f0:	46c50513          	addi	a0,a0,1132 # 80005958 <uart_tx_w>
    800034f4:	00063783          	ld	a5,0(a2)
    800034f8:	00053703          	ld	a4,0(a0)
    800034fc:	04f70263          	beq	a4,a5,80003540 <uartintr+0xa0>
    80003500:	100005b7          	lui	a1,0x10000
    80003504:	00003817          	auipc	a6,0x3
    80003508:	6dc80813          	addi	a6,a6,1756 # 80006be0 <uart_tx_buf>
    8000350c:	01c0006f          	j	80003528 <uartintr+0x88>
    80003510:	0006c703          	lbu	a4,0(a3)
    80003514:	00f63023          	sd	a5,0(a2)
    80003518:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000351c:	00063783          	ld	a5,0(a2)
    80003520:	00053703          	ld	a4,0(a0)
    80003524:	00f70e63          	beq	a4,a5,80003540 <uartintr+0xa0>
    80003528:	01f7f713          	andi	a4,a5,31
    8000352c:	00e806b3          	add	a3,a6,a4
    80003530:	0055c703          	lbu	a4,5(a1)
    80003534:	00178793          	addi	a5,a5,1
    80003538:	02077713          	andi	a4,a4,32
    8000353c:	fc071ae3          	bnez	a4,80003510 <uartintr+0x70>
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	00813483          	ld	s1,8(sp)
    8000354c:	02010113          	addi	sp,sp,32
    80003550:	00008067          	ret
    80003554:	00002617          	auipc	a2,0x2
    80003558:	3fc60613          	addi	a2,a2,1020 # 80005950 <uart_tx_r>
    8000355c:	00002517          	auipc	a0,0x2
    80003560:	3fc50513          	addi	a0,a0,1020 # 80005958 <uart_tx_w>
    80003564:	00063783          	ld	a5,0(a2)
    80003568:	00053703          	ld	a4,0(a0)
    8000356c:	04f70263          	beq	a4,a5,800035b0 <uartintr+0x110>
    80003570:	100005b7          	lui	a1,0x10000
    80003574:	00003817          	auipc	a6,0x3
    80003578:	66c80813          	addi	a6,a6,1644 # 80006be0 <uart_tx_buf>
    8000357c:	01c0006f          	j	80003598 <uartintr+0xf8>
    80003580:	0006c703          	lbu	a4,0(a3)
    80003584:	00f63023          	sd	a5,0(a2)
    80003588:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000358c:	00063783          	ld	a5,0(a2)
    80003590:	00053703          	ld	a4,0(a0)
    80003594:	02f70063          	beq	a4,a5,800035b4 <uartintr+0x114>
    80003598:	01f7f713          	andi	a4,a5,31
    8000359c:	00e806b3          	add	a3,a6,a4
    800035a0:	0055c703          	lbu	a4,5(a1)
    800035a4:	00178793          	addi	a5,a5,1
    800035a8:	02077713          	andi	a4,a4,32
    800035ac:	fc071ae3          	bnez	a4,80003580 <uartintr+0xe0>
    800035b0:	00008067          	ret
    800035b4:	00008067          	ret

00000000800035b8 <kinit>:
    800035b8:	fc010113          	addi	sp,sp,-64
    800035bc:	02913423          	sd	s1,40(sp)
    800035c0:	fffff7b7          	lui	a5,0xfffff
    800035c4:	00004497          	auipc	s1,0x4
    800035c8:	64b48493          	addi	s1,s1,1611 # 80007c0f <end+0xfff>
    800035cc:	02813823          	sd	s0,48(sp)
    800035d0:	01313c23          	sd	s3,24(sp)
    800035d4:	00f4f4b3          	and	s1,s1,a5
    800035d8:	02113c23          	sd	ra,56(sp)
    800035dc:	03213023          	sd	s2,32(sp)
    800035e0:	01413823          	sd	s4,16(sp)
    800035e4:	01513423          	sd	s5,8(sp)
    800035e8:	04010413          	addi	s0,sp,64
    800035ec:	000017b7          	lui	a5,0x1
    800035f0:	01100993          	li	s3,17
    800035f4:	00f487b3          	add	a5,s1,a5
    800035f8:	01b99993          	slli	s3,s3,0x1b
    800035fc:	06f9e063          	bltu	s3,a5,8000365c <kinit+0xa4>
    80003600:	00003a97          	auipc	s5,0x3
    80003604:	610a8a93          	addi	s5,s5,1552 # 80006c10 <end>
    80003608:	0754ec63          	bltu	s1,s5,80003680 <kinit+0xc8>
    8000360c:	0734fa63          	bgeu	s1,s3,80003680 <kinit+0xc8>
    80003610:	00088a37          	lui	s4,0x88
    80003614:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003618:	00002917          	auipc	s2,0x2
    8000361c:	34890913          	addi	s2,s2,840 # 80005960 <kmem>
    80003620:	00ca1a13          	slli	s4,s4,0xc
    80003624:	0140006f          	j	80003638 <kinit+0x80>
    80003628:	000017b7          	lui	a5,0x1
    8000362c:	00f484b3          	add	s1,s1,a5
    80003630:	0554e863          	bltu	s1,s5,80003680 <kinit+0xc8>
    80003634:	0534f663          	bgeu	s1,s3,80003680 <kinit+0xc8>
    80003638:	00001637          	lui	a2,0x1
    8000363c:	00100593          	li	a1,1
    80003640:	00048513          	mv	a0,s1
    80003644:	00000097          	auipc	ra,0x0
    80003648:	5e4080e7          	jalr	1508(ra) # 80003c28 <__memset>
    8000364c:	00093783          	ld	a5,0(s2)
    80003650:	00f4b023          	sd	a5,0(s1)
    80003654:	00993023          	sd	s1,0(s2)
    80003658:	fd4498e3          	bne	s1,s4,80003628 <kinit+0x70>
    8000365c:	03813083          	ld	ra,56(sp)
    80003660:	03013403          	ld	s0,48(sp)
    80003664:	02813483          	ld	s1,40(sp)
    80003668:	02013903          	ld	s2,32(sp)
    8000366c:	01813983          	ld	s3,24(sp)
    80003670:	01013a03          	ld	s4,16(sp)
    80003674:	00813a83          	ld	s5,8(sp)
    80003678:	04010113          	addi	sp,sp,64
    8000367c:	00008067          	ret
    80003680:	00002517          	auipc	a0,0x2
    80003684:	b6850513          	addi	a0,a0,-1176 # 800051e8 <digits+0x18>
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	4b4080e7          	jalr	1204(ra) # 80002b3c <panic>

0000000080003690 <freerange>:
    80003690:	fc010113          	addi	sp,sp,-64
    80003694:	000017b7          	lui	a5,0x1
    80003698:	02913423          	sd	s1,40(sp)
    8000369c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036a0:	009504b3          	add	s1,a0,s1
    800036a4:	fffff537          	lui	a0,0xfffff
    800036a8:	02813823          	sd	s0,48(sp)
    800036ac:	02113c23          	sd	ra,56(sp)
    800036b0:	03213023          	sd	s2,32(sp)
    800036b4:	01313c23          	sd	s3,24(sp)
    800036b8:	01413823          	sd	s4,16(sp)
    800036bc:	01513423          	sd	s5,8(sp)
    800036c0:	01613023          	sd	s6,0(sp)
    800036c4:	04010413          	addi	s0,sp,64
    800036c8:	00a4f4b3          	and	s1,s1,a0
    800036cc:	00f487b3          	add	a5,s1,a5
    800036d0:	06f5e463          	bltu	a1,a5,80003738 <freerange+0xa8>
    800036d4:	00003a97          	auipc	s5,0x3
    800036d8:	53ca8a93          	addi	s5,s5,1340 # 80006c10 <end>
    800036dc:	0954e263          	bltu	s1,s5,80003760 <freerange+0xd0>
    800036e0:	01100993          	li	s3,17
    800036e4:	01b99993          	slli	s3,s3,0x1b
    800036e8:	0734fc63          	bgeu	s1,s3,80003760 <freerange+0xd0>
    800036ec:	00058a13          	mv	s4,a1
    800036f0:	00002917          	auipc	s2,0x2
    800036f4:	27090913          	addi	s2,s2,624 # 80005960 <kmem>
    800036f8:	00002b37          	lui	s6,0x2
    800036fc:	0140006f          	j	80003710 <freerange+0x80>
    80003700:	000017b7          	lui	a5,0x1
    80003704:	00f484b3          	add	s1,s1,a5
    80003708:	0554ec63          	bltu	s1,s5,80003760 <freerange+0xd0>
    8000370c:	0534fa63          	bgeu	s1,s3,80003760 <freerange+0xd0>
    80003710:	00001637          	lui	a2,0x1
    80003714:	00100593          	li	a1,1
    80003718:	00048513          	mv	a0,s1
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	50c080e7          	jalr	1292(ra) # 80003c28 <__memset>
    80003724:	00093703          	ld	a4,0(s2)
    80003728:	016487b3          	add	a5,s1,s6
    8000372c:	00e4b023          	sd	a4,0(s1)
    80003730:	00993023          	sd	s1,0(s2)
    80003734:	fcfa76e3          	bgeu	s4,a5,80003700 <freerange+0x70>
    80003738:	03813083          	ld	ra,56(sp)
    8000373c:	03013403          	ld	s0,48(sp)
    80003740:	02813483          	ld	s1,40(sp)
    80003744:	02013903          	ld	s2,32(sp)
    80003748:	01813983          	ld	s3,24(sp)
    8000374c:	01013a03          	ld	s4,16(sp)
    80003750:	00813a83          	ld	s5,8(sp)
    80003754:	00013b03          	ld	s6,0(sp)
    80003758:	04010113          	addi	sp,sp,64
    8000375c:	00008067          	ret
    80003760:	00002517          	auipc	a0,0x2
    80003764:	a8850513          	addi	a0,a0,-1400 # 800051e8 <digits+0x18>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	3d4080e7          	jalr	980(ra) # 80002b3c <panic>

0000000080003770 <kfree>:
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00813823          	sd	s0,16(sp)
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	03451793          	slli	a5,a0,0x34
    80003788:	04079c63          	bnez	a5,800037e0 <kfree+0x70>
    8000378c:	00003797          	auipc	a5,0x3
    80003790:	48478793          	addi	a5,a5,1156 # 80006c10 <end>
    80003794:	00050493          	mv	s1,a0
    80003798:	04f56463          	bltu	a0,a5,800037e0 <kfree+0x70>
    8000379c:	01100793          	li	a5,17
    800037a0:	01b79793          	slli	a5,a5,0x1b
    800037a4:	02f57e63          	bgeu	a0,a5,800037e0 <kfree+0x70>
    800037a8:	00001637          	lui	a2,0x1
    800037ac:	00100593          	li	a1,1
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	478080e7          	jalr	1144(ra) # 80003c28 <__memset>
    800037b8:	00002797          	auipc	a5,0x2
    800037bc:	1a878793          	addi	a5,a5,424 # 80005960 <kmem>
    800037c0:	0007b703          	ld	a4,0(a5)
    800037c4:	01813083          	ld	ra,24(sp)
    800037c8:	01013403          	ld	s0,16(sp)
    800037cc:	00e4b023          	sd	a4,0(s1)
    800037d0:	0097b023          	sd	s1,0(a5)
    800037d4:	00813483          	ld	s1,8(sp)
    800037d8:	02010113          	addi	sp,sp,32
    800037dc:	00008067          	ret
    800037e0:	00002517          	auipc	a0,0x2
    800037e4:	a0850513          	addi	a0,a0,-1528 # 800051e8 <digits+0x18>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	354080e7          	jalr	852(ra) # 80002b3c <panic>

00000000800037f0 <kalloc>:
    800037f0:	fe010113          	addi	sp,sp,-32
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	00113c23          	sd	ra,24(sp)
    80003800:	02010413          	addi	s0,sp,32
    80003804:	00002797          	auipc	a5,0x2
    80003808:	15c78793          	addi	a5,a5,348 # 80005960 <kmem>
    8000380c:	0007b483          	ld	s1,0(a5)
    80003810:	02048063          	beqz	s1,80003830 <kalloc+0x40>
    80003814:	0004b703          	ld	a4,0(s1)
    80003818:	00001637          	lui	a2,0x1
    8000381c:	00500593          	li	a1,5
    80003820:	00048513          	mv	a0,s1
    80003824:	00e7b023          	sd	a4,0(a5)
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	400080e7          	jalr	1024(ra) # 80003c28 <__memset>
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00048513          	mv	a0,s1
    8000383c:	00813483          	ld	s1,8(sp)
    80003840:	02010113          	addi	sp,sp,32
    80003844:	00008067          	ret

0000000080003848 <initlock>:
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00813423          	sd	s0,8(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	00813403          	ld	s0,8(sp)
    80003858:	00b53423          	sd	a1,8(a0)
    8000385c:	00052023          	sw	zero,0(a0)
    80003860:	00053823          	sd	zero,16(a0)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <acquire>:
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00813823          	sd	s0,16(sp)
    80003874:	00913423          	sd	s1,8(sp)
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	01213023          	sd	s2,0(sp)
    80003880:	02010413          	addi	s0,sp,32
    80003884:	00050493          	mv	s1,a0
    80003888:	10002973          	csrr	s2,sstatus
    8000388c:	100027f3          	csrr	a5,sstatus
    80003890:	ffd7f793          	andi	a5,a5,-3
    80003894:	10079073          	csrw	sstatus,a5
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	8e4080e7          	jalr	-1820(ra) # 8000217c <mycpu>
    800038a0:	07852783          	lw	a5,120(a0)
    800038a4:	06078e63          	beqz	a5,80003920 <acquire+0xb4>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	8d4080e7          	jalr	-1836(ra) # 8000217c <mycpu>
    800038b0:	07852783          	lw	a5,120(a0)
    800038b4:	0004a703          	lw	a4,0(s1)
    800038b8:	0017879b          	addiw	a5,a5,1
    800038bc:	06f52c23          	sw	a5,120(a0)
    800038c0:	04071063          	bnez	a4,80003900 <acquire+0x94>
    800038c4:	00100713          	li	a4,1
    800038c8:	00070793          	mv	a5,a4
    800038cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800038d0:	0007879b          	sext.w	a5,a5
    800038d4:	fe079ae3          	bnez	a5,800038c8 <acquire+0x5c>
    800038d8:	0ff0000f          	fence
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	8a0080e7          	jalr	-1888(ra) # 8000217c <mycpu>
    800038e4:	01813083          	ld	ra,24(sp)
    800038e8:	01013403          	ld	s0,16(sp)
    800038ec:	00a4b823          	sd	a0,16(s1)
    800038f0:	00013903          	ld	s2,0(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	02010113          	addi	sp,sp,32
    800038fc:	00008067          	ret
    80003900:	0104b903          	ld	s2,16(s1)
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	878080e7          	jalr	-1928(ra) # 8000217c <mycpu>
    8000390c:	faa91ce3          	bne	s2,a0,800038c4 <acquire+0x58>
    80003910:	00002517          	auipc	a0,0x2
    80003914:	8e050513          	addi	a0,a0,-1824 # 800051f0 <digits+0x20>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	224080e7          	jalr	548(ra) # 80002b3c <panic>
    80003920:	00195913          	srli	s2,s2,0x1
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	858080e7          	jalr	-1960(ra) # 8000217c <mycpu>
    8000392c:	00197913          	andi	s2,s2,1
    80003930:	07252e23          	sw	s2,124(a0)
    80003934:	f75ff06f          	j	800038a8 <acquire+0x3c>

0000000080003938 <release>:
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00813823          	sd	s0,16(sp)
    80003940:	00113c23          	sd	ra,24(sp)
    80003944:	00913423          	sd	s1,8(sp)
    80003948:	01213023          	sd	s2,0(sp)
    8000394c:	02010413          	addi	s0,sp,32
    80003950:	00052783          	lw	a5,0(a0)
    80003954:	00079a63          	bnez	a5,80003968 <release+0x30>
    80003958:	00002517          	auipc	a0,0x2
    8000395c:	8a050513          	addi	a0,a0,-1888 # 800051f8 <digits+0x28>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	1dc080e7          	jalr	476(ra) # 80002b3c <panic>
    80003968:	01053903          	ld	s2,16(a0)
    8000396c:	00050493          	mv	s1,a0
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	80c080e7          	jalr	-2036(ra) # 8000217c <mycpu>
    80003978:	fea910e3          	bne	s2,a0,80003958 <release+0x20>
    8000397c:	0004b823          	sd	zero,16(s1)
    80003980:	0ff0000f          	fence
    80003984:	0f50000f          	fence	iorw,ow
    80003988:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	7f0080e7          	jalr	2032(ra) # 8000217c <mycpu>
    80003994:	100027f3          	csrr	a5,sstatus
    80003998:	0027f793          	andi	a5,a5,2
    8000399c:	04079a63          	bnez	a5,800039f0 <release+0xb8>
    800039a0:	07852783          	lw	a5,120(a0)
    800039a4:	02f05e63          	blez	a5,800039e0 <release+0xa8>
    800039a8:	fff7871b          	addiw	a4,a5,-1
    800039ac:	06e52c23          	sw	a4,120(a0)
    800039b0:	00071c63          	bnez	a4,800039c8 <release+0x90>
    800039b4:	07c52783          	lw	a5,124(a0)
    800039b8:	00078863          	beqz	a5,800039c8 <release+0x90>
    800039bc:	100027f3          	csrr	a5,sstatus
    800039c0:	0027e793          	ori	a5,a5,2
    800039c4:	10079073          	csrw	sstatus,a5
    800039c8:	01813083          	ld	ra,24(sp)
    800039cc:	01013403          	ld	s0,16(sp)
    800039d0:	00813483          	ld	s1,8(sp)
    800039d4:	00013903          	ld	s2,0(sp)
    800039d8:	02010113          	addi	sp,sp,32
    800039dc:	00008067          	ret
    800039e0:	00002517          	auipc	a0,0x2
    800039e4:	83850513          	addi	a0,a0,-1992 # 80005218 <digits+0x48>
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	154080e7          	jalr	340(ra) # 80002b3c <panic>
    800039f0:	00002517          	auipc	a0,0x2
    800039f4:	81050513          	addi	a0,a0,-2032 # 80005200 <digits+0x30>
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	144080e7          	jalr	324(ra) # 80002b3c <panic>

0000000080003a00 <holding>:
    80003a00:	00052783          	lw	a5,0(a0)
    80003a04:	00079663          	bnez	a5,80003a10 <holding+0x10>
    80003a08:	00000513          	li	a0,0
    80003a0c:	00008067          	ret
    80003a10:	fe010113          	addi	sp,sp,-32
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	02010413          	addi	s0,sp,32
    80003a24:	01053483          	ld	s1,16(a0)
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	754080e7          	jalr	1876(ra) # 8000217c <mycpu>
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	40a48533          	sub	a0,s1,a0
    80003a3c:	00153513          	seqz	a0,a0
    80003a40:	00813483          	ld	s1,8(sp)
    80003a44:	02010113          	addi	sp,sp,32
    80003a48:	00008067          	ret

0000000080003a4c <push_off>:
    80003a4c:	fe010113          	addi	sp,sp,-32
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	00913423          	sd	s1,8(sp)
    80003a5c:	02010413          	addi	s0,sp,32
    80003a60:	100024f3          	csrr	s1,sstatus
    80003a64:	100027f3          	csrr	a5,sstatus
    80003a68:	ffd7f793          	andi	a5,a5,-3
    80003a6c:	10079073          	csrw	sstatus,a5
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	70c080e7          	jalr	1804(ra) # 8000217c <mycpu>
    80003a78:	07852783          	lw	a5,120(a0)
    80003a7c:	02078663          	beqz	a5,80003aa8 <push_off+0x5c>
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	6fc080e7          	jalr	1788(ra) # 8000217c <mycpu>
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
    80003ab0:	6d0080e7          	jalr	1744(ra) # 8000217c <mycpu>
    80003ab4:	0014f493          	andi	s1,s1,1
    80003ab8:	06952e23          	sw	s1,124(a0)
    80003abc:	fc5ff06f          	j	80003a80 <push_off+0x34>

0000000080003ac0 <pop_off>:
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00813023          	sd	s0,0(sp)
    80003ac8:	00113423          	sd	ra,8(sp)
    80003acc:	01010413          	addi	s0,sp,16
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	6ac080e7          	jalr	1708(ra) # 8000217c <mycpu>
    80003ad8:	100027f3          	csrr	a5,sstatus
    80003adc:	0027f793          	andi	a5,a5,2
    80003ae0:	04079663          	bnez	a5,80003b2c <pop_off+0x6c>
    80003ae4:	07852783          	lw	a5,120(a0)
    80003ae8:	02f05a63          	blez	a5,80003b1c <pop_off+0x5c>
    80003aec:	fff7871b          	addiw	a4,a5,-1
    80003af0:	06e52c23          	sw	a4,120(a0)
    80003af4:	00071c63          	bnez	a4,80003b0c <pop_off+0x4c>
    80003af8:	07c52783          	lw	a5,124(a0)
    80003afc:	00078863          	beqz	a5,80003b0c <pop_off+0x4c>
    80003b00:	100027f3          	csrr	a5,sstatus
    80003b04:	0027e793          	ori	a5,a5,2
    80003b08:	10079073          	csrw	sstatus,a5
    80003b0c:	00813083          	ld	ra,8(sp)
    80003b10:	00013403          	ld	s0,0(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret
    80003b1c:	00001517          	auipc	a0,0x1
    80003b20:	6fc50513          	addi	a0,a0,1788 # 80005218 <digits+0x48>
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	018080e7          	jalr	24(ra) # 80002b3c <panic>
    80003b2c:	00001517          	auipc	a0,0x1
    80003b30:	6d450513          	addi	a0,a0,1748 # 80005200 <digits+0x30>
    80003b34:	fffff097          	auipc	ra,0xfffff
    80003b38:	008080e7          	jalr	8(ra) # 80002b3c <panic>

0000000080003b3c <push_on>:
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    80003b50:	100024f3          	csrr	s1,sstatus
    80003b54:	100027f3          	csrr	a5,sstatus
    80003b58:	0027e793          	ori	a5,a5,2
    80003b5c:	10079073          	csrw	sstatus,a5
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	61c080e7          	jalr	1564(ra) # 8000217c <mycpu>
    80003b68:	07852783          	lw	a5,120(a0)
    80003b6c:	02078663          	beqz	a5,80003b98 <push_on+0x5c>
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	60c080e7          	jalr	1548(ra) # 8000217c <mycpu>
    80003b78:	07852783          	lw	a5,120(a0)
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	0017879b          	addiw	a5,a5,1
    80003b88:	06f52c23          	sw	a5,120(a0)
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	02010113          	addi	sp,sp,32
    80003b94:	00008067          	ret
    80003b98:	0014d493          	srli	s1,s1,0x1
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	5e0080e7          	jalr	1504(ra) # 8000217c <mycpu>
    80003ba4:	0014f493          	andi	s1,s1,1
    80003ba8:	06952e23          	sw	s1,124(a0)
    80003bac:	fc5ff06f          	j	80003b70 <push_on+0x34>

0000000080003bb0 <pop_on>:
    80003bb0:	ff010113          	addi	sp,sp,-16
    80003bb4:	00813023          	sd	s0,0(sp)
    80003bb8:	00113423          	sd	ra,8(sp)
    80003bbc:	01010413          	addi	s0,sp,16
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	5bc080e7          	jalr	1468(ra) # 8000217c <mycpu>
    80003bc8:	100027f3          	csrr	a5,sstatus
    80003bcc:	0027f793          	andi	a5,a5,2
    80003bd0:	04078463          	beqz	a5,80003c18 <pop_on+0x68>
    80003bd4:	07852783          	lw	a5,120(a0)
    80003bd8:	02f05863          	blez	a5,80003c08 <pop_on+0x58>
    80003bdc:	fff7879b          	addiw	a5,a5,-1
    80003be0:	06f52c23          	sw	a5,120(a0)
    80003be4:	07853783          	ld	a5,120(a0)
    80003be8:	00079863          	bnez	a5,80003bf8 <pop_on+0x48>
    80003bec:	100027f3          	csrr	a5,sstatus
    80003bf0:	ffd7f793          	andi	a5,a5,-3
    80003bf4:	10079073          	csrw	sstatus,a5
    80003bf8:	00813083          	ld	ra,8(sp)
    80003bfc:	00013403          	ld	s0,0(sp)
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret
    80003c08:	00001517          	auipc	a0,0x1
    80003c0c:	63850513          	addi	a0,a0,1592 # 80005240 <digits+0x70>
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	f2c080e7          	jalr	-212(ra) # 80002b3c <panic>
    80003c18:	00001517          	auipc	a0,0x1
    80003c1c:	60850513          	addi	a0,a0,1544 # 80005220 <digits+0x50>
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	f1c080e7          	jalr	-228(ra) # 80002b3c <panic>

0000000080003c28 <__memset>:
    80003c28:	ff010113          	addi	sp,sp,-16
    80003c2c:	00813423          	sd	s0,8(sp)
    80003c30:	01010413          	addi	s0,sp,16
    80003c34:	1a060e63          	beqz	a2,80003df0 <__memset+0x1c8>
    80003c38:	40a007b3          	neg	a5,a0
    80003c3c:	0077f793          	andi	a5,a5,7
    80003c40:	00778693          	addi	a3,a5,7
    80003c44:	00b00813          	li	a6,11
    80003c48:	0ff5f593          	andi	a1,a1,255
    80003c4c:	fff6071b          	addiw	a4,a2,-1
    80003c50:	1b06e663          	bltu	a3,a6,80003dfc <__memset+0x1d4>
    80003c54:	1cd76463          	bltu	a4,a3,80003e1c <__memset+0x1f4>
    80003c58:	1a078e63          	beqz	a5,80003e14 <__memset+0x1ec>
    80003c5c:	00b50023          	sb	a1,0(a0)
    80003c60:	00100713          	li	a4,1
    80003c64:	1ae78463          	beq	a5,a4,80003e0c <__memset+0x1e4>
    80003c68:	00b500a3          	sb	a1,1(a0)
    80003c6c:	00200713          	li	a4,2
    80003c70:	1ae78a63          	beq	a5,a4,80003e24 <__memset+0x1fc>
    80003c74:	00b50123          	sb	a1,2(a0)
    80003c78:	00300713          	li	a4,3
    80003c7c:	18e78463          	beq	a5,a4,80003e04 <__memset+0x1dc>
    80003c80:	00b501a3          	sb	a1,3(a0)
    80003c84:	00400713          	li	a4,4
    80003c88:	1ae78263          	beq	a5,a4,80003e2c <__memset+0x204>
    80003c8c:	00b50223          	sb	a1,4(a0)
    80003c90:	00500713          	li	a4,5
    80003c94:	1ae78063          	beq	a5,a4,80003e34 <__memset+0x20c>
    80003c98:	00b502a3          	sb	a1,5(a0)
    80003c9c:	00700713          	li	a4,7
    80003ca0:	18e79e63          	bne	a5,a4,80003e3c <__memset+0x214>
    80003ca4:	00b50323          	sb	a1,6(a0)
    80003ca8:	00700e93          	li	t4,7
    80003cac:	00859713          	slli	a4,a1,0x8
    80003cb0:	00e5e733          	or	a4,a1,a4
    80003cb4:	01059e13          	slli	t3,a1,0x10
    80003cb8:	01c76e33          	or	t3,a4,t3
    80003cbc:	01859313          	slli	t1,a1,0x18
    80003cc0:	006e6333          	or	t1,t3,t1
    80003cc4:	02059893          	slli	a7,a1,0x20
    80003cc8:	40f60e3b          	subw	t3,a2,a5
    80003ccc:	011368b3          	or	a7,t1,a7
    80003cd0:	02859813          	slli	a6,a1,0x28
    80003cd4:	0108e833          	or	a6,a7,a6
    80003cd8:	03059693          	slli	a3,a1,0x30
    80003cdc:	003e589b          	srliw	a7,t3,0x3
    80003ce0:	00d866b3          	or	a3,a6,a3
    80003ce4:	03859713          	slli	a4,a1,0x38
    80003ce8:	00389813          	slli	a6,a7,0x3
    80003cec:	00f507b3          	add	a5,a0,a5
    80003cf0:	00e6e733          	or	a4,a3,a4
    80003cf4:	000e089b          	sext.w	a7,t3
    80003cf8:	00f806b3          	add	a3,a6,a5
    80003cfc:	00e7b023          	sd	a4,0(a5)
    80003d00:	00878793          	addi	a5,a5,8
    80003d04:	fed79ce3          	bne	a5,a3,80003cfc <__memset+0xd4>
    80003d08:	ff8e7793          	andi	a5,t3,-8
    80003d0c:	0007871b          	sext.w	a4,a5
    80003d10:	01d787bb          	addw	a5,a5,t4
    80003d14:	0ce88e63          	beq	a7,a4,80003df0 <__memset+0x1c8>
    80003d18:	00f50733          	add	a4,a0,a5
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	0017871b          	addiw	a4,a5,1
    80003d24:	0cc77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0027871b          	addiw	a4,a5,2
    80003d34:	0ac77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0037871b          	addiw	a4,a5,3
    80003d44:	0ac77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0047871b          	addiw	a4,a5,4
    80003d54:	08c77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0057871b          	addiw	a4,a5,5
    80003d64:	08c77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0067871b          	addiw	a4,a5,6
    80003d74:	06c77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0077871b          	addiw	a4,a5,7
    80003d84:	06c77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0087871b          	addiw	a4,a5,8
    80003d94:	04c77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0097871b          	addiw	a4,a5,9
    80003da4:	04c77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	00a7871b          	addiw	a4,a5,10
    80003db4:	02c77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	00b7871b          	addiw	a4,a5,11
    80003dc4:	02c77663          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	00c7871b          	addiw	a4,a5,12
    80003dd4:	00c77e63          	bgeu	a4,a2,80003df0 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	00d7879b          	addiw	a5,a5,13
    80003de4:	00c7f663          	bgeu	a5,a2,80003df0 <__memset+0x1c8>
    80003de8:	00f507b3          	add	a5,a0,a5
    80003dec:	00b78023          	sb	a1,0(a5)
    80003df0:	00813403          	ld	s0,8(sp)
    80003df4:	01010113          	addi	sp,sp,16
    80003df8:	00008067          	ret
    80003dfc:	00b00693          	li	a3,11
    80003e00:	e55ff06f          	j	80003c54 <__memset+0x2c>
    80003e04:	00300e93          	li	t4,3
    80003e08:	ea5ff06f          	j	80003cac <__memset+0x84>
    80003e0c:	00100e93          	li	t4,1
    80003e10:	e9dff06f          	j	80003cac <__memset+0x84>
    80003e14:	00000e93          	li	t4,0
    80003e18:	e95ff06f          	j	80003cac <__memset+0x84>
    80003e1c:	00000793          	li	a5,0
    80003e20:	ef9ff06f          	j	80003d18 <__memset+0xf0>
    80003e24:	00200e93          	li	t4,2
    80003e28:	e85ff06f          	j	80003cac <__memset+0x84>
    80003e2c:	00400e93          	li	t4,4
    80003e30:	e7dff06f          	j	80003cac <__memset+0x84>
    80003e34:	00500e93          	li	t4,5
    80003e38:	e75ff06f          	j	80003cac <__memset+0x84>
    80003e3c:	00600e93          	li	t4,6
    80003e40:	e6dff06f          	j	80003cac <__memset+0x84>

0000000080003e44 <__memmove>:
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813423          	sd	s0,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    80003e50:	0e060863          	beqz	a2,80003f40 <__memmove+0xfc>
    80003e54:	fff6069b          	addiw	a3,a2,-1
    80003e58:	0006881b          	sext.w	a6,a3
    80003e5c:	0ea5e863          	bltu	a1,a0,80003f4c <__memmove+0x108>
    80003e60:	00758713          	addi	a4,a1,7
    80003e64:	00a5e7b3          	or	a5,a1,a0
    80003e68:	40a70733          	sub	a4,a4,a0
    80003e6c:	0077f793          	andi	a5,a5,7
    80003e70:	00f73713          	sltiu	a4,a4,15
    80003e74:	00174713          	xori	a4,a4,1
    80003e78:	0017b793          	seqz	a5,a5
    80003e7c:	00e7f7b3          	and	a5,a5,a4
    80003e80:	10078863          	beqz	a5,80003f90 <__memmove+0x14c>
    80003e84:	00900793          	li	a5,9
    80003e88:	1107f463          	bgeu	a5,a6,80003f90 <__memmove+0x14c>
    80003e8c:	0036581b          	srliw	a6,a2,0x3
    80003e90:	fff8081b          	addiw	a6,a6,-1
    80003e94:	02081813          	slli	a6,a6,0x20
    80003e98:	01d85893          	srli	a7,a6,0x1d
    80003e9c:	00858813          	addi	a6,a1,8
    80003ea0:	00058793          	mv	a5,a1
    80003ea4:	00050713          	mv	a4,a0
    80003ea8:	01088833          	add	a6,a7,a6
    80003eac:	0007b883          	ld	a7,0(a5)
    80003eb0:	00878793          	addi	a5,a5,8
    80003eb4:	00870713          	addi	a4,a4,8
    80003eb8:	ff173c23          	sd	a7,-8(a4)
    80003ebc:	ff0798e3          	bne	a5,a6,80003eac <__memmove+0x68>
    80003ec0:	ff867713          	andi	a4,a2,-8
    80003ec4:	02071793          	slli	a5,a4,0x20
    80003ec8:	0207d793          	srli	a5,a5,0x20
    80003ecc:	00f585b3          	add	a1,a1,a5
    80003ed0:	40e686bb          	subw	a3,a3,a4
    80003ed4:	00f507b3          	add	a5,a0,a5
    80003ed8:	06e60463          	beq	a2,a4,80003f40 <__memmove+0xfc>
    80003edc:	0005c703          	lbu	a4,0(a1)
    80003ee0:	00e78023          	sb	a4,0(a5)
    80003ee4:	04068e63          	beqz	a3,80003f40 <__memmove+0xfc>
    80003ee8:	0015c603          	lbu	a2,1(a1)
    80003eec:	00100713          	li	a4,1
    80003ef0:	00c780a3          	sb	a2,1(a5)
    80003ef4:	04e68663          	beq	a3,a4,80003f40 <__memmove+0xfc>
    80003ef8:	0025c603          	lbu	a2,2(a1)
    80003efc:	00200713          	li	a4,2
    80003f00:	00c78123          	sb	a2,2(a5)
    80003f04:	02e68e63          	beq	a3,a4,80003f40 <__memmove+0xfc>
    80003f08:	0035c603          	lbu	a2,3(a1)
    80003f0c:	00300713          	li	a4,3
    80003f10:	00c781a3          	sb	a2,3(a5)
    80003f14:	02e68663          	beq	a3,a4,80003f40 <__memmove+0xfc>
    80003f18:	0045c603          	lbu	a2,4(a1)
    80003f1c:	00400713          	li	a4,4
    80003f20:	00c78223          	sb	a2,4(a5)
    80003f24:	00e68e63          	beq	a3,a4,80003f40 <__memmove+0xfc>
    80003f28:	0055c603          	lbu	a2,5(a1)
    80003f2c:	00500713          	li	a4,5
    80003f30:	00c782a3          	sb	a2,5(a5)
    80003f34:	00e68663          	beq	a3,a4,80003f40 <__memmove+0xfc>
    80003f38:	0065c703          	lbu	a4,6(a1)
    80003f3c:	00e78323          	sb	a4,6(a5)
    80003f40:	00813403          	ld	s0,8(sp)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	00008067          	ret
    80003f4c:	02061713          	slli	a4,a2,0x20
    80003f50:	02075713          	srli	a4,a4,0x20
    80003f54:	00e587b3          	add	a5,a1,a4
    80003f58:	f0f574e3          	bgeu	a0,a5,80003e60 <__memmove+0x1c>
    80003f5c:	02069613          	slli	a2,a3,0x20
    80003f60:	02065613          	srli	a2,a2,0x20
    80003f64:	fff64613          	not	a2,a2
    80003f68:	00e50733          	add	a4,a0,a4
    80003f6c:	00c78633          	add	a2,a5,a2
    80003f70:	fff7c683          	lbu	a3,-1(a5)
    80003f74:	fff78793          	addi	a5,a5,-1
    80003f78:	fff70713          	addi	a4,a4,-1
    80003f7c:	00d70023          	sb	a3,0(a4)
    80003f80:	fec798e3          	bne	a5,a2,80003f70 <__memmove+0x12c>
    80003f84:	00813403          	ld	s0,8(sp)
    80003f88:	01010113          	addi	sp,sp,16
    80003f8c:	00008067          	ret
    80003f90:	02069713          	slli	a4,a3,0x20
    80003f94:	02075713          	srli	a4,a4,0x20
    80003f98:	00170713          	addi	a4,a4,1
    80003f9c:	00e50733          	add	a4,a0,a4
    80003fa0:	00050793          	mv	a5,a0
    80003fa4:	0005c683          	lbu	a3,0(a1)
    80003fa8:	00178793          	addi	a5,a5,1
    80003fac:	00158593          	addi	a1,a1,1
    80003fb0:	fed78fa3          	sb	a3,-1(a5)
    80003fb4:	fee798e3          	bne	a5,a4,80003fa4 <__memmove+0x160>
    80003fb8:	f89ff06f          	j	80003f40 <__memmove+0xfc>

0000000080003fbc <__mem_free>:
    80003fbc:	ff010113          	addi	sp,sp,-16
    80003fc0:	00813423          	sd	s0,8(sp)
    80003fc4:	01010413          	addi	s0,sp,16
    80003fc8:	00002597          	auipc	a1,0x2
    80003fcc:	9a058593          	addi	a1,a1,-1632 # 80005968 <freep>
    80003fd0:	0005b783          	ld	a5,0(a1)
    80003fd4:	ff050693          	addi	a3,a0,-16
    80003fd8:	0007b703          	ld	a4,0(a5)
    80003fdc:	00d7fc63          	bgeu	a5,a3,80003ff4 <__mem_free+0x38>
    80003fe0:	00e6ee63          	bltu	a3,a4,80003ffc <__mem_free+0x40>
    80003fe4:	00e7fc63          	bgeu	a5,a4,80003ffc <__mem_free+0x40>
    80003fe8:	00070793          	mv	a5,a4
    80003fec:	0007b703          	ld	a4,0(a5)
    80003ff0:	fed7e8e3          	bltu	a5,a3,80003fe0 <__mem_free+0x24>
    80003ff4:	fee7eae3          	bltu	a5,a4,80003fe8 <__mem_free+0x2c>
    80003ff8:	fee6f8e3          	bgeu	a3,a4,80003fe8 <__mem_free+0x2c>
    80003ffc:	ff852803          	lw	a6,-8(a0)
    80004000:	02081613          	slli	a2,a6,0x20
    80004004:	01c65613          	srli	a2,a2,0x1c
    80004008:	00c68633          	add	a2,a3,a2
    8000400c:	02c70a63          	beq	a4,a2,80004040 <__mem_free+0x84>
    80004010:	fee53823          	sd	a4,-16(a0)
    80004014:	0087a503          	lw	a0,8(a5)
    80004018:	02051613          	slli	a2,a0,0x20
    8000401c:	01c65613          	srli	a2,a2,0x1c
    80004020:	00c78633          	add	a2,a5,a2
    80004024:	04c68263          	beq	a3,a2,80004068 <__mem_free+0xac>
    80004028:	00813403          	ld	s0,8(sp)
    8000402c:	00d7b023          	sd	a3,0(a5)
    80004030:	00f5b023          	sd	a5,0(a1)
    80004034:	00000513          	li	a0,0
    80004038:	01010113          	addi	sp,sp,16
    8000403c:	00008067          	ret
    80004040:	00872603          	lw	a2,8(a4)
    80004044:	00073703          	ld	a4,0(a4)
    80004048:	0106083b          	addw	a6,a2,a6
    8000404c:	ff052c23          	sw	a6,-8(a0)
    80004050:	fee53823          	sd	a4,-16(a0)
    80004054:	0087a503          	lw	a0,8(a5)
    80004058:	02051613          	slli	a2,a0,0x20
    8000405c:	01c65613          	srli	a2,a2,0x1c
    80004060:	00c78633          	add	a2,a5,a2
    80004064:	fcc692e3          	bne	a3,a2,80004028 <__mem_free+0x6c>
    80004068:	00813403          	ld	s0,8(sp)
    8000406c:	0105053b          	addw	a0,a0,a6
    80004070:	00a7a423          	sw	a0,8(a5)
    80004074:	00e7b023          	sd	a4,0(a5)
    80004078:	00f5b023          	sd	a5,0(a1)
    8000407c:	00000513          	li	a0,0
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <__mem_alloc>:
    80004088:	fc010113          	addi	sp,sp,-64
    8000408c:	02813823          	sd	s0,48(sp)
    80004090:	02913423          	sd	s1,40(sp)
    80004094:	03213023          	sd	s2,32(sp)
    80004098:	01513423          	sd	s5,8(sp)
    8000409c:	02113c23          	sd	ra,56(sp)
    800040a0:	01313c23          	sd	s3,24(sp)
    800040a4:	01413823          	sd	s4,16(sp)
    800040a8:	01613023          	sd	s6,0(sp)
    800040ac:	04010413          	addi	s0,sp,64
    800040b0:	00002a97          	auipc	s5,0x2
    800040b4:	8b8a8a93          	addi	s5,s5,-1864 # 80005968 <freep>
    800040b8:	00f50913          	addi	s2,a0,15
    800040bc:	000ab683          	ld	a3,0(s5)
    800040c0:	00495913          	srli	s2,s2,0x4
    800040c4:	0019049b          	addiw	s1,s2,1
    800040c8:	00048913          	mv	s2,s1
    800040cc:	0c068c63          	beqz	a3,800041a4 <__mem_alloc+0x11c>
    800040d0:	0006b503          	ld	a0,0(a3)
    800040d4:	00852703          	lw	a4,8(a0)
    800040d8:	10977063          	bgeu	a4,s1,800041d8 <__mem_alloc+0x150>
    800040dc:	000017b7          	lui	a5,0x1
    800040e0:	0009099b          	sext.w	s3,s2
    800040e4:	0af4e863          	bltu	s1,a5,80004194 <__mem_alloc+0x10c>
    800040e8:	02099a13          	slli	s4,s3,0x20
    800040ec:	01ca5a13          	srli	s4,s4,0x1c
    800040f0:	fff00b13          	li	s6,-1
    800040f4:	0100006f          	j	80004104 <__mem_alloc+0x7c>
    800040f8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800040fc:	00852703          	lw	a4,8(a0)
    80004100:	04977463          	bgeu	a4,s1,80004148 <__mem_alloc+0xc0>
    80004104:	00050793          	mv	a5,a0
    80004108:	fea698e3          	bne	a3,a0,800040f8 <__mem_alloc+0x70>
    8000410c:	000a0513          	mv	a0,s4
    80004110:	00000097          	auipc	ra,0x0
    80004114:	1f0080e7          	jalr	496(ra) # 80004300 <kvmincrease>
    80004118:	00050793          	mv	a5,a0
    8000411c:	01050513          	addi	a0,a0,16
    80004120:	07678e63          	beq	a5,s6,8000419c <__mem_alloc+0x114>
    80004124:	0137a423          	sw	s3,8(a5)
    80004128:	00000097          	auipc	ra,0x0
    8000412c:	e94080e7          	jalr	-364(ra) # 80003fbc <__mem_free>
    80004130:	000ab783          	ld	a5,0(s5)
    80004134:	06078463          	beqz	a5,8000419c <__mem_alloc+0x114>
    80004138:	0007b503          	ld	a0,0(a5)
    8000413c:	00078693          	mv	a3,a5
    80004140:	00852703          	lw	a4,8(a0)
    80004144:	fc9760e3          	bltu	a4,s1,80004104 <__mem_alloc+0x7c>
    80004148:	08e48263          	beq	s1,a4,800041cc <__mem_alloc+0x144>
    8000414c:	4127073b          	subw	a4,a4,s2
    80004150:	02071693          	slli	a3,a4,0x20
    80004154:	01c6d693          	srli	a3,a3,0x1c
    80004158:	00e52423          	sw	a4,8(a0)
    8000415c:	00d50533          	add	a0,a0,a3
    80004160:	01252423          	sw	s2,8(a0)
    80004164:	00fab023          	sd	a5,0(s5)
    80004168:	01050513          	addi	a0,a0,16
    8000416c:	03813083          	ld	ra,56(sp)
    80004170:	03013403          	ld	s0,48(sp)
    80004174:	02813483          	ld	s1,40(sp)
    80004178:	02013903          	ld	s2,32(sp)
    8000417c:	01813983          	ld	s3,24(sp)
    80004180:	01013a03          	ld	s4,16(sp)
    80004184:	00813a83          	ld	s5,8(sp)
    80004188:	00013b03          	ld	s6,0(sp)
    8000418c:	04010113          	addi	sp,sp,64
    80004190:	00008067          	ret
    80004194:	000019b7          	lui	s3,0x1
    80004198:	f51ff06f          	j	800040e8 <__mem_alloc+0x60>
    8000419c:	00000513          	li	a0,0
    800041a0:	fcdff06f          	j	8000416c <__mem_alloc+0xe4>
    800041a4:	00003797          	auipc	a5,0x3
    800041a8:	a5c78793          	addi	a5,a5,-1444 # 80006c00 <base>
    800041ac:	00078513          	mv	a0,a5
    800041b0:	00fab023          	sd	a5,0(s5)
    800041b4:	00f7b023          	sd	a5,0(a5)
    800041b8:	00000713          	li	a4,0
    800041bc:	00003797          	auipc	a5,0x3
    800041c0:	a407a623          	sw	zero,-1460(a5) # 80006c08 <base+0x8>
    800041c4:	00050693          	mv	a3,a0
    800041c8:	f11ff06f          	j	800040d8 <__mem_alloc+0x50>
    800041cc:	00053703          	ld	a4,0(a0)
    800041d0:	00e7b023          	sd	a4,0(a5)
    800041d4:	f91ff06f          	j	80004164 <__mem_alloc+0xdc>
    800041d8:	00068793          	mv	a5,a3
    800041dc:	f6dff06f          	j	80004148 <__mem_alloc+0xc0>

00000000800041e0 <__putc>:
    800041e0:	fe010113          	addi	sp,sp,-32
    800041e4:	00813823          	sd	s0,16(sp)
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00050793          	mv	a5,a0
    800041f4:	fef40593          	addi	a1,s0,-17
    800041f8:	00100613          	li	a2,1
    800041fc:	00000513          	li	a0,0
    80004200:	fef407a3          	sb	a5,-17(s0)
    80004204:	fffff097          	auipc	ra,0xfffff
    80004208:	918080e7          	jalr	-1768(ra) # 80002b1c <console_write>
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	02010113          	addi	sp,sp,32
    80004218:	00008067          	ret

000000008000421c <__getc>:
    8000421c:	fe010113          	addi	sp,sp,-32
    80004220:	00813823          	sd	s0,16(sp)
    80004224:	00113c23          	sd	ra,24(sp)
    80004228:	02010413          	addi	s0,sp,32
    8000422c:	fe840593          	addi	a1,s0,-24
    80004230:	00100613          	li	a2,1
    80004234:	00000513          	li	a0,0
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	8c4080e7          	jalr	-1852(ra) # 80002afc <console_read>
    80004240:	fe844503          	lbu	a0,-24(s0)
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	02010113          	addi	sp,sp,32
    80004250:	00008067          	ret

0000000080004254 <console_handler>:
    80004254:	fe010113          	addi	sp,sp,-32
    80004258:	00813823          	sd	s0,16(sp)
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	00913423          	sd	s1,8(sp)
    80004264:	02010413          	addi	s0,sp,32
    80004268:	14202773          	csrr	a4,scause
    8000426c:	100027f3          	csrr	a5,sstatus
    80004270:	0027f793          	andi	a5,a5,2
    80004274:	06079e63          	bnez	a5,800042f0 <console_handler+0x9c>
    80004278:	00074c63          	bltz	a4,80004290 <console_handler+0x3c>
    8000427c:	01813083          	ld	ra,24(sp)
    80004280:	01013403          	ld	s0,16(sp)
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	02010113          	addi	sp,sp,32
    8000428c:	00008067          	ret
    80004290:	0ff77713          	andi	a4,a4,255
    80004294:	00900793          	li	a5,9
    80004298:	fef712e3          	bne	a4,a5,8000427c <console_handler+0x28>
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	4b8080e7          	jalr	1208(ra) # 80002754 <plic_claim>
    800042a4:	00a00793          	li	a5,10
    800042a8:	00050493          	mv	s1,a0
    800042ac:	02f50c63          	beq	a0,a5,800042e4 <console_handler+0x90>
    800042b0:	fc0506e3          	beqz	a0,8000427c <console_handler+0x28>
    800042b4:	00050593          	mv	a1,a0
    800042b8:	00001517          	auipc	a0,0x1
    800042bc:	e9050513          	addi	a0,a0,-368 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	8d8080e7          	jalr	-1832(ra) # 80002b98 <__printf>
    800042c8:	01013403          	ld	s0,16(sp)
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	00048513          	mv	a0,s1
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	ffffe317          	auipc	t1,0xffffe
    800042e0:	4b030067          	jr	1200(t1) # 8000278c <plic_complete>
    800042e4:	fffff097          	auipc	ra,0xfffff
    800042e8:	1bc080e7          	jalr	444(ra) # 800034a0 <uartintr>
    800042ec:	fddff06f          	j	800042c8 <console_handler+0x74>
    800042f0:	00001517          	auipc	a0,0x1
    800042f4:	f5850513          	addi	a0,a0,-168 # 80005248 <digits+0x78>
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	844080e7          	jalr	-1980(ra) # 80002b3c <panic>

0000000080004300 <kvmincrease>:
    80004300:	fe010113          	addi	sp,sp,-32
    80004304:	01213023          	sd	s2,0(sp)
    80004308:	00001937          	lui	s2,0x1
    8000430c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00113c23          	sd	ra,24(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	01250933          	add	s2,a0,s2
    80004324:	00c95913          	srli	s2,s2,0xc
    80004328:	02090863          	beqz	s2,80004358 <kvmincrease+0x58>
    8000432c:	00000493          	li	s1,0
    80004330:	00148493          	addi	s1,s1,1
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	4bc080e7          	jalr	1212(ra) # 800037f0 <kalloc>
    8000433c:	fe991ae3          	bne	s2,s1,80004330 <kvmincrease+0x30>
    80004340:	01813083          	ld	ra,24(sp)
    80004344:	01013403          	ld	s0,16(sp)
    80004348:	00813483          	ld	s1,8(sp)
    8000434c:	00013903          	ld	s2,0(sp)
    80004350:	02010113          	addi	sp,sp,32
    80004354:	00008067          	ret
    80004358:	01813083          	ld	ra,24(sp)
    8000435c:	01013403          	ld	s0,16(sp)
    80004360:	00813483          	ld	s1,8(sp)
    80004364:	00013903          	ld	s2,0(sp)
    80004368:	00000513          	li	a0,0
    8000436c:	02010113          	addi	sp,sp,32
    80004370:	00008067          	ret
	...

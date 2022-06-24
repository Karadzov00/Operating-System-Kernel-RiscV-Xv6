
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	92013103          	ld	sp,-1760(sp) # 80005920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	679010ef          	jal	ra,80001e94 <start>

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
    80001080:	3d5000ef          	jal	ra,80001c54 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000115c:	bc0080e7          	jalr	-1088(ra) # 80001d18 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001188:	00005717          	auipc	a4,0x5
    8000118c:	80870713          	addi	a4,a4,-2040 # 80005990 <_ZN7_thread8globalIdE>
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
    800011e8:	564080e7          	jalr	1380(ra) # 80001748 <_ZN9Scheduler3putEP7_thread>
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
    80001244:	75048493          	addi	s1,s1,1872 # 80005990 <_ZN7_thread8globalIdE>
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
    80001298:	7044b483          	ld	s1,1796(s1) # 80005998 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    8000129c:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a0:	02078c63          	beqz	a5,800012d8 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	43c080e7          	jalr	1084(ra) # 800016e0 <_ZN9Scheduler3getEv>
    800012ac:	00004797          	auipc	a5,0x4
    800012b0:	6ea7b623          	sd	a0,1772(a5) # 80005998 <_ZN7_thread7runningE>
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
    800012e0:	46c080e7          	jalr	1132(ra) # 80001748 <_ZN9Scheduler3putEP7_thread>
    800012e4:	fc1ff06f          	j	800012a4 <_ZN7_thread8dispatchEv+0x24>

00000000800012e8 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	a20080e7          	jalr	-1504(ra) # 80001d18 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001324:	9f8080e7          	jalr	-1544(ra) # 80001d18 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000134c:	9f8080e7          	jalr	-1544(ra) # 80001d40 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013c4:	6c8080e7          	jalr	1736(ra) # 80006a88 <_Unwind_Resume>
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
    800013fc:	948080e7          	jalr	-1720(ra) # 80001d40 <_ZN15MemoryAllocator9kmem_freeEPv>
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
        return -1;
    }


}

    8000150c:	00000513          	li	a0,0
    80001510:	02813083          	ld	ra,40(sp)
    80001514:	02013403          	ld	s0,32(sp)
    80001518:	03010113          	addi	sp,sp,48
    8000151c:	00008067          	ret

0000000080001520 <_Z11thread_exitv>:
int thread_exit (){
    args myArgs;
    80001520:	fd010113          	addi	sp,sp,-48
    80001524:	02113423          	sd	ra,40(sp)
    80001528:	02813023          	sd	s0,32(sp)
    8000152c:	03010413          	addi	s0,sp,48
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
    args myArgs;
    80001558:	fd010113          	addi	sp,sp,-48
    8000155c:	02113423          	sd	ra,40(sp)
    80001560:	02813023          	sd	s0,32(sp)
    80001564:	03010413          	addi	s0,sp,48
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

000000008000158c <_Z9userMain2v>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

void userMain2(){
    8000158c:	fd010113          	addi	sp,sp,-48
    80001590:	02113423          	sd	ra,40(sp)
    80001594:	02813023          	sd	s0,32(sp)
    80001598:	03010413          	addi	s0,sp,48
//        printString("error");
//    };
//    threads[0]->start();
//    _thread::running=threads[0];

    if(!thread_create(&threads[0], workerBodyA, nullptr)){
    8000159c:	00000613          	li	a2,0
    800015a0:	00004597          	auipc	a1,0x4
    800015a4:	3885b583          	ld	a1,904(a1) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015a8:	fd840513          	addi	a0,s0,-40
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	f2c080e7          	jalr	-212(ra) # 800014d8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015b4:	04050663          	beqz	a0,80001600 <_Z9userMain2v+0x74>
        printString("thread created");
    }
    threads[0]->start();
    800015b8:	fd843503          	ld	a0,-40(s0)
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	c10080e7          	jalr	-1008(ra) # 800011cc <_ZN7_thread5startEv>
    _thread::running=threads[0];
    800015c4:	fd843703          	ld	a4,-40(s0)
    800015c8:	00004797          	auipc	a5,0x4
    800015cc:	3487b783          	ld	a5,840(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015d0:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyB, nullptr)){
    800015d4:	00000613          	li	a2,0
    800015d8:	00004597          	auipc	a1,0x4
    800015dc:	3585b583          	ld	a1,856(a1) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015e0:	fe040513          	addi	a0,s0,-32
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	ef4080e7          	jalr	-268(ra) # 800014d8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015ec:	02050463          	beqz	a0,80001614 <_Z9userMain2v+0x88>
        printString("thread created");
    }
    threads[1]->start();
    800015f0:	fe043503          	ld	a0,-32(s0)
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	bd8080e7          	jalr	-1064(ra) # 800011cc <_ZN7_thread5startEv>
    800015fc:	0340006f          	j	80001630 <_Z9userMain2v+0xa4>
        printString("thread created");
    80001600:	00004517          	auipc	a0,0x4
    80001604:	a0050513          	addi	a0,a0,-1536 # 80005000 <kvmincrease+0xd60>
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	760080e7          	jalr	1888(ra) # 80001d68 <_Z11printStringPKc>
    80001610:	fa9ff06f          	j	800015b8 <_Z9userMain2v+0x2c>
        printString("thread created");
    80001614:	00004517          	auipc	a0,0x4
    80001618:	9ec50513          	addi	a0,a0,-1556 # 80005000 <kvmincrease+0xd60>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	74c080e7          	jalr	1868(ra) # 80001d68 <_Z11printStringPKc>
    80001624:	fcdff06f          	j	800015f0 <_Z9userMain2v+0x64>

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	bd8080e7          	jalr	-1064(ra) # 80001200 <_ZN7_thread5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001630:	fe043783          	ld	a5,-32(s0)
    80001634:	0287c783          	lbu	a5,40(a5)
    80001638:	fe0788e3          	beqz	a5,80001628 <_Z9userMain2v+0x9c>
    8000163c:	fe843783          	ld	a5,-24(s0)
    80001640:	0287c783          	lbu	a5,40(a5)
    80001644:	fe0782e3          	beqz	a5,80001628 <_Z9userMain2v+0x9c>
    }

    printString("finished \n");
    80001648:	00004517          	auipc	a0,0x4
    8000164c:	9c850513          	addi	a0,a0,-1592 # 80005010 <kvmincrease+0xd70>
    80001650:	00000097          	auipc	ra,0x0
    80001654:	718080e7          	jalr	1816(ra) # 80001d68 <_Z11printStringPKc>

    80001658:	02813083          	ld	ra,40(sp)
    8000165c:	02013403          	ld	s0,32(sp)
    80001660:	03010113          	addi	sp,sp,48
    80001664:	00008067          	ret

0000000080001668 <main>:


//extern void userMain1();
extern void userMain2();

int main(){
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001678:	00004797          	auipc	a5,0x4
    8000167c:	2a07b783          	ld	a5,672(a5) # 80005918 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001680:	10579073          	csrw	stvec,a5
//    {
//        delete thread;
//    }


    userMain2();
    80001684:	00000097          	auipc	ra,0x0
    80001688:	f08080e7          	jalr	-248(ra) # 8000158c <_Z9userMain2v>


    return 0;
}
    8000168c:	00000513          	li	a0,0
    80001690:	00813083          	ld	ra,8(sp)
    80001694:	00013403          	ld	s0,0(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00813423          	sd	s0,8(sp)
    800016a8:	01010413          	addi	s0,sp,16
    800016ac:	00100793          	li	a5,1
    800016b0:	00f50863          	beq	a0,a5,800016c0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret
    800016c0:	000107b7          	lui	a5,0x10
    800016c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016c8:	fef596e3          	bne	a1,a5,800016b4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800016cc:	00004797          	auipc	a5,0x4
    800016d0:	2dc78793          	addi	a5,a5,732 # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    800016d4:	0007b023          	sd	zero,0(a5)
    800016d8:	0007b423          	sd	zero,8(a5)
    800016dc:	fd9ff06f          	j	800016b4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800016e0 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	2b453503          	ld	a0,692(a0) # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    800016fc:	04050263          	beqz	a0,80001740 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001700:	00853783          	ld	a5,8(a0)
    80001704:	00004717          	auipc	a4,0x4
    80001708:	2af73223          	sd	a5,676(a4) # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000170c:	02078463          	beqz	a5,80001734 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001710:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001714:	00000097          	auipc	ra,0x0
    80001718:	62c080e7          	jalr	1580(ra) # 80001d40 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000171c:	00048513          	mv	a0,s1
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	02010113          	addi	sp,sp,32
    80001730:	00008067          	ret
        if (!head) { tail = 0; }
    80001734:	00004797          	auipc	a5,0x4
    80001738:	2607be23          	sd	zero,636(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000173c:	fd5ff06f          	j	80001710 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001740:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001744:	fd9ff06f          	j	8000171c <_ZN9Scheduler3getEv+0x3c>

0000000080001748 <_ZN9Scheduler3putEP7_thread>:
{
    80001748:	fe010113          	addi	sp,sp,-32
    8000174c:	00113c23          	sd	ra,24(sp)
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	00913423          	sd	s1,8(sp)
    80001758:	02010413          	addi	s0,sp,32
    8000175c:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001760:	01000513          	li	a0,16
    80001764:	00000097          	auipc	ra,0x0
    80001768:	5b4080e7          	jalr	1460(ra) # 80001d18 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    8000176c:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001770:	00053423          	sd	zero,8(a0)
        if (tail)
    80001774:	00004797          	auipc	a5,0x4
    80001778:	23c7b783          	ld	a5,572(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000177c:	02078263          	beqz	a5,800017a0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001780:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001784:	00004797          	auipc	a5,0x4
    80001788:	22a7b623          	sd	a0,556(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	00813483          	ld	s1,8(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret
            head = tail = elem;
    800017a0:	00004797          	auipc	a5,0x4
    800017a4:	20878793          	addi	a5,a5,520 # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    800017a8:	00a7b423          	sd	a0,8(a5)
    800017ac:	00a7b023          	sd	a0,0(a5)
    800017b0:	fddff06f          	j	8000178c <_ZN9Scheduler3putEP7_thread+0x44>

00000000800017b4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00113423          	sd	ra,8(sp)
    800017bc:	00813023          	sd	s0,0(sp)
    800017c0:	01010413          	addi	s0,sp,16
    800017c4:	000105b7          	lui	a1,0x10
    800017c8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017cc:	00100513          	li	a0,1
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	ed0080e7          	jalr	-304(ra) # 800016a0 <_Z41__static_initialization_and_destruction_0ii>
    800017d8:	00813083          	ld	ra,8(sp)
    800017dc:	00013403          	ld	s0,0(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret

00000000800017e8 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00113423          	sd	ra,8(sp)
    800017f0:	00813023          	sd	s0,0(sp)
    800017f4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	c54080e7          	jalr	-940(ra) # 8000144c <_Z9mem_allocm>
}
    80001800:	00813083          	ld	ra,8(sp)
    80001804:	00013403          	ld	s0,0(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <_Znam>:

void* operator new[](size_t n){
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001820:	00000097          	auipc	ra,0x0
    80001824:	c2c080e7          	jalr	-980(ra) # 8000144c <_Z9mem_allocm>
}
    80001828:	00813083          	ld	ra,8(sp)
    8000182c:	00013403          	ld	s0,0(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret

0000000080001838 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00113423          	sd	ra,8(sp)
    80001840:	00813023          	sd	s0,0(sp)
    80001844:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	c50080e7          	jalr	-944(ra) # 80001498 <_Z8mem_freePv>
}
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00113423          	sd	ra,8(sp)
    80001868:	00813023          	sd	s0,0(sp)
    8000186c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001870:	00000097          	auipc	ra,0x0
    80001874:	c28080e7          	jalr	-984(ra) # 80001498 <_Z8mem_freePv>

}
    80001878:	00813083          	ld	ra,8(sp)
    8000187c:	00013403          	ld	s0,0(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    80001888:	fe010113          	addi	sp,sp,-32
    8000188c:	00113c23          	sd	ra,24(sp)
    80001890:	00813823          	sd	s0,16(sp)
    80001894:	00913423          	sd	s1,8(sp)
    80001898:	01213023          	sd	s2,0(sp)
    8000189c:	02010413          	addi	s0,sp,32
    800018a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800018a4:	00100793          	li	a5,1
    800018a8:	02a7f663          	bgeu	a5,a0,800018d4 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    800018ac:	00357793          	andi	a5,a0,3
    800018b0:	02078e63          	beqz	a5,800018ec <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800018b4:	fff48513          	addi	a0,s1,-1
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	fd0080e7          	jalr	-48(ra) # 80001888 <_ZL9fibonaccim>
    800018c0:	00050913          	mv	s2,a0
    800018c4:	ffe48513          	addi	a0,s1,-2
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	fc0080e7          	jalr	-64(ra) # 80001888 <_ZL9fibonaccim>
    800018d0:	00a90533          	add	a0,s2,a0
}
    800018d4:	01813083          	ld	ra,24(sp)
    800018d8:	01013403          	ld	s0,16(sp)
    800018dc:	00813483          	ld	s1,8(sp)
    800018e0:	00013903          	ld	s2,0(sp)
    800018e4:	02010113          	addi	sp,sp,32
    800018e8:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	914080e7          	jalr	-1772(ra) # 80001200 <_ZN7_thread5yieldEv>
    800018f4:	fc1ff06f          	j	800018b4 <_ZL9fibonaccim+0x2c>

00000000800018f8 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00913423          	sd	s1,8(sp)
    80001908:	01213023          	sd	s2,0(sp)
    8000190c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001910:	00000493          	li	s1,0
    80001914:	0380006f          	j	8000194c <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001918:	00003517          	auipc	a0,0x3
    8000191c:	70850513          	addi	a0,a0,1800 # 80005020 <kvmincrease+0xd80>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	448080e7          	jalr	1096(ra) # 80001d68 <_Z11printStringPKc>
        printInteger(i);
    80001928:	00048513          	mv	a0,s1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	4ac080e7          	jalr	1196(ra) # 80001dd8 <_Z12printIntegerm>
        printString("\n");
    80001934:	00003517          	auipc	a0,0x3
    80001938:	6fc50513          	addi	a0,a0,1788 # 80005030 <kvmincrease+0xd90>
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	42c080e7          	jalr	1068(ra) # 80001d68 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001944:	0014849b          	addiw	s1,s1,1
    80001948:	0ff4f493          	andi	s1,s1,255
    8000194c:	00200793          	li	a5,2
    80001950:	fc97f4e3          	bgeu	a5,s1,80001918 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001954:	00003517          	auipc	a0,0x3
    80001958:	6d450513          	addi	a0,a0,1748 # 80005028 <kvmincrease+0xd88>
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	40c080e7          	jalr	1036(ra) # 80001d68 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001964:	00700313          	li	t1,7
    _thread::yield();
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	898080e7          	jalr	-1896(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001970:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001974:	00003517          	auipc	a0,0x3
    80001978:	6c450513          	addi	a0,a0,1732 # 80005038 <kvmincrease+0xd98>
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	3ec080e7          	jalr	1004(ra) # 80001d68 <_Z11printStringPKc>
    printInteger(t1);
    80001984:	00090513          	mv	a0,s2
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	450080e7          	jalr	1104(ra) # 80001dd8 <_Z12printIntegerm>
    printString("\n");
    80001990:	00003517          	auipc	a0,0x3
    80001994:	6a050513          	addi	a0,a0,1696 # 80005030 <kvmincrease+0xd90>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	3d0080e7          	jalr	976(ra) # 80001d68 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800019a0:	01400513          	li	a0,20
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	ee4080e7          	jalr	-284(ra) # 80001888 <_ZL9fibonaccim>
    800019ac:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	69050513          	addi	a0,a0,1680 # 80005040 <kvmincrease+0xda0>
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	3b0080e7          	jalr	944(ra) # 80001d68 <_Z11printStringPKc>
    printInteger(result);
    800019c0:	00090513          	mv	a0,s2
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	414080e7          	jalr	1044(ra) # 80001dd8 <_Z12printIntegerm>
    printString("\n");
    800019cc:	00003517          	auipc	a0,0x3
    800019d0:	66450513          	addi	a0,a0,1636 # 80005030 <kvmincrease+0xd90>
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	394080e7          	jalr	916(ra) # 80001d68 <_Z11printStringPKc>
    800019dc:	0380006f          	j	80001a14 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019e0:	00003517          	auipc	a0,0x3
    800019e4:	64050513          	addi	a0,a0,1600 # 80005020 <kvmincrease+0xd80>
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	380080e7          	jalr	896(ra) # 80001d68 <_Z11printStringPKc>
        printInteger(i);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	3e4080e7          	jalr	996(ra) # 80001dd8 <_Z12printIntegerm>
        printString("\n");
    800019fc:	00003517          	auipc	a0,0x3
    80001a00:	63450513          	addi	a0,a0,1588 # 80005030 <kvmincrease+0xd90>
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	364080e7          	jalr	868(ra) # 80001d68 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001a0c:	0014849b          	addiw	s1,s1,1
    80001a10:	0ff4f493          	andi	s1,s1,255
    80001a14:	00500793          	li	a5,5
    80001a18:	fc97f4e3          	bgeu	a5,s1,800019e0 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001a1c:	00004797          	auipc	a5,0x4
    80001a20:	ef47b783          	ld	a5,-268(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a24:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001a28:	00100713          	li	a4,1
    80001a2c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a30:	fffff097          	auipc	ra,0xfffff
    80001a34:	7d0080e7          	jalr	2000(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	00013903          	ld	s2,0(sp)
    80001a48:	02010113          	addi	sp,sp,32
    80001a4c:	00008067          	ret

0000000080001a50 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	01213023          	sd	s2,0(sp)
    80001a64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a68:	00a00493          	li	s1,10
    80001a6c:	0380006f          	j	80001aa4 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	5e050513          	addi	a0,a0,1504 # 80005050 <kvmincrease+0xdb0>
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	2f0080e7          	jalr	752(ra) # 80001d68 <_Z11printStringPKc>
        printInteger(i);
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	354080e7          	jalr	852(ra) # 80001dd8 <_Z12printIntegerm>
        printString("\n");
    80001a8c:	00003517          	auipc	a0,0x3
    80001a90:	5a450513          	addi	a0,a0,1444 # 80005030 <kvmincrease+0xd90>
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	2d4080e7          	jalr	724(ra) # 80001d68 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a9c:	0014849b          	addiw	s1,s1,1
    80001aa0:	0ff4f493          	andi	s1,s1,255
    80001aa4:	00c00793          	li	a5,12
    80001aa8:	fc97f4e3          	bgeu	a5,s1,80001a70 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001aac:	00003517          	auipc	a0,0x3
    80001ab0:	5ac50513          	addi	a0,a0,1452 # 80005058 <kvmincrease+0xdb8>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	2b4080e7          	jalr	692(ra) # 80001d68 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001abc:	00500313          	li	t1,5
    _thread::yield();
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	740080e7          	jalr	1856(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001ac8:	01700513          	li	a0,23
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	dbc080e7          	jalr	-580(ra) # 80001888 <_ZL9fibonaccim>
    80001ad4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ad8:	00003517          	auipc	a0,0x3
    80001adc:	56850513          	addi	a0,a0,1384 # 80005040 <kvmincrease+0xda0>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	288080e7          	jalr	648(ra) # 80001d68 <_Z11printStringPKc>
    printInteger(result);
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	2ec080e7          	jalr	748(ra) # 80001dd8 <_Z12printIntegerm>
    printString("\n");
    80001af4:	00003517          	auipc	a0,0x3
    80001af8:	53c50513          	addi	a0,a0,1340 # 80005030 <kvmincrease+0xd90>
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	26c080e7          	jalr	620(ra) # 80001d68 <_Z11printStringPKc>
    80001b04:	0380006f          	j	80001b3c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001b08:	00003517          	auipc	a0,0x3
    80001b0c:	54850513          	addi	a0,a0,1352 # 80005050 <kvmincrease+0xdb0>
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	258080e7          	jalr	600(ra) # 80001d68 <_Z11printStringPKc>
        printInteger(i);
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	2bc080e7          	jalr	700(ra) # 80001dd8 <_Z12printIntegerm>
        printString("\n");
    80001b24:	00003517          	auipc	a0,0x3
    80001b28:	50c50513          	addi	a0,a0,1292 # 80005030 <kvmincrease+0xd90>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	23c080e7          	jalr	572(ra) # 80001d68 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b34:	0014849b          	addiw	s1,s1,1
    80001b38:	0ff4f493          	andi	s1,s1,255
    80001b3c:	00f00793          	li	a5,15
    80001b40:	fc97f4e3          	bgeu	a5,s1,80001b08 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b44:	00004797          	auipc	a5,0x4
    80001b48:	dcc7b783          	ld	a5,-564(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b4c:	0007b783          	ld	a5,0(a5)
    80001b50:	00100713          	li	a4,1
    80001b54:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b58:	fffff097          	auipc	ra,0xfffff
    80001b5c:	6a8080e7          	jalr	1704(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001b60:	01813083          	ld	ra,24(sp)
    80001b64:	01013403          	ld	s0,16(sp)
    80001b68:	00813483          	ld	s1,8(sp)
    80001b6c:	00013903          	ld	s2,0(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00008067          	ret

0000000080001b78 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00113423          	sd	ra,8(sp)
    80001b80:	00813023          	sd	s0,0(sp)
    80001b84:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b88:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b8c:	00100713          	li	a4,1
    80001b90:	02e78a63          	beq	a5,a4,80001bc4 <_ZN5Riscv14syscallHandlerEv+0x4c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001b94:	00200713          	li	a4,2
    80001b98:	04e78063          	beq	a5,a4,80001bd8 <_ZN5Riscv14syscallHandlerEv+0x60>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001b9c:	01100713          	li	a4,17
    80001ba0:	04e78663          	beq	a5,a4,80001bec <_ZN5Riscv14syscallHandlerEv+0x74>
        //return _thread* adress through a0
        uint64 ret = (uint64)t;
        __asm__ volatile("mv a0, %0" : : "r" (ret));

    }
    else if(arg0==0x12){
    80001ba4:	01200713          	li	a4,18
    80001ba8:	06e78063          	beq	a5,a4,80001c08 <_ZN5Riscv14syscallHandlerEv+0x90>
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
    80001bac:	01300713          	li	a4,19
    80001bb0:	06e78c63          	beq	a5,a4,80001c28 <_ZN5Riscv14syscallHandlerEv+0xb0>
        _thread::dispatch();

    }

}
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001bc4:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	150080e7          	jalr	336(ra) # 80001d18 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001bd0:	00050513          	mv	a0,a0
    80001bd4:	fe1ff06f          	j	80001bb4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001bd8:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	164080e7          	jalr	356(ra) # 80001d40 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001be4:	00050513          	mv	a0,a0
    80001be8:	fcdff06f          	j	80001bb4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001bec:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001bf0:	00060513          	mv	a0,a2
        __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001bf4:	00068593          	mv	a1,a3
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	768080e7          	jalr	1896(ra) # 80001360 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001c00:	00050513          	mv	a0,a0
    80001c04:	fb1ff06f          	j	80001bb4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::running->finished=true;
    80001c08:	00004797          	auipc	a5,0x4
    80001c0c:	d087b783          	ld	a5,-760(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c10:	0007b783          	ld	a5,0(a5)
    80001c14:	00100713          	li	a4,1
    80001c18:	02e78423          	sb	a4,40(a5)
        _thread::dispatch();
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	664080e7          	jalr	1636(ra) # 80001280 <_ZN7_thread8dispatchEv>
    80001c24:	f91ff06f          	j	80001bb4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::dispatch();
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	658080e7          	jalr	1624(ra) # 80001280 <_ZN7_thread8dispatchEv>
}
    80001c30:	f85ff06f          	j	80001bb4 <_ZN5Riscv14syscallHandlerEv+0x3c>

0000000080001c34 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00813423          	sd	s0,8(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c40:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001c44:	10200073          	sret
}
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c54:	fb010113          	addi	sp,sp,-80
    80001c58:	04113423          	sd	ra,72(sp)
    80001c5c:	04813023          	sd	s0,64(sp)
    80001c60:	02913c23          	sd	s1,56(sp)
    80001c64:	03213823          	sd	s2,48(sp)
    80001c68:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c6c:	142027f3          	csrr	a5,scause
    80001c70:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001c74:	fb843783          	ld	a5,-72(s0)
    uint scause = r_scause();
    80001c78:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001c7c:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001c80:	ff87879b          	addiw	a5,a5,-8
    80001c84:	00100713          	li	a4,1
    80001c88:	00f77e63          	bgeu	a4,a5,80001ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001c8c:	04813083          	ld	ra,72(sp)
    80001c90:	04013403          	ld	s0,64(sp)
    80001c94:	03813483          	ld	s1,56(sp)
    80001c98:	03013903          	ld	s2,48(sp)
    80001c9c:	05010113          	addi	sp,sp,80
    80001ca0:	00008067          	ret
        if(a0reg==0x04){
    80001ca4:	00400793          	li	a5,4
    80001ca8:	02f68a63          	beq	a3,a5,80001cdc <_ZN5Riscv20handleSupervisorTrapEv+0x88>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cac:	141027f3          	csrr	a5,sepc
    80001cb0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001cb4:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80001cb8:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cbc:	100027f3          	csrr	a5,sstatus
    80001cc0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cc4:	fd043903          	ld	s2,-48(s0)
            syscallHandler();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	eb0080e7          	jalr	-336(ra) # 80001b78 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cd0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd4:	14149073          	csrw	sepc,s1
}
    80001cd8:	fb5ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x38>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cdc:	141027f3          	csrr	a5,sepc
    80001ce0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001ce4:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001ce8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cec:	100027f3          	csrr	a5,sstatus
    80001cf0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001cf4:	fc043903          	ld	s2,-64(s0)
            _thread::timeSliceCounter = 0;
    80001cf8:	00004797          	auipc	a5,0x4
    80001cfc:	c407b783          	ld	a5,-960(a5) # 80005938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d00:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	57c080e7          	jalr	1404(ra) # 80001280 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d0c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d10:	14149073          	csrw	sepc,s1
}
    80001d14:	f79ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x38>

0000000080001d18 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00113423          	sd	ra,8(sp)
    80001d20:	00813023          	sd	s0,0(sp)
    80001d24:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001d28:	00002097          	auipc	ra,0x2
    80001d2c:	300080e7          	jalr	768(ra) # 80004028 <__mem_alloc>
}
    80001d30:	00813083          	ld	ra,8(sp)
    80001d34:	00013403          	ld	s0,0(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00113423          	sd	ra,8(sp)
    80001d48:	00813023          	sd	s0,0(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001d50:	00002097          	auipc	ra,0x2
    80001d54:	20c080e7          	jalr	524(ra) # 80003f5c <__mem_free>
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001d68:	fd010113          	addi	sp,sp,-48
    80001d6c:	02113423          	sd	ra,40(sp)
    80001d70:	02813023          	sd	s0,32(sp)
    80001d74:	00913c23          	sd	s1,24(sp)
    80001d78:	01213823          	sd	s2,16(sp)
    80001d7c:	03010413          	addi	s0,sp,48
    80001d80:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d84:	100027f3          	csrr	a5,sstatus
    80001d88:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001d8c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d90:	00200793          	li	a5,2
    80001d94:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001d98:	0004c503          	lbu	a0,0(s1)
    80001d9c:	00050a63          	beqz	a0,80001db0 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001da0:	00002097          	auipc	ra,0x2
    80001da4:	3e0080e7          	jalr	992(ra) # 80004180 <__putc>
        string++;
    80001da8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001dac:	fedff06f          	j	80001d98 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001db0:	0009091b          	sext.w	s2,s2
    80001db4:	00297913          	andi	s2,s2,2
    80001db8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001dbc:	10092073          	csrs	sstatus,s2
}
    80001dc0:	02813083          	ld	ra,40(sp)
    80001dc4:	02013403          	ld	s0,32(sp)
    80001dc8:	01813483          	ld	s1,24(sp)
    80001dcc:	01013903          	ld	s2,16(sp)
    80001dd0:	03010113          	addi	sp,sp,48
    80001dd4:	00008067          	ret

0000000080001dd8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001dd8:	fc010113          	addi	sp,sp,-64
    80001ddc:	02113c23          	sd	ra,56(sp)
    80001de0:	02813823          	sd	s0,48(sp)
    80001de4:	02913423          	sd	s1,40(sp)
    80001de8:	03213023          	sd	s2,32(sp)
    80001dec:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001df0:	100027f3          	csrr	a5,sstatus
    80001df4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001df8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001dfc:	00200793          	li	a5,2
    80001e00:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e04:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e08:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e0c:	00a00613          	li	a2,10
    80001e10:	02c5773b          	remuw	a4,a0,a2
    80001e14:	02071693          	slli	a3,a4,0x20
    80001e18:	0206d693          	srli	a3,a3,0x20
    80001e1c:	00003717          	auipc	a4,0x3
    80001e20:	24c70713          	addi	a4,a4,588 # 80005068 <_ZZ12printIntegermE6digits>
    80001e24:	00d70733          	add	a4,a4,a3
    80001e28:	00074703          	lbu	a4,0(a4)
    80001e2c:	fe040693          	addi	a3,s0,-32
    80001e30:	009687b3          	add	a5,a3,s1
    80001e34:	0014849b          	addiw	s1,s1,1
    80001e38:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001e3c:	0005071b          	sext.w	a4,a0
    80001e40:	02c5553b          	divuw	a0,a0,a2
    80001e44:	00900793          	li	a5,9
    80001e48:	fce7e2e3          	bltu	a5,a4,80001e0c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001e4c:	fff4849b          	addiw	s1,s1,-1
    80001e50:	0004ce63          	bltz	s1,80001e6c <_Z12printIntegerm+0x94>
    80001e54:	fe040793          	addi	a5,s0,-32
    80001e58:	009787b3          	add	a5,a5,s1
    80001e5c:	ff07c503          	lbu	a0,-16(a5)
    80001e60:	00002097          	auipc	ra,0x2
    80001e64:	320080e7          	jalr	800(ra) # 80004180 <__putc>
    80001e68:	fe5ff06f          	j	80001e4c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e6c:	0009091b          	sext.w	s2,s2
    80001e70:	00297913          	andi	s2,s2,2
    80001e74:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e78:	10092073          	csrs	sstatus,s2
}
    80001e7c:	03813083          	ld	ra,56(sp)
    80001e80:	03013403          	ld	s0,48(sp)
    80001e84:	02813483          	ld	s1,40(sp)
    80001e88:	02013903          	ld	s2,32(sp)
    80001e8c:	04010113          	addi	sp,sp,64
    80001e90:	00008067          	ret

0000000080001e94 <start>:
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813423          	sd	s0,8(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    80001ea0:	300027f3          	csrr	a5,mstatus
    80001ea4:	ffffe737          	lui	a4,0xffffe
    80001ea8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bcf>
    80001eac:	00e7f7b3          	and	a5,a5,a4
    80001eb0:	00001737          	lui	a4,0x1
    80001eb4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001eb8:	00e7e7b3          	or	a5,a5,a4
    80001ebc:	30079073          	csrw	mstatus,a5
    80001ec0:	00000797          	auipc	a5,0x0
    80001ec4:	16078793          	addi	a5,a5,352 # 80002020 <system_main>
    80001ec8:	34179073          	csrw	mepc,a5
    80001ecc:	00000793          	li	a5,0
    80001ed0:	18079073          	csrw	satp,a5
    80001ed4:	000107b7          	lui	a5,0x10
    80001ed8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001edc:	30279073          	csrw	medeleg,a5
    80001ee0:	30379073          	csrw	mideleg,a5
    80001ee4:	104027f3          	csrr	a5,sie
    80001ee8:	2227e793          	ori	a5,a5,546
    80001eec:	10479073          	csrw	sie,a5
    80001ef0:	fff00793          	li	a5,-1
    80001ef4:	00a7d793          	srli	a5,a5,0xa
    80001ef8:	3b079073          	csrw	pmpaddr0,a5
    80001efc:	00f00793          	li	a5,15
    80001f00:	3a079073          	csrw	pmpcfg0,a5
    80001f04:	f14027f3          	csrr	a5,mhartid
    80001f08:	0200c737          	lui	a4,0x200c
    80001f0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f10:	0007869b          	sext.w	a3,a5
    80001f14:	00269713          	slli	a4,a3,0x2
    80001f18:	000f4637          	lui	a2,0xf4
    80001f1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f20:	00d70733          	add	a4,a4,a3
    80001f24:	0037979b          	slliw	a5,a5,0x3
    80001f28:	020046b7          	lui	a3,0x2004
    80001f2c:	00d787b3          	add	a5,a5,a3
    80001f30:	00c585b3          	add	a1,a1,a2
    80001f34:	00371693          	slli	a3,a4,0x3
    80001f38:	00004717          	auipc	a4,0x4
    80001f3c:	a8870713          	addi	a4,a4,-1400 # 800059c0 <timer_scratch>
    80001f40:	00b7b023          	sd	a1,0(a5)
    80001f44:	00d70733          	add	a4,a4,a3
    80001f48:	00f73c23          	sd	a5,24(a4)
    80001f4c:	02c73023          	sd	a2,32(a4)
    80001f50:	34071073          	csrw	mscratch,a4
    80001f54:	00000797          	auipc	a5,0x0
    80001f58:	6ec78793          	addi	a5,a5,1772 # 80002640 <timervec>
    80001f5c:	30579073          	csrw	mtvec,a5
    80001f60:	300027f3          	csrr	a5,mstatus
    80001f64:	0087e793          	ori	a5,a5,8
    80001f68:	30079073          	csrw	mstatus,a5
    80001f6c:	304027f3          	csrr	a5,mie
    80001f70:	0807e793          	ori	a5,a5,128
    80001f74:	30479073          	csrw	mie,a5
    80001f78:	f14027f3          	csrr	a5,mhartid
    80001f7c:	0007879b          	sext.w	a5,a5
    80001f80:	00078213          	mv	tp,a5
    80001f84:	30200073          	mret
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <timerinit>:
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00813423          	sd	s0,8(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    80001fa0:	f14027f3          	csrr	a5,mhartid
    80001fa4:	0200c737          	lui	a4,0x200c
    80001fa8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fac:	0007869b          	sext.w	a3,a5
    80001fb0:	00269713          	slli	a4,a3,0x2
    80001fb4:	000f4637          	lui	a2,0xf4
    80001fb8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fbc:	00d70733          	add	a4,a4,a3
    80001fc0:	0037979b          	slliw	a5,a5,0x3
    80001fc4:	020046b7          	lui	a3,0x2004
    80001fc8:	00d787b3          	add	a5,a5,a3
    80001fcc:	00c585b3          	add	a1,a1,a2
    80001fd0:	00371693          	slli	a3,a4,0x3
    80001fd4:	00004717          	auipc	a4,0x4
    80001fd8:	9ec70713          	addi	a4,a4,-1556 # 800059c0 <timer_scratch>
    80001fdc:	00b7b023          	sd	a1,0(a5)
    80001fe0:	00d70733          	add	a4,a4,a3
    80001fe4:	00f73c23          	sd	a5,24(a4)
    80001fe8:	02c73023          	sd	a2,32(a4)
    80001fec:	34071073          	csrw	mscratch,a4
    80001ff0:	00000797          	auipc	a5,0x0
    80001ff4:	65078793          	addi	a5,a5,1616 # 80002640 <timervec>
    80001ff8:	30579073          	csrw	mtvec,a5
    80001ffc:	300027f3          	csrr	a5,mstatus
    80002000:	0087e793          	ori	a5,a5,8
    80002004:	30079073          	csrw	mstatus,a5
    80002008:	304027f3          	csrr	a5,mie
    8000200c:	0807e793          	ori	a5,a5,128
    80002010:	30479073          	csrw	mie,a5
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <system_main>:
    80002020:	fe010113          	addi	sp,sp,-32
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00913423          	sd	s1,8(sp)
    8000202c:	00113c23          	sd	ra,24(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	00000097          	auipc	ra,0x0
    80002038:	0c4080e7          	jalr	196(ra) # 800020f8 <cpuid>
    8000203c:	00004497          	auipc	s1,0x4
    80002040:	92448493          	addi	s1,s1,-1756 # 80005960 <started>
    80002044:	02050263          	beqz	a0,80002068 <system_main+0x48>
    80002048:	0004a783          	lw	a5,0(s1)
    8000204c:	0007879b          	sext.w	a5,a5
    80002050:	fe078ce3          	beqz	a5,80002048 <system_main+0x28>
    80002054:	0ff0000f          	fence
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	05050513          	addi	a0,a0,80 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	a7c080e7          	jalr	-1412(ra) # 80002adc <panic>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	9d0080e7          	jalr	-1584(ra) # 80002a38 <consoleinit>
    80002070:	00001097          	auipc	ra,0x1
    80002074:	15c080e7          	jalr	348(ra) # 800031cc <printfinit>
    80002078:	00003517          	auipc	a0,0x3
    8000207c:	fb850513          	addi	a0,a0,-72 # 80005030 <kvmincrease+0xd90>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	ab8080e7          	jalr	-1352(ra) # 80002b38 <__printf>
    80002088:	00003517          	auipc	a0,0x3
    8000208c:	ff050513          	addi	a0,a0,-16 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	aa8080e7          	jalr	-1368(ra) # 80002b38 <__printf>
    80002098:	00003517          	auipc	a0,0x3
    8000209c:	f9850513          	addi	a0,a0,-104 # 80005030 <kvmincrease+0xd90>
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	a98080e7          	jalr	-1384(ra) # 80002b38 <__printf>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	4b0080e7          	jalr	1200(ra) # 80003558 <kinit>
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	148080e7          	jalr	328(ra) # 800021f8 <trapinit>
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	16c080e7          	jalr	364(ra) # 80002224 <trapinithart>
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	5c0080e7          	jalr	1472(ra) # 80002680 <plicinit>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	5e0080e7          	jalr	1504(ra) # 800026a8 <plicinithart>
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	078080e7          	jalr	120(ra) # 80002148 <userinit>
    800020d8:	0ff0000f          	fence
    800020dc:	00100793          	li	a5,1
    800020e0:	00003517          	auipc	a0,0x3
    800020e4:	fb050513          	addi	a0,a0,-80 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    800020e8:	00f4a023          	sw	a5,0(s1)
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	a4c080e7          	jalr	-1460(ra) # 80002b38 <__printf>
    800020f4:	0000006f          	j	800020f4 <system_main+0xd4>

00000000800020f8 <cpuid>:
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
    80002104:	00020513          	mv	a0,tp
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	0005051b          	sext.w	a0,a0
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <mycpu>:
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00020793          	mv	a5,tp
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	0007879b          	sext.w	a5,a5
    80002130:	00779793          	slli	a5,a5,0x7
    80002134:	00005517          	auipc	a0,0x5
    80002138:	8bc50513          	addi	a0,a0,-1860 # 800069f0 <cpus>
    8000213c:	00f50533          	add	a0,a0,a5
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <userinit>:
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00813423          	sd	s0,8(sp)
    80002150:	01010413          	addi	s0,sp,16
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	fffff317          	auipc	t1,0xfffff
    80002160:	50c30067          	jr	1292(t1) # 80001668 <main>

0000000080002164 <either_copyout>:
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813023          	sd	s0,0(sp)
    8000216c:	00113423          	sd	ra,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	02051663          	bnez	a0,800021a0 <either_copyout+0x3c>
    80002178:	00058513          	mv	a0,a1
    8000217c:	00060593          	mv	a1,a2
    80002180:	0006861b          	sext.w	a2,a3
    80002184:	00002097          	auipc	ra,0x2
    80002188:	c60080e7          	jalr	-928(ra) # 80003de4 <__memmove>
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	00000513          	li	a0,0
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret
    800021a0:	00003517          	auipc	a0,0x3
    800021a4:	f3050513          	addi	a0,a0,-208 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	934080e7          	jalr	-1740(ra) # 80002adc <panic>

00000000800021b0 <either_copyin>:
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	01010413          	addi	s0,sp,16
    800021c0:	02059463          	bnez	a1,800021e8 <either_copyin+0x38>
    800021c4:	00060593          	mv	a1,a2
    800021c8:	0006861b          	sext.w	a2,a3
    800021cc:	00002097          	auipc	ra,0x2
    800021d0:	c18080e7          	jalr	-1000(ra) # 80003de4 <__memmove>
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	00000513          	li	a0,0
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret
    800021e8:	00003517          	auipc	a0,0x3
    800021ec:	f1050513          	addi	a0,a0,-240 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    800021f0:	00001097          	auipc	ra,0x1
    800021f4:	8ec080e7          	jalr	-1812(ra) # 80002adc <panic>

00000000800021f8 <trapinit>:
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00813423          	sd	s0,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    80002204:	00813403          	ld	s0,8(sp)
    80002208:	00003597          	auipc	a1,0x3
    8000220c:	f1858593          	addi	a1,a1,-232 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    80002210:	00005517          	auipc	a0,0x5
    80002214:	86050513          	addi	a0,a0,-1952 # 80006a70 <tickslock>
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00001317          	auipc	t1,0x1
    80002220:	5cc30067          	jr	1484(t1) # 800037e8 <initlock>

0000000080002224 <trapinithart>:
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00813423          	sd	s0,8(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	00000797          	auipc	a5,0x0
    80002234:	30078793          	addi	a5,a5,768 # 80002530 <kernelvec>
    80002238:	10579073          	csrw	stvec,a5
    8000223c:	00813403          	ld	s0,8(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret

0000000080002248 <usertrap>:
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <usertrapret>:
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <kerneltrap>:
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00813823          	sd	s0,16(sp)
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	02010413          	addi	s0,sp,32
    8000228c:	142025f3          	csrr	a1,scause
    80002290:	100027f3          	csrr	a5,sstatus
    80002294:	0027f793          	andi	a5,a5,2
    80002298:	10079c63          	bnez	a5,800023b0 <kerneltrap+0x138>
    8000229c:	142027f3          	csrr	a5,scause
    800022a0:	0207ce63          	bltz	a5,800022dc <kerneltrap+0x64>
    800022a4:	00003517          	auipc	a0,0x3
    800022a8:	ec450513          	addi	a0,a0,-316 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	88c080e7          	jalr	-1908(ra) # 80002b38 <__printf>
    800022b4:	141025f3          	csrr	a1,sepc
    800022b8:	14302673          	csrr	a2,stval
    800022bc:	00003517          	auipc	a0,0x3
    800022c0:	ebc50513          	addi	a0,a0,-324 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	874080e7          	jalr	-1932(ra) # 80002b38 <__printf>
    800022cc:	00003517          	auipc	a0,0x3
    800022d0:	ec450513          	addi	a0,a0,-316 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	808080e7          	jalr	-2040(ra) # 80002adc <panic>
    800022dc:	0ff7f713          	andi	a4,a5,255
    800022e0:	00900693          	li	a3,9
    800022e4:	04d70063          	beq	a4,a3,80002324 <kerneltrap+0xac>
    800022e8:	fff00713          	li	a4,-1
    800022ec:	03f71713          	slli	a4,a4,0x3f
    800022f0:	00170713          	addi	a4,a4,1
    800022f4:	fae798e3          	bne	a5,a4,800022a4 <kerneltrap+0x2c>
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	e00080e7          	jalr	-512(ra) # 800020f8 <cpuid>
    80002300:	06050663          	beqz	a0,8000236c <kerneltrap+0xf4>
    80002304:	144027f3          	csrr	a5,sip
    80002308:	ffd7f793          	andi	a5,a5,-3
    8000230c:	14479073          	csrw	sip,a5
    80002310:	01813083          	ld	ra,24(sp)
    80002314:	01013403          	ld	s0,16(sp)
    80002318:	00813483          	ld	s1,8(sp)
    8000231c:	02010113          	addi	sp,sp,32
    80002320:	00008067          	ret
    80002324:	00000097          	auipc	ra,0x0
    80002328:	3d0080e7          	jalr	976(ra) # 800026f4 <plic_claim>
    8000232c:	00a00793          	li	a5,10
    80002330:	00050493          	mv	s1,a0
    80002334:	06f50863          	beq	a0,a5,800023a4 <kerneltrap+0x12c>
    80002338:	fc050ce3          	beqz	a0,80002310 <kerneltrap+0x98>
    8000233c:	00050593          	mv	a1,a0
    80002340:	00003517          	auipc	a0,0x3
    80002344:	e0850513          	addi	a0,a0,-504 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	7f0080e7          	jalr	2032(ra) # 80002b38 <__printf>
    80002350:	01013403          	ld	s0,16(sp)
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	00048513          	mv	a0,s1
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00000317          	auipc	t1,0x0
    80002368:	3c830067          	jr	968(t1) # 8000272c <plic_complete>
    8000236c:	00004517          	auipc	a0,0x4
    80002370:	70450513          	addi	a0,a0,1796 # 80006a70 <tickslock>
    80002374:	00001097          	auipc	ra,0x1
    80002378:	498080e7          	jalr	1176(ra) # 8000380c <acquire>
    8000237c:	00003717          	auipc	a4,0x3
    80002380:	5e870713          	addi	a4,a4,1512 # 80005964 <ticks>
    80002384:	00072783          	lw	a5,0(a4)
    80002388:	00004517          	auipc	a0,0x4
    8000238c:	6e850513          	addi	a0,a0,1768 # 80006a70 <tickslock>
    80002390:	0017879b          	addiw	a5,a5,1
    80002394:	00f72023          	sw	a5,0(a4)
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	540080e7          	jalr	1344(ra) # 800038d8 <release>
    800023a0:	f65ff06f          	j	80002304 <kerneltrap+0x8c>
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	09c080e7          	jalr	156(ra) # 80003440 <uartintr>
    800023ac:	fa5ff06f          	j	80002350 <kerneltrap+0xd8>
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	d7850513          	addi	a0,a0,-648 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	724080e7          	jalr	1828(ra) # 80002adc <panic>

00000000800023c0 <clockintr>:
    800023c0:	fe010113          	addi	sp,sp,-32
    800023c4:	00813823          	sd	s0,16(sp)
    800023c8:	00913423          	sd	s1,8(sp)
    800023cc:	00113c23          	sd	ra,24(sp)
    800023d0:	02010413          	addi	s0,sp,32
    800023d4:	00004497          	auipc	s1,0x4
    800023d8:	69c48493          	addi	s1,s1,1692 # 80006a70 <tickslock>
    800023dc:	00048513          	mv	a0,s1
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	42c080e7          	jalr	1068(ra) # 8000380c <acquire>
    800023e8:	00003717          	auipc	a4,0x3
    800023ec:	57c70713          	addi	a4,a4,1404 # 80005964 <ticks>
    800023f0:	00072783          	lw	a5,0(a4)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	00048513          	mv	a0,s1
    80002400:	0017879b          	addiw	a5,a5,1
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	00f72023          	sw	a5,0(a4)
    8000240c:	02010113          	addi	sp,sp,32
    80002410:	00001317          	auipc	t1,0x1
    80002414:	4c830067          	jr	1224(t1) # 800038d8 <release>

0000000080002418 <devintr>:
    80002418:	142027f3          	csrr	a5,scause
    8000241c:	00000513          	li	a0,0
    80002420:	0007c463          	bltz	a5,80002428 <devintr+0x10>
    80002424:	00008067          	ret
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00113c23          	sd	ra,24(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	02010413          	addi	s0,sp,32
    8000243c:	0ff7f713          	andi	a4,a5,255
    80002440:	00900693          	li	a3,9
    80002444:	04d70c63          	beq	a4,a3,8000249c <devintr+0x84>
    80002448:	fff00713          	li	a4,-1
    8000244c:	03f71713          	slli	a4,a4,0x3f
    80002450:	00170713          	addi	a4,a4,1
    80002454:	00e78c63          	beq	a5,a4,8000246c <devintr+0x54>
    80002458:	01813083          	ld	ra,24(sp)
    8000245c:	01013403          	ld	s0,16(sp)
    80002460:	00813483          	ld	s1,8(sp)
    80002464:	02010113          	addi	sp,sp,32
    80002468:	00008067          	ret
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	c8c080e7          	jalr	-884(ra) # 800020f8 <cpuid>
    80002474:	06050663          	beqz	a0,800024e0 <devintr+0xc8>
    80002478:	144027f3          	csrr	a5,sip
    8000247c:	ffd7f793          	andi	a5,a5,-3
    80002480:	14479073          	csrw	sip,a5
    80002484:	01813083          	ld	ra,24(sp)
    80002488:	01013403          	ld	s0,16(sp)
    8000248c:	00813483          	ld	s1,8(sp)
    80002490:	00200513          	li	a0,2
    80002494:	02010113          	addi	sp,sp,32
    80002498:	00008067          	ret
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	258080e7          	jalr	600(ra) # 800026f4 <plic_claim>
    800024a4:	00a00793          	li	a5,10
    800024a8:	00050493          	mv	s1,a0
    800024ac:	06f50663          	beq	a0,a5,80002518 <devintr+0x100>
    800024b0:	00100513          	li	a0,1
    800024b4:	fa0482e3          	beqz	s1,80002458 <devintr+0x40>
    800024b8:	00048593          	mv	a1,s1
    800024bc:	00003517          	auipc	a0,0x3
    800024c0:	c8c50513          	addi	a0,a0,-884 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	674080e7          	jalr	1652(ra) # 80002b38 <__printf>
    800024cc:	00048513          	mv	a0,s1
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	25c080e7          	jalr	604(ra) # 8000272c <plic_complete>
    800024d8:	00100513          	li	a0,1
    800024dc:	f7dff06f          	j	80002458 <devintr+0x40>
    800024e0:	00004517          	auipc	a0,0x4
    800024e4:	59050513          	addi	a0,a0,1424 # 80006a70 <tickslock>
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	324080e7          	jalr	804(ra) # 8000380c <acquire>
    800024f0:	00003717          	auipc	a4,0x3
    800024f4:	47470713          	addi	a4,a4,1140 # 80005964 <ticks>
    800024f8:	00072783          	lw	a5,0(a4)
    800024fc:	00004517          	auipc	a0,0x4
    80002500:	57450513          	addi	a0,a0,1396 # 80006a70 <tickslock>
    80002504:	0017879b          	addiw	a5,a5,1
    80002508:	00f72023          	sw	a5,0(a4)
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	3cc080e7          	jalr	972(ra) # 800038d8 <release>
    80002514:	f65ff06f          	j	80002478 <devintr+0x60>
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	f28080e7          	jalr	-216(ra) # 80003440 <uartintr>
    80002520:	fadff06f          	j	800024cc <devintr+0xb4>
	...

0000000080002530 <kernelvec>:
    80002530:	f0010113          	addi	sp,sp,-256
    80002534:	00113023          	sd	ra,0(sp)
    80002538:	00213423          	sd	sp,8(sp)
    8000253c:	00313823          	sd	gp,16(sp)
    80002540:	00413c23          	sd	tp,24(sp)
    80002544:	02513023          	sd	t0,32(sp)
    80002548:	02613423          	sd	t1,40(sp)
    8000254c:	02713823          	sd	t2,48(sp)
    80002550:	02813c23          	sd	s0,56(sp)
    80002554:	04913023          	sd	s1,64(sp)
    80002558:	04a13423          	sd	a0,72(sp)
    8000255c:	04b13823          	sd	a1,80(sp)
    80002560:	04c13c23          	sd	a2,88(sp)
    80002564:	06d13023          	sd	a3,96(sp)
    80002568:	06e13423          	sd	a4,104(sp)
    8000256c:	06f13823          	sd	a5,112(sp)
    80002570:	07013c23          	sd	a6,120(sp)
    80002574:	09113023          	sd	a7,128(sp)
    80002578:	09213423          	sd	s2,136(sp)
    8000257c:	09313823          	sd	s3,144(sp)
    80002580:	09413c23          	sd	s4,152(sp)
    80002584:	0b513023          	sd	s5,160(sp)
    80002588:	0b613423          	sd	s6,168(sp)
    8000258c:	0b713823          	sd	s7,176(sp)
    80002590:	0b813c23          	sd	s8,184(sp)
    80002594:	0d913023          	sd	s9,192(sp)
    80002598:	0da13423          	sd	s10,200(sp)
    8000259c:	0db13823          	sd	s11,208(sp)
    800025a0:	0dc13c23          	sd	t3,216(sp)
    800025a4:	0fd13023          	sd	t4,224(sp)
    800025a8:	0fe13423          	sd	t5,232(sp)
    800025ac:	0ff13823          	sd	t6,240(sp)
    800025b0:	cc9ff0ef          	jal	ra,80002278 <kerneltrap>
    800025b4:	00013083          	ld	ra,0(sp)
    800025b8:	00813103          	ld	sp,8(sp)
    800025bc:	01013183          	ld	gp,16(sp)
    800025c0:	02013283          	ld	t0,32(sp)
    800025c4:	02813303          	ld	t1,40(sp)
    800025c8:	03013383          	ld	t2,48(sp)
    800025cc:	03813403          	ld	s0,56(sp)
    800025d0:	04013483          	ld	s1,64(sp)
    800025d4:	04813503          	ld	a0,72(sp)
    800025d8:	05013583          	ld	a1,80(sp)
    800025dc:	05813603          	ld	a2,88(sp)
    800025e0:	06013683          	ld	a3,96(sp)
    800025e4:	06813703          	ld	a4,104(sp)
    800025e8:	07013783          	ld	a5,112(sp)
    800025ec:	07813803          	ld	a6,120(sp)
    800025f0:	08013883          	ld	a7,128(sp)
    800025f4:	08813903          	ld	s2,136(sp)
    800025f8:	09013983          	ld	s3,144(sp)
    800025fc:	09813a03          	ld	s4,152(sp)
    80002600:	0a013a83          	ld	s5,160(sp)
    80002604:	0a813b03          	ld	s6,168(sp)
    80002608:	0b013b83          	ld	s7,176(sp)
    8000260c:	0b813c03          	ld	s8,184(sp)
    80002610:	0c013c83          	ld	s9,192(sp)
    80002614:	0c813d03          	ld	s10,200(sp)
    80002618:	0d013d83          	ld	s11,208(sp)
    8000261c:	0d813e03          	ld	t3,216(sp)
    80002620:	0e013e83          	ld	t4,224(sp)
    80002624:	0e813f03          	ld	t5,232(sp)
    80002628:	0f013f83          	ld	t6,240(sp)
    8000262c:	10010113          	addi	sp,sp,256
    80002630:	10200073          	sret
    80002634:	00000013          	nop
    80002638:	00000013          	nop
    8000263c:	00000013          	nop

0000000080002640 <timervec>:
    80002640:	34051573          	csrrw	a0,mscratch,a0
    80002644:	00b53023          	sd	a1,0(a0)
    80002648:	00c53423          	sd	a2,8(a0)
    8000264c:	00d53823          	sd	a3,16(a0)
    80002650:	01853583          	ld	a1,24(a0)
    80002654:	02053603          	ld	a2,32(a0)
    80002658:	0005b683          	ld	a3,0(a1)
    8000265c:	00c686b3          	add	a3,a3,a2
    80002660:	00d5b023          	sd	a3,0(a1)
    80002664:	00200593          	li	a1,2
    80002668:	14459073          	csrw	sip,a1
    8000266c:	01053683          	ld	a3,16(a0)
    80002670:	00853603          	ld	a2,8(a0)
    80002674:	00053583          	ld	a1,0(a0)
    80002678:	34051573          	csrrw	a0,mscratch,a0
    8000267c:	30200073          	mret

0000000080002680 <plicinit>:
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00813423          	sd	s0,8(sp)
    80002688:	01010413          	addi	s0,sp,16
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	0c0007b7          	lui	a5,0xc000
    80002694:	00100713          	li	a4,1
    80002698:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000269c:	00e7a223          	sw	a4,4(a5)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <plicinithart>:
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	a40080e7          	jalr	-1472(ra) # 800020f8 <cpuid>
    800026c0:	0085171b          	slliw	a4,a0,0x8
    800026c4:	0c0027b7          	lui	a5,0xc002
    800026c8:	00e787b3          	add	a5,a5,a4
    800026cc:	40200713          	li	a4,1026
    800026d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	00d5151b          	slliw	a0,a0,0xd
    800026e0:	0c2017b7          	lui	a5,0xc201
    800026e4:	00a78533          	add	a0,a5,a0
    800026e8:	00052023          	sw	zero,0(a0)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <plic_claim>:
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	00113423          	sd	ra,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    80002704:	00000097          	auipc	ra,0x0
    80002708:	9f4080e7          	jalr	-1548(ra) # 800020f8 <cpuid>
    8000270c:	00813083          	ld	ra,8(sp)
    80002710:	00013403          	ld	s0,0(sp)
    80002714:	00d5151b          	slliw	a0,a0,0xd
    80002718:	0c2017b7          	lui	a5,0xc201
    8000271c:	00a78533          	add	a0,a5,a0
    80002720:	00452503          	lw	a0,4(a0)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <plic_complete>:
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	02010413          	addi	s0,sp,32
    80002740:	00050493          	mv	s1,a0
    80002744:	00000097          	auipc	ra,0x0
    80002748:	9b4080e7          	jalr	-1612(ra) # 800020f8 <cpuid>
    8000274c:	01813083          	ld	ra,24(sp)
    80002750:	01013403          	ld	s0,16(sp)
    80002754:	00d5179b          	slliw	a5,a0,0xd
    80002758:	0c201737          	lui	a4,0xc201
    8000275c:	00f707b3          	add	a5,a4,a5
    80002760:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret

0000000080002770 <consolewrite>:
    80002770:	fb010113          	addi	sp,sp,-80
    80002774:	04813023          	sd	s0,64(sp)
    80002778:	04113423          	sd	ra,72(sp)
    8000277c:	02913c23          	sd	s1,56(sp)
    80002780:	03213823          	sd	s2,48(sp)
    80002784:	03313423          	sd	s3,40(sp)
    80002788:	03413023          	sd	s4,32(sp)
    8000278c:	01513c23          	sd	s5,24(sp)
    80002790:	05010413          	addi	s0,sp,80
    80002794:	06c05c63          	blez	a2,8000280c <consolewrite+0x9c>
    80002798:	00060993          	mv	s3,a2
    8000279c:	00050a13          	mv	s4,a0
    800027a0:	00058493          	mv	s1,a1
    800027a4:	00000913          	li	s2,0
    800027a8:	fff00a93          	li	s5,-1
    800027ac:	01c0006f          	j	800027c8 <consolewrite+0x58>
    800027b0:	fbf44503          	lbu	a0,-65(s0)
    800027b4:	0019091b          	addiw	s2,s2,1
    800027b8:	00148493          	addi	s1,s1,1
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	a9c080e7          	jalr	-1380(ra) # 80003258 <uartputc>
    800027c4:	03298063          	beq	s3,s2,800027e4 <consolewrite+0x74>
    800027c8:	00048613          	mv	a2,s1
    800027cc:	00100693          	li	a3,1
    800027d0:	000a0593          	mv	a1,s4
    800027d4:	fbf40513          	addi	a0,s0,-65
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	9d8080e7          	jalr	-1576(ra) # 800021b0 <either_copyin>
    800027e0:	fd5518e3          	bne	a0,s5,800027b0 <consolewrite+0x40>
    800027e4:	04813083          	ld	ra,72(sp)
    800027e8:	04013403          	ld	s0,64(sp)
    800027ec:	03813483          	ld	s1,56(sp)
    800027f0:	02813983          	ld	s3,40(sp)
    800027f4:	02013a03          	ld	s4,32(sp)
    800027f8:	01813a83          	ld	s5,24(sp)
    800027fc:	00090513          	mv	a0,s2
    80002800:	03013903          	ld	s2,48(sp)
    80002804:	05010113          	addi	sp,sp,80
    80002808:	00008067          	ret
    8000280c:	00000913          	li	s2,0
    80002810:	fd5ff06f          	j	800027e4 <consolewrite+0x74>

0000000080002814 <consoleread>:
    80002814:	f9010113          	addi	sp,sp,-112
    80002818:	06813023          	sd	s0,96(sp)
    8000281c:	04913c23          	sd	s1,88(sp)
    80002820:	05213823          	sd	s2,80(sp)
    80002824:	05313423          	sd	s3,72(sp)
    80002828:	05413023          	sd	s4,64(sp)
    8000282c:	03513c23          	sd	s5,56(sp)
    80002830:	03613823          	sd	s6,48(sp)
    80002834:	03713423          	sd	s7,40(sp)
    80002838:	03813023          	sd	s8,32(sp)
    8000283c:	06113423          	sd	ra,104(sp)
    80002840:	01913c23          	sd	s9,24(sp)
    80002844:	07010413          	addi	s0,sp,112
    80002848:	00060b93          	mv	s7,a2
    8000284c:	00050913          	mv	s2,a0
    80002850:	00058c13          	mv	s8,a1
    80002854:	00060b1b          	sext.w	s6,a2
    80002858:	00004497          	auipc	s1,0x4
    8000285c:	24048493          	addi	s1,s1,576 # 80006a98 <cons>
    80002860:	00400993          	li	s3,4
    80002864:	fff00a13          	li	s4,-1
    80002868:	00a00a93          	li	s5,10
    8000286c:	05705e63          	blez	s7,800028c8 <consoleread+0xb4>
    80002870:	09c4a703          	lw	a4,156(s1)
    80002874:	0984a783          	lw	a5,152(s1)
    80002878:	0007071b          	sext.w	a4,a4
    8000287c:	08e78463          	beq	a5,a4,80002904 <consoleread+0xf0>
    80002880:	07f7f713          	andi	a4,a5,127
    80002884:	00e48733          	add	a4,s1,a4
    80002888:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000288c:	0017869b          	addiw	a3,a5,1
    80002890:	08d4ac23          	sw	a3,152(s1)
    80002894:	00070c9b          	sext.w	s9,a4
    80002898:	0b370663          	beq	a4,s3,80002944 <consoleread+0x130>
    8000289c:	00100693          	li	a3,1
    800028a0:	f9f40613          	addi	a2,s0,-97
    800028a4:	000c0593          	mv	a1,s8
    800028a8:	00090513          	mv	a0,s2
    800028ac:	f8e40fa3          	sb	a4,-97(s0)
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	8b4080e7          	jalr	-1868(ra) # 80002164 <either_copyout>
    800028b8:	01450863          	beq	a0,s4,800028c8 <consoleread+0xb4>
    800028bc:	001c0c13          	addi	s8,s8,1
    800028c0:	fffb8b9b          	addiw	s7,s7,-1
    800028c4:	fb5c94e3          	bne	s9,s5,8000286c <consoleread+0x58>
    800028c8:	000b851b          	sext.w	a0,s7
    800028cc:	06813083          	ld	ra,104(sp)
    800028d0:	06013403          	ld	s0,96(sp)
    800028d4:	05813483          	ld	s1,88(sp)
    800028d8:	05013903          	ld	s2,80(sp)
    800028dc:	04813983          	ld	s3,72(sp)
    800028e0:	04013a03          	ld	s4,64(sp)
    800028e4:	03813a83          	ld	s5,56(sp)
    800028e8:	02813b83          	ld	s7,40(sp)
    800028ec:	02013c03          	ld	s8,32(sp)
    800028f0:	01813c83          	ld	s9,24(sp)
    800028f4:	40ab053b          	subw	a0,s6,a0
    800028f8:	03013b03          	ld	s6,48(sp)
    800028fc:	07010113          	addi	sp,sp,112
    80002900:	00008067          	ret
    80002904:	00001097          	auipc	ra,0x1
    80002908:	1d8080e7          	jalr	472(ra) # 80003adc <push_on>
    8000290c:	0984a703          	lw	a4,152(s1)
    80002910:	09c4a783          	lw	a5,156(s1)
    80002914:	0007879b          	sext.w	a5,a5
    80002918:	fef70ce3          	beq	a4,a5,80002910 <consoleread+0xfc>
    8000291c:	00001097          	auipc	ra,0x1
    80002920:	234080e7          	jalr	564(ra) # 80003b50 <pop_on>
    80002924:	0984a783          	lw	a5,152(s1)
    80002928:	07f7f713          	andi	a4,a5,127
    8000292c:	00e48733          	add	a4,s1,a4
    80002930:	01874703          	lbu	a4,24(a4)
    80002934:	0017869b          	addiw	a3,a5,1
    80002938:	08d4ac23          	sw	a3,152(s1)
    8000293c:	00070c9b          	sext.w	s9,a4
    80002940:	f5371ee3          	bne	a4,s3,8000289c <consoleread+0x88>
    80002944:	000b851b          	sext.w	a0,s7
    80002948:	f96bf2e3          	bgeu	s7,s6,800028cc <consoleread+0xb8>
    8000294c:	08f4ac23          	sw	a5,152(s1)
    80002950:	f7dff06f          	j	800028cc <consoleread+0xb8>

0000000080002954 <consputc>:
    80002954:	10000793          	li	a5,256
    80002958:	00f50663          	beq	a0,a5,80002964 <consputc+0x10>
    8000295c:	00001317          	auipc	t1,0x1
    80002960:	9f430067          	jr	-1548(t1) # 80003350 <uartputc_sync>
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00113423          	sd	ra,8(sp)
    8000296c:	00813023          	sd	s0,0(sp)
    80002970:	01010413          	addi	s0,sp,16
    80002974:	00800513          	li	a0,8
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	9d8080e7          	jalr	-1576(ra) # 80003350 <uartputc_sync>
    80002980:	02000513          	li	a0,32
    80002984:	00001097          	auipc	ra,0x1
    80002988:	9cc080e7          	jalr	-1588(ra) # 80003350 <uartputc_sync>
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	00813083          	ld	ra,8(sp)
    80002994:	00800513          	li	a0,8
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00001317          	auipc	t1,0x1
    800029a0:	9b430067          	jr	-1612(t1) # 80003350 <uartputc_sync>

00000000800029a4 <consoleintr>:
    800029a4:	fe010113          	addi	sp,sp,-32
    800029a8:	00813823          	sd	s0,16(sp)
    800029ac:	00913423          	sd	s1,8(sp)
    800029b0:	01213023          	sd	s2,0(sp)
    800029b4:	00113c23          	sd	ra,24(sp)
    800029b8:	02010413          	addi	s0,sp,32
    800029bc:	00004917          	auipc	s2,0x4
    800029c0:	0dc90913          	addi	s2,s2,220 # 80006a98 <cons>
    800029c4:	00050493          	mv	s1,a0
    800029c8:	00090513          	mv	a0,s2
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	e40080e7          	jalr	-448(ra) # 8000380c <acquire>
    800029d4:	02048c63          	beqz	s1,80002a0c <consoleintr+0x68>
    800029d8:	0a092783          	lw	a5,160(s2)
    800029dc:	09892703          	lw	a4,152(s2)
    800029e0:	07f00693          	li	a3,127
    800029e4:	40e7873b          	subw	a4,a5,a4
    800029e8:	02e6e263          	bltu	a3,a4,80002a0c <consoleintr+0x68>
    800029ec:	00d00713          	li	a4,13
    800029f0:	04e48063          	beq	s1,a4,80002a30 <consoleintr+0x8c>
    800029f4:	07f7f713          	andi	a4,a5,127
    800029f8:	00e90733          	add	a4,s2,a4
    800029fc:	0017879b          	addiw	a5,a5,1
    80002a00:	0af92023          	sw	a5,160(s2)
    80002a04:	00970c23          	sb	s1,24(a4)
    80002a08:	08f92e23          	sw	a5,156(s2)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	00813483          	ld	s1,8(sp)
    80002a18:	00013903          	ld	s2,0(sp)
    80002a1c:	00004517          	auipc	a0,0x4
    80002a20:	07c50513          	addi	a0,a0,124 # 80006a98 <cons>
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00001317          	auipc	t1,0x1
    80002a2c:	eb030067          	jr	-336(t1) # 800038d8 <release>
    80002a30:	00a00493          	li	s1,10
    80002a34:	fc1ff06f          	j	800029f4 <consoleintr+0x50>

0000000080002a38 <consoleinit>:
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	02010413          	addi	s0,sp,32
    80002a4c:	00004497          	auipc	s1,0x4
    80002a50:	04c48493          	addi	s1,s1,76 # 80006a98 <cons>
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00002597          	auipc	a1,0x2
    80002a5c:	74858593          	addi	a1,a1,1864 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	d88080e7          	jalr	-632(ra) # 800037e8 <initlock>
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	7ac080e7          	jalr	1964(ra) # 80003214 <uartinit>
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00000797          	auipc	a5,0x0
    80002a7c:	d9c78793          	addi	a5,a5,-612 # 80002814 <consoleread>
    80002a80:	0af4bc23          	sd	a5,184(s1)
    80002a84:	00000797          	auipc	a5,0x0
    80002a88:	cec78793          	addi	a5,a5,-788 # 80002770 <consolewrite>
    80002a8c:	0cf4b023          	sd	a5,192(s1)
    80002a90:	00813483          	ld	s1,8(sp)
    80002a94:	02010113          	addi	sp,sp,32
    80002a98:	00008067          	ret

0000000080002a9c <console_read>:
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    80002aa8:	00813403          	ld	s0,8(sp)
    80002aac:	00004317          	auipc	t1,0x4
    80002ab0:	0a433303          	ld	t1,164(t1) # 80006b50 <devsw+0x10>
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00030067          	jr	t1

0000000080002abc <console_write>:
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00813423          	sd	s0,8(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	00004317          	auipc	t1,0x4
    80002ad0:	08c33303          	ld	t1,140(t1) # 80006b58 <devsw+0x18>
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00030067          	jr	t1

0000000080002adc <panic>:
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	02010413          	addi	s0,sp,32
    80002af0:	00050493          	mv	s1,a0
    80002af4:	00002517          	auipc	a0,0x2
    80002af8:	6b450513          	addi	a0,a0,1716 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002afc:	00004797          	auipc	a5,0x4
    80002b00:	0e07ae23          	sw	zero,252(a5) # 80006bf8 <pr+0x18>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	034080e7          	jalr	52(ra) # 80002b38 <__printf>
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	028080e7          	jalr	40(ra) # 80002b38 <__printf>
    80002b18:	00002517          	auipc	a0,0x2
    80002b1c:	51850513          	addi	a0,a0,1304 # 80005030 <kvmincrease+0xd90>
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	018080e7          	jalr	24(ra) # 80002b38 <__printf>
    80002b28:	00100793          	li	a5,1
    80002b2c:	00003717          	auipc	a4,0x3
    80002b30:	e2f72e23          	sw	a5,-452(a4) # 80005968 <panicked>
    80002b34:	0000006f          	j	80002b34 <panic+0x58>

0000000080002b38 <__printf>:
    80002b38:	f3010113          	addi	sp,sp,-208
    80002b3c:	08813023          	sd	s0,128(sp)
    80002b40:	07313423          	sd	s3,104(sp)
    80002b44:	09010413          	addi	s0,sp,144
    80002b48:	05813023          	sd	s8,64(sp)
    80002b4c:	08113423          	sd	ra,136(sp)
    80002b50:	06913c23          	sd	s1,120(sp)
    80002b54:	07213823          	sd	s2,112(sp)
    80002b58:	07413023          	sd	s4,96(sp)
    80002b5c:	05513c23          	sd	s5,88(sp)
    80002b60:	05613823          	sd	s6,80(sp)
    80002b64:	05713423          	sd	s7,72(sp)
    80002b68:	03913c23          	sd	s9,56(sp)
    80002b6c:	03a13823          	sd	s10,48(sp)
    80002b70:	03b13423          	sd	s11,40(sp)
    80002b74:	00004317          	auipc	t1,0x4
    80002b78:	06c30313          	addi	t1,t1,108 # 80006be0 <pr>
    80002b7c:	01832c03          	lw	s8,24(t1)
    80002b80:	00b43423          	sd	a1,8(s0)
    80002b84:	00c43823          	sd	a2,16(s0)
    80002b88:	00d43c23          	sd	a3,24(s0)
    80002b8c:	02e43023          	sd	a4,32(s0)
    80002b90:	02f43423          	sd	a5,40(s0)
    80002b94:	03043823          	sd	a6,48(s0)
    80002b98:	03143c23          	sd	a7,56(s0)
    80002b9c:	00050993          	mv	s3,a0
    80002ba0:	4a0c1663          	bnez	s8,8000304c <__printf+0x514>
    80002ba4:	60098c63          	beqz	s3,800031bc <__printf+0x684>
    80002ba8:	0009c503          	lbu	a0,0(s3)
    80002bac:	00840793          	addi	a5,s0,8
    80002bb0:	f6f43c23          	sd	a5,-136(s0)
    80002bb4:	00000493          	li	s1,0
    80002bb8:	22050063          	beqz	a0,80002dd8 <__printf+0x2a0>
    80002bbc:	00002a37          	lui	s4,0x2
    80002bc0:	00018ab7          	lui	s5,0x18
    80002bc4:	000f4b37          	lui	s6,0xf4
    80002bc8:	00989bb7          	lui	s7,0x989
    80002bcc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002bd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002bd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002bd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002bdc:	00148c9b          	addiw	s9,s1,1
    80002be0:	02500793          	li	a5,37
    80002be4:	01998933          	add	s2,s3,s9
    80002be8:	38f51263          	bne	a0,a5,80002f6c <__printf+0x434>
    80002bec:	00094783          	lbu	a5,0(s2)
    80002bf0:	00078c9b          	sext.w	s9,a5
    80002bf4:	1e078263          	beqz	a5,80002dd8 <__printf+0x2a0>
    80002bf8:	0024849b          	addiw	s1,s1,2
    80002bfc:	07000713          	li	a4,112
    80002c00:	00998933          	add	s2,s3,s1
    80002c04:	38e78a63          	beq	a5,a4,80002f98 <__printf+0x460>
    80002c08:	20f76863          	bltu	a4,a5,80002e18 <__printf+0x2e0>
    80002c0c:	42a78863          	beq	a5,a0,8000303c <__printf+0x504>
    80002c10:	06400713          	li	a4,100
    80002c14:	40e79663          	bne	a5,a4,80003020 <__printf+0x4e8>
    80002c18:	f7843783          	ld	a5,-136(s0)
    80002c1c:	0007a603          	lw	a2,0(a5)
    80002c20:	00878793          	addi	a5,a5,8
    80002c24:	f6f43c23          	sd	a5,-136(s0)
    80002c28:	42064a63          	bltz	a2,8000305c <__printf+0x524>
    80002c2c:	00a00713          	li	a4,10
    80002c30:	02e677bb          	remuw	a5,a2,a4
    80002c34:	00002d97          	auipc	s11,0x2
    80002c38:	59cd8d93          	addi	s11,s11,1436 # 800051d0 <digits>
    80002c3c:	00900593          	li	a1,9
    80002c40:	0006051b          	sext.w	a0,a2
    80002c44:	00000c93          	li	s9,0
    80002c48:	02079793          	slli	a5,a5,0x20
    80002c4c:	0207d793          	srli	a5,a5,0x20
    80002c50:	00fd87b3          	add	a5,s11,a5
    80002c54:	0007c783          	lbu	a5,0(a5)
    80002c58:	02e656bb          	divuw	a3,a2,a4
    80002c5c:	f8f40023          	sb	a5,-128(s0)
    80002c60:	14c5d863          	bge	a1,a2,80002db0 <__printf+0x278>
    80002c64:	06300593          	li	a1,99
    80002c68:	00100c93          	li	s9,1
    80002c6c:	02e6f7bb          	remuw	a5,a3,a4
    80002c70:	02079793          	slli	a5,a5,0x20
    80002c74:	0207d793          	srli	a5,a5,0x20
    80002c78:	00fd87b3          	add	a5,s11,a5
    80002c7c:	0007c783          	lbu	a5,0(a5)
    80002c80:	02e6d73b          	divuw	a4,a3,a4
    80002c84:	f8f400a3          	sb	a5,-127(s0)
    80002c88:	12a5f463          	bgeu	a1,a0,80002db0 <__printf+0x278>
    80002c8c:	00a00693          	li	a3,10
    80002c90:	00900593          	li	a1,9
    80002c94:	02d777bb          	remuw	a5,a4,a3
    80002c98:	02079793          	slli	a5,a5,0x20
    80002c9c:	0207d793          	srli	a5,a5,0x20
    80002ca0:	00fd87b3          	add	a5,s11,a5
    80002ca4:	0007c503          	lbu	a0,0(a5)
    80002ca8:	02d757bb          	divuw	a5,a4,a3
    80002cac:	f8a40123          	sb	a0,-126(s0)
    80002cb0:	48e5f263          	bgeu	a1,a4,80003134 <__printf+0x5fc>
    80002cb4:	06300513          	li	a0,99
    80002cb8:	02d7f5bb          	remuw	a1,a5,a3
    80002cbc:	02059593          	slli	a1,a1,0x20
    80002cc0:	0205d593          	srli	a1,a1,0x20
    80002cc4:	00bd85b3          	add	a1,s11,a1
    80002cc8:	0005c583          	lbu	a1,0(a1)
    80002ccc:	02d7d7bb          	divuw	a5,a5,a3
    80002cd0:	f8b401a3          	sb	a1,-125(s0)
    80002cd4:	48e57263          	bgeu	a0,a4,80003158 <__printf+0x620>
    80002cd8:	3e700513          	li	a0,999
    80002cdc:	02d7f5bb          	remuw	a1,a5,a3
    80002ce0:	02059593          	slli	a1,a1,0x20
    80002ce4:	0205d593          	srli	a1,a1,0x20
    80002ce8:	00bd85b3          	add	a1,s11,a1
    80002cec:	0005c583          	lbu	a1,0(a1)
    80002cf0:	02d7d7bb          	divuw	a5,a5,a3
    80002cf4:	f8b40223          	sb	a1,-124(s0)
    80002cf8:	46e57663          	bgeu	a0,a4,80003164 <__printf+0x62c>
    80002cfc:	02d7f5bb          	remuw	a1,a5,a3
    80002d00:	02059593          	slli	a1,a1,0x20
    80002d04:	0205d593          	srli	a1,a1,0x20
    80002d08:	00bd85b3          	add	a1,s11,a1
    80002d0c:	0005c583          	lbu	a1,0(a1)
    80002d10:	02d7d7bb          	divuw	a5,a5,a3
    80002d14:	f8b402a3          	sb	a1,-123(s0)
    80002d18:	46ea7863          	bgeu	s4,a4,80003188 <__printf+0x650>
    80002d1c:	02d7f5bb          	remuw	a1,a5,a3
    80002d20:	02059593          	slli	a1,a1,0x20
    80002d24:	0205d593          	srli	a1,a1,0x20
    80002d28:	00bd85b3          	add	a1,s11,a1
    80002d2c:	0005c583          	lbu	a1,0(a1)
    80002d30:	02d7d7bb          	divuw	a5,a5,a3
    80002d34:	f8b40323          	sb	a1,-122(s0)
    80002d38:	3eeaf863          	bgeu	s5,a4,80003128 <__printf+0x5f0>
    80002d3c:	02d7f5bb          	remuw	a1,a5,a3
    80002d40:	02059593          	slli	a1,a1,0x20
    80002d44:	0205d593          	srli	a1,a1,0x20
    80002d48:	00bd85b3          	add	a1,s11,a1
    80002d4c:	0005c583          	lbu	a1,0(a1)
    80002d50:	02d7d7bb          	divuw	a5,a5,a3
    80002d54:	f8b403a3          	sb	a1,-121(s0)
    80002d58:	42eb7e63          	bgeu	s6,a4,80003194 <__printf+0x65c>
    80002d5c:	02d7f5bb          	remuw	a1,a5,a3
    80002d60:	02059593          	slli	a1,a1,0x20
    80002d64:	0205d593          	srli	a1,a1,0x20
    80002d68:	00bd85b3          	add	a1,s11,a1
    80002d6c:	0005c583          	lbu	a1,0(a1)
    80002d70:	02d7d7bb          	divuw	a5,a5,a3
    80002d74:	f8b40423          	sb	a1,-120(s0)
    80002d78:	42ebfc63          	bgeu	s7,a4,800031b0 <__printf+0x678>
    80002d7c:	02079793          	slli	a5,a5,0x20
    80002d80:	0207d793          	srli	a5,a5,0x20
    80002d84:	00fd8db3          	add	s11,s11,a5
    80002d88:	000dc703          	lbu	a4,0(s11)
    80002d8c:	00a00793          	li	a5,10
    80002d90:	00900c93          	li	s9,9
    80002d94:	f8e404a3          	sb	a4,-119(s0)
    80002d98:	00065c63          	bgez	a2,80002db0 <__printf+0x278>
    80002d9c:	f9040713          	addi	a4,s0,-112
    80002da0:	00f70733          	add	a4,a4,a5
    80002da4:	02d00693          	li	a3,45
    80002da8:	fed70823          	sb	a3,-16(a4)
    80002dac:	00078c93          	mv	s9,a5
    80002db0:	f8040793          	addi	a5,s0,-128
    80002db4:	01978cb3          	add	s9,a5,s9
    80002db8:	f7f40d13          	addi	s10,s0,-129
    80002dbc:	000cc503          	lbu	a0,0(s9)
    80002dc0:	fffc8c93          	addi	s9,s9,-1
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	b90080e7          	jalr	-1136(ra) # 80002954 <consputc>
    80002dcc:	ffac98e3          	bne	s9,s10,80002dbc <__printf+0x284>
    80002dd0:	00094503          	lbu	a0,0(s2)
    80002dd4:	e00514e3          	bnez	a0,80002bdc <__printf+0xa4>
    80002dd8:	1a0c1663          	bnez	s8,80002f84 <__printf+0x44c>
    80002ddc:	08813083          	ld	ra,136(sp)
    80002de0:	08013403          	ld	s0,128(sp)
    80002de4:	07813483          	ld	s1,120(sp)
    80002de8:	07013903          	ld	s2,112(sp)
    80002dec:	06813983          	ld	s3,104(sp)
    80002df0:	06013a03          	ld	s4,96(sp)
    80002df4:	05813a83          	ld	s5,88(sp)
    80002df8:	05013b03          	ld	s6,80(sp)
    80002dfc:	04813b83          	ld	s7,72(sp)
    80002e00:	04013c03          	ld	s8,64(sp)
    80002e04:	03813c83          	ld	s9,56(sp)
    80002e08:	03013d03          	ld	s10,48(sp)
    80002e0c:	02813d83          	ld	s11,40(sp)
    80002e10:	0d010113          	addi	sp,sp,208
    80002e14:	00008067          	ret
    80002e18:	07300713          	li	a4,115
    80002e1c:	1ce78a63          	beq	a5,a4,80002ff0 <__printf+0x4b8>
    80002e20:	07800713          	li	a4,120
    80002e24:	1ee79e63          	bne	a5,a4,80003020 <__printf+0x4e8>
    80002e28:	f7843783          	ld	a5,-136(s0)
    80002e2c:	0007a703          	lw	a4,0(a5)
    80002e30:	00878793          	addi	a5,a5,8
    80002e34:	f6f43c23          	sd	a5,-136(s0)
    80002e38:	28074263          	bltz	a4,800030bc <__printf+0x584>
    80002e3c:	00002d97          	auipc	s11,0x2
    80002e40:	394d8d93          	addi	s11,s11,916 # 800051d0 <digits>
    80002e44:	00f77793          	andi	a5,a4,15
    80002e48:	00fd87b3          	add	a5,s11,a5
    80002e4c:	0007c683          	lbu	a3,0(a5)
    80002e50:	00f00613          	li	a2,15
    80002e54:	0007079b          	sext.w	a5,a4
    80002e58:	f8d40023          	sb	a3,-128(s0)
    80002e5c:	0047559b          	srliw	a1,a4,0x4
    80002e60:	0047569b          	srliw	a3,a4,0x4
    80002e64:	00000c93          	li	s9,0
    80002e68:	0ee65063          	bge	a2,a4,80002f48 <__printf+0x410>
    80002e6c:	00f6f693          	andi	a3,a3,15
    80002e70:	00dd86b3          	add	a3,s11,a3
    80002e74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e78:	0087d79b          	srliw	a5,a5,0x8
    80002e7c:	00100c93          	li	s9,1
    80002e80:	f8d400a3          	sb	a3,-127(s0)
    80002e84:	0cb67263          	bgeu	a2,a1,80002f48 <__printf+0x410>
    80002e88:	00f7f693          	andi	a3,a5,15
    80002e8c:	00dd86b3          	add	a3,s11,a3
    80002e90:	0006c583          	lbu	a1,0(a3)
    80002e94:	00f00613          	li	a2,15
    80002e98:	0047d69b          	srliw	a3,a5,0x4
    80002e9c:	f8b40123          	sb	a1,-126(s0)
    80002ea0:	0047d593          	srli	a1,a5,0x4
    80002ea4:	28f67e63          	bgeu	a2,a5,80003140 <__printf+0x608>
    80002ea8:	00f6f693          	andi	a3,a3,15
    80002eac:	00dd86b3          	add	a3,s11,a3
    80002eb0:	0006c503          	lbu	a0,0(a3)
    80002eb4:	0087d813          	srli	a6,a5,0x8
    80002eb8:	0087d69b          	srliw	a3,a5,0x8
    80002ebc:	f8a401a3          	sb	a0,-125(s0)
    80002ec0:	28b67663          	bgeu	a2,a1,8000314c <__printf+0x614>
    80002ec4:	00f6f693          	andi	a3,a3,15
    80002ec8:	00dd86b3          	add	a3,s11,a3
    80002ecc:	0006c583          	lbu	a1,0(a3)
    80002ed0:	00c7d513          	srli	a0,a5,0xc
    80002ed4:	00c7d69b          	srliw	a3,a5,0xc
    80002ed8:	f8b40223          	sb	a1,-124(s0)
    80002edc:	29067a63          	bgeu	a2,a6,80003170 <__printf+0x638>
    80002ee0:	00f6f693          	andi	a3,a3,15
    80002ee4:	00dd86b3          	add	a3,s11,a3
    80002ee8:	0006c583          	lbu	a1,0(a3)
    80002eec:	0107d813          	srli	a6,a5,0x10
    80002ef0:	0107d69b          	srliw	a3,a5,0x10
    80002ef4:	f8b402a3          	sb	a1,-123(s0)
    80002ef8:	28a67263          	bgeu	a2,a0,8000317c <__printf+0x644>
    80002efc:	00f6f693          	andi	a3,a3,15
    80002f00:	00dd86b3          	add	a3,s11,a3
    80002f04:	0006c683          	lbu	a3,0(a3)
    80002f08:	0147d79b          	srliw	a5,a5,0x14
    80002f0c:	f8d40323          	sb	a3,-122(s0)
    80002f10:	21067663          	bgeu	a2,a6,8000311c <__printf+0x5e4>
    80002f14:	02079793          	slli	a5,a5,0x20
    80002f18:	0207d793          	srli	a5,a5,0x20
    80002f1c:	00fd8db3          	add	s11,s11,a5
    80002f20:	000dc683          	lbu	a3,0(s11)
    80002f24:	00800793          	li	a5,8
    80002f28:	00700c93          	li	s9,7
    80002f2c:	f8d403a3          	sb	a3,-121(s0)
    80002f30:	00075c63          	bgez	a4,80002f48 <__printf+0x410>
    80002f34:	f9040713          	addi	a4,s0,-112
    80002f38:	00f70733          	add	a4,a4,a5
    80002f3c:	02d00693          	li	a3,45
    80002f40:	fed70823          	sb	a3,-16(a4)
    80002f44:	00078c93          	mv	s9,a5
    80002f48:	f8040793          	addi	a5,s0,-128
    80002f4c:	01978cb3          	add	s9,a5,s9
    80002f50:	f7f40d13          	addi	s10,s0,-129
    80002f54:	000cc503          	lbu	a0,0(s9)
    80002f58:	fffc8c93          	addi	s9,s9,-1
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	9f8080e7          	jalr	-1544(ra) # 80002954 <consputc>
    80002f64:	ff9d18e3          	bne	s10,s9,80002f54 <__printf+0x41c>
    80002f68:	0100006f          	j	80002f78 <__printf+0x440>
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	9e8080e7          	jalr	-1560(ra) # 80002954 <consputc>
    80002f74:	000c8493          	mv	s1,s9
    80002f78:	00094503          	lbu	a0,0(s2)
    80002f7c:	c60510e3          	bnez	a0,80002bdc <__printf+0xa4>
    80002f80:	e40c0ee3          	beqz	s8,80002ddc <__printf+0x2a4>
    80002f84:	00004517          	auipc	a0,0x4
    80002f88:	c5c50513          	addi	a0,a0,-932 # 80006be0 <pr>
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	94c080e7          	jalr	-1716(ra) # 800038d8 <release>
    80002f94:	e49ff06f          	j	80002ddc <__printf+0x2a4>
    80002f98:	f7843783          	ld	a5,-136(s0)
    80002f9c:	03000513          	li	a0,48
    80002fa0:	01000d13          	li	s10,16
    80002fa4:	00878713          	addi	a4,a5,8
    80002fa8:	0007bc83          	ld	s9,0(a5)
    80002fac:	f6e43c23          	sd	a4,-136(s0)
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	9a4080e7          	jalr	-1628(ra) # 80002954 <consputc>
    80002fb8:	07800513          	li	a0,120
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	998080e7          	jalr	-1640(ra) # 80002954 <consputc>
    80002fc4:	00002d97          	auipc	s11,0x2
    80002fc8:	20cd8d93          	addi	s11,s11,524 # 800051d0 <digits>
    80002fcc:	03ccd793          	srli	a5,s9,0x3c
    80002fd0:	00fd87b3          	add	a5,s11,a5
    80002fd4:	0007c503          	lbu	a0,0(a5)
    80002fd8:	fffd0d1b          	addiw	s10,s10,-1
    80002fdc:	004c9c93          	slli	s9,s9,0x4
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	974080e7          	jalr	-1676(ra) # 80002954 <consputc>
    80002fe8:	fe0d12e3          	bnez	s10,80002fcc <__printf+0x494>
    80002fec:	f8dff06f          	j	80002f78 <__printf+0x440>
    80002ff0:	f7843783          	ld	a5,-136(s0)
    80002ff4:	0007bc83          	ld	s9,0(a5)
    80002ff8:	00878793          	addi	a5,a5,8
    80002ffc:	f6f43c23          	sd	a5,-136(s0)
    80003000:	000c9a63          	bnez	s9,80003014 <__printf+0x4dc>
    80003004:	1080006f          	j	8000310c <__printf+0x5d4>
    80003008:	001c8c93          	addi	s9,s9,1
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	948080e7          	jalr	-1720(ra) # 80002954 <consputc>
    80003014:	000cc503          	lbu	a0,0(s9)
    80003018:	fe0518e3          	bnez	a0,80003008 <__printf+0x4d0>
    8000301c:	f5dff06f          	j	80002f78 <__printf+0x440>
    80003020:	02500513          	li	a0,37
    80003024:	00000097          	auipc	ra,0x0
    80003028:	930080e7          	jalr	-1744(ra) # 80002954 <consputc>
    8000302c:	000c8513          	mv	a0,s9
    80003030:	00000097          	auipc	ra,0x0
    80003034:	924080e7          	jalr	-1756(ra) # 80002954 <consputc>
    80003038:	f41ff06f          	j	80002f78 <__printf+0x440>
    8000303c:	02500513          	li	a0,37
    80003040:	00000097          	auipc	ra,0x0
    80003044:	914080e7          	jalr	-1772(ra) # 80002954 <consputc>
    80003048:	f31ff06f          	j	80002f78 <__printf+0x440>
    8000304c:	00030513          	mv	a0,t1
    80003050:	00000097          	auipc	ra,0x0
    80003054:	7bc080e7          	jalr	1980(ra) # 8000380c <acquire>
    80003058:	b4dff06f          	j	80002ba4 <__printf+0x6c>
    8000305c:	40c0053b          	negw	a0,a2
    80003060:	00a00713          	li	a4,10
    80003064:	02e576bb          	remuw	a3,a0,a4
    80003068:	00002d97          	auipc	s11,0x2
    8000306c:	168d8d93          	addi	s11,s11,360 # 800051d0 <digits>
    80003070:	ff700593          	li	a1,-9
    80003074:	02069693          	slli	a3,a3,0x20
    80003078:	0206d693          	srli	a3,a3,0x20
    8000307c:	00dd86b3          	add	a3,s11,a3
    80003080:	0006c683          	lbu	a3,0(a3)
    80003084:	02e557bb          	divuw	a5,a0,a4
    80003088:	f8d40023          	sb	a3,-128(s0)
    8000308c:	10b65e63          	bge	a2,a1,800031a8 <__printf+0x670>
    80003090:	06300593          	li	a1,99
    80003094:	02e7f6bb          	remuw	a3,a5,a4
    80003098:	02069693          	slli	a3,a3,0x20
    8000309c:	0206d693          	srli	a3,a3,0x20
    800030a0:	00dd86b3          	add	a3,s11,a3
    800030a4:	0006c683          	lbu	a3,0(a3)
    800030a8:	02e7d73b          	divuw	a4,a5,a4
    800030ac:	00200793          	li	a5,2
    800030b0:	f8d400a3          	sb	a3,-127(s0)
    800030b4:	bca5ece3          	bltu	a1,a0,80002c8c <__printf+0x154>
    800030b8:	ce5ff06f          	j	80002d9c <__printf+0x264>
    800030bc:	40e007bb          	negw	a5,a4
    800030c0:	00002d97          	auipc	s11,0x2
    800030c4:	110d8d93          	addi	s11,s11,272 # 800051d0 <digits>
    800030c8:	00f7f693          	andi	a3,a5,15
    800030cc:	00dd86b3          	add	a3,s11,a3
    800030d0:	0006c583          	lbu	a1,0(a3)
    800030d4:	ff100613          	li	a2,-15
    800030d8:	0047d69b          	srliw	a3,a5,0x4
    800030dc:	f8b40023          	sb	a1,-128(s0)
    800030e0:	0047d59b          	srliw	a1,a5,0x4
    800030e4:	0ac75e63          	bge	a4,a2,800031a0 <__printf+0x668>
    800030e8:	00f6f693          	andi	a3,a3,15
    800030ec:	00dd86b3          	add	a3,s11,a3
    800030f0:	0006c603          	lbu	a2,0(a3)
    800030f4:	00f00693          	li	a3,15
    800030f8:	0087d79b          	srliw	a5,a5,0x8
    800030fc:	f8c400a3          	sb	a2,-127(s0)
    80003100:	d8b6e4e3          	bltu	a3,a1,80002e88 <__printf+0x350>
    80003104:	00200793          	li	a5,2
    80003108:	e2dff06f          	j	80002f34 <__printf+0x3fc>
    8000310c:	00002c97          	auipc	s9,0x2
    80003110:	0a4c8c93          	addi	s9,s9,164 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    80003114:	02800513          	li	a0,40
    80003118:	ef1ff06f          	j	80003008 <__printf+0x4d0>
    8000311c:	00700793          	li	a5,7
    80003120:	00600c93          	li	s9,6
    80003124:	e0dff06f          	j	80002f30 <__printf+0x3f8>
    80003128:	00700793          	li	a5,7
    8000312c:	00600c93          	li	s9,6
    80003130:	c69ff06f          	j	80002d98 <__printf+0x260>
    80003134:	00300793          	li	a5,3
    80003138:	00200c93          	li	s9,2
    8000313c:	c5dff06f          	j	80002d98 <__printf+0x260>
    80003140:	00300793          	li	a5,3
    80003144:	00200c93          	li	s9,2
    80003148:	de9ff06f          	j	80002f30 <__printf+0x3f8>
    8000314c:	00400793          	li	a5,4
    80003150:	00300c93          	li	s9,3
    80003154:	dddff06f          	j	80002f30 <__printf+0x3f8>
    80003158:	00400793          	li	a5,4
    8000315c:	00300c93          	li	s9,3
    80003160:	c39ff06f          	j	80002d98 <__printf+0x260>
    80003164:	00500793          	li	a5,5
    80003168:	00400c93          	li	s9,4
    8000316c:	c2dff06f          	j	80002d98 <__printf+0x260>
    80003170:	00500793          	li	a5,5
    80003174:	00400c93          	li	s9,4
    80003178:	db9ff06f          	j	80002f30 <__printf+0x3f8>
    8000317c:	00600793          	li	a5,6
    80003180:	00500c93          	li	s9,5
    80003184:	dadff06f          	j	80002f30 <__printf+0x3f8>
    80003188:	00600793          	li	a5,6
    8000318c:	00500c93          	li	s9,5
    80003190:	c09ff06f          	j	80002d98 <__printf+0x260>
    80003194:	00800793          	li	a5,8
    80003198:	00700c93          	li	s9,7
    8000319c:	bfdff06f          	j	80002d98 <__printf+0x260>
    800031a0:	00100793          	li	a5,1
    800031a4:	d91ff06f          	j	80002f34 <__printf+0x3fc>
    800031a8:	00100793          	li	a5,1
    800031ac:	bf1ff06f          	j	80002d9c <__printf+0x264>
    800031b0:	00900793          	li	a5,9
    800031b4:	00800c93          	li	s9,8
    800031b8:	be1ff06f          	j	80002d98 <__printf+0x260>
    800031bc:	00002517          	auipc	a0,0x2
    800031c0:	ffc50513          	addi	a0,a0,-4 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	918080e7          	jalr	-1768(ra) # 80002adc <panic>

00000000800031cc <printfinit>:
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00813823          	sd	s0,16(sp)
    800031d4:	00913423          	sd	s1,8(sp)
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	02010413          	addi	s0,sp,32
    800031e0:	00004497          	auipc	s1,0x4
    800031e4:	a0048493          	addi	s1,s1,-1536 # 80006be0 <pr>
    800031e8:	00048513          	mv	a0,s1
    800031ec:	00002597          	auipc	a1,0x2
    800031f0:	fdc58593          	addi	a1,a1,-36 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	5f4080e7          	jalr	1524(ra) # 800037e8 <initlock>
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	0004ac23          	sw	zero,24(s1)
    80003208:	00813483          	ld	s1,8(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret

0000000080003214 <uartinit>:
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00813423          	sd	s0,8(sp)
    8000321c:	01010413          	addi	s0,sp,16
    80003220:	100007b7          	lui	a5,0x10000
    80003224:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003228:	f8000713          	li	a4,-128
    8000322c:	00e781a3          	sb	a4,3(a5)
    80003230:	00300713          	li	a4,3
    80003234:	00e78023          	sb	a4,0(a5)
    80003238:	000780a3          	sb	zero,1(a5)
    8000323c:	00e781a3          	sb	a4,3(a5)
    80003240:	00700693          	li	a3,7
    80003244:	00d78123          	sb	a3,2(a5)
    80003248:	00e780a3          	sb	a4,1(a5)
    8000324c:	00813403          	ld	s0,8(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret

0000000080003258 <uartputc>:
    80003258:	00002797          	auipc	a5,0x2
    8000325c:	7107a783          	lw	a5,1808(a5) # 80005968 <panicked>
    80003260:	00078463          	beqz	a5,80003268 <uartputc+0x10>
    80003264:	0000006f          	j	80003264 <uartputc+0xc>
    80003268:	fd010113          	addi	sp,sp,-48
    8000326c:	02813023          	sd	s0,32(sp)
    80003270:	00913c23          	sd	s1,24(sp)
    80003274:	01213823          	sd	s2,16(sp)
    80003278:	01313423          	sd	s3,8(sp)
    8000327c:	02113423          	sd	ra,40(sp)
    80003280:	03010413          	addi	s0,sp,48
    80003284:	00002917          	auipc	s2,0x2
    80003288:	6ec90913          	addi	s2,s2,1772 # 80005970 <uart_tx_r>
    8000328c:	00093783          	ld	a5,0(s2)
    80003290:	00002497          	auipc	s1,0x2
    80003294:	6e848493          	addi	s1,s1,1768 # 80005978 <uart_tx_w>
    80003298:	0004b703          	ld	a4,0(s1)
    8000329c:	02078693          	addi	a3,a5,32
    800032a0:	00050993          	mv	s3,a0
    800032a4:	02e69c63          	bne	a3,a4,800032dc <uartputc+0x84>
    800032a8:	00001097          	auipc	ra,0x1
    800032ac:	834080e7          	jalr	-1996(ra) # 80003adc <push_on>
    800032b0:	00093783          	ld	a5,0(s2)
    800032b4:	0004b703          	ld	a4,0(s1)
    800032b8:	02078793          	addi	a5,a5,32
    800032bc:	00e79463          	bne	a5,a4,800032c4 <uartputc+0x6c>
    800032c0:	0000006f          	j	800032c0 <uartputc+0x68>
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	88c080e7          	jalr	-1908(ra) # 80003b50 <pop_on>
    800032cc:	00093783          	ld	a5,0(s2)
    800032d0:	0004b703          	ld	a4,0(s1)
    800032d4:	02078693          	addi	a3,a5,32
    800032d8:	fce688e3          	beq	a3,a4,800032a8 <uartputc+0x50>
    800032dc:	01f77693          	andi	a3,a4,31
    800032e0:	00004597          	auipc	a1,0x4
    800032e4:	92058593          	addi	a1,a1,-1760 # 80006c00 <uart_tx_buf>
    800032e8:	00d586b3          	add	a3,a1,a3
    800032ec:	00170713          	addi	a4,a4,1
    800032f0:	01368023          	sb	s3,0(a3)
    800032f4:	00e4b023          	sd	a4,0(s1)
    800032f8:	10000637          	lui	a2,0x10000
    800032fc:	02f71063          	bne	a4,a5,8000331c <uartputc+0xc4>
    80003300:	0340006f          	j	80003334 <uartputc+0xdc>
    80003304:	00074703          	lbu	a4,0(a4)
    80003308:	00f93023          	sd	a5,0(s2)
    8000330c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003310:	00093783          	ld	a5,0(s2)
    80003314:	0004b703          	ld	a4,0(s1)
    80003318:	00f70e63          	beq	a4,a5,80003334 <uartputc+0xdc>
    8000331c:	00564683          	lbu	a3,5(a2)
    80003320:	01f7f713          	andi	a4,a5,31
    80003324:	00e58733          	add	a4,a1,a4
    80003328:	0206f693          	andi	a3,a3,32
    8000332c:	00178793          	addi	a5,a5,1
    80003330:	fc069ae3          	bnez	a3,80003304 <uartputc+0xac>
    80003334:	02813083          	ld	ra,40(sp)
    80003338:	02013403          	ld	s0,32(sp)
    8000333c:	01813483          	ld	s1,24(sp)
    80003340:	01013903          	ld	s2,16(sp)
    80003344:	00813983          	ld	s3,8(sp)
    80003348:	03010113          	addi	sp,sp,48
    8000334c:	00008067          	ret

0000000080003350 <uartputc_sync>:
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
    8000335c:	00002717          	auipc	a4,0x2
    80003360:	60c72703          	lw	a4,1548(a4) # 80005968 <panicked>
    80003364:	02071663          	bnez	a4,80003390 <uartputc_sync+0x40>
    80003368:	00050793          	mv	a5,a0
    8000336c:	100006b7          	lui	a3,0x10000
    80003370:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003374:	02077713          	andi	a4,a4,32
    80003378:	fe070ce3          	beqz	a4,80003370 <uartputc_sync+0x20>
    8000337c:	0ff7f793          	andi	a5,a5,255
    80003380:	00f68023          	sb	a5,0(a3)
    80003384:	00813403          	ld	s0,8(sp)
    80003388:	01010113          	addi	sp,sp,16
    8000338c:	00008067          	ret
    80003390:	0000006f          	j	80003390 <uartputc_sync+0x40>

0000000080003394 <uartstart>:
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813423          	sd	s0,8(sp)
    8000339c:	01010413          	addi	s0,sp,16
    800033a0:	00002617          	auipc	a2,0x2
    800033a4:	5d060613          	addi	a2,a2,1488 # 80005970 <uart_tx_r>
    800033a8:	00002517          	auipc	a0,0x2
    800033ac:	5d050513          	addi	a0,a0,1488 # 80005978 <uart_tx_w>
    800033b0:	00063783          	ld	a5,0(a2)
    800033b4:	00053703          	ld	a4,0(a0)
    800033b8:	04f70263          	beq	a4,a5,800033fc <uartstart+0x68>
    800033bc:	100005b7          	lui	a1,0x10000
    800033c0:	00004817          	auipc	a6,0x4
    800033c4:	84080813          	addi	a6,a6,-1984 # 80006c00 <uart_tx_buf>
    800033c8:	01c0006f          	j	800033e4 <uartstart+0x50>
    800033cc:	0006c703          	lbu	a4,0(a3)
    800033d0:	00f63023          	sd	a5,0(a2)
    800033d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033d8:	00063783          	ld	a5,0(a2)
    800033dc:	00053703          	ld	a4,0(a0)
    800033e0:	00f70e63          	beq	a4,a5,800033fc <uartstart+0x68>
    800033e4:	01f7f713          	andi	a4,a5,31
    800033e8:	00e806b3          	add	a3,a6,a4
    800033ec:	0055c703          	lbu	a4,5(a1)
    800033f0:	00178793          	addi	a5,a5,1
    800033f4:	02077713          	andi	a4,a4,32
    800033f8:	fc071ae3          	bnez	a4,800033cc <uartstart+0x38>
    800033fc:	00813403          	ld	s0,8(sp)
    80003400:	01010113          	addi	sp,sp,16
    80003404:	00008067          	ret

0000000080003408 <uartgetc>:
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00813423          	sd	s0,8(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	10000737          	lui	a4,0x10000
    80003418:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000341c:	0017f793          	andi	a5,a5,1
    80003420:	00078c63          	beqz	a5,80003438 <uartgetc+0x30>
    80003424:	00074503          	lbu	a0,0(a4)
    80003428:	0ff57513          	andi	a0,a0,255
    8000342c:	00813403          	ld	s0,8(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret
    80003438:	fff00513          	li	a0,-1
    8000343c:	ff1ff06f          	j	8000342c <uartgetc+0x24>

0000000080003440 <uartintr>:
    80003440:	100007b7          	lui	a5,0x10000
    80003444:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003448:	0017f793          	andi	a5,a5,1
    8000344c:	0a078463          	beqz	a5,800034f4 <uartintr+0xb4>
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	100004b7          	lui	s1,0x10000
    80003468:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000346c:	0ff57513          	andi	a0,a0,255
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	534080e7          	jalr	1332(ra) # 800029a4 <consoleintr>
    80003478:	0054c783          	lbu	a5,5(s1)
    8000347c:	0017f793          	andi	a5,a5,1
    80003480:	fe0794e3          	bnez	a5,80003468 <uartintr+0x28>
    80003484:	00002617          	auipc	a2,0x2
    80003488:	4ec60613          	addi	a2,a2,1260 # 80005970 <uart_tx_r>
    8000348c:	00002517          	auipc	a0,0x2
    80003490:	4ec50513          	addi	a0,a0,1260 # 80005978 <uart_tx_w>
    80003494:	00063783          	ld	a5,0(a2)
    80003498:	00053703          	ld	a4,0(a0)
    8000349c:	04f70263          	beq	a4,a5,800034e0 <uartintr+0xa0>
    800034a0:	100005b7          	lui	a1,0x10000
    800034a4:	00003817          	auipc	a6,0x3
    800034a8:	75c80813          	addi	a6,a6,1884 # 80006c00 <uart_tx_buf>
    800034ac:	01c0006f          	j	800034c8 <uartintr+0x88>
    800034b0:	0006c703          	lbu	a4,0(a3)
    800034b4:	00f63023          	sd	a5,0(a2)
    800034b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034bc:	00063783          	ld	a5,0(a2)
    800034c0:	00053703          	ld	a4,0(a0)
    800034c4:	00f70e63          	beq	a4,a5,800034e0 <uartintr+0xa0>
    800034c8:	01f7f713          	andi	a4,a5,31
    800034cc:	00e806b3          	add	a3,a6,a4
    800034d0:	0055c703          	lbu	a4,5(a1)
    800034d4:	00178793          	addi	a5,a5,1
    800034d8:	02077713          	andi	a4,a4,32
    800034dc:	fc071ae3          	bnez	a4,800034b0 <uartintr+0x70>
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret
    800034f4:	00002617          	auipc	a2,0x2
    800034f8:	47c60613          	addi	a2,a2,1148 # 80005970 <uart_tx_r>
    800034fc:	00002517          	auipc	a0,0x2
    80003500:	47c50513          	addi	a0,a0,1148 # 80005978 <uart_tx_w>
    80003504:	00063783          	ld	a5,0(a2)
    80003508:	00053703          	ld	a4,0(a0)
    8000350c:	04f70263          	beq	a4,a5,80003550 <uartintr+0x110>
    80003510:	100005b7          	lui	a1,0x10000
    80003514:	00003817          	auipc	a6,0x3
    80003518:	6ec80813          	addi	a6,a6,1772 # 80006c00 <uart_tx_buf>
    8000351c:	01c0006f          	j	80003538 <uartintr+0xf8>
    80003520:	0006c703          	lbu	a4,0(a3)
    80003524:	00f63023          	sd	a5,0(a2)
    80003528:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000352c:	00063783          	ld	a5,0(a2)
    80003530:	00053703          	ld	a4,0(a0)
    80003534:	02f70063          	beq	a4,a5,80003554 <uartintr+0x114>
    80003538:	01f7f713          	andi	a4,a5,31
    8000353c:	00e806b3          	add	a3,a6,a4
    80003540:	0055c703          	lbu	a4,5(a1)
    80003544:	00178793          	addi	a5,a5,1
    80003548:	02077713          	andi	a4,a4,32
    8000354c:	fc071ae3          	bnez	a4,80003520 <uartintr+0xe0>
    80003550:	00008067          	ret
    80003554:	00008067          	ret

0000000080003558 <kinit>:
    80003558:	fc010113          	addi	sp,sp,-64
    8000355c:	02913423          	sd	s1,40(sp)
    80003560:	fffff7b7          	lui	a5,0xfffff
    80003564:	00004497          	auipc	s1,0x4
    80003568:	6cb48493          	addi	s1,s1,1739 # 80007c2f <end+0xfff>
    8000356c:	02813823          	sd	s0,48(sp)
    80003570:	01313c23          	sd	s3,24(sp)
    80003574:	00f4f4b3          	and	s1,s1,a5
    80003578:	02113c23          	sd	ra,56(sp)
    8000357c:	03213023          	sd	s2,32(sp)
    80003580:	01413823          	sd	s4,16(sp)
    80003584:	01513423          	sd	s5,8(sp)
    80003588:	04010413          	addi	s0,sp,64
    8000358c:	000017b7          	lui	a5,0x1
    80003590:	01100993          	li	s3,17
    80003594:	00f487b3          	add	a5,s1,a5
    80003598:	01b99993          	slli	s3,s3,0x1b
    8000359c:	06f9e063          	bltu	s3,a5,800035fc <kinit+0xa4>
    800035a0:	00003a97          	auipc	s5,0x3
    800035a4:	690a8a93          	addi	s5,s5,1680 # 80006c30 <end>
    800035a8:	0754ec63          	bltu	s1,s5,80003620 <kinit+0xc8>
    800035ac:	0734fa63          	bgeu	s1,s3,80003620 <kinit+0xc8>
    800035b0:	00088a37          	lui	s4,0x88
    800035b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800035b8:	00002917          	auipc	s2,0x2
    800035bc:	3c890913          	addi	s2,s2,968 # 80005980 <kmem>
    800035c0:	00ca1a13          	slli	s4,s4,0xc
    800035c4:	0140006f          	j	800035d8 <kinit+0x80>
    800035c8:	000017b7          	lui	a5,0x1
    800035cc:	00f484b3          	add	s1,s1,a5
    800035d0:	0554e863          	bltu	s1,s5,80003620 <kinit+0xc8>
    800035d4:	0534f663          	bgeu	s1,s3,80003620 <kinit+0xc8>
    800035d8:	00001637          	lui	a2,0x1
    800035dc:	00100593          	li	a1,1
    800035e0:	00048513          	mv	a0,s1
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	5e4080e7          	jalr	1508(ra) # 80003bc8 <__memset>
    800035ec:	00093783          	ld	a5,0(s2)
    800035f0:	00f4b023          	sd	a5,0(s1)
    800035f4:	00993023          	sd	s1,0(s2)
    800035f8:	fd4498e3          	bne	s1,s4,800035c8 <kinit+0x70>
    800035fc:	03813083          	ld	ra,56(sp)
    80003600:	03013403          	ld	s0,48(sp)
    80003604:	02813483          	ld	s1,40(sp)
    80003608:	02013903          	ld	s2,32(sp)
    8000360c:	01813983          	ld	s3,24(sp)
    80003610:	01013a03          	ld	s4,16(sp)
    80003614:	00813a83          	ld	s5,8(sp)
    80003618:	04010113          	addi	sp,sp,64
    8000361c:	00008067          	ret
    80003620:	00002517          	auipc	a0,0x2
    80003624:	bc850513          	addi	a0,a0,-1080 # 800051e8 <digits+0x18>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	4b4080e7          	jalr	1204(ra) # 80002adc <panic>

0000000080003630 <freerange>:
    80003630:	fc010113          	addi	sp,sp,-64
    80003634:	000017b7          	lui	a5,0x1
    80003638:	02913423          	sd	s1,40(sp)
    8000363c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003640:	009504b3          	add	s1,a0,s1
    80003644:	fffff537          	lui	a0,0xfffff
    80003648:	02813823          	sd	s0,48(sp)
    8000364c:	02113c23          	sd	ra,56(sp)
    80003650:	03213023          	sd	s2,32(sp)
    80003654:	01313c23          	sd	s3,24(sp)
    80003658:	01413823          	sd	s4,16(sp)
    8000365c:	01513423          	sd	s5,8(sp)
    80003660:	01613023          	sd	s6,0(sp)
    80003664:	04010413          	addi	s0,sp,64
    80003668:	00a4f4b3          	and	s1,s1,a0
    8000366c:	00f487b3          	add	a5,s1,a5
    80003670:	06f5e463          	bltu	a1,a5,800036d8 <freerange+0xa8>
    80003674:	00003a97          	auipc	s5,0x3
    80003678:	5bca8a93          	addi	s5,s5,1468 # 80006c30 <end>
    8000367c:	0954e263          	bltu	s1,s5,80003700 <freerange+0xd0>
    80003680:	01100993          	li	s3,17
    80003684:	01b99993          	slli	s3,s3,0x1b
    80003688:	0734fc63          	bgeu	s1,s3,80003700 <freerange+0xd0>
    8000368c:	00058a13          	mv	s4,a1
    80003690:	00002917          	auipc	s2,0x2
    80003694:	2f090913          	addi	s2,s2,752 # 80005980 <kmem>
    80003698:	00002b37          	lui	s6,0x2
    8000369c:	0140006f          	j	800036b0 <freerange+0x80>
    800036a0:	000017b7          	lui	a5,0x1
    800036a4:	00f484b3          	add	s1,s1,a5
    800036a8:	0554ec63          	bltu	s1,s5,80003700 <freerange+0xd0>
    800036ac:	0534fa63          	bgeu	s1,s3,80003700 <freerange+0xd0>
    800036b0:	00001637          	lui	a2,0x1
    800036b4:	00100593          	li	a1,1
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00000097          	auipc	ra,0x0
    800036c0:	50c080e7          	jalr	1292(ra) # 80003bc8 <__memset>
    800036c4:	00093703          	ld	a4,0(s2)
    800036c8:	016487b3          	add	a5,s1,s6
    800036cc:	00e4b023          	sd	a4,0(s1)
    800036d0:	00993023          	sd	s1,0(s2)
    800036d4:	fcfa76e3          	bgeu	s4,a5,800036a0 <freerange+0x70>
    800036d8:	03813083          	ld	ra,56(sp)
    800036dc:	03013403          	ld	s0,48(sp)
    800036e0:	02813483          	ld	s1,40(sp)
    800036e4:	02013903          	ld	s2,32(sp)
    800036e8:	01813983          	ld	s3,24(sp)
    800036ec:	01013a03          	ld	s4,16(sp)
    800036f0:	00813a83          	ld	s5,8(sp)
    800036f4:	00013b03          	ld	s6,0(sp)
    800036f8:	04010113          	addi	sp,sp,64
    800036fc:	00008067          	ret
    80003700:	00002517          	auipc	a0,0x2
    80003704:	ae850513          	addi	a0,a0,-1304 # 800051e8 <digits+0x18>
    80003708:	fffff097          	auipc	ra,0xfffff
    8000370c:	3d4080e7          	jalr	980(ra) # 80002adc <panic>

0000000080003710 <kfree>:
    80003710:	fe010113          	addi	sp,sp,-32
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	02010413          	addi	s0,sp,32
    80003724:	03451793          	slli	a5,a0,0x34
    80003728:	04079c63          	bnez	a5,80003780 <kfree+0x70>
    8000372c:	00003797          	auipc	a5,0x3
    80003730:	50478793          	addi	a5,a5,1284 # 80006c30 <end>
    80003734:	00050493          	mv	s1,a0
    80003738:	04f56463          	bltu	a0,a5,80003780 <kfree+0x70>
    8000373c:	01100793          	li	a5,17
    80003740:	01b79793          	slli	a5,a5,0x1b
    80003744:	02f57e63          	bgeu	a0,a5,80003780 <kfree+0x70>
    80003748:	00001637          	lui	a2,0x1
    8000374c:	00100593          	li	a1,1
    80003750:	00000097          	auipc	ra,0x0
    80003754:	478080e7          	jalr	1144(ra) # 80003bc8 <__memset>
    80003758:	00002797          	auipc	a5,0x2
    8000375c:	22878793          	addi	a5,a5,552 # 80005980 <kmem>
    80003760:	0007b703          	ld	a4,0(a5)
    80003764:	01813083          	ld	ra,24(sp)
    80003768:	01013403          	ld	s0,16(sp)
    8000376c:	00e4b023          	sd	a4,0(s1)
    80003770:	0097b023          	sd	s1,0(a5)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret
    80003780:	00002517          	auipc	a0,0x2
    80003784:	a6850513          	addi	a0,a0,-1432 # 800051e8 <digits+0x18>
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	354080e7          	jalr	852(ra) # 80002adc <panic>

0000000080003790 <kalloc>:
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	00002797          	auipc	a5,0x2
    800037a8:	1dc78793          	addi	a5,a5,476 # 80005980 <kmem>
    800037ac:	0007b483          	ld	s1,0(a5)
    800037b0:	02048063          	beqz	s1,800037d0 <kalloc+0x40>
    800037b4:	0004b703          	ld	a4,0(s1)
    800037b8:	00001637          	lui	a2,0x1
    800037bc:	00500593          	li	a1,5
    800037c0:	00048513          	mv	a0,s1
    800037c4:	00e7b023          	sd	a4,0(a5)
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	400080e7          	jalr	1024(ra) # 80003bc8 <__memset>
    800037d0:	01813083          	ld	ra,24(sp)
    800037d4:	01013403          	ld	s0,16(sp)
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <initlock>:
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00813423          	sd	s0,8(sp)
    800037f0:	01010413          	addi	s0,sp,16
    800037f4:	00813403          	ld	s0,8(sp)
    800037f8:	00b53423          	sd	a1,8(a0)
    800037fc:	00052023          	sw	zero,0(a0)
    80003800:	00053823          	sd	zero,16(a0)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret

000000008000380c <acquire>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	01213023          	sd	s2,0(sp)
    80003820:	02010413          	addi	s0,sp,32
    80003824:	00050493          	mv	s1,a0
    80003828:	10002973          	csrr	s2,sstatus
    8000382c:	100027f3          	csrr	a5,sstatus
    80003830:	ffd7f793          	andi	a5,a5,-3
    80003834:	10079073          	csrw	sstatus,a5
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	8e0080e7          	jalr	-1824(ra) # 80002118 <mycpu>
    80003840:	07852783          	lw	a5,120(a0)
    80003844:	06078e63          	beqz	a5,800038c0 <acquire+0xb4>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	8d0080e7          	jalr	-1840(ra) # 80002118 <mycpu>
    80003850:	07852783          	lw	a5,120(a0)
    80003854:	0004a703          	lw	a4,0(s1)
    80003858:	0017879b          	addiw	a5,a5,1
    8000385c:	06f52c23          	sw	a5,120(a0)
    80003860:	04071063          	bnez	a4,800038a0 <acquire+0x94>
    80003864:	00100713          	li	a4,1
    80003868:	00070793          	mv	a5,a4
    8000386c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003870:	0007879b          	sext.w	a5,a5
    80003874:	fe079ae3          	bnez	a5,80003868 <acquire+0x5c>
    80003878:	0ff0000f          	fence
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	89c080e7          	jalr	-1892(ra) # 80002118 <mycpu>
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00a4b823          	sd	a0,16(s1)
    80003890:	00013903          	ld	s2,0(sp)
    80003894:	00813483          	ld	s1,8(sp)
    80003898:	02010113          	addi	sp,sp,32
    8000389c:	00008067          	ret
    800038a0:	0104b903          	ld	s2,16(s1)
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	874080e7          	jalr	-1932(ra) # 80002118 <mycpu>
    800038ac:	faa91ce3          	bne	s2,a0,80003864 <acquire+0x58>
    800038b0:	00002517          	auipc	a0,0x2
    800038b4:	94050513          	addi	a0,a0,-1728 # 800051f0 <digits+0x20>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	224080e7          	jalr	548(ra) # 80002adc <panic>
    800038c0:	00195913          	srli	s2,s2,0x1
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	854080e7          	jalr	-1964(ra) # 80002118 <mycpu>
    800038cc:	00197913          	andi	s2,s2,1
    800038d0:	07252e23          	sw	s2,124(a0)
    800038d4:	f75ff06f          	j	80003848 <acquire+0x3c>

00000000800038d8 <release>:
    800038d8:	fe010113          	addi	sp,sp,-32
    800038dc:	00813823          	sd	s0,16(sp)
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	00913423          	sd	s1,8(sp)
    800038e8:	01213023          	sd	s2,0(sp)
    800038ec:	02010413          	addi	s0,sp,32
    800038f0:	00052783          	lw	a5,0(a0)
    800038f4:	00079a63          	bnez	a5,80003908 <release+0x30>
    800038f8:	00002517          	auipc	a0,0x2
    800038fc:	90050513          	addi	a0,a0,-1792 # 800051f8 <digits+0x28>
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	1dc080e7          	jalr	476(ra) # 80002adc <panic>
    80003908:	01053903          	ld	s2,16(a0)
    8000390c:	00050493          	mv	s1,a0
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	808080e7          	jalr	-2040(ra) # 80002118 <mycpu>
    80003918:	fea910e3          	bne	s2,a0,800038f8 <release+0x20>
    8000391c:	0004b823          	sd	zero,16(s1)
    80003920:	0ff0000f          	fence
    80003924:	0f50000f          	fence	iorw,ow
    80003928:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	7ec080e7          	jalr	2028(ra) # 80002118 <mycpu>
    80003934:	100027f3          	csrr	a5,sstatus
    80003938:	0027f793          	andi	a5,a5,2
    8000393c:	04079a63          	bnez	a5,80003990 <release+0xb8>
    80003940:	07852783          	lw	a5,120(a0)
    80003944:	02f05e63          	blez	a5,80003980 <release+0xa8>
    80003948:	fff7871b          	addiw	a4,a5,-1
    8000394c:	06e52c23          	sw	a4,120(a0)
    80003950:	00071c63          	bnez	a4,80003968 <release+0x90>
    80003954:	07c52783          	lw	a5,124(a0)
    80003958:	00078863          	beqz	a5,80003968 <release+0x90>
    8000395c:	100027f3          	csrr	a5,sstatus
    80003960:	0027e793          	ori	a5,a5,2
    80003964:	10079073          	csrw	sstatus,a5
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	00013903          	ld	s2,0(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret
    80003980:	00002517          	auipc	a0,0x2
    80003984:	89850513          	addi	a0,a0,-1896 # 80005218 <digits+0x48>
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	154080e7          	jalr	340(ra) # 80002adc <panic>
    80003990:	00002517          	auipc	a0,0x2
    80003994:	87050513          	addi	a0,a0,-1936 # 80005200 <digits+0x30>
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	144080e7          	jalr	324(ra) # 80002adc <panic>

00000000800039a0 <holding>:
    800039a0:	00052783          	lw	a5,0(a0)
    800039a4:	00079663          	bnez	a5,800039b0 <holding+0x10>
    800039a8:	00000513          	li	a0,0
    800039ac:	00008067          	ret
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	00113c23          	sd	ra,24(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	01053483          	ld	s1,16(a0)
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	750080e7          	jalr	1872(ra) # 80002118 <mycpu>
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	40a48533          	sub	a0,s1,a0
    800039dc:	00153513          	seqz	a0,a0
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret

00000000800039ec <push_off>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	100024f3          	csrr	s1,sstatus
    80003a04:	100027f3          	csrr	a5,sstatus
    80003a08:	ffd7f793          	andi	a5,a5,-3
    80003a0c:	10079073          	csrw	sstatus,a5
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	708080e7          	jalr	1800(ra) # 80002118 <mycpu>
    80003a18:	07852783          	lw	a5,120(a0)
    80003a1c:	02078663          	beqz	a5,80003a48 <push_off+0x5c>
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	6f8080e7          	jalr	1784(ra) # 80002118 <mycpu>
    80003a28:	07852783          	lw	a5,120(a0)
    80003a2c:	01813083          	ld	ra,24(sp)
    80003a30:	01013403          	ld	s0,16(sp)
    80003a34:	0017879b          	addiw	a5,a5,1
    80003a38:	06f52c23          	sw	a5,120(a0)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret
    80003a48:	0014d493          	srli	s1,s1,0x1
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	6cc080e7          	jalr	1740(ra) # 80002118 <mycpu>
    80003a54:	0014f493          	andi	s1,s1,1
    80003a58:	06952e23          	sw	s1,124(a0)
    80003a5c:	fc5ff06f          	j	80003a20 <push_off+0x34>

0000000080003a60 <pop_off>:
    80003a60:	ff010113          	addi	sp,sp,-16
    80003a64:	00813023          	sd	s0,0(sp)
    80003a68:	00113423          	sd	ra,8(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	6a8080e7          	jalr	1704(ra) # 80002118 <mycpu>
    80003a78:	100027f3          	csrr	a5,sstatus
    80003a7c:	0027f793          	andi	a5,a5,2
    80003a80:	04079663          	bnez	a5,80003acc <pop_off+0x6c>
    80003a84:	07852783          	lw	a5,120(a0)
    80003a88:	02f05a63          	blez	a5,80003abc <pop_off+0x5c>
    80003a8c:	fff7871b          	addiw	a4,a5,-1
    80003a90:	06e52c23          	sw	a4,120(a0)
    80003a94:	00071c63          	bnez	a4,80003aac <pop_off+0x4c>
    80003a98:	07c52783          	lw	a5,124(a0)
    80003a9c:	00078863          	beqz	a5,80003aac <pop_off+0x4c>
    80003aa0:	100027f3          	csrr	a5,sstatus
    80003aa4:	0027e793          	ori	a5,a5,2
    80003aa8:	10079073          	csrw	sstatus,a5
    80003aac:	00813083          	ld	ra,8(sp)
    80003ab0:	00013403          	ld	s0,0(sp)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret
    80003abc:	00001517          	auipc	a0,0x1
    80003ac0:	75c50513          	addi	a0,a0,1884 # 80005218 <digits+0x48>
    80003ac4:	fffff097          	auipc	ra,0xfffff
    80003ac8:	018080e7          	jalr	24(ra) # 80002adc <panic>
    80003acc:	00001517          	auipc	a0,0x1
    80003ad0:	73450513          	addi	a0,a0,1844 # 80005200 <digits+0x30>
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	008080e7          	jalr	8(ra) # 80002adc <panic>

0000000080003adc <push_on>:
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	100024f3          	csrr	s1,sstatus
    80003af4:	100027f3          	csrr	a5,sstatus
    80003af8:	0027e793          	ori	a5,a5,2
    80003afc:	10079073          	csrw	sstatus,a5
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	618080e7          	jalr	1560(ra) # 80002118 <mycpu>
    80003b08:	07852783          	lw	a5,120(a0)
    80003b0c:	02078663          	beqz	a5,80003b38 <push_on+0x5c>
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	608080e7          	jalr	1544(ra) # 80002118 <mycpu>
    80003b18:	07852783          	lw	a5,120(a0)
    80003b1c:	01813083          	ld	ra,24(sp)
    80003b20:	01013403          	ld	s0,16(sp)
    80003b24:	0017879b          	addiw	a5,a5,1
    80003b28:	06f52c23          	sw	a5,120(a0)
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret
    80003b38:	0014d493          	srli	s1,s1,0x1
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	5dc080e7          	jalr	1500(ra) # 80002118 <mycpu>
    80003b44:	0014f493          	andi	s1,s1,1
    80003b48:	06952e23          	sw	s1,124(a0)
    80003b4c:	fc5ff06f          	j	80003b10 <push_on+0x34>

0000000080003b50 <pop_on>:
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00813023          	sd	s0,0(sp)
    80003b58:	00113423          	sd	ra,8(sp)
    80003b5c:	01010413          	addi	s0,sp,16
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	5b8080e7          	jalr	1464(ra) # 80002118 <mycpu>
    80003b68:	100027f3          	csrr	a5,sstatus
    80003b6c:	0027f793          	andi	a5,a5,2
    80003b70:	04078463          	beqz	a5,80003bb8 <pop_on+0x68>
    80003b74:	07852783          	lw	a5,120(a0)
    80003b78:	02f05863          	blez	a5,80003ba8 <pop_on+0x58>
    80003b7c:	fff7879b          	addiw	a5,a5,-1
    80003b80:	06f52c23          	sw	a5,120(a0)
    80003b84:	07853783          	ld	a5,120(a0)
    80003b88:	00079863          	bnez	a5,80003b98 <pop_on+0x48>
    80003b8c:	100027f3          	csrr	a5,sstatus
    80003b90:	ffd7f793          	andi	a5,a5,-3
    80003b94:	10079073          	csrw	sstatus,a5
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret
    80003ba8:	00001517          	auipc	a0,0x1
    80003bac:	69850513          	addi	a0,a0,1688 # 80005240 <digits+0x70>
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	f2c080e7          	jalr	-212(ra) # 80002adc <panic>
    80003bb8:	00001517          	auipc	a0,0x1
    80003bbc:	66850513          	addi	a0,a0,1640 # 80005220 <digits+0x50>
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	f1c080e7          	jalr	-228(ra) # 80002adc <panic>

0000000080003bc8 <__memset>:
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813423          	sd	s0,8(sp)
    80003bd0:	01010413          	addi	s0,sp,16
    80003bd4:	1a060e63          	beqz	a2,80003d90 <__memset+0x1c8>
    80003bd8:	40a007b3          	neg	a5,a0
    80003bdc:	0077f793          	andi	a5,a5,7
    80003be0:	00778693          	addi	a3,a5,7
    80003be4:	00b00813          	li	a6,11
    80003be8:	0ff5f593          	andi	a1,a1,255
    80003bec:	fff6071b          	addiw	a4,a2,-1
    80003bf0:	1b06e663          	bltu	a3,a6,80003d9c <__memset+0x1d4>
    80003bf4:	1cd76463          	bltu	a4,a3,80003dbc <__memset+0x1f4>
    80003bf8:	1a078e63          	beqz	a5,80003db4 <__memset+0x1ec>
    80003bfc:	00b50023          	sb	a1,0(a0)
    80003c00:	00100713          	li	a4,1
    80003c04:	1ae78463          	beq	a5,a4,80003dac <__memset+0x1e4>
    80003c08:	00b500a3          	sb	a1,1(a0)
    80003c0c:	00200713          	li	a4,2
    80003c10:	1ae78a63          	beq	a5,a4,80003dc4 <__memset+0x1fc>
    80003c14:	00b50123          	sb	a1,2(a0)
    80003c18:	00300713          	li	a4,3
    80003c1c:	18e78463          	beq	a5,a4,80003da4 <__memset+0x1dc>
    80003c20:	00b501a3          	sb	a1,3(a0)
    80003c24:	00400713          	li	a4,4
    80003c28:	1ae78263          	beq	a5,a4,80003dcc <__memset+0x204>
    80003c2c:	00b50223          	sb	a1,4(a0)
    80003c30:	00500713          	li	a4,5
    80003c34:	1ae78063          	beq	a5,a4,80003dd4 <__memset+0x20c>
    80003c38:	00b502a3          	sb	a1,5(a0)
    80003c3c:	00700713          	li	a4,7
    80003c40:	18e79e63          	bne	a5,a4,80003ddc <__memset+0x214>
    80003c44:	00b50323          	sb	a1,6(a0)
    80003c48:	00700e93          	li	t4,7
    80003c4c:	00859713          	slli	a4,a1,0x8
    80003c50:	00e5e733          	or	a4,a1,a4
    80003c54:	01059e13          	slli	t3,a1,0x10
    80003c58:	01c76e33          	or	t3,a4,t3
    80003c5c:	01859313          	slli	t1,a1,0x18
    80003c60:	006e6333          	or	t1,t3,t1
    80003c64:	02059893          	slli	a7,a1,0x20
    80003c68:	40f60e3b          	subw	t3,a2,a5
    80003c6c:	011368b3          	or	a7,t1,a7
    80003c70:	02859813          	slli	a6,a1,0x28
    80003c74:	0108e833          	or	a6,a7,a6
    80003c78:	03059693          	slli	a3,a1,0x30
    80003c7c:	003e589b          	srliw	a7,t3,0x3
    80003c80:	00d866b3          	or	a3,a6,a3
    80003c84:	03859713          	slli	a4,a1,0x38
    80003c88:	00389813          	slli	a6,a7,0x3
    80003c8c:	00f507b3          	add	a5,a0,a5
    80003c90:	00e6e733          	or	a4,a3,a4
    80003c94:	000e089b          	sext.w	a7,t3
    80003c98:	00f806b3          	add	a3,a6,a5
    80003c9c:	00e7b023          	sd	a4,0(a5)
    80003ca0:	00878793          	addi	a5,a5,8
    80003ca4:	fed79ce3          	bne	a5,a3,80003c9c <__memset+0xd4>
    80003ca8:	ff8e7793          	andi	a5,t3,-8
    80003cac:	0007871b          	sext.w	a4,a5
    80003cb0:	01d787bb          	addw	a5,a5,t4
    80003cb4:	0ce88e63          	beq	a7,a4,80003d90 <__memset+0x1c8>
    80003cb8:	00f50733          	add	a4,a0,a5
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	0017871b          	addiw	a4,a5,1
    80003cc4:	0cc77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0027871b          	addiw	a4,a5,2
    80003cd4:	0ac77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0037871b          	addiw	a4,a5,3
    80003ce4:	0ac77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	0047871b          	addiw	a4,a5,4
    80003cf4:	08c77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	0057871b          	addiw	a4,a5,5
    80003d04:	08c77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	0067871b          	addiw	a4,a5,6
    80003d14:	06c77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	0077871b          	addiw	a4,a5,7
    80003d24:	06c77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0087871b          	addiw	a4,a5,8
    80003d34:	04c77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0097871b          	addiw	a4,a5,9
    80003d44:	04c77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	00a7871b          	addiw	a4,a5,10
    80003d54:	02c77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	00b7871b          	addiw	a4,a5,11
    80003d64:	02c77663          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	00c7871b          	addiw	a4,a5,12
    80003d74:	00c77e63          	bgeu	a4,a2,80003d90 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	00d7879b          	addiw	a5,a5,13
    80003d84:	00c7f663          	bgeu	a5,a2,80003d90 <__memset+0x1c8>
    80003d88:	00f507b3          	add	a5,a0,a5
    80003d8c:	00b78023          	sb	a1,0(a5)
    80003d90:	00813403          	ld	s0,8(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    80003d9c:	00b00693          	li	a3,11
    80003da0:	e55ff06f          	j	80003bf4 <__memset+0x2c>
    80003da4:	00300e93          	li	t4,3
    80003da8:	ea5ff06f          	j	80003c4c <__memset+0x84>
    80003dac:	00100e93          	li	t4,1
    80003db0:	e9dff06f          	j	80003c4c <__memset+0x84>
    80003db4:	00000e93          	li	t4,0
    80003db8:	e95ff06f          	j	80003c4c <__memset+0x84>
    80003dbc:	00000793          	li	a5,0
    80003dc0:	ef9ff06f          	j	80003cb8 <__memset+0xf0>
    80003dc4:	00200e93          	li	t4,2
    80003dc8:	e85ff06f          	j	80003c4c <__memset+0x84>
    80003dcc:	00400e93          	li	t4,4
    80003dd0:	e7dff06f          	j	80003c4c <__memset+0x84>
    80003dd4:	00500e93          	li	t4,5
    80003dd8:	e75ff06f          	j	80003c4c <__memset+0x84>
    80003ddc:	00600e93          	li	t4,6
    80003de0:	e6dff06f          	j	80003c4c <__memset+0x84>

0000000080003de4 <__memmove>:
    80003de4:	ff010113          	addi	sp,sp,-16
    80003de8:	00813423          	sd	s0,8(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	0e060863          	beqz	a2,80003ee0 <__memmove+0xfc>
    80003df4:	fff6069b          	addiw	a3,a2,-1
    80003df8:	0006881b          	sext.w	a6,a3
    80003dfc:	0ea5e863          	bltu	a1,a0,80003eec <__memmove+0x108>
    80003e00:	00758713          	addi	a4,a1,7
    80003e04:	00a5e7b3          	or	a5,a1,a0
    80003e08:	40a70733          	sub	a4,a4,a0
    80003e0c:	0077f793          	andi	a5,a5,7
    80003e10:	00f73713          	sltiu	a4,a4,15
    80003e14:	00174713          	xori	a4,a4,1
    80003e18:	0017b793          	seqz	a5,a5
    80003e1c:	00e7f7b3          	and	a5,a5,a4
    80003e20:	10078863          	beqz	a5,80003f30 <__memmove+0x14c>
    80003e24:	00900793          	li	a5,9
    80003e28:	1107f463          	bgeu	a5,a6,80003f30 <__memmove+0x14c>
    80003e2c:	0036581b          	srliw	a6,a2,0x3
    80003e30:	fff8081b          	addiw	a6,a6,-1
    80003e34:	02081813          	slli	a6,a6,0x20
    80003e38:	01d85893          	srli	a7,a6,0x1d
    80003e3c:	00858813          	addi	a6,a1,8
    80003e40:	00058793          	mv	a5,a1
    80003e44:	00050713          	mv	a4,a0
    80003e48:	01088833          	add	a6,a7,a6
    80003e4c:	0007b883          	ld	a7,0(a5)
    80003e50:	00878793          	addi	a5,a5,8
    80003e54:	00870713          	addi	a4,a4,8
    80003e58:	ff173c23          	sd	a7,-8(a4)
    80003e5c:	ff0798e3          	bne	a5,a6,80003e4c <__memmove+0x68>
    80003e60:	ff867713          	andi	a4,a2,-8
    80003e64:	02071793          	slli	a5,a4,0x20
    80003e68:	0207d793          	srli	a5,a5,0x20
    80003e6c:	00f585b3          	add	a1,a1,a5
    80003e70:	40e686bb          	subw	a3,a3,a4
    80003e74:	00f507b3          	add	a5,a0,a5
    80003e78:	06e60463          	beq	a2,a4,80003ee0 <__memmove+0xfc>
    80003e7c:	0005c703          	lbu	a4,0(a1)
    80003e80:	00e78023          	sb	a4,0(a5)
    80003e84:	04068e63          	beqz	a3,80003ee0 <__memmove+0xfc>
    80003e88:	0015c603          	lbu	a2,1(a1)
    80003e8c:	00100713          	li	a4,1
    80003e90:	00c780a3          	sb	a2,1(a5)
    80003e94:	04e68663          	beq	a3,a4,80003ee0 <__memmove+0xfc>
    80003e98:	0025c603          	lbu	a2,2(a1)
    80003e9c:	00200713          	li	a4,2
    80003ea0:	00c78123          	sb	a2,2(a5)
    80003ea4:	02e68e63          	beq	a3,a4,80003ee0 <__memmove+0xfc>
    80003ea8:	0035c603          	lbu	a2,3(a1)
    80003eac:	00300713          	li	a4,3
    80003eb0:	00c781a3          	sb	a2,3(a5)
    80003eb4:	02e68663          	beq	a3,a4,80003ee0 <__memmove+0xfc>
    80003eb8:	0045c603          	lbu	a2,4(a1)
    80003ebc:	00400713          	li	a4,4
    80003ec0:	00c78223          	sb	a2,4(a5)
    80003ec4:	00e68e63          	beq	a3,a4,80003ee0 <__memmove+0xfc>
    80003ec8:	0055c603          	lbu	a2,5(a1)
    80003ecc:	00500713          	li	a4,5
    80003ed0:	00c782a3          	sb	a2,5(a5)
    80003ed4:	00e68663          	beq	a3,a4,80003ee0 <__memmove+0xfc>
    80003ed8:	0065c703          	lbu	a4,6(a1)
    80003edc:	00e78323          	sb	a4,6(a5)
    80003ee0:	00813403          	ld	s0,8(sp)
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00008067          	ret
    80003eec:	02061713          	slli	a4,a2,0x20
    80003ef0:	02075713          	srli	a4,a4,0x20
    80003ef4:	00e587b3          	add	a5,a1,a4
    80003ef8:	f0f574e3          	bgeu	a0,a5,80003e00 <__memmove+0x1c>
    80003efc:	02069613          	slli	a2,a3,0x20
    80003f00:	02065613          	srli	a2,a2,0x20
    80003f04:	fff64613          	not	a2,a2
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00c78633          	add	a2,a5,a2
    80003f10:	fff7c683          	lbu	a3,-1(a5)
    80003f14:	fff78793          	addi	a5,a5,-1
    80003f18:	fff70713          	addi	a4,a4,-1
    80003f1c:	00d70023          	sb	a3,0(a4)
    80003f20:	fec798e3          	bne	a5,a2,80003f10 <__memmove+0x12c>
    80003f24:	00813403          	ld	s0,8(sp)
    80003f28:	01010113          	addi	sp,sp,16
    80003f2c:	00008067          	ret
    80003f30:	02069713          	slli	a4,a3,0x20
    80003f34:	02075713          	srli	a4,a4,0x20
    80003f38:	00170713          	addi	a4,a4,1
    80003f3c:	00e50733          	add	a4,a0,a4
    80003f40:	00050793          	mv	a5,a0
    80003f44:	0005c683          	lbu	a3,0(a1)
    80003f48:	00178793          	addi	a5,a5,1
    80003f4c:	00158593          	addi	a1,a1,1
    80003f50:	fed78fa3          	sb	a3,-1(a5)
    80003f54:	fee798e3          	bne	a5,a4,80003f44 <__memmove+0x160>
    80003f58:	f89ff06f          	j	80003ee0 <__memmove+0xfc>

0000000080003f5c <__mem_free>:
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00813423          	sd	s0,8(sp)
    80003f64:	01010413          	addi	s0,sp,16
    80003f68:	00002597          	auipc	a1,0x2
    80003f6c:	a2058593          	addi	a1,a1,-1504 # 80005988 <freep>
    80003f70:	0005b783          	ld	a5,0(a1)
    80003f74:	ff050693          	addi	a3,a0,-16
    80003f78:	0007b703          	ld	a4,0(a5)
    80003f7c:	00d7fc63          	bgeu	a5,a3,80003f94 <__mem_free+0x38>
    80003f80:	00e6ee63          	bltu	a3,a4,80003f9c <__mem_free+0x40>
    80003f84:	00e7fc63          	bgeu	a5,a4,80003f9c <__mem_free+0x40>
    80003f88:	00070793          	mv	a5,a4
    80003f8c:	0007b703          	ld	a4,0(a5)
    80003f90:	fed7e8e3          	bltu	a5,a3,80003f80 <__mem_free+0x24>
    80003f94:	fee7eae3          	bltu	a5,a4,80003f88 <__mem_free+0x2c>
    80003f98:	fee6f8e3          	bgeu	a3,a4,80003f88 <__mem_free+0x2c>
    80003f9c:	ff852803          	lw	a6,-8(a0)
    80003fa0:	02081613          	slli	a2,a6,0x20
    80003fa4:	01c65613          	srli	a2,a2,0x1c
    80003fa8:	00c68633          	add	a2,a3,a2
    80003fac:	02c70a63          	beq	a4,a2,80003fe0 <__mem_free+0x84>
    80003fb0:	fee53823          	sd	a4,-16(a0)
    80003fb4:	0087a503          	lw	a0,8(a5)
    80003fb8:	02051613          	slli	a2,a0,0x20
    80003fbc:	01c65613          	srli	a2,a2,0x1c
    80003fc0:	00c78633          	add	a2,a5,a2
    80003fc4:	04c68263          	beq	a3,a2,80004008 <__mem_free+0xac>
    80003fc8:	00813403          	ld	s0,8(sp)
    80003fcc:	00d7b023          	sd	a3,0(a5)
    80003fd0:	00f5b023          	sd	a5,0(a1)
    80003fd4:	00000513          	li	a0,0
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret
    80003fe0:	00872603          	lw	a2,8(a4)
    80003fe4:	00073703          	ld	a4,0(a4)
    80003fe8:	0106083b          	addw	a6,a2,a6
    80003fec:	ff052c23          	sw	a6,-8(a0)
    80003ff0:	fee53823          	sd	a4,-16(a0)
    80003ff4:	0087a503          	lw	a0,8(a5)
    80003ff8:	02051613          	slli	a2,a0,0x20
    80003ffc:	01c65613          	srli	a2,a2,0x1c
    80004000:	00c78633          	add	a2,a5,a2
    80004004:	fcc692e3          	bne	a3,a2,80003fc8 <__mem_free+0x6c>
    80004008:	00813403          	ld	s0,8(sp)
    8000400c:	0105053b          	addw	a0,a0,a6
    80004010:	00a7a423          	sw	a0,8(a5)
    80004014:	00e7b023          	sd	a4,0(a5)
    80004018:	00f5b023          	sd	a5,0(a1)
    8000401c:	00000513          	li	a0,0
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <__mem_alloc>:
    80004028:	fc010113          	addi	sp,sp,-64
    8000402c:	02813823          	sd	s0,48(sp)
    80004030:	02913423          	sd	s1,40(sp)
    80004034:	03213023          	sd	s2,32(sp)
    80004038:	01513423          	sd	s5,8(sp)
    8000403c:	02113c23          	sd	ra,56(sp)
    80004040:	01313c23          	sd	s3,24(sp)
    80004044:	01413823          	sd	s4,16(sp)
    80004048:	01613023          	sd	s6,0(sp)
    8000404c:	04010413          	addi	s0,sp,64
    80004050:	00002a97          	auipc	s5,0x2
    80004054:	938a8a93          	addi	s5,s5,-1736 # 80005988 <freep>
    80004058:	00f50913          	addi	s2,a0,15
    8000405c:	000ab683          	ld	a3,0(s5)
    80004060:	00495913          	srli	s2,s2,0x4
    80004064:	0019049b          	addiw	s1,s2,1
    80004068:	00048913          	mv	s2,s1
    8000406c:	0c068c63          	beqz	a3,80004144 <__mem_alloc+0x11c>
    80004070:	0006b503          	ld	a0,0(a3)
    80004074:	00852703          	lw	a4,8(a0)
    80004078:	10977063          	bgeu	a4,s1,80004178 <__mem_alloc+0x150>
    8000407c:	000017b7          	lui	a5,0x1
    80004080:	0009099b          	sext.w	s3,s2
    80004084:	0af4e863          	bltu	s1,a5,80004134 <__mem_alloc+0x10c>
    80004088:	02099a13          	slli	s4,s3,0x20
    8000408c:	01ca5a13          	srli	s4,s4,0x1c
    80004090:	fff00b13          	li	s6,-1
    80004094:	0100006f          	j	800040a4 <__mem_alloc+0x7c>
    80004098:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000409c:	00852703          	lw	a4,8(a0)
    800040a0:	04977463          	bgeu	a4,s1,800040e8 <__mem_alloc+0xc0>
    800040a4:	00050793          	mv	a5,a0
    800040a8:	fea698e3          	bne	a3,a0,80004098 <__mem_alloc+0x70>
    800040ac:	000a0513          	mv	a0,s4
    800040b0:	00000097          	auipc	ra,0x0
    800040b4:	1f0080e7          	jalr	496(ra) # 800042a0 <kvmincrease>
    800040b8:	00050793          	mv	a5,a0
    800040bc:	01050513          	addi	a0,a0,16
    800040c0:	07678e63          	beq	a5,s6,8000413c <__mem_alloc+0x114>
    800040c4:	0137a423          	sw	s3,8(a5)
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	e94080e7          	jalr	-364(ra) # 80003f5c <__mem_free>
    800040d0:	000ab783          	ld	a5,0(s5)
    800040d4:	06078463          	beqz	a5,8000413c <__mem_alloc+0x114>
    800040d8:	0007b503          	ld	a0,0(a5)
    800040dc:	00078693          	mv	a3,a5
    800040e0:	00852703          	lw	a4,8(a0)
    800040e4:	fc9760e3          	bltu	a4,s1,800040a4 <__mem_alloc+0x7c>
    800040e8:	08e48263          	beq	s1,a4,8000416c <__mem_alloc+0x144>
    800040ec:	4127073b          	subw	a4,a4,s2
    800040f0:	02071693          	slli	a3,a4,0x20
    800040f4:	01c6d693          	srli	a3,a3,0x1c
    800040f8:	00e52423          	sw	a4,8(a0)
    800040fc:	00d50533          	add	a0,a0,a3
    80004100:	01252423          	sw	s2,8(a0)
    80004104:	00fab023          	sd	a5,0(s5)
    80004108:	01050513          	addi	a0,a0,16
    8000410c:	03813083          	ld	ra,56(sp)
    80004110:	03013403          	ld	s0,48(sp)
    80004114:	02813483          	ld	s1,40(sp)
    80004118:	02013903          	ld	s2,32(sp)
    8000411c:	01813983          	ld	s3,24(sp)
    80004120:	01013a03          	ld	s4,16(sp)
    80004124:	00813a83          	ld	s5,8(sp)
    80004128:	00013b03          	ld	s6,0(sp)
    8000412c:	04010113          	addi	sp,sp,64
    80004130:	00008067          	ret
    80004134:	000019b7          	lui	s3,0x1
    80004138:	f51ff06f          	j	80004088 <__mem_alloc+0x60>
    8000413c:	00000513          	li	a0,0
    80004140:	fcdff06f          	j	8000410c <__mem_alloc+0xe4>
    80004144:	00003797          	auipc	a5,0x3
    80004148:	adc78793          	addi	a5,a5,-1316 # 80006c20 <base>
    8000414c:	00078513          	mv	a0,a5
    80004150:	00fab023          	sd	a5,0(s5)
    80004154:	00f7b023          	sd	a5,0(a5)
    80004158:	00000713          	li	a4,0
    8000415c:	00003797          	auipc	a5,0x3
    80004160:	ac07a623          	sw	zero,-1332(a5) # 80006c28 <base+0x8>
    80004164:	00050693          	mv	a3,a0
    80004168:	f11ff06f          	j	80004078 <__mem_alloc+0x50>
    8000416c:	00053703          	ld	a4,0(a0)
    80004170:	00e7b023          	sd	a4,0(a5)
    80004174:	f91ff06f          	j	80004104 <__mem_alloc+0xdc>
    80004178:	00068793          	mv	a5,a3
    8000417c:	f6dff06f          	j	800040e8 <__mem_alloc+0xc0>

0000000080004180 <__putc>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	02010413          	addi	s0,sp,32
    80004190:	00050793          	mv	a5,a0
    80004194:	fef40593          	addi	a1,s0,-17
    80004198:	00100613          	li	a2,1
    8000419c:	00000513          	li	a0,0
    800041a0:	fef407a3          	sb	a5,-17(s0)
    800041a4:	fffff097          	auipc	ra,0xfffff
    800041a8:	918080e7          	jalr	-1768(ra) # 80002abc <console_write>
    800041ac:	01813083          	ld	ra,24(sp)
    800041b0:	01013403          	ld	s0,16(sp)
    800041b4:	02010113          	addi	sp,sp,32
    800041b8:	00008067          	ret

00000000800041bc <__getc>:
    800041bc:	fe010113          	addi	sp,sp,-32
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00113c23          	sd	ra,24(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	fe840593          	addi	a1,s0,-24
    800041d0:	00100613          	li	a2,1
    800041d4:	00000513          	li	a0,0
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	8c4080e7          	jalr	-1852(ra) # 80002a9c <console_read>
    800041e0:	fe844503          	lbu	a0,-24(s0)
    800041e4:	01813083          	ld	ra,24(sp)
    800041e8:	01013403          	ld	s0,16(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <console_handler>:
    800041f4:	fe010113          	addi	sp,sp,-32
    800041f8:	00813823          	sd	s0,16(sp)
    800041fc:	00113c23          	sd	ra,24(sp)
    80004200:	00913423          	sd	s1,8(sp)
    80004204:	02010413          	addi	s0,sp,32
    80004208:	14202773          	csrr	a4,scause
    8000420c:	100027f3          	csrr	a5,sstatus
    80004210:	0027f793          	andi	a5,a5,2
    80004214:	06079e63          	bnez	a5,80004290 <console_handler+0x9c>
    80004218:	00074c63          	bltz	a4,80004230 <console_handler+0x3c>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret
    80004230:	0ff77713          	andi	a4,a4,255
    80004234:	00900793          	li	a5,9
    80004238:	fef712e3          	bne	a4,a5,8000421c <console_handler+0x28>
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	4b8080e7          	jalr	1208(ra) # 800026f4 <plic_claim>
    80004244:	00a00793          	li	a5,10
    80004248:	00050493          	mv	s1,a0
    8000424c:	02f50c63          	beq	a0,a5,80004284 <console_handler+0x90>
    80004250:	fc0506e3          	beqz	a0,8000421c <console_handler+0x28>
    80004254:	00050593          	mv	a1,a0
    80004258:	00001517          	auipc	a0,0x1
    8000425c:	ef050513          	addi	a0,a0,-272 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	8d8080e7          	jalr	-1832(ra) # 80002b38 <__printf>
    80004268:	01013403          	ld	s0,16(sp)
    8000426c:	01813083          	ld	ra,24(sp)
    80004270:	00048513          	mv	a0,s1
    80004274:	00813483          	ld	s1,8(sp)
    80004278:	02010113          	addi	sp,sp,32
    8000427c:	ffffe317          	auipc	t1,0xffffe
    80004280:	4b030067          	jr	1200(t1) # 8000272c <plic_complete>
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	1bc080e7          	jalr	444(ra) # 80003440 <uartintr>
    8000428c:	fddff06f          	j	80004268 <console_handler+0x74>
    80004290:	00001517          	auipc	a0,0x1
    80004294:	fb850513          	addi	a0,a0,-72 # 80005248 <digits+0x78>
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	844080e7          	jalr	-1980(ra) # 80002adc <panic>

00000000800042a0 <kvmincrease>:
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	01213023          	sd	s2,0(sp)
    800042a8:	00001937          	lui	s2,0x1
    800042ac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	00913423          	sd	s1,8(sp)
    800042bc:	02010413          	addi	s0,sp,32
    800042c0:	01250933          	add	s2,a0,s2
    800042c4:	00c95913          	srli	s2,s2,0xc
    800042c8:	02090863          	beqz	s2,800042f8 <kvmincrease+0x58>
    800042cc:	00000493          	li	s1,0
    800042d0:	00148493          	addi	s1,s1,1
    800042d4:	fffff097          	auipc	ra,0xfffff
    800042d8:	4bc080e7          	jalr	1212(ra) # 80003790 <kalloc>
    800042dc:	fe991ae3          	bne	s2,s1,800042d0 <kvmincrease+0x30>
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	00013903          	ld	s2,0(sp)
    800042f0:	02010113          	addi	sp,sp,32
    800042f4:	00008067          	ret
    800042f8:	01813083          	ld	ra,24(sp)
    800042fc:	01013403          	ld	s0,16(sp)
    80004300:	00813483          	ld	s1,8(sp)
    80004304:	00013903          	ld	s2,0(sp)
    80004308:	00000513          	li	a0,0
    8000430c:	02010113          	addi	sp,sp,32
    80004310:	00008067          	ret
	...

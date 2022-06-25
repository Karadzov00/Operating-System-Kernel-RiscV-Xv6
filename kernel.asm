
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
    8000001c:	6a1010ef          	jal	ra,80001ebc <start>

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
    80001080:	385000ef          	jal	ra,80001c04 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_ZN7_threadC1EPFvPvEmS0_Pm>:

_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
}

_thread::_thread(Body body, uint64 timeSlice, void* arg, uint64* stek):
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
        body(body),
        timeSlice(timeSlice),
        finished(false)
    80001130:	00b53023          	sd	a1,0(a0)
    80001134:	02c53023          	sd	a2,32(a0)
    80001138:	02050423          	sb	zero,40(a0)
{
    stack = (body!= nullptr ? stek: nullptr);
    8000113c:	04058a63          	beqz	a1,80001190 <_ZN7_threadC1EPFvPvEmS0_Pm+0x6c>
    80001140:	00e53423          	sd	a4,8(a0)
    context = {(uint64)&threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001144:	04070a63          	beqz	a4,80001198 <_ZN7_threadC1EPFvPvEmS0_Pm+0x74>
    80001148:	000087b7          	lui	a5,0x8
    8000114c:	00f70733          	add	a4,a4,a5
    context = {(uint64)&threadWrapper,
    80001150:	00000797          	auipc	a5,0x0
    80001154:	0b078793          	addi	a5,a5,176 # 80001200 <_ZN7_thread13threadWrapperEv>
    80001158:	00f53823          	sd	a5,16(a0)
    8000115c:	00e53c23          	sd	a4,24(a0)
    };
    status = Status::NEW;
    80001160:	00100793          	li	a5,1
    80001164:	04f52023          	sw	a5,64(a0)
    id = globalId++;
    80001168:	00004717          	auipc	a4,0x4
    8000116c:	7c870713          	addi	a4,a4,1992 # 80005930 <_ZN7_thread8globalIdE>
    80001170:	00073783          	ld	a5,0(a4)
    80001174:	00178613          	addi	a2,a5,1
    80001178:	00c73023          	sd	a2,0(a4)
    8000117c:	02f53c23          	sd	a5,56(a0)
    this->arg=arg;
    80001180:	02d53823          	sd	a3,48(a0)
}
    80001184:	00813403          	ld	s0,8(sp)
    80001188:	01010113          	addi	sp,sp,16
    8000118c:	00008067          	ret
    stack = (body!= nullptr ? stek: nullptr);
    80001190:	00000713          	li	a4,0
    80001194:	fadff06f          	j	80001140 <_ZN7_threadC1EPFvPvEmS0_Pm+0x1c>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001198:	00000713          	li	a4,0
    8000119c:	fb5ff06f          	j	80001150 <_ZN7_threadC1EPFvPvEmS0_Pm+0x2c>

00000000800011a0 <_ZN7_thread5startEv>:
//    if(status==Status::FINISHED)return;
//    if(status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    status=Status::READY;
    if(body!= nullptr)
    800011a0:	00053783          	ld	a5,0(a0)
    800011a4:	02078663          	beqz	a5,800011d0 <_ZN7_thread5startEv+0x30>
void _thread::start() {
    800011a8:	ff010113          	addi	sp,sp,-16
    800011ac:	00113423          	sd	ra,8(sp)
    800011b0:	00813023          	sd	s0,0(sp)
    800011b4:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    800011b8:	00000097          	auipc	ra,0x0
    800011bc:	564080e7          	jalr	1380(ra) # 8000171c <_ZN9Scheduler3putEP7_thread>
}
    800011c0:	00813083          	ld	ra,8(sp)
    800011c4:	00013403          	ld	s0,0(sp)
    800011c8:	01010113          	addi	sp,sp,16
    800011cc:	00008067          	ret
    800011d0:	00008067          	ret

00000000800011d4 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00813423          	sd	s0,8(sp)
    800011dc:	01010413          	addi	s0,sp,16
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800011e0:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800011e4:	00400713          	li	a4,4
    800011e8:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    800011ec:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    800011f0:	00078513          	mv	a0,a5

}
    800011f4:	00813403          	ld	s0,8(sp)
    800011f8:	01010113          	addi	sp,sp,16
    800011fc:	00008067          	ret

0000000080001200 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001200:	fe010113          	addi	sp,sp,-32
    80001204:	00113c23          	sd	ra,24(sp)
    80001208:	00813823          	sd	s0,16(sp)
    8000120c:	00913423          	sd	s1,8(sp)
    80001210:	02010413          	addi	s0,sp,32
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    80001214:	00004497          	auipc	s1,0x4
    80001218:	71c48493          	addi	s1,s1,1820 # 80005930 <_ZN7_thread8globalIdE>
    8000121c:	0084b783          	ld	a5,8(s1)
    80001220:	0007b703          	ld	a4,0(a5)
    80001224:	0307b503          	ld	a0,48(a5)
    80001228:	000700e7          	jalr	a4
    running->setFinished(true);
    8000122c:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001230:	00100713          	li	a4,1
    80001234:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    80001238:	00000097          	auipc	ra,0x0
    8000123c:	f9c080e7          	jalr	-100(ra) # 800011d4 <_ZN7_thread5yieldEv>
}
    80001240:	01813083          	ld	ra,24(sp)
    80001244:	01013403          	ld	s0,16(sp)
    80001248:	00813483          	ld	s1,8(sp)
    8000124c:	02010113          	addi	sp,sp,32
    80001250:	00008067          	ret

0000000080001254 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001254:	fe010113          	addi	sp,sp,-32
    80001258:	00113c23          	sd	ra,24(sp)
    8000125c:	00813823          	sd	s0,16(sp)
    80001260:	00913423          	sd	s1,8(sp)
    80001264:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001268:	00004497          	auipc	s1,0x4
    8000126c:	6d04b483          	ld	s1,1744(s1) # 80005938 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001270:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001274:	02078c63          	beqz	a5,800012ac <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	43c080e7          	jalr	1084(ra) # 800016b4 <_ZN9Scheduler3getEv>
    80001280:	00004797          	auipc	a5,0x4
    80001284:	6aa7bc23          	sd	a0,1720(a5) # 80005938 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    80001288:	01050593          	addi	a1,a0,16
    8000128c:	01048513          	addi	a0,s1,16
    80001290:	00000097          	auipc	ra,0x0
    80001294:	e80080e7          	jalr	-384(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    80001298:	01813083          	ld	ra,24(sp)
    8000129c:	01013403          	ld	s0,16(sp)
    800012a0:	00813483          	ld	s1,8(sp)
    800012a4:	02010113          	addi	sp,sp,32
    800012a8:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012ac:	00048513          	mv	a0,s1
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	46c080e7          	jalr	1132(ra) # 8000171c <_ZN9Scheduler3putEP7_thread>
    800012b8:	fc1ff06f          	j	80001278 <_ZN7_thread8dispatchEv+0x24>

00000000800012bc <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00113423          	sd	ra,8(sp)
    800012c4:	00813023          	sd	s0,0(sp)
    800012c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012cc:	00001097          	auipc	ra,0x1
    800012d0:	a74080e7          	jalr	-1420(ra) # 80001d40 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012d4:	00813083          	ld	ra,8(sp)
    800012d8:	00013403          	ld	s0,0(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_ZN7_thread12createThreadEPFvPvES0_Pm>:
_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    800012e4:	fd010113          	addi	sp,sp,-48
    800012e8:	02113423          	sd	ra,40(sp)
    800012ec:	02813023          	sd	s0,32(sp)
    800012f0:	00913c23          	sd	s1,24(sp)
    800012f4:	01213823          	sd	s2,16(sp)
    800012f8:	01313423          	sd	s3,8(sp)
    800012fc:	01413023          	sd	s4,0(sp)
    80001300:	03010413          	addi	s0,sp,48
    80001304:	00050913          	mv	s2,a0
    80001308:	00058993          	mv	s3,a1
    8000130c:	00060a13          	mv	s4,a2
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
    80001310:	04800513          	li	a0,72
    80001314:	00000097          	auipc	ra,0x0
    80001318:	fa8080e7          	jalr	-88(ra) # 800012bc <_ZN7_threadnwEm>
    8000131c:	00050493          	mv	s1,a0
    80001320:	000a0713          	mv	a4,s4
    80001324:	00098693          	mv	a3,s3
    80001328:	00200613          	li	a2,2
    8000132c:	00090593          	mv	a1,s2
    80001330:	00000097          	auipc	ra,0x0
    80001334:	df4080e7          	jalr	-524(ra) # 80001124 <_ZN7_threadC1EPFvPvEmS0_Pm>
}
    80001338:	00048513          	mv	a0,s1
    8000133c:	02813083          	ld	ra,40(sp)
    80001340:	02013403          	ld	s0,32(sp)
    80001344:	01813483          	ld	s1,24(sp)
    80001348:	01013903          	ld	s2,16(sp)
    8000134c:	00813983          	ld	s3,8(sp)
    80001350:	00013a03          	ld	s4,0(sp)
    80001354:	03010113          	addi	sp,sp,48
    80001358:	00008067          	ret

000000008000135c <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00113423          	sd	ra,8(sp)
    80001364:	00813023          	sd	s0,0(sp)
    80001368:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	9d4080e7          	jalr	-1580(ra) # 80001d40 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001374:	00813083          	ld	ra,8(sp)
    80001378:	00013403          	ld	s0,0(sp)
    8000137c:	01010113          	addi	sp,sp,16
    80001380:	00008067          	ret

0000000080001384 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00113423          	sd	ra,8(sp)
    8000138c:	00813023          	sd	s0,0(sp)
    80001390:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001394:	00001097          	auipc	ra,0x1
    80001398:	9d4080e7          	jalr	-1580(ra) # 80001d68 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000139c:	00813083          	ld	ra,8(sp)
    800013a0:	00013403          	ld	s0,0(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013ac:	ff010113          	addi	sp,sp,-16
    800013b0:	00113423          	sd	ra,8(sp)
    800013b4:	00813023          	sd	s0,0(sp)
    800013b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	9ac080e7          	jalr	-1620(ra) # 80001d68 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013c4:	00813083          	ld	ra,8(sp)
    800013c8:	00013403          	ld	s0,0(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;
    uint64 a4;

};

    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
void syscall(args* arg){
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    800013e0:	00053603          	ld	a2,0(a0)
    uint64 arg0 = arg->a0;
    800013e4:	00853683          	ld	a3,8(a0)
    uint64 arg1 = arg->a1;
    800013e8:	01053703          	ld	a4,16(a0)
    uint64 arg2 = arg->a2;
    800013ec:	01853783          	ld	a5,24(a0)
    uint64 arg3 = arg->a3;
    uint64 arg4 = arg->a4;

    800013f0:	00060513          	mv	a0,a2
    //lock this section?
    800013f4:	00068593          	mv	a1,a3
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    800013f8:	00070613          	mv	a2,a4
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    800013fc:	00078693          	mv	a3,a5
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    __asm__ volatile("mv a4, %0" : : "r" (arg4));


    80001400:	00000073          	ecall

//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_Z9mem_allocm>:


    80001410:	fd010113          	addi	sp,sp,-48
    80001414:	02113423          	sd	ra,40(sp)
    80001418:	02813023          	sd	s0,32(sp)
    8000141c:	03010413          	addi	s0,sp,48
}

void* mem_alloc (size_t size){
    //prepares parameters to arguments
    80001420:	00100793          	li	a5,1
    80001424:	fcf43823          	sd	a5,-48(s0)
    //executes system call instruction
    args arg;
    80001428:	00655793          	srli	a5,a0,0x6
    arg.a0=0x01;
    8000142c:	03f57513          	andi	a0,a0,63
    80001430:	00050463          	beqz	a0,80001438 <_Z9mem_allocm+0x28>
    80001434:	00178793          	addi	a5,a5,1

    80001438:	fcf43c23          	sd	a5,-40(s0)
    size_t blocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    8000143c:	fd040513          	addi	a0,s0,-48
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f94080e7          	jalr	-108(ra) # 800013d4 <_Z7syscallP4args>
    arg.a1=blocks;

    syscall(&arg);
    80001448:	00050513          	mv	a0,a0

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000144c:	02813083          	ld	ra,40(sp)
    80001450:	02013403          	ld	s0,32(sp)
    80001454:	03010113          	addi	sp,sp,48
    80001458:	00008067          	ret

000000008000145c <_Z8mem_freePv>:

    return (void*)ret;
    8000145c:	fd010113          	addi	sp,sp,-48
    80001460:	02113423          	sd	ra,40(sp)
    80001464:	02813023          	sd	s0,32(sp)
    80001468:	03010413          	addi	s0,sp,48
}

    8000146c:	00200793          	li	a5,2
    80001470:	fcf43823          	sd	a5,-48(s0)
int mem_free (void* p){
    80001474:	fca43c23          	sd	a0,-40(s0)
    args arg;
    arg.a0=0x02;
    80001478:	fd040513          	addi	a0,s0,-48
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	f58080e7          	jalr	-168(ra) # 800013d4 <_Z7syscallP4args>
    arg.a1=(uint64)p;

    80001484:	00050513          	mv	a0,a0
    syscall(&arg);
    uint64 ret;
    80001488:	0005051b          	sext.w	a0,a0
    8000148c:	02813083          	ld	ra,40(sp)
    80001490:	02013403          	ld	s0,32(sp)
    80001494:	03010113          	addi	sp,sp,48
    80001498:	00008067          	ret

000000008000149c <_Z13thread_createPP7_threadPFvPvES2_>:
}

class _thread;
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
    8000149c:	fd010113          	addi	sp,sp,-48
    800014a0:	02113423          	sd	ra,40(sp)
    800014a4:	02813023          	sd	s0,32(sp)
    800014a8:	03010413          	addi	s0,sp,48
        void(*start_routine)(void*),
        void* arg
    800014ac:	01100793          	li	a5,17
    800014b0:	fcf43823          	sd	a5,-48(s0)
){
    800014b4:	fca43c23          	sd	a0,-40(s0)

    800014b8:	feb43023          	sd	a1,-32(s0)
    uint64* stack = (uint64*)MemoryAllocator::kmem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64));
    800014bc:	fec43423          	sd	a2,-24(s0)
    args myArgs;
    myArgs.a0=0x11;
    800014c0:	fd040513          	addi	a0,s0,-48
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	f10080e7          	jalr	-240(ra) # 800013d4 <_Z7syscallP4args>
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    myArgs.a2=(uint64)start_routine;
    800014cc:	00050513          	mv	a0,a0
    myArgs.a3=(uint64)arg;
    myArgs.a4=(uint64)stack;

    syscall(&myArgs);
    uint64 ret;
    800014d0:	0005051b          	sext.w	a0,a0
    800014d4:	02813083          	ld	ra,40(sp)
    800014d8:	02013403          	ld	s0,32(sp)
    800014dc:	03010113          	addi	sp,sp,48
    800014e0:	00008067          	ret

00000000800014e4 <_Z11thread_exitv>:
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle

    800014e4:	fd010113          	addi	sp,sp,-48
    800014e8:	02113423          	sd	ra,40(sp)
    800014ec:	02813023          	sd	s0,32(sp)
    800014f0:	03010413          	addi	s0,sp,48
    return ret;

    800014f4:	01200793          	li	a5,18
    800014f8:	fcf43823          	sd	a5,-48(s0)

}
    800014fc:	fd040513          	addi	a0,s0,-48
    80001500:	00000097          	auipc	ra,0x0
    80001504:	ed4080e7          	jalr	-300(ra) # 800013d4 <_Z7syscallP4args>

int thread_exit (){
    args myArgs;
    80001508:	00000513          	li	a0,0
    8000150c:	02813083          	ld	ra,40(sp)
    80001510:	02013403          	ld	s0,32(sp)
    80001514:	03010113          	addi	sp,sp,48
    80001518:	00008067          	ret

000000008000151c <_Z15thread_dispatchv>:
    myArgs.a0=0x12;

    syscall(&myArgs);
    8000151c:	fd010113          	addi	sp,sp,-48
    80001520:	02113423          	sd	ra,40(sp)
    80001524:	02813023          	sd	s0,32(sp)
    80001528:	03010413          	addi	s0,sp,48

    return 0;
    8000152c:	01300793          	li	a5,19
    80001530:	fcf43823          	sd	a5,-48(s0)
}

    80001534:	fd040513          	addi	a0,s0,-48
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	e9c080e7          	jalr	-356(ra) # 800013d4 <_Z7syscallP4args>

void thread_dispatch (){
    args myArgs;
    80001540:	02813083          	ld	ra,40(sp)
    80001544:	02013403          	ld	s0,32(sp)
    80001548:	03010113          	addi	sp,sp,48
    8000154c:	00008067          	ret

0000000080001550 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    80001550:	fd010113          	addi	sp,sp,-48
    80001554:	02113423          	sd	ra,40(sp)
    80001558:	02813023          	sd	s0,32(sp)
    8000155c:	03010413          	addi	s0,sp,48


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001560:	00004797          	auipc	a5,0x4
    80001564:	3587b783          	ld	a5,856(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001568:	10579073          	csrw	stvec,a5

    _thread* threads[3];

    if(!thread_create(&threads[0], nullptr, nullptr)){
    8000156c:	00000613          	li	a2,0
    80001570:	00000593          	li	a1,0
    80001574:	fd840513          	addi	a0,s0,-40
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	f24080e7          	jalr	-220(ra) # 8000149c <_Z13thread_createPP7_threadPFvPvES2_>
    80001580:	06050a63          	beqz	a0,800015f4 <main+0xa4>
        printString("thread created");
    }
    threads[0]->start();
    80001584:	fd843503          	ld	a0,-40(s0)
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	c18080e7          	jalr	-1000(ra) # 800011a0 <_ZN7_thread5startEv>
    _thread::running=threads[0];
    80001590:	fd843703          	ld	a4,-40(s0)
    80001594:	00004797          	auipc	a5,0x4
    80001598:	31c7b783          	ld	a5,796(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000159c:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyA, nullptr)){
    800015a0:	00000613          	li	a2,0
    800015a4:	00004597          	auipc	a1,0x4
    800015a8:	3245b583          	ld	a1,804(a1) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015ac:	fe040513          	addi	a0,s0,-32
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	eec080e7          	jalr	-276(ra) # 8000149c <_Z13thread_createPP7_threadPFvPvES2_>
    800015b8:	04050863          	beqz	a0,80001608 <main+0xb8>
        printString("thread created");
    }
    threads[1]->start();
    800015bc:	fe043503          	ld	a0,-32(s0)
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	be0080e7          	jalr	-1056(ra) # 800011a0 <_ZN7_thread5startEv>

    if(!thread_create(&threads[2], workerBodyB, nullptr)){
    800015c8:	00000613          	li	a2,0
    800015cc:	00004597          	auipc	a1,0x4
    800015d0:	3045b583          	ld	a1,772(a1) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015d4:	fe840513          	addi	a0,s0,-24
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	ec4080e7          	jalr	-316(ra) # 8000149c <_Z13thread_createPP7_threadPFvPvES2_>
    800015e0:	02050e63          	beqz	a0,8000161c <main+0xcc>
        printString("thread created");
    }
    threads[2]->start();
    800015e4:	fe843503          	ld	a0,-24(s0)
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	bb8080e7          	jalr	-1096(ra) # 800011a0 <_ZN7_thread5startEv>
    800015f0:	0480006f          	j	80001638 <main+0xe8>
        printString("thread created");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	a0c50513          	addi	a0,a0,-1524 # 80005000 <kvmincrease+0xd40>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	794080e7          	jalr	1940(ra) # 80001d90 <_Z11printStringPKc>
    80001604:	f81ff06f          	j	80001584 <main+0x34>
        printString("thread created");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	9f850513          	addi	a0,a0,-1544 # 80005000 <kvmincrease+0xd40>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	780080e7          	jalr	1920(ra) # 80001d90 <_Z11printStringPKc>
    80001618:	fa5ff06f          	j	800015bc <main+0x6c>
        printString("thread created");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	9e450513          	addi	a0,a0,-1564 # 80005000 <kvmincrease+0xd40>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	76c080e7          	jalr	1900(ra) # 80001d90 <_Z11printStringPKc>
    8000162c:	fb9ff06f          	j	800015e4 <main+0x94>

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    80001630:	00000097          	auipc	ra,0x0
    80001634:	ba4080e7          	jalr	-1116(ra) # 800011d4 <_ZN7_thread5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001638:	fe043783          	ld	a5,-32(s0)
    8000163c:	0287c783          	lbu	a5,40(a5)
    80001640:	fe0788e3          	beqz	a5,80001630 <main+0xe0>
    80001644:	fe843783          	ld	a5,-24(s0)
    80001648:	0287c783          	lbu	a5,40(a5)
    8000164c:	fe0782e3          	beqz	a5,80001630 <main+0xe0>
    }


    printString("finished \n");
    80001650:	00004517          	auipc	a0,0x4
    80001654:	9c050513          	addi	a0,a0,-1600 # 80005010 <kvmincrease+0xd50>
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	738080e7          	jalr	1848(ra) # 80001d90 <_Z11printStringPKc>

    return 0;
}
    80001660:	00000513          	li	a0,0
    80001664:	02813083          	ld	ra,40(sp)
    80001668:	02013403          	ld	s0,32(sp)
    8000166c:	03010113          	addi	sp,sp,48
    80001670:	00008067          	ret

0000000080001674 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    80001680:	00100793          	li	a5,1
    80001684:	00f50863          	beq	a0,a5,80001694 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret
    80001694:	000107b7          	lui	a5,0x10
    80001698:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000169c:	fef596e3          	bne	a1,a5,80001688 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800016a0:	00004797          	auipc	a5,0x4
    800016a4:	2a878793          	addi	a5,a5,680 # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    800016a8:	0007b023          	sd	zero,0(a5)
    800016ac:	0007b423          	sd	zero,8(a5)
    800016b0:	fd9ff06f          	j	80001688 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800016b4 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	28053503          	ld	a0,640(a0) # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    800016d0:	04050263          	beqz	a0,80001714 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800016d4:	00853783          	ld	a5,8(a0)
    800016d8:	00004717          	auipc	a4,0x4
    800016dc:	26f73823          	sd	a5,624(a4) # 80005948 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800016e0:	02078463          	beqz	a5,80001708 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800016e4:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	680080e7          	jalr	1664(ra) # 80001d68 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800016f0:	00048513          	mv	a0,s1
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret
        if (!head) { tail = 0; }
    80001708:	00004797          	auipc	a5,0x4
    8000170c:	2407b423          	sd	zero,584(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001710:	fd5ff06f          	j	800016e4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001714:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001718:	fd9ff06f          	j	800016f0 <_ZN9Scheduler3getEv+0x3c>

000000008000171c <_ZN9Scheduler3putEP7_thread>:
{
    8000171c:	fe010113          	addi	sp,sp,-32
    80001720:	00113c23          	sd	ra,24(sp)
    80001724:	00813823          	sd	s0,16(sp)
    80001728:	00913423          	sd	s1,8(sp)
    8000172c:	02010413          	addi	s0,sp,32
    80001730:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001734:	01000513          	li	a0,16
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	608080e7          	jalr	1544(ra) # 80001d40 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001740:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001744:	00053423          	sd	zero,8(a0)
        if (tail)
    80001748:	00004797          	auipc	a5,0x4
    8000174c:	2087b783          	ld	a5,520(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001750:	02078263          	beqz	a5,80001774 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001754:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001758:	00004797          	auipc	a5,0x4
    8000175c:	1ea7bc23          	sd	a0,504(a5) # 80005950 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001760:	01813083          	ld	ra,24(sp)
    80001764:	01013403          	ld	s0,16(sp)
    80001768:	00813483          	ld	s1,8(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret
            head = tail = elem;
    80001774:	00004797          	auipc	a5,0x4
    80001778:	1d478793          	addi	a5,a5,468 # 80005948 <_ZN9Scheduler16readyThreadQueueE>
    8000177c:	00a7b423          	sd	a0,8(a5)
    80001780:	00a7b023          	sd	a0,0(a5)
    80001784:	fddff06f          	j	80001760 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001788 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
    80001798:	000105b7          	lui	a1,0x10
    8000179c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017a0:	00100513          	li	a0,1
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	ed0080e7          	jalr	-304(ra) # 80001674 <_Z41__static_initialization_and_destruction_0ii>
    800017ac:	00813083          	ld	ra,8(sp)
    800017b0:	00013403          	ld	s0,0(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00113423          	sd	ra,8(sp)
    800017c4:	00813023          	sd	s0,0(sp)
    800017c8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	c44080e7          	jalr	-956(ra) # 80001410 <_Z9mem_allocm>
}
    800017d4:	00813083          	ld	ra,8(sp)
    800017d8:	00013403          	ld	s0,0(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret

00000000800017e4 <_Znam>:

void* operator new[](size_t n){
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00113423          	sd	ra,8(sp)
    800017ec:	00813023          	sd	s0,0(sp)
    800017f0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	c1c080e7          	jalr	-996(ra) # 80001410 <_Z9mem_allocm>
}
    800017fc:	00813083          	ld	ra,8(sp)
    80001800:	00013403          	ld	s0,0(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <_ZdlPv>:

void operator delete(void* p) noexcept{
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00113423          	sd	ra,8(sp)
    80001814:	00813023          	sd	s0,0(sp)
    80001818:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	c40080e7          	jalr	-960(ra) # 8000145c <_Z8mem_freePv>
}
    80001824:	00813083          	ld	ra,8(sp)
    80001828:	00013403          	ld	s0,0(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret

0000000080001834 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001844:	00000097          	auipc	ra,0x0
    80001848:	c18080e7          	jalr	-1000(ra) # 8000145c <_Z8mem_freePv>

}
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    8000185c:	fe010113          	addi	sp,sp,-32
    80001860:	00113c23          	sd	ra,24(sp)
    80001864:	00813823          	sd	s0,16(sp)
    80001868:	00913423          	sd	s1,8(sp)
    8000186c:	01213023          	sd	s2,0(sp)
    80001870:	02010413          	addi	s0,sp,32
    80001874:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001878:	00100793          	li	a5,1
    8000187c:	02a7f663          	bgeu	a5,a0,800018a8 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    80001880:	00357793          	andi	a5,a0,3
    80001884:	02078e63          	beqz	a5,800018c0 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001888:	fff48513          	addi	a0,s1,-1
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	fd0080e7          	jalr	-48(ra) # 8000185c <_ZL9fibonaccim>
    80001894:	00050913          	mv	s2,a0
    80001898:	ffe48513          	addi	a0,s1,-2
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	fc0080e7          	jalr	-64(ra) # 8000185c <_ZL9fibonaccim>
    800018a4:	00a90533          	add	a0,s2,a0
}
    800018a8:	01813083          	ld	ra,24(sp)
    800018ac:	01013403          	ld	s0,16(sp)
    800018b0:	00813483          	ld	s1,8(sp)
    800018b4:	00013903          	ld	s2,0(sp)
    800018b8:	02010113          	addi	sp,sp,32
    800018bc:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	914080e7          	jalr	-1772(ra) # 800011d4 <_ZN7_thread5yieldEv>
    800018c8:	fc1ff06f          	j	80001888 <_ZL9fibonaccim+0x2c>

00000000800018cc <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800018cc:	fe010113          	addi	sp,sp,-32
    800018d0:	00113c23          	sd	ra,24(sp)
    800018d4:	00813823          	sd	s0,16(sp)
    800018d8:	00913423          	sd	s1,8(sp)
    800018dc:	01213023          	sd	s2,0(sp)
    800018e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018e4:	00000493          	li	s1,0
    800018e8:	0380006f          	j	80001920 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018ec:	00003517          	auipc	a0,0x3
    800018f0:	73450513          	addi	a0,a0,1844 # 80005020 <kvmincrease+0xd60>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	49c080e7          	jalr	1180(ra) # 80001d90 <_Z11printStringPKc>
        printInteger(i);
    800018fc:	00048513          	mv	a0,s1
    80001900:	00000097          	auipc	ra,0x0
    80001904:	500080e7          	jalr	1280(ra) # 80001e00 <_Z12printIntegerm>
        printString("\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	72850513          	addi	a0,a0,1832 # 80005030 <kvmincrease+0xd70>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	480080e7          	jalr	1152(ra) # 80001d90 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001918:	0014849b          	addiw	s1,s1,1
    8000191c:	0ff4f493          	andi	s1,s1,255
    80001920:	00200793          	li	a5,2
    80001924:	fc97f4e3          	bgeu	a5,s1,800018ec <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	70050513          	addi	a0,a0,1792 # 80005028 <kvmincrease+0xd68>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	460080e7          	jalr	1120(ra) # 80001d90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001938:	00700313          	li	t1,7
    _thread::yield();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	898080e7          	jalr	-1896(ra) # 800011d4 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001944:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001948:	00003517          	auipc	a0,0x3
    8000194c:	6f050513          	addi	a0,a0,1776 # 80005038 <kvmincrease+0xd78>
    80001950:	00000097          	auipc	ra,0x0
    80001954:	440080e7          	jalr	1088(ra) # 80001d90 <_Z11printStringPKc>
    printInteger(t1);
    80001958:	00090513          	mv	a0,s2
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	4a4080e7          	jalr	1188(ra) # 80001e00 <_Z12printIntegerm>
    printString("\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6cc50513          	addi	a0,a0,1740 # 80005030 <kvmincrease+0xd70>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	424080e7          	jalr	1060(ra) # 80001d90 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001974:	01400513          	li	a0,20
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	ee4080e7          	jalr	-284(ra) # 8000185c <_ZL9fibonaccim>
    80001980:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6bc50513          	addi	a0,a0,1724 # 80005040 <kvmincrease+0xd80>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	404080e7          	jalr	1028(ra) # 80001d90 <_Z11printStringPKc>
    printInteger(result);
    80001994:	00090513          	mv	a0,s2
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	468080e7          	jalr	1128(ra) # 80001e00 <_Z12printIntegerm>
    printString("\n");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	69050513          	addi	a0,a0,1680 # 80005030 <kvmincrease+0xd70>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	3e8080e7          	jalr	1000(ra) # 80001d90 <_Z11printStringPKc>
    800019b0:	0380006f          	j	800019e8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019b4:	00003517          	auipc	a0,0x3
    800019b8:	66c50513          	addi	a0,a0,1644 # 80005020 <kvmincrease+0xd60>
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	3d4080e7          	jalr	980(ra) # 80001d90 <_Z11printStringPKc>
        printInteger(i);
    800019c4:	00048513          	mv	a0,s1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	438080e7          	jalr	1080(ra) # 80001e00 <_Z12printIntegerm>
        printString("\n");
    800019d0:	00003517          	auipc	a0,0x3
    800019d4:	66050513          	addi	a0,a0,1632 # 80005030 <kvmincrease+0xd70>
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	3b8080e7          	jalr	952(ra) # 80001d90 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019e0:	0014849b          	addiw	s1,s1,1
    800019e4:	0ff4f493          	andi	s1,s1,255
    800019e8:	00500793          	li	a5,5
    800019ec:	fc97f4e3          	bgeu	a5,s1,800019b4 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    800019f0:	00004797          	auipc	a5,0x4
    800019f4:	ec07b783          	ld	a5,-320(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019f8:	0007b783          	ld	a5,0(a5)

    uint64 getTimeSlice() const { return timeSlice; }
    800019fc:	00100713          	li	a4,1
    80001a00:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a04:	fffff097          	auipc	ra,0xfffff
    80001a08:	7d0080e7          	jalr	2000(ra) # 800011d4 <_ZN7_thread5yieldEv>
}
    80001a0c:	01813083          	ld	ra,24(sp)
    80001a10:	01013403          	ld	s0,16(sp)
    80001a14:	00813483          	ld	s1,8(sp)
    80001a18:	00013903          	ld	s2,0(sp)
    80001a1c:	02010113          	addi	sp,sp,32
    80001a20:	00008067          	ret

0000000080001a24 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001a24:	fe010113          	addi	sp,sp,-32
    80001a28:	00113c23          	sd	ra,24(sp)
    80001a2c:	00813823          	sd	s0,16(sp)
    80001a30:	00913423          	sd	s1,8(sp)
    80001a34:	01213023          	sd	s2,0(sp)
    80001a38:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a3c:	00a00493          	li	s1,10
    80001a40:	0380006f          	j	80001a78 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a44:	00003517          	auipc	a0,0x3
    80001a48:	60c50513          	addi	a0,a0,1548 # 80005050 <kvmincrease+0xd90>
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	344080e7          	jalr	836(ra) # 80001d90 <_Z11printStringPKc>
        printInteger(i);
    80001a54:	00048513          	mv	a0,s1
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	3a8080e7          	jalr	936(ra) # 80001e00 <_Z12printIntegerm>
        printString("\n");
    80001a60:	00003517          	auipc	a0,0x3
    80001a64:	5d050513          	addi	a0,a0,1488 # 80005030 <kvmincrease+0xd70>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	328080e7          	jalr	808(ra) # 80001d90 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a70:	0014849b          	addiw	s1,s1,1
    80001a74:	0ff4f493          	andi	s1,s1,255
    80001a78:	00c00793          	li	a5,12
    80001a7c:	fc97f4e3          	bgeu	a5,s1,80001a44 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	5d850513          	addi	a0,a0,1496 # 80005058 <kvmincrease+0xd98>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	308080e7          	jalr	776(ra) # 80001d90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a90:	00500313          	li	t1,5
    _thread::yield();
    80001a94:	fffff097          	auipc	ra,0xfffff
    80001a98:	740080e7          	jalr	1856(ra) # 800011d4 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001a9c:	01700513          	li	a0,23
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	dbc080e7          	jalr	-580(ra) # 8000185c <_ZL9fibonaccim>
    80001aa8:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001aac:	00003517          	auipc	a0,0x3
    80001ab0:	59450513          	addi	a0,a0,1428 # 80005040 <kvmincrease+0xd80>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	2dc080e7          	jalr	732(ra) # 80001d90 <_Z11printStringPKc>
    printInteger(result);
    80001abc:	00090513          	mv	a0,s2
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	340080e7          	jalr	832(ra) # 80001e00 <_Z12printIntegerm>
    printString("\n");
    80001ac8:	00003517          	auipc	a0,0x3
    80001acc:	56850513          	addi	a0,a0,1384 # 80005030 <kvmincrease+0xd70>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	2c0080e7          	jalr	704(ra) # 80001d90 <_Z11printStringPKc>
    80001ad8:	0380006f          	j	80001b10 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001adc:	00003517          	auipc	a0,0x3
    80001ae0:	57450513          	addi	a0,a0,1396 # 80005050 <kvmincrease+0xd90>
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	2ac080e7          	jalr	684(ra) # 80001d90 <_Z11printStringPKc>
        printInteger(i);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	310080e7          	jalr	784(ra) # 80001e00 <_Z12printIntegerm>
        printString("\n");
    80001af8:	00003517          	auipc	a0,0x3
    80001afc:	53850513          	addi	a0,a0,1336 # 80005030 <kvmincrease+0xd70>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	290080e7          	jalr	656(ra) # 80001d90 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b08:	0014849b          	addiw	s1,s1,1
    80001b0c:	0ff4f493          	andi	s1,s1,255
    80001b10:	00f00793          	li	a5,15
    80001b14:	fc97f4e3          	bgeu	a5,s1,80001adc <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b18:	00004797          	auipc	a5,0x4
    80001b1c:	d987b783          	ld	a5,-616(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b20:	0007b783          	ld	a5,0(a5)
    80001b24:	00100713          	li	a4,1
    80001b28:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b2c:	fffff097          	auipc	ra,0xfffff
    80001b30:	6a8080e7          	jalr	1704(ra) # 800011d4 <_ZN7_thread5yieldEv>
}
    80001b34:	01813083          	ld	ra,24(sp)
    80001b38:	01013403          	ld	s0,16(sp)
    80001b3c:	00813483          	ld	s1,8(sp)
    80001b40:	00013903          	ld	s2,0(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret

0000000080001b4c <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00113423          	sd	ra,8(sp)
    80001b54:	00813023          	sd	s0,0(sp)
    80001b58:	01010413          	addi	s0,sp,16
    //read syscall code from register a0

    uint64 arg0;
    uint64 arg1;

    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b5c:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b60:	00100713          	li	a4,1
    80001b64:	02e78663          	beq	a5,a4,80001b90 <_ZN5Riscv14syscallHandlerEv+0x44>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001b68:	00200713          	li	a4,2
    80001b6c:	02e78c63          	beq	a5,a4,80001ba4 <_ZN5Riscv14syscallHandlerEv+0x58>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

    else if(arg0==0x12){
    80001b70:	01200713          	li	a4,18
    80001b74:	04e78263          	beq	a5,a4,80001bb8 <_ZN5Riscv14syscallHandlerEv+0x6c>
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
    80001b78:	01300713          	li	a4,19
    80001b7c:	04e78e63          	beq	a5,a4,80001bd8 <_ZN5Riscv14syscallHandlerEv+0x8c>
        _thread::dispatch();

    }

}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001b90:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	1ac080e7          	jalr	428(ra) # 80001d40 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b9c:	00050513          	mv	a0,a0
    80001ba0:	fe1ff06f          	j	80001b80 <_ZN5Riscv14syscallHandlerEv+0x34>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001ba4:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	1c0080e7          	jalr	448(ra) # 80001d68 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001bb0:	00050513          	mv	a0,a0
    80001bb4:	fcdff06f          	j	80001b80 <_ZN5Riscv14syscallHandlerEv+0x34>
        _thread::running->finished=true;
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	cf87b783          	ld	a5,-776(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bc0:	0007b783          	ld	a5,0(a5)
    80001bc4:	00100713          	li	a4,1
    80001bc8:	02e78423          	sb	a4,40(a5)
        _thread::dispatch();
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	688080e7          	jalr	1672(ra) # 80001254 <_ZN7_thread8dispatchEv>
    80001bd4:	fadff06f          	j	80001b80 <_ZN5Riscv14syscallHandlerEv+0x34>
        _thread::dispatch();
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	67c080e7          	jalr	1660(ra) # 80001254 <_ZN7_thread8dispatchEv>
}
    80001be0:	fa1ff06f          	j	80001b80 <_ZN5Riscv14syscallHandlerEv+0x34>

0000000080001be4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00813423          	sd	s0,8(sp)
    80001bec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001bf0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001bf4:	10200073          	sret
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c04:	f9010113          	addi	sp,sp,-112
    80001c08:	06113423          	sd	ra,104(sp)
    80001c0c:	06813023          	sd	s0,96(sp)
    80001c10:	04913c23          	sd	s1,88(sp)
    80001c14:	05213823          	sd	s2,80(sp)
    80001c18:	05313423          	sd	s3,72(sp)
    80001c1c:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c20:	142027f3          	csrr	a5,scause
    80001c24:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80001c28:	f9843783          	ld	a5,-104(s0)
    uint scause = r_scause();
    80001c2c:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001c30:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001c34:	ff87879b          	addiw	a5,a5,-8
    80001c38:	00100713          	li	a4,1
    80001c3c:	02f77063          	bgeu	a4,a5,80001c5c <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001c40:	06813083          	ld	ra,104(sp)
    80001c44:	06013403          	ld	s0,96(sp)
    80001c48:	05813483          	ld	s1,88(sp)
    80001c4c:	05013903          	ld	s2,80(sp)
    80001c50:	04813983          	ld	s3,72(sp)
    80001c54:	07010113          	addi	sp,sp,112
    80001c58:	00008067          	ret
        if(a0reg==0x04){
    80001c5c:	00400793          	li	a5,4
    80001c60:	02f68e63          	beq	a3,a5,80001c9c <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        else if(a0reg==0x11){
    80001c64:	01100793          	li	a5,17
    80001c68:	06f68863          	beq	a3,a5,80001cd8 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c6c:	141027f3          	csrr	a5,sepc
    80001c70:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c74:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c78:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c7c:	100027f3          	csrr	a5,sstatus
    80001c80:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001c84:	fc043903          	ld	s2,-64(s0)
            syscallHandler();
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	ec4080e7          	jalr	-316(ra) # 80001b4c <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c90:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c94:	14149073          	csrw	sepc,s1
}
    80001c98:	fa9ff06f          	j	80001c40 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c9c:	141027f3          	csrr	a5,sepc
    80001ca0:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001ca4:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001ca8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cac:	100027f3          	csrr	a5,sstatus
    80001cb0:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001cb4:	fa043903          	ld	s2,-96(s0)
            _thread::timeSliceCounter = 0;
    80001cb8:	00004797          	auipc	a5,0x4
    80001cbc:	c207b783          	ld	a5,-992(a5) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cc0:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	590080e7          	jalr	1424(ra) # 80001254 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ccc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd0:	14149073          	csrw	sepc,s1
}
    80001cd4:	f6dff06f          	j	80001c40 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cd8:	141027f3          	csrr	a5,sepc
    80001cdc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001ce0:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001ce4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce8:	100027f3          	csrr	a5,sstatus
    80001cec:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001cf0:	fb043903          	ld	s2,-80(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001cf4:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001cf8:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001cfc:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001d00:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001d04:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001d08:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001d0c:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001d10:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5d0080e7          	jalr	1488(ra) # 800012e4 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80001d1c:	00a9b023          	sd	a0,0(s3)
            if(t!= nullptr)ret=0;
    80001d20:	00050c63          	beqz	a0,80001d38 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
    80001d24:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001d28:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d2c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d30:	14149073          	csrw	sepc,s1
}
    80001d34:	f0dff06f          	j	80001c40 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
            else ret =-1;
    80001d38:	fff00793          	li	a5,-1
    80001d3c:	fedff06f          	j	80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x124>

0000000080001d40 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00113423          	sd	ra,8(sp)
    80001d48:	00813023          	sd	s0,0(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001d50:	00002097          	auipc	ra,0x2
    80001d54:	2f8080e7          	jalr	760(ra) # 80004048 <__mem_alloc>
}
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00113423          	sd	ra,8(sp)
    80001d70:	00813023          	sd	s0,0(sp)
    80001d74:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001d78:	00002097          	auipc	ra,0x2
    80001d7c:	204080e7          	jalr	516(ra) # 80003f7c <__mem_free>
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001d90:	fd010113          	addi	sp,sp,-48
    80001d94:	02113423          	sd	ra,40(sp)
    80001d98:	02813023          	sd	s0,32(sp)
    80001d9c:	00913c23          	sd	s1,24(sp)
    80001da0:	01213823          	sd	s2,16(sp)
    80001da4:	03010413          	addi	s0,sp,48
    80001da8:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001dac:	100027f3          	csrr	a5,sstatus
    80001db0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001db4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001db8:	00200793          	li	a5,2
    80001dbc:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001dc0:	0004c503          	lbu	a0,0(s1)
    80001dc4:	00050a63          	beqz	a0,80001dd8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001dc8:	00002097          	auipc	ra,0x2
    80001dcc:	3d8080e7          	jalr	984(ra) # 800041a0 <__putc>
        string++;
    80001dd0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001dd4:	fedff06f          	j	80001dc0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001dd8:	0009091b          	sext.w	s2,s2
    80001ddc:	00297913          	andi	s2,s2,2
    80001de0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001de4:	10092073          	csrs	sstatus,s2
}
    80001de8:	02813083          	ld	ra,40(sp)
    80001dec:	02013403          	ld	s0,32(sp)
    80001df0:	01813483          	ld	s1,24(sp)
    80001df4:	01013903          	ld	s2,16(sp)
    80001df8:	03010113          	addi	sp,sp,48
    80001dfc:	00008067          	ret

0000000080001e00 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e00:	fc010113          	addi	sp,sp,-64
    80001e04:	02113c23          	sd	ra,56(sp)
    80001e08:	02813823          	sd	s0,48(sp)
    80001e0c:	02913423          	sd	s1,40(sp)
    80001e10:	03213023          	sd	s2,32(sp)
    80001e14:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e18:	100027f3          	csrr	a5,sstatus
    80001e1c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e20:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e24:	00200793          	li	a5,2
    80001e28:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e2c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e30:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e34:	00a00613          	li	a2,10
    80001e38:	02c5773b          	remuw	a4,a0,a2
    80001e3c:	02071693          	slli	a3,a4,0x20
    80001e40:	0206d693          	srli	a3,a3,0x20
    80001e44:	00003717          	auipc	a4,0x3
    80001e48:	22470713          	addi	a4,a4,548 # 80005068 <_ZZ12printIntegermE6digits>
    80001e4c:	00d70733          	add	a4,a4,a3
    80001e50:	00074703          	lbu	a4,0(a4)
    80001e54:	fe040693          	addi	a3,s0,-32
    80001e58:	009687b3          	add	a5,a3,s1
    80001e5c:	0014849b          	addiw	s1,s1,1
    80001e60:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001e64:	0005071b          	sext.w	a4,a0
    80001e68:	02c5553b          	divuw	a0,a0,a2
    80001e6c:	00900793          	li	a5,9
    80001e70:	fce7e2e3          	bltu	a5,a4,80001e34 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001e74:	fff4849b          	addiw	s1,s1,-1
    80001e78:	0004ce63          	bltz	s1,80001e94 <_Z12printIntegerm+0x94>
    80001e7c:	fe040793          	addi	a5,s0,-32
    80001e80:	009787b3          	add	a5,a5,s1
    80001e84:	ff07c503          	lbu	a0,-16(a5)
    80001e88:	00002097          	auipc	ra,0x2
    80001e8c:	318080e7          	jalr	792(ra) # 800041a0 <__putc>
    80001e90:	fe5ff06f          	j	80001e74 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e94:	0009091b          	sext.w	s2,s2
    80001e98:	00297913          	andi	s2,s2,2
    80001e9c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ea0:	10092073          	csrs	sstatus,s2
}
    80001ea4:	03813083          	ld	ra,56(sp)
    80001ea8:	03013403          	ld	s0,48(sp)
    80001eac:	02813483          	ld	s1,40(sp)
    80001eb0:	02013903          	ld	s2,32(sp)
    80001eb4:	04010113          	addi	sp,sp,64
    80001eb8:	00008067          	ret

0000000080001ebc <start>:
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00813423          	sd	s0,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	300027f3          	csrr	a5,mstatus
    80001ecc:	ffffe737          	lui	a4,0xffffe
    80001ed0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c2f>
    80001ed4:	00e7f7b3          	and	a5,a5,a4
    80001ed8:	00001737          	lui	a4,0x1
    80001edc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ee0:	00e7e7b3          	or	a5,a5,a4
    80001ee4:	30079073          	csrw	mstatus,a5
    80001ee8:	00000797          	auipc	a5,0x0
    80001eec:	16078793          	addi	a5,a5,352 # 80002048 <system_main>
    80001ef0:	34179073          	csrw	mepc,a5
    80001ef4:	00000793          	li	a5,0
    80001ef8:	18079073          	csrw	satp,a5
    80001efc:	000107b7          	lui	a5,0x10
    80001f00:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f04:	30279073          	csrw	medeleg,a5
    80001f08:	30379073          	csrw	mideleg,a5
    80001f0c:	104027f3          	csrr	a5,sie
    80001f10:	2227e793          	ori	a5,a5,546
    80001f14:	10479073          	csrw	sie,a5
    80001f18:	fff00793          	li	a5,-1
    80001f1c:	00a7d793          	srli	a5,a5,0xa
    80001f20:	3b079073          	csrw	pmpaddr0,a5
    80001f24:	00f00793          	li	a5,15
    80001f28:	3a079073          	csrw	pmpcfg0,a5
    80001f2c:	f14027f3          	csrr	a5,mhartid
    80001f30:	0200c737          	lui	a4,0x200c
    80001f34:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f38:	0007869b          	sext.w	a3,a5
    80001f3c:	00269713          	slli	a4,a3,0x2
    80001f40:	000f4637          	lui	a2,0xf4
    80001f44:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f48:	00d70733          	add	a4,a4,a3
    80001f4c:	0037979b          	slliw	a5,a5,0x3
    80001f50:	020046b7          	lui	a3,0x2004
    80001f54:	00d787b3          	add	a5,a5,a3
    80001f58:	00c585b3          	add	a1,a1,a2
    80001f5c:	00371693          	slli	a3,a4,0x3
    80001f60:	00004717          	auipc	a4,0x4
    80001f64:	a0070713          	addi	a4,a4,-1536 # 80005960 <timer_scratch>
    80001f68:	00b7b023          	sd	a1,0(a5)
    80001f6c:	00d70733          	add	a4,a4,a3
    80001f70:	00f73c23          	sd	a5,24(a4)
    80001f74:	02c73023          	sd	a2,32(a4)
    80001f78:	34071073          	csrw	mscratch,a4
    80001f7c:	00000797          	auipc	a5,0x0
    80001f80:	6e478793          	addi	a5,a5,1764 # 80002660 <timervec>
    80001f84:	30579073          	csrw	mtvec,a5
    80001f88:	300027f3          	csrr	a5,mstatus
    80001f8c:	0087e793          	ori	a5,a5,8
    80001f90:	30079073          	csrw	mstatus,a5
    80001f94:	304027f3          	csrr	a5,mie
    80001f98:	0807e793          	ori	a5,a5,128
    80001f9c:	30479073          	csrw	mie,a5
    80001fa0:	f14027f3          	csrr	a5,mhartid
    80001fa4:	0007879b          	sext.w	a5,a5
    80001fa8:	00078213          	mv	tp,a5
    80001fac:	30200073          	mret
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <timerinit>:
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00813423          	sd	s0,8(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    80001fc8:	f14027f3          	csrr	a5,mhartid
    80001fcc:	0200c737          	lui	a4,0x200c
    80001fd0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fd4:	0007869b          	sext.w	a3,a5
    80001fd8:	00269713          	slli	a4,a3,0x2
    80001fdc:	000f4637          	lui	a2,0xf4
    80001fe0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fe4:	00d70733          	add	a4,a4,a3
    80001fe8:	0037979b          	slliw	a5,a5,0x3
    80001fec:	020046b7          	lui	a3,0x2004
    80001ff0:	00d787b3          	add	a5,a5,a3
    80001ff4:	00c585b3          	add	a1,a1,a2
    80001ff8:	00371693          	slli	a3,a4,0x3
    80001ffc:	00004717          	auipc	a4,0x4
    80002000:	96470713          	addi	a4,a4,-1692 # 80005960 <timer_scratch>
    80002004:	00b7b023          	sd	a1,0(a5)
    80002008:	00d70733          	add	a4,a4,a3
    8000200c:	00f73c23          	sd	a5,24(a4)
    80002010:	02c73023          	sd	a2,32(a4)
    80002014:	34071073          	csrw	mscratch,a4
    80002018:	00000797          	auipc	a5,0x0
    8000201c:	64878793          	addi	a5,a5,1608 # 80002660 <timervec>
    80002020:	30579073          	csrw	mtvec,a5
    80002024:	300027f3          	csrr	a5,mstatus
    80002028:	0087e793          	ori	a5,a5,8
    8000202c:	30079073          	csrw	mstatus,a5
    80002030:	304027f3          	csrr	a5,mie
    80002034:	0807e793          	ori	a5,a5,128
    80002038:	30479073          	csrw	mie,a5
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <system_main>:
    80002048:	fe010113          	addi	sp,sp,-32
    8000204c:	00813823          	sd	s0,16(sp)
    80002050:	00913423          	sd	s1,8(sp)
    80002054:	00113c23          	sd	ra,24(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	0c4080e7          	jalr	196(ra) # 80002120 <cpuid>
    80002064:	00004497          	auipc	s1,0x4
    80002068:	89c48493          	addi	s1,s1,-1892 # 80005900 <started>
    8000206c:	02050263          	beqz	a0,80002090 <system_main+0x48>
    80002070:	0004a783          	lw	a5,0(s1)
    80002074:	0007879b          	sext.w	a5,a5
    80002078:	fe078ce3          	beqz	a5,80002070 <system_main+0x28>
    8000207c:	0ff0000f          	fence
    80002080:	00003517          	auipc	a0,0x3
    80002084:	02850513          	addi	a0,a0,40 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	a74080e7          	jalr	-1420(ra) # 80002afc <panic>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	9c8080e7          	jalr	-1592(ra) # 80002a58 <consoleinit>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	154080e7          	jalr	340(ra) # 800031ec <printfinit>
    800020a0:	00003517          	auipc	a0,0x3
    800020a4:	f9050513          	addi	a0,a0,-112 # 80005030 <kvmincrease+0xd70>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	ab0080e7          	jalr	-1360(ra) # 80002b58 <__printf>
    800020b0:	00003517          	auipc	a0,0x3
    800020b4:	fc850513          	addi	a0,a0,-56 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	aa0080e7          	jalr	-1376(ra) # 80002b58 <__printf>
    800020c0:	00003517          	auipc	a0,0x3
    800020c4:	f7050513          	addi	a0,a0,-144 # 80005030 <kvmincrease+0xd70>
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	a90080e7          	jalr	-1392(ra) # 80002b58 <__printf>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	4a8080e7          	jalr	1192(ra) # 80003578 <kinit>
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	148080e7          	jalr	328(ra) # 80002220 <trapinit>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	16c080e7          	jalr	364(ra) # 8000224c <trapinithart>
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	5b8080e7          	jalr	1464(ra) # 800026a0 <plicinit>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	5d8080e7          	jalr	1496(ra) # 800026c8 <plicinithart>
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	078080e7          	jalr	120(ra) # 80002170 <userinit>
    80002100:	0ff0000f          	fence
    80002104:	00100793          	li	a5,1
    80002108:	00003517          	auipc	a0,0x3
    8000210c:	f8850513          	addi	a0,a0,-120 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    80002110:	00f4a023          	sw	a5,0(s1)
    80002114:	00001097          	auipc	ra,0x1
    80002118:	a44080e7          	jalr	-1468(ra) # 80002b58 <__printf>
    8000211c:	0000006f          	j	8000211c <system_main+0xd4>

0000000080002120 <cpuid>:
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00813423          	sd	s0,8(sp)
    80002128:	01010413          	addi	s0,sp,16
    8000212c:	00020513          	mv	a0,tp
    80002130:	00813403          	ld	s0,8(sp)
    80002134:	0005051b          	sext.w	a0,a0
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <mycpu>:
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    8000214c:	00020793          	mv	a5,tp
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	0007879b          	sext.w	a5,a5
    80002158:	00779793          	slli	a5,a5,0x7
    8000215c:	00005517          	auipc	a0,0x5
    80002160:	83450513          	addi	a0,a0,-1996 # 80006990 <cpus>
    80002164:	00f50533          	add	a0,a0,a5
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <userinit>:
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00813423          	sd	s0,8(sp)
    80002178:	01010413          	addi	s0,sp,16
    8000217c:	00813403          	ld	s0,8(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	fffff317          	auipc	t1,0xfffff
    80002188:	3cc30067          	jr	972(t1) # 80001550 <main>

000000008000218c <either_copyout>:
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	00113423          	sd	ra,8(sp)
    80002198:	01010413          	addi	s0,sp,16
    8000219c:	02051663          	bnez	a0,800021c8 <either_copyout+0x3c>
    800021a0:	00058513          	mv	a0,a1
    800021a4:	00060593          	mv	a1,a2
    800021a8:	0006861b          	sext.w	a2,a3
    800021ac:	00002097          	auipc	ra,0x2
    800021b0:	c58080e7          	jalr	-936(ra) # 80003e04 <__memmove>
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	00000513          	li	a0,0
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret
    800021c8:	00003517          	auipc	a0,0x3
    800021cc:	f0850513          	addi	a0,a0,-248 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	92c080e7          	jalr	-1748(ra) # 80002afc <panic>

00000000800021d8 <either_copyin>:
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    800021e8:	02059463          	bnez	a1,80002210 <either_copyin+0x38>
    800021ec:	00060593          	mv	a1,a2
    800021f0:	0006861b          	sext.w	a2,a3
    800021f4:	00002097          	auipc	ra,0x2
    800021f8:	c10080e7          	jalr	-1008(ra) # 80003e04 <__memmove>
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	00000513          	li	a0,0
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret
    80002210:	00003517          	auipc	a0,0x3
    80002214:	ee850513          	addi	a0,a0,-280 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	8e4080e7          	jalr	-1820(ra) # 80002afc <panic>

0000000080002220 <trapinit>:
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	00003597          	auipc	a1,0x3
    80002234:	ef058593          	addi	a1,a1,-272 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    80002238:	00004517          	auipc	a0,0x4
    8000223c:	7d850513          	addi	a0,a0,2008 # 80006a10 <tickslock>
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00001317          	auipc	t1,0x1
    80002248:	5c430067          	jr	1476(t1) # 80003808 <initlock>

000000008000224c <trapinithart>:
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00813423          	sd	s0,8(sp)
    80002254:	01010413          	addi	s0,sp,16
    80002258:	00000797          	auipc	a5,0x0
    8000225c:	2f878793          	addi	a5,a5,760 # 80002550 <kernelvec>
    80002260:	10579073          	csrw	stvec,a5
    80002264:	00813403          	ld	s0,8(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <usertrap>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	00813403          	ld	s0,8(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <usertrapret>:
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    80002294:	00813403          	ld	s0,8(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <kerneltrap>:
    800022a0:	fe010113          	addi	sp,sp,-32
    800022a4:	00813823          	sd	s0,16(sp)
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	02010413          	addi	s0,sp,32
    800022b4:	142025f3          	csrr	a1,scause
    800022b8:	100027f3          	csrr	a5,sstatus
    800022bc:	0027f793          	andi	a5,a5,2
    800022c0:	10079c63          	bnez	a5,800023d8 <kerneltrap+0x138>
    800022c4:	142027f3          	csrr	a5,scause
    800022c8:	0207ce63          	bltz	a5,80002304 <kerneltrap+0x64>
    800022cc:	00003517          	auipc	a0,0x3
    800022d0:	e9c50513          	addi	a0,a0,-356 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	884080e7          	jalr	-1916(ra) # 80002b58 <__printf>
    800022dc:	141025f3          	csrr	a1,sepc
    800022e0:	14302673          	csrr	a2,stval
    800022e4:	00003517          	auipc	a0,0x3
    800022e8:	e9450513          	addi	a0,a0,-364 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	86c080e7          	jalr	-1940(ra) # 80002b58 <__printf>
    800022f4:	00003517          	auipc	a0,0x3
    800022f8:	e9c50513          	addi	a0,a0,-356 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	800080e7          	jalr	-2048(ra) # 80002afc <panic>
    80002304:	0ff7f713          	andi	a4,a5,255
    80002308:	00900693          	li	a3,9
    8000230c:	04d70063          	beq	a4,a3,8000234c <kerneltrap+0xac>
    80002310:	fff00713          	li	a4,-1
    80002314:	03f71713          	slli	a4,a4,0x3f
    80002318:	00170713          	addi	a4,a4,1
    8000231c:	fae798e3          	bne	a5,a4,800022cc <kerneltrap+0x2c>
    80002320:	00000097          	auipc	ra,0x0
    80002324:	e00080e7          	jalr	-512(ra) # 80002120 <cpuid>
    80002328:	06050663          	beqz	a0,80002394 <kerneltrap+0xf4>
    8000232c:	144027f3          	csrr	a5,sip
    80002330:	ffd7f793          	andi	a5,a5,-3
    80002334:	14479073          	csrw	sip,a5
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	3c8080e7          	jalr	968(ra) # 80002714 <plic_claim>
    80002354:	00a00793          	li	a5,10
    80002358:	00050493          	mv	s1,a0
    8000235c:	06f50863          	beq	a0,a5,800023cc <kerneltrap+0x12c>
    80002360:	fc050ce3          	beqz	a0,80002338 <kerneltrap+0x98>
    80002364:	00050593          	mv	a1,a0
    80002368:	00003517          	auipc	a0,0x3
    8000236c:	de050513          	addi	a0,a0,-544 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80002370:	00000097          	auipc	ra,0x0
    80002374:	7e8080e7          	jalr	2024(ra) # 80002b58 <__printf>
    80002378:	01013403          	ld	s0,16(sp)
    8000237c:	01813083          	ld	ra,24(sp)
    80002380:	00048513          	mv	a0,s1
    80002384:	00813483          	ld	s1,8(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00000317          	auipc	t1,0x0
    80002390:	3c030067          	jr	960(t1) # 8000274c <plic_complete>
    80002394:	00004517          	auipc	a0,0x4
    80002398:	67c50513          	addi	a0,a0,1660 # 80006a10 <tickslock>
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	490080e7          	jalr	1168(ra) # 8000382c <acquire>
    800023a4:	00003717          	auipc	a4,0x3
    800023a8:	56070713          	addi	a4,a4,1376 # 80005904 <ticks>
    800023ac:	00072783          	lw	a5,0(a4)
    800023b0:	00004517          	auipc	a0,0x4
    800023b4:	66050513          	addi	a0,a0,1632 # 80006a10 <tickslock>
    800023b8:	0017879b          	addiw	a5,a5,1
    800023bc:	00f72023          	sw	a5,0(a4)
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	538080e7          	jalr	1336(ra) # 800038f8 <release>
    800023c8:	f65ff06f          	j	8000232c <kerneltrap+0x8c>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	094080e7          	jalr	148(ra) # 80003460 <uartintr>
    800023d4:	fa5ff06f          	j	80002378 <kerneltrap+0xd8>
    800023d8:	00003517          	auipc	a0,0x3
    800023dc:	d5050513          	addi	a0,a0,-688 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	71c080e7          	jalr	1820(ra) # 80002afc <panic>

00000000800023e8 <clockintr>:
    800023e8:	fe010113          	addi	sp,sp,-32
    800023ec:	00813823          	sd	s0,16(sp)
    800023f0:	00913423          	sd	s1,8(sp)
    800023f4:	00113c23          	sd	ra,24(sp)
    800023f8:	02010413          	addi	s0,sp,32
    800023fc:	00004497          	auipc	s1,0x4
    80002400:	61448493          	addi	s1,s1,1556 # 80006a10 <tickslock>
    80002404:	00048513          	mv	a0,s1
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	424080e7          	jalr	1060(ra) # 8000382c <acquire>
    80002410:	00003717          	auipc	a4,0x3
    80002414:	4f470713          	addi	a4,a4,1268 # 80005904 <ticks>
    80002418:	00072783          	lw	a5,0(a4)
    8000241c:	01013403          	ld	s0,16(sp)
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	00048513          	mv	a0,s1
    80002428:	0017879b          	addiw	a5,a5,1
    8000242c:	00813483          	ld	s1,8(sp)
    80002430:	00f72023          	sw	a5,0(a4)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00001317          	auipc	t1,0x1
    8000243c:	4c030067          	jr	1216(t1) # 800038f8 <release>

0000000080002440 <devintr>:
    80002440:	142027f3          	csrr	a5,scause
    80002444:	00000513          	li	a0,0
    80002448:	0007c463          	bltz	a5,80002450 <devintr+0x10>
    8000244c:	00008067          	ret
    80002450:	fe010113          	addi	sp,sp,-32
    80002454:	00813823          	sd	s0,16(sp)
    80002458:	00113c23          	sd	ra,24(sp)
    8000245c:	00913423          	sd	s1,8(sp)
    80002460:	02010413          	addi	s0,sp,32
    80002464:	0ff7f713          	andi	a4,a5,255
    80002468:	00900693          	li	a3,9
    8000246c:	04d70c63          	beq	a4,a3,800024c4 <devintr+0x84>
    80002470:	fff00713          	li	a4,-1
    80002474:	03f71713          	slli	a4,a4,0x3f
    80002478:	00170713          	addi	a4,a4,1
    8000247c:	00e78c63          	beq	a5,a4,80002494 <devintr+0x54>
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	01013403          	ld	s0,16(sp)
    80002488:	00813483          	ld	s1,8(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret
    80002494:	00000097          	auipc	ra,0x0
    80002498:	c8c080e7          	jalr	-884(ra) # 80002120 <cpuid>
    8000249c:	06050663          	beqz	a0,80002508 <devintr+0xc8>
    800024a0:	144027f3          	csrr	a5,sip
    800024a4:	ffd7f793          	andi	a5,a5,-3
    800024a8:	14479073          	csrw	sip,a5
    800024ac:	01813083          	ld	ra,24(sp)
    800024b0:	01013403          	ld	s0,16(sp)
    800024b4:	00813483          	ld	s1,8(sp)
    800024b8:	00200513          	li	a0,2
    800024bc:	02010113          	addi	sp,sp,32
    800024c0:	00008067          	ret
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	250080e7          	jalr	592(ra) # 80002714 <plic_claim>
    800024cc:	00a00793          	li	a5,10
    800024d0:	00050493          	mv	s1,a0
    800024d4:	06f50663          	beq	a0,a5,80002540 <devintr+0x100>
    800024d8:	00100513          	li	a0,1
    800024dc:	fa0482e3          	beqz	s1,80002480 <devintr+0x40>
    800024e0:	00048593          	mv	a1,s1
    800024e4:	00003517          	auipc	a0,0x3
    800024e8:	c6450513          	addi	a0,a0,-924 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	66c080e7          	jalr	1644(ra) # 80002b58 <__printf>
    800024f4:	00048513          	mv	a0,s1
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	254080e7          	jalr	596(ra) # 8000274c <plic_complete>
    80002500:	00100513          	li	a0,1
    80002504:	f7dff06f          	j	80002480 <devintr+0x40>
    80002508:	00004517          	auipc	a0,0x4
    8000250c:	50850513          	addi	a0,a0,1288 # 80006a10 <tickslock>
    80002510:	00001097          	auipc	ra,0x1
    80002514:	31c080e7          	jalr	796(ra) # 8000382c <acquire>
    80002518:	00003717          	auipc	a4,0x3
    8000251c:	3ec70713          	addi	a4,a4,1004 # 80005904 <ticks>
    80002520:	00072783          	lw	a5,0(a4)
    80002524:	00004517          	auipc	a0,0x4
    80002528:	4ec50513          	addi	a0,a0,1260 # 80006a10 <tickslock>
    8000252c:	0017879b          	addiw	a5,a5,1
    80002530:	00f72023          	sw	a5,0(a4)
    80002534:	00001097          	auipc	ra,0x1
    80002538:	3c4080e7          	jalr	964(ra) # 800038f8 <release>
    8000253c:	f65ff06f          	j	800024a0 <devintr+0x60>
    80002540:	00001097          	auipc	ra,0x1
    80002544:	f20080e7          	jalr	-224(ra) # 80003460 <uartintr>
    80002548:	fadff06f          	j	800024f4 <devintr+0xb4>
    8000254c:	0000                	unimp
	...

0000000080002550 <kernelvec>:
    80002550:	f0010113          	addi	sp,sp,-256
    80002554:	00113023          	sd	ra,0(sp)
    80002558:	00213423          	sd	sp,8(sp)
    8000255c:	00313823          	sd	gp,16(sp)
    80002560:	00413c23          	sd	tp,24(sp)
    80002564:	02513023          	sd	t0,32(sp)
    80002568:	02613423          	sd	t1,40(sp)
    8000256c:	02713823          	sd	t2,48(sp)
    80002570:	02813c23          	sd	s0,56(sp)
    80002574:	04913023          	sd	s1,64(sp)
    80002578:	04a13423          	sd	a0,72(sp)
    8000257c:	04b13823          	sd	a1,80(sp)
    80002580:	04c13c23          	sd	a2,88(sp)
    80002584:	06d13023          	sd	a3,96(sp)
    80002588:	06e13423          	sd	a4,104(sp)
    8000258c:	06f13823          	sd	a5,112(sp)
    80002590:	07013c23          	sd	a6,120(sp)
    80002594:	09113023          	sd	a7,128(sp)
    80002598:	09213423          	sd	s2,136(sp)
    8000259c:	09313823          	sd	s3,144(sp)
    800025a0:	09413c23          	sd	s4,152(sp)
    800025a4:	0b513023          	sd	s5,160(sp)
    800025a8:	0b613423          	sd	s6,168(sp)
    800025ac:	0b713823          	sd	s7,176(sp)
    800025b0:	0b813c23          	sd	s8,184(sp)
    800025b4:	0d913023          	sd	s9,192(sp)
    800025b8:	0da13423          	sd	s10,200(sp)
    800025bc:	0db13823          	sd	s11,208(sp)
    800025c0:	0dc13c23          	sd	t3,216(sp)
    800025c4:	0fd13023          	sd	t4,224(sp)
    800025c8:	0fe13423          	sd	t5,232(sp)
    800025cc:	0ff13823          	sd	t6,240(sp)
    800025d0:	cd1ff0ef          	jal	ra,800022a0 <kerneltrap>
    800025d4:	00013083          	ld	ra,0(sp)
    800025d8:	00813103          	ld	sp,8(sp)
    800025dc:	01013183          	ld	gp,16(sp)
    800025e0:	02013283          	ld	t0,32(sp)
    800025e4:	02813303          	ld	t1,40(sp)
    800025e8:	03013383          	ld	t2,48(sp)
    800025ec:	03813403          	ld	s0,56(sp)
    800025f0:	04013483          	ld	s1,64(sp)
    800025f4:	04813503          	ld	a0,72(sp)
    800025f8:	05013583          	ld	a1,80(sp)
    800025fc:	05813603          	ld	a2,88(sp)
    80002600:	06013683          	ld	a3,96(sp)
    80002604:	06813703          	ld	a4,104(sp)
    80002608:	07013783          	ld	a5,112(sp)
    8000260c:	07813803          	ld	a6,120(sp)
    80002610:	08013883          	ld	a7,128(sp)
    80002614:	08813903          	ld	s2,136(sp)
    80002618:	09013983          	ld	s3,144(sp)
    8000261c:	09813a03          	ld	s4,152(sp)
    80002620:	0a013a83          	ld	s5,160(sp)
    80002624:	0a813b03          	ld	s6,168(sp)
    80002628:	0b013b83          	ld	s7,176(sp)
    8000262c:	0b813c03          	ld	s8,184(sp)
    80002630:	0c013c83          	ld	s9,192(sp)
    80002634:	0c813d03          	ld	s10,200(sp)
    80002638:	0d013d83          	ld	s11,208(sp)
    8000263c:	0d813e03          	ld	t3,216(sp)
    80002640:	0e013e83          	ld	t4,224(sp)
    80002644:	0e813f03          	ld	t5,232(sp)
    80002648:	0f013f83          	ld	t6,240(sp)
    8000264c:	10010113          	addi	sp,sp,256
    80002650:	10200073          	sret
    80002654:	00000013          	nop
    80002658:	00000013          	nop
    8000265c:	00000013          	nop

0000000080002660 <timervec>:
    80002660:	34051573          	csrrw	a0,mscratch,a0
    80002664:	00b53023          	sd	a1,0(a0)
    80002668:	00c53423          	sd	a2,8(a0)
    8000266c:	00d53823          	sd	a3,16(a0)
    80002670:	01853583          	ld	a1,24(a0)
    80002674:	02053603          	ld	a2,32(a0)
    80002678:	0005b683          	ld	a3,0(a1)
    8000267c:	00c686b3          	add	a3,a3,a2
    80002680:	00d5b023          	sd	a3,0(a1)
    80002684:	00200593          	li	a1,2
    80002688:	14459073          	csrw	sip,a1
    8000268c:	01053683          	ld	a3,16(a0)
    80002690:	00853603          	ld	a2,8(a0)
    80002694:	00053583          	ld	a1,0(a0)
    80002698:	34051573          	csrrw	a0,mscratch,a0
    8000269c:	30200073          	mret

00000000800026a0 <plicinit>:
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00813423          	sd	s0,8(sp)
    800026a8:	01010413          	addi	s0,sp,16
    800026ac:	00813403          	ld	s0,8(sp)
    800026b0:	0c0007b7          	lui	a5,0xc000
    800026b4:	00100713          	li	a4,1
    800026b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800026bc:	00e7a223          	sw	a4,4(a5)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <plicinithart>:
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	00113423          	sd	ra,8(sp)
    800026d4:	01010413          	addi	s0,sp,16
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	a48080e7          	jalr	-1464(ra) # 80002120 <cpuid>
    800026e0:	0085171b          	slliw	a4,a0,0x8
    800026e4:	0c0027b7          	lui	a5,0xc002
    800026e8:	00e787b3          	add	a5,a5,a4
    800026ec:	40200713          	li	a4,1026
    800026f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	00d5151b          	slliw	a0,a0,0xd
    80002700:	0c2017b7          	lui	a5,0xc201
    80002704:	00a78533          	add	a0,a5,a0
    80002708:	00052023          	sw	zero,0(a0)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <plic_claim>:
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	00113423          	sd	ra,8(sp)
    80002720:	01010413          	addi	s0,sp,16
    80002724:	00000097          	auipc	ra,0x0
    80002728:	9fc080e7          	jalr	-1540(ra) # 80002120 <cpuid>
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	00d5151b          	slliw	a0,a0,0xd
    80002738:	0c2017b7          	lui	a5,0xc201
    8000273c:	00a78533          	add	a0,a5,a0
    80002740:	00452503          	lw	a0,4(a0)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <plic_complete>:
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00813823          	sd	s0,16(sp)
    80002754:	00913423          	sd	s1,8(sp)
    80002758:	00113c23          	sd	ra,24(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
    80002764:	00000097          	auipc	ra,0x0
    80002768:	9bc080e7          	jalr	-1604(ra) # 80002120 <cpuid>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00d5179b          	slliw	a5,a0,0xd
    80002778:	0c201737          	lui	a4,0xc201
    8000277c:	00f707b3          	add	a5,a4,a5
    80002780:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002784:	00813483          	ld	s1,8(sp)
    80002788:	02010113          	addi	sp,sp,32
    8000278c:	00008067          	ret

0000000080002790 <consolewrite>:
    80002790:	fb010113          	addi	sp,sp,-80
    80002794:	04813023          	sd	s0,64(sp)
    80002798:	04113423          	sd	ra,72(sp)
    8000279c:	02913c23          	sd	s1,56(sp)
    800027a0:	03213823          	sd	s2,48(sp)
    800027a4:	03313423          	sd	s3,40(sp)
    800027a8:	03413023          	sd	s4,32(sp)
    800027ac:	01513c23          	sd	s5,24(sp)
    800027b0:	05010413          	addi	s0,sp,80
    800027b4:	06c05c63          	blez	a2,8000282c <consolewrite+0x9c>
    800027b8:	00060993          	mv	s3,a2
    800027bc:	00050a13          	mv	s4,a0
    800027c0:	00058493          	mv	s1,a1
    800027c4:	00000913          	li	s2,0
    800027c8:	fff00a93          	li	s5,-1
    800027cc:	01c0006f          	j	800027e8 <consolewrite+0x58>
    800027d0:	fbf44503          	lbu	a0,-65(s0)
    800027d4:	0019091b          	addiw	s2,s2,1
    800027d8:	00148493          	addi	s1,s1,1
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	a9c080e7          	jalr	-1380(ra) # 80003278 <uartputc>
    800027e4:	03298063          	beq	s3,s2,80002804 <consolewrite+0x74>
    800027e8:	00048613          	mv	a2,s1
    800027ec:	00100693          	li	a3,1
    800027f0:	000a0593          	mv	a1,s4
    800027f4:	fbf40513          	addi	a0,s0,-65
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	9e0080e7          	jalr	-1568(ra) # 800021d8 <either_copyin>
    80002800:	fd5518e3          	bne	a0,s5,800027d0 <consolewrite+0x40>
    80002804:	04813083          	ld	ra,72(sp)
    80002808:	04013403          	ld	s0,64(sp)
    8000280c:	03813483          	ld	s1,56(sp)
    80002810:	02813983          	ld	s3,40(sp)
    80002814:	02013a03          	ld	s4,32(sp)
    80002818:	01813a83          	ld	s5,24(sp)
    8000281c:	00090513          	mv	a0,s2
    80002820:	03013903          	ld	s2,48(sp)
    80002824:	05010113          	addi	sp,sp,80
    80002828:	00008067          	ret
    8000282c:	00000913          	li	s2,0
    80002830:	fd5ff06f          	j	80002804 <consolewrite+0x74>

0000000080002834 <consoleread>:
    80002834:	f9010113          	addi	sp,sp,-112
    80002838:	06813023          	sd	s0,96(sp)
    8000283c:	04913c23          	sd	s1,88(sp)
    80002840:	05213823          	sd	s2,80(sp)
    80002844:	05313423          	sd	s3,72(sp)
    80002848:	05413023          	sd	s4,64(sp)
    8000284c:	03513c23          	sd	s5,56(sp)
    80002850:	03613823          	sd	s6,48(sp)
    80002854:	03713423          	sd	s7,40(sp)
    80002858:	03813023          	sd	s8,32(sp)
    8000285c:	06113423          	sd	ra,104(sp)
    80002860:	01913c23          	sd	s9,24(sp)
    80002864:	07010413          	addi	s0,sp,112
    80002868:	00060b93          	mv	s7,a2
    8000286c:	00050913          	mv	s2,a0
    80002870:	00058c13          	mv	s8,a1
    80002874:	00060b1b          	sext.w	s6,a2
    80002878:	00004497          	auipc	s1,0x4
    8000287c:	1c048493          	addi	s1,s1,448 # 80006a38 <cons>
    80002880:	00400993          	li	s3,4
    80002884:	fff00a13          	li	s4,-1
    80002888:	00a00a93          	li	s5,10
    8000288c:	05705e63          	blez	s7,800028e8 <consoleread+0xb4>
    80002890:	09c4a703          	lw	a4,156(s1)
    80002894:	0984a783          	lw	a5,152(s1)
    80002898:	0007071b          	sext.w	a4,a4
    8000289c:	08e78463          	beq	a5,a4,80002924 <consoleread+0xf0>
    800028a0:	07f7f713          	andi	a4,a5,127
    800028a4:	00e48733          	add	a4,s1,a4
    800028a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800028ac:	0017869b          	addiw	a3,a5,1
    800028b0:	08d4ac23          	sw	a3,152(s1)
    800028b4:	00070c9b          	sext.w	s9,a4
    800028b8:	0b370663          	beq	a4,s3,80002964 <consoleread+0x130>
    800028bc:	00100693          	li	a3,1
    800028c0:	f9f40613          	addi	a2,s0,-97
    800028c4:	000c0593          	mv	a1,s8
    800028c8:	00090513          	mv	a0,s2
    800028cc:	f8e40fa3          	sb	a4,-97(s0)
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	8bc080e7          	jalr	-1860(ra) # 8000218c <either_copyout>
    800028d8:	01450863          	beq	a0,s4,800028e8 <consoleread+0xb4>
    800028dc:	001c0c13          	addi	s8,s8,1
    800028e0:	fffb8b9b          	addiw	s7,s7,-1
    800028e4:	fb5c94e3          	bne	s9,s5,8000288c <consoleread+0x58>
    800028e8:	000b851b          	sext.w	a0,s7
    800028ec:	06813083          	ld	ra,104(sp)
    800028f0:	06013403          	ld	s0,96(sp)
    800028f4:	05813483          	ld	s1,88(sp)
    800028f8:	05013903          	ld	s2,80(sp)
    800028fc:	04813983          	ld	s3,72(sp)
    80002900:	04013a03          	ld	s4,64(sp)
    80002904:	03813a83          	ld	s5,56(sp)
    80002908:	02813b83          	ld	s7,40(sp)
    8000290c:	02013c03          	ld	s8,32(sp)
    80002910:	01813c83          	ld	s9,24(sp)
    80002914:	40ab053b          	subw	a0,s6,a0
    80002918:	03013b03          	ld	s6,48(sp)
    8000291c:	07010113          	addi	sp,sp,112
    80002920:	00008067          	ret
    80002924:	00001097          	auipc	ra,0x1
    80002928:	1d8080e7          	jalr	472(ra) # 80003afc <push_on>
    8000292c:	0984a703          	lw	a4,152(s1)
    80002930:	09c4a783          	lw	a5,156(s1)
    80002934:	0007879b          	sext.w	a5,a5
    80002938:	fef70ce3          	beq	a4,a5,80002930 <consoleread+0xfc>
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	234080e7          	jalr	564(ra) # 80003b70 <pop_on>
    80002944:	0984a783          	lw	a5,152(s1)
    80002948:	07f7f713          	andi	a4,a5,127
    8000294c:	00e48733          	add	a4,s1,a4
    80002950:	01874703          	lbu	a4,24(a4)
    80002954:	0017869b          	addiw	a3,a5,1
    80002958:	08d4ac23          	sw	a3,152(s1)
    8000295c:	00070c9b          	sext.w	s9,a4
    80002960:	f5371ee3          	bne	a4,s3,800028bc <consoleread+0x88>
    80002964:	000b851b          	sext.w	a0,s7
    80002968:	f96bf2e3          	bgeu	s7,s6,800028ec <consoleread+0xb8>
    8000296c:	08f4ac23          	sw	a5,152(s1)
    80002970:	f7dff06f          	j	800028ec <consoleread+0xb8>

0000000080002974 <consputc>:
    80002974:	10000793          	li	a5,256
    80002978:	00f50663          	beq	a0,a5,80002984 <consputc+0x10>
    8000297c:	00001317          	auipc	t1,0x1
    80002980:	9f430067          	jr	-1548(t1) # 80003370 <uartputc_sync>
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00800513          	li	a0,8
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	9d8080e7          	jalr	-1576(ra) # 80003370 <uartputc_sync>
    800029a0:	02000513          	li	a0,32
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	9cc080e7          	jalr	-1588(ra) # 80003370 <uartputc_sync>
    800029ac:	00013403          	ld	s0,0(sp)
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00800513          	li	a0,8
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00001317          	auipc	t1,0x1
    800029c0:	9b430067          	jr	-1612(t1) # 80003370 <uartputc_sync>

00000000800029c4 <consoleintr>:
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	01213023          	sd	s2,0(sp)
    800029d4:	00113c23          	sd	ra,24(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	00004917          	auipc	s2,0x4
    800029e0:	05c90913          	addi	s2,s2,92 # 80006a38 <cons>
    800029e4:	00050493          	mv	s1,a0
    800029e8:	00090513          	mv	a0,s2
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	e40080e7          	jalr	-448(ra) # 8000382c <acquire>
    800029f4:	02048c63          	beqz	s1,80002a2c <consoleintr+0x68>
    800029f8:	0a092783          	lw	a5,160(s2)
    800029fc:	09892703          	lw	a4,152(s2)
    80002a00:	07f00693          	li	a3,127
    80002a04:	40e7873b          	subw	a4,a5,a4
    80002a08:	02e6e263          	bltu	a3,a4,80002a2c <consoleintr+0x68>
    80002a0c:	00d00713          	li	a4,13
    80002a10:	04e48063          	beq	s1,a4,80002a50 <consoleintr+0x8c>
    80002a14:	07f7f713          	andi	a4,a5,127
    80002a18:	00e90733          	add	a4,s2,a4
    80002a1c:	0017879b          	addiw	a5,a5,1
    80002a20:	0af92023          	sw	a5,160(s2)
    80002a24:	00970c23          	sb	s1,24(a4)
    80002a28:	08f92e23          	sw	a5,156(s2)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	01813083          	ld	ra,24(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	00013903          	ld	s2,0(sp)
    80002a3c:	00004517          	auipc	a0,0x4
    80002a40:	ffc50513          	addi	a0,a0,-4 # 80006a38 <cons>
    80002a44:	02010113          	addi	sp,sp,32
    80002a48:	00001317          	auipc	t1,0x1
    80002a4c:	eb030067          	jr	-336(t1) # 800038f8 <release>
    80002a50:	00a00493          	li	s1,10
    80002a54:	fc1ff06f          	j	80002a14 <consoleintr+0x50>

0000000080002a58 <consoleinit>:
    80002a58:	fe010113          	addi	sp,sp,-32
    80002a5c:	00113c23          	sd	ra,24(sp)
    80002a60:	00813823          	sd	s0,16(sp)
    80002a64:	00913423          	sd	s1,8(sp)
    80002a68:	02010413          	addi	s0,sp,32
    80002a6c:	00004497          	auipc	s1,0x4
    80002a70:	fcc48493          	addi	s1,s1,-52 # 80006a38 <cons>
    80002a74:	00048513          	mv	a0,s1
    80002a78:	00002597          	auipc	a1,0x2
    80002a7c:	72858593          	addi	a1,a1,1832 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	d88080e7          	jalr	-632(ra) # 80003808 <initlock>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	7ac080e7          	jalr	1964(ra) # 80003234 <uartinit>
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	00000797          	auipc	a5,0x0
    80002a9c:	d9c78793          	addi	a5,a5,-612 # 80002834 <consoleread>
    80002aa0:	0af4bc23          	sd	a5,184(s1)
    80002aa4:	00000797          	auipc	a5,0x0
    80002aa8:	cec78793          	addi	a5,a5,-788 # 80002790 <consolewrite>
    80002aac:	0cf4b023          	sd	a5,192(s1)
    80002ab0:	00813483          	ld	s1,8(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <console_read>:
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00813423          	sd	s0,8(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	00004317          	auipc	t1,0x4
    80002ad0:	02433303          	ld	t1,36(t1) # 80006af0 <devsw+0x10>
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00030067          	jr	t1

0000000080002adc <console_write>:
    80002adc:	ff010113          	addi	sp,sp,-16
    80002ae0:	00813423          	sd	s0,8(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    80002ae8:	00813403          	ld	s0,8(sp)
    80002aec:	00004317          	auipc	t1,0x4
    80002af0:	00c33303          	ld	t1,12(t1) # 80006af8 <devsw+0x18>
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00030067          	jr	t1

0000000080002afc <panic>:
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	02010413          	addi	s0,sp,32
    80002b10:	00050493          	mv	s1,a0
    80002b14:	00002517          	auipc	a0,0x2
    80002b18:	69450513          	addi	a0,a0,1684 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002b1c:	00004797          	auipc	a5,0x4
    80002b20:	0607ae23          	sw	zero,124(a5) # 80006b98 <pr+0x18>
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	034080e7          	jalr	52(ra) # 80002b58 <__printf>
    80002b2c:	00048513          	mv	a0,s1
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	028080e7          	jalr	40(ra) # 80002b58 <__printf>
    80002b38:	00002517          	auipc	a0,0x2
    80002b3c:	4f850513          	addi	a0,a0,1272 # 80005030 <kvmincrease+0xd70>
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	018080e7          	jalr	24(ra) # 80002b58 <__printf>
    80002b48:	00100793          	li	a5,1
    80002b4c:	00003717          	auipc	a4,0x3
    80002b50:	daf72e23          	sw	a5,-580(a4) # 80005908 <panicked>
    80002b54:	0000006f          	j	80002b54 <panic+0x58>

0000000080002b58 <__printf>:
    80002b58:	f3010113          	addi	sp,sp,-208
    80002b5c:	08813023          	sd	s0,128(sp)
    80002b60:	07313423          	sd	s3,104(sp)
    80002b64:	09010413          	addi	s0,sp,144
    80002b68:	05813023          	sd	s8,64(sp)
    80002b6c:	08113423          	sd	ra,136(sp)
    80002b70:	06913c23          	sd	s1,120(sp)
    80002b74:	07213823          	sd	s2,112(sp)
    80002b78:	07413023          	sd	s4,96(sp)
    80002b7c:	05513c23          	sd	s5,88(sp)
    80002b80:	05613823          	sd	s6,80(sp)
    80002b84:	05713423          	sd	s7,72(sp)
    80002b88:	03913c23          	sd	s9,56(sp)
    80002b8c:	03a13823          	sd	s10,48(sp)
    80002b90:	03b13423          	sd	s11,40(sp)
    80002b94:	00004317          	auipc	t1,0x4
    80002b98:	fec30313          	addi	t1,t1,-20 # 80006b80 <pr>
    80002b9c:	01832c03          	lw	s8,24(t1)
    80002ba0:	00b43423          	sd	a1,8(s0)
    80002ba4:	00c43823          	sd	a2,16(s0)
    80002ba8:	00d43c23          	sd	a3,24(s0)
    80002bac:	02e43023          	sd	a4,32(s0)
    80002bb0:	02f43423          	sd	a5,40(s0)
    80002bb4:	03043823          	sd	a6,48(s0)
    80002bb8:	03143c23          	sd	a7,56(s0)
    80002bbc:	00050993          	mv	s3,a0
    80002bc0:	4a0c1663          	bnez	s8,8000306c <__printf+0x514>
    80002bc4:	60098c63          	beqz	s3,800031dc <__printf+0x684>
    80002bc8:	0009c503          	lbu	a0,0(s3)
    80002bcc:	00840793          	addi	a5,s0,8
    80002bd0:	f6f43c23          	sd	a5,-136(s0)
    80002bd4:	00000493          	li	s1,0
    80002bd8:	22050063          	beqz	a0,80002df8 <__printf+0x2a0>
    80002bdc:	00002a37          	lui	s4,0x2
    80002be0:	00018ab7          	lui	s5,0x18
    80002be4:	000f4b37          	lui	s6,0xf4
    80002be8:	00989bb7          	lui	s7,0x989
    80002bec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002bf0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002bf4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002bf8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002bfc:	00148c9b          	addiw	s9,s1,1
    80002c00:	02500793          	li	a5,37
    80002c04:	01998933          	add	s2,s3,s9
    80002c08:	38f51263          	bne	a0,a5,80002f8c <__printf+0x434>
    80002c0c:	00094783          	lbu	a5,0(s2)
    80002c10:	00078c9b          	sext.w	s9,a5
    80002c14:	1e078263          	beqz	a5,80002df8 <__printf+0x2a0>
    80002c18:	0024849b          	addiw	s1,s1,2
    80002c1c:	07000713          	li	a4,112
    80002c20:	00998933          	add	s2,s3,s1
    80002c24:	38e78a63          	beq	a5,a4,80002fb8 <__printf+0x460>
    80002c28:	20f76863          	bltu	a4,a5,80002e38 <__printf+0x2e0>
    80002c2c:	42a78863          	beq	a5,a0,8000305c <__printf+0x504>
    80002c30:	06400713          	li	a4,100
    80002c34:	40e79663          	bne	a5,a4,80003040 <__printf+0x4e8>
    80002c38:	f7843783          	ld	a5,-136(s0)
    80002c3c:	0007a603          	lw	a2,0(a5)
    80002c40:	00878793          	addi	a5,a5,8
    80002c44:	f6f43c23          	sd	a5,-136(s0)
    80002c48:	42064a63          	bltz	a2,8000307c <__printf+0x524>
    80002c4c:	00a00713          	li	a4,10
    80002c50:	02e677bb          	remuw	a5,a2,a4
    80002c54:	00002d97          	auipc	s11,0x2
    80002c58:	57cd8d93          	addi	s11,s11,1404 # 800051d0 <digits>
    80002c5c:	00900593          	li	a1,9
    80002c60:	0006051b          	sext.w	a0,a2
    80002c64:	00000c93          	li	s9,0
    80002c68:	02079793          	slli	a5,a5,0x20
    80002c6c:	0207d793          	srli	a5,a5,0x20
    80002c70:	00fd87b3          	add	a5,s11,a5
    80002c74:	0007c783          	lbu	a5,0(a5)
    80002c78:	02e656bb          	divuw	a3,a2,a4
    80002c7c:	f8f40023          	sb	a5,-128(s0)
    80002c80:	14c5d863          	bge	a1,a2,80002dd0 <__printf+0x278>
    80002c84:	06300593          	li	a1,99
    80002c88:	00100c93          	li	s9,1
    80002c8c:	02e6f7bb          	remuw	a5,a3,a4
    80002c90:	02079793          	slli	a5,a5,0x20
    80002c94:	0207d793          	srli	a5,a5,0x20
    80002c98:	00fd87b3          	add	a5,s11,a5
    80002c9c:	0007c783          	lbu	a5,0(a5)
    80002ca0:	02e6d73b          	divuw	a4,a3,a4
    80002ca4:	f8f400a3          	sb	a5,-127(s0)
    80002ca8:	12a5f463          	bgeu	a1,a0,80002dd0 <__printf+0x278>
    80002cac:	00a00693          	li	a3,10
    80002cb0:	00900593          	li	a1,9
    80002cb4:	02d777bb          	remuw	a5,a4,a3
    80002cb8:	02079793          	slli	a5,a5,0x20
    80002cbc:	0207d793          	srli	a5,a5,0x20
    80002cc0:	00fd87b3          	add	a5,s11,a5
    80002cc4:	0007c503          	lbu	a0,0(a5)
    80002cc8:	02d757bb          	divuw	a5,a4,a3
    80002ccc:	f8a40123          	sb	a0,-126(s0)
    80002cd0:	48e5f263          	bgeu	a1,a4,80003154 <__printf+0x5fc>
    80002cd4:	06300513          	li	a0,99
    80002cd8:	02d7f5bb          	remuw	a1,a5,a3
    80002cdc:	02059593          	slli	a1,a1,0x20
    80002ce0:	0205d593          	srli	a1,a1,0x20
    80002ce4:	00bd85b3          	add	a1,s11,a1
    80002ce8:	0005c583          	lbu	a1,0(a1)
    80002cec:	02d7d7bb          	divuw	a5,a5,a3
    80002cf0:	f8b401a3          	sb	a1,-125(s0)
    80002cf4:	48e57263          	bgeu	a0,a4,80003178 <__printf+0x620>
    80002cf8:	3e700513          	li	a0,999
    80002cfc:	02d7f5bb          	remuw	a1,a5,a3
    80002d00:	02059593          	slli	a1,a1,0x20
    80002d04:	0205d593          	srli	a1,a1,0x20
    80002d08:	00bd85b3          	add	a1,s11,a1
    80002d0c:	0005c583          	lbu	a1,0(a1)
    80002d10:	02d7d7bb          	divuw	a5,a5,a3
    80002d14:	f8b40223          	sb	a1,-124(s0)
    80002d18:	46e57663          	bgeu	a0,a4,80003184 <__printf+0x62c>
    80002d1c:	02d7f5bb          	remuw	a1,a5,a3
    80002d20:	02059593          	slli	a1,a1,0x20
    80002d24:	0205d593          	srli	a1,a1,0x20
    80002d28:	00bd85b3          	add	a1,s11,a1
    80002d2c:	0005c583          	lbu	a1,0(a1)
    80002d30:	02d7d7bb          	divuw	a5,a5,a3
    80002d34:	f8b402a3          	sb	a1,-123(s0)
    80002d38:	46ea7863          	bgeu	s4,a4,800031a8 <__printf+0x650>
    80002d3c:	02d7f5bb          	remuw	a1,a5,a3
    80002d40:	02059593          	slli	a1,a1,0x20
    80002d44:	0205d593          	srli	a1,a1,0x20
    80002d48:	00bd85b3          	add	a1,s11,a1
    80002d4c:	0005c583          	lbu	a1,0(a1)
    80002d50:	02d7d7bb          	divuw	a5,a5,a3
    80002d54:	f8b40323          	sb	a1,-122(s0)
    80002d58:	3eeaf863          	bgeu	s5,a4,80003148 <__printf+0x5f0>
    80002d5c:	02d7f5bb          	remuw	a1,a5,a3
    80002d60:	02059593          	slli	a1,a1,0x20
    80002d64:	0205d593          	srli	a1,a1,0x20
    80002d68:	00bd85b3          	add	a1,s11,a1
    80002d6c:	0005c583          	lbu	a1,0(a1)
    80002d70:	02d7d7bb          	divuw	a5,a5,a3
    80002d74:	f8b403a3          	sb	a1,-121(s0)
    80002d78:	42eb7e63          	bgeu	s6,a4,800031b4 <__printf+0x65c>
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b40423          	sb	a1,-120(s0)
    80002d98:	42ebfc63          	bgeu	s7,a4,800031d0 <__printf+0x678>
    80002d9c:	02079793          	slli	a5,a5,0x20
    80002da0:	0207d793          	srli	a5,a5,0x20
    80002da4:	00fd8db3          	add	s11,s11,a5
    80002da8:	000dc703          	lbu	a4,0(s11)
    80002dac:	00a00793          	li	a5,10
    80002db0:	00900c93          	li	s9,9
    80002db4:	f8e404a3          	sb	a4,-119(s0)
    80002db8:	00065c63          	bgez	a2,80002dd0 <__printf+0x278>
    80002dbc:	f9040713          	addi	a4,s0,-112
    80002dc0:	00f70733          	add	a4,a4,a5
    80002dc4:	02d00693          	li	a3,45
    80002dc8:	fed70823          	sb	a3,-16(a4)
    80002dcc:	00078c93          	mv	s9,a5
    80002dd0:	f8040793          	addi	a5,s0,-128
    80002dd4:	01978cb3          	add	s9,a5,s9
    80002dd8:	f7f40d13          	addi	s10,s0,-129
    80002ddc:	000cc503          	lbu	a0,0(s9)
    80002de0:	fffc8c93          	addi	s9,s9,-1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	b90080e7          	jalr	-1136(ra) # 80002974 <consputc>
    80002dec:	ffac98e3          	bne	s9,s10,80002ddc <__printf+0x284>
    80002df0:	00094503          	lbu	a0,0(s2)
    80002df4:	e00514e3          	bnez	a0,80002bfc <__printf+0xa4>
    80002df8:	1a0c1663          	bnez	s8,80002fa4 <__printf+0x44c>
    80002dfc:	08813083          	ld	ra,136(sp)
    80002e00:	08013403          	ld	s0,128(sp)
    80002e04:	07813483          	ld	s1,120(sp)
    80002e08:	07013903          	ld	s2,112(sp)
    80002e0c:	06813983          	ld	s3,104(sp)
    80002e10:	06013a03          	ld	s4,96(sp)
    80002e14:	05813a83          	ld	s5,88(sp)
    80002e18:	05013b03          	ld	s6,80(sp)
    80002e1c:	04813b83          	ld	s7,72(sp)
    80002e20:	04013c03          	ld	s8,64(sp)
    80002e24:	03813c83          	ld	s9,56(sp)
    80002e28:	03013d03          	ld	s10,48(sp)
    80002e2c:	02813d83          	ld	s11,40(sp)
    80002e30:	0d010113          	addi	sp,sp,208
    80002e34:	00008067          	ret
    80002e38:	07300713          	li	a4,115
    80002e3c:	1ce78a63          	beq	a5,a4,80003010 <__printf+0x4b8>
    80002e40:	07800713          	li	a4,120
    80002e44:	1ee79e63          	bne	a5,a4,80003040 <__printf+0x4e8>
    80002e48:	f7843783          	ld	a5,-136(s0)
    80002e4c:	0007a703          	lw	a4,0(a5)
    80002e50:	00878793          	addi	a5,a5,8
    80002e54:	f6f43c23          	sd	a5,-136(s0)
    80002e58:	28074263          	bltz	a4,800030dc <__printf+0x584>
    80002e5c:	00002d97          	auipc	s11,0x2
    80002e60:	374d8d93          	addi	s11,s11,884 # 800051d0 <digits>
    80002e64:	00f77793          	andi	a5,a4,15
    80002e68:	00fd87b3          	add	a5,s11,a5
    80002e6c:	0007c683          	lbu	a3,0(a5)
    80002e70:	00f00613          	li	a2,15
    80002e74:	0007079b          	sext.w	a5,a4
    80002e78:	f8d40023          	sb	a3,-128(s0)
    80002e7c:	0047559b          	srliw	a1,a4,0x4
    80002e80:	0047569b          	srliw	a3,a4,0x4
    80002e84:	00000c93          	li	s9,0
    80002e88:	0ee65063          	bge	a2,a4,80002f68 <__printf+0x410>
    80002e8c:	00f6f693          	andi	a3,a3,15
    80002e90:	00dd86b3          	add	a3,s11,a3
    80002e94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e98:	0087d79b          	srliw	a5,a5,0x8
    80002e9c:	00100c93          	li	s9,1
    80002ea0:	f8d400a3          	sb	a3,-127(s0)
    80002ea4:	0cb67263          	bgeu	a2,a1,80002f68 <__printf+0x410>
    80002ea8:	00f7f693          	andi	a3,a5,15
    80002eac:	00dd86b3          	add	a3,s11,a3
    80002eb0:	0006c583          	lbu	a1,0(a3)
    80002eb4:	00f00613          	li	a2,15
    80002eb8:	0047d69b          	srliw	a3,a5,0x4
    80002ebc:	f8b40123          	sb	a1,-126(s0)
    80002ec0:	0047d593          	srli	a1,a5,0x4
    80002ec4:	28f67e63          	bgeu	a2,a5,80003160 <__printf+0x608>
    80002ec8:	00f6f693          	andi	a3,a3,15
    80002ecc:	00dd86b3          	add	a3,s11,a3
    80002ed0:	0006c503          	lbu	a0,0(a3)
    80002ed4:	0087d813          	srli	a6,a5,0x8
    80002ed8:	0087d69b          	srliw	a3,a5,0x8
    80002edc:	f8a401a3          	sb	a0,-125(s0)
    80002ee0:	28b67663          	bgeu	a2,a1,8000316c <__printf+0x614>
    80002ee4:	00f6f693          	andi	a3,a3,15
    80002ee8:	00dd86b3          	add	a3,s11,a3
    80002eec:	0006c583          	lbu	a1,0(a3)
    80002ef0:	00c7d513          	srli	a0,a5,0xc
    80002ef4:	00c7d69b          	srliw	a3,a5,0xc
    80002ef8:	f8b40223          	sb	a1,-124(s0)
    80002efc:	29067a63          	bgeu	a2,a6,80003190 <__printf+0x638>
    80002f00:	00f6f693          	andi	a3,a3,15
    80002f04:	00dd86b3          	add	a3,s11,a3
    80002f08:	0006c583          	lbu	a1,0(a3)
    80002f0c:	0107d813          	srli	a6,a5,0x10
    80002f10:	0107d69b          	srliw	a3,a5,0x10
    80002f14:	f8b402a3          	sb	a1,-123(s0)
    80002f18:	28a67263          	bgeu	a2,a0,8000319c <__printf+0x644>
    80002f1c:	00f6f693          	andi	a3,a3,15
    80002f20:	00dd86b3          	add	a3,s11,a3
    80002f24:	0006c683          	lbu	a3,0(a3)
    80002f28:	0147d79b          	srliw	a5,a5,0x14
    80002f2c:	f8d40323          	sb	a3,-122(s0)
    80002f30:	21067663          	bgeu	a2,a6,8000313c <__printf+0x5e4>
    80002f34:	02079793          	slli	a5,a5,0x20
    80002f38:	0207d793          	srli	a5,a5,0x20
    80002f3c:	00fd8db3          	add	s11,s11,a5
    80002f40:	000dc683          	lbu	a3,0(s11)
    80002f44:	00800793          	li	a5,8
    80002f48:	00700c93          	li	s9,7
    80002f4c:	f8d403a3          	sb	a3,-121(s0)
    80002f50:	00075c63          	bgez	a4,80002f68 <__printf+0x410>
    80002f54:	f9040713          	addi	a4,s0,-112
    80002f58:	00f70733          	add	a4,a4,a5
    80002f5c:	02d00693          	li	a3,45
    80002f60:	fed70823          	sb	a3,-16(a4)
    80002f64:	00078c93          	mv	s9,a5
    80002f68:	f8040793          	addi	a5,s0,-128
    80002f6c:	01978cb3          	add	s9,a5,s9
    80002f70:	f7f40d13          	addi	s10,s0,-129
    80002f74:	000cc503          	lbu	a0,0(s9)
    80002f78:	fffc8c93          	addi	s9,s9,-1
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	9f8080e7          	jalr	-1544(ra) # 80002974 <consputc>
    80002f84:	ff9d18e3          	bne	s10,s9,80002f74 <__printf+0x41c>
    80002f88:	0100006f          	j	80002f98 <__printf+0x440>
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	9e8080e7          	jalr	-1560(ra) # 80002974 <consputc>
    80002f94:	000c8493          	mv	s1,s9
    80002f98:	00094503          	lbu	a0,0(s2)
    80002f9c:	c60510e3          	bnez	a0,80002bfc <__printf+0xa4>
    80002fa0:	e40c0ee3          	beqz	s8,80002dfc <__printf+0x2a4>
    80002fa4:	00004517          	auipc	a0,0x4
    80002fa8:	bdc50513          	addi	a0,a0,-1060 # 80006b80 <pr>
    80002fac:	00001097          	auipc	ra,0x1
    80002fb0:	94c080e7          	jalr	-1716(ra) # 800038f8 <release>
    80002fb4:	e49ff06f          	j	80002dfc <__printf+0x2a4>
    80002fb8:	f7843783          	ld	a5,-136(s0)
    80002fbc:	03000513          	li	a0,48
    80002fc0:	01000d13          	li	s10,16
    80002fc4:	00878713          	addi	a4,a5,8
    80002fc8:	0007bc83          	ld	s9,0(a5)
    80002fcc:	f6e43c23          	sd	a4,-136(s0)
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	9a4080e7          	jalr	-1628(ra) # 80002974 <consputc>
    80002fd8:	07800513          	li	a0,120
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	998080e7          	jalr	-1640(ra) # 80002974 <consputc>
    80002fe4:	00002d97          	auipc	s11,0x2
    80002fe8:	1ecd8d93          	addi	s11,s11,492 # 800051d0 <digits>
    80002fec:	03ccd793          	srli	a5,s9,0x3c
    80002ff0:	00fd87b3          	add	a5,s11,a5
    80002ff4:	0007c503          	lbu	a0,0(a5)
    80002ff8:	fffd0d1b          	addiw	s10,s10,-1
    80002ffc:	004c9c93          	slli	s9,s9,0x4
    80003000:	00000097          	auipc	ra,0x0
    80003004:	974080e7          	jalr	-1676(ra) # 80002974 <consputc>
    80003008:	fe0d12e3          	bnez	s10,80002fec <__printf+0x494>
    8000300c:	f8dff06f          	j	80002f98 <__printf+0x440>
    80003010:	f7843783          	ld	a5,-136(s0)
    80003014:	0007bc83          	ld	s9,0(a5)
    80003018:	00878793          	addi	a5,a5,8
    8000301c:	f6f43c23          	sd	a5,-136(s0)
    80003020:	000c9a63          	bnez	s9,80003034 <__printf+0x4dc>
    80003024:	1080006f          	j	8000312c <__printf+0x5d4>
    80003028:	001c8c93          	addi	s9,s9,1
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	948080e7          	jalr	-1720(ra) # 80002974 <consputc>
    80003034:	000cc503          	lbu	a0,0(s9)
    80003038:	fe0518e3          	bnez	a0,80003028 <__printf+0x4d0>
    8000303c:	f5dff06f          	j	80002f98 <__printf+0x440>
    80003040:	02500513          	li	a0,37
    80003044:	00000097          	auipc	ra,0x0
    80003048:	930080e7          	jalr	-1744(ra) # 80002974 <consputc>
    8000304c:	000c8513          	mv	a0,s9
    80003050:	00000097          	auipc	ra,0x0
    80003054:	924080e7          	jalr	-1756(ra) # 80002974 <consputc>
    80003058:	f41ff06f          	j	80002f98 <__printf+0x440>
    8000305c:	02500513          	li	a0,37
    80003060:	00000097          	auipc	ra,0x0
    80003064:	914080e7          	jalr	-1772(ra) # 80002974 <consputc>
    80003068:	f31ff06f          	j	80002f98 <__printf+0x440>
    8000306c:	00030513          	mv	a0,t1
    80003070:	00000097          	auipc	ra,0x0
    80003074:	7bc080e7          	jalr	1980(ra) # 8000382c <acquire>
    80003078:	b4dff06f          	j	80002bc4 <__printf+0x6c>
    8000307c:	40c0053b          	negw	a0,a2
    80003080:	00a00713          	li	a4,10
    80003084:	02e576bb          	remuw	a3,a0,a4
    80003088:	00002d97          	auipc	s11,0x2
    8000308c:	148d8d93          	addi	s11,s11,328 # 800051d0 <digits>
    80003090:	ff700593          	li	a1,-9
    80003094:	02069693          	slli	a3,a3,0x20
    80003098:	0206d693          	srli	a3,a3,0x20
    8000309c:	00dd86b3          	add	a3,s11,a3
    800030a0:	0006c683          	lbu	a3,0(a3)
    800030a4:	02e557bb          	divuw	a5,a0,a4
    800030a8:	f8d40023          	sb	a3,-128(s0)
    800030ac:	10b65e63          	bge	a2,a1,800031c8 <__printf+0x670>
    800030b0:	06300593          	li	a1,99
    800030b4:	02e7f6bb          	remuw	a3,a5,a4
    800030b8:	02069693          	slli	a3,a3,0x20
    800030bc:	0206d693          	srli	a3,a3,0x20
    800030c0:	00dd86b3          	add	a3,s11,a3
    800030c4:	0006c683          	lbu	a3,0(a3)
    800030c8:	02e7d73b          	divuw	a4,a5,a4
    800030cc:	00200793          	li	a5,2
    800030d0:	f8d400a3          	sb	a3,-127(s0)
    800030d4:	bca5ece3          	bltu	a1,a0,80002cac <__printf+0x154>
    800030d8:	ce5ff06f          	j	80002dbc <__printf+0x264>
    800030dc:	40e007bb          	negw	a5,a4
    800030e0:	00002d97          	auipc	s11,0x2
    800030e4:	0f0d8d93          	addi	s11,s11,240 # 800051d0 <digits>
    800030e8:	00f7f693          	andi	a3,a5,15
    800030ec:	00dd86b3          	add	a3,s11,a3
    800030f0:	0006c583          	lbu	a1,0(a3)
    800030f4:	ff100613          	li	a2,-15
    800030f8:	0047d69b          	srliw	a3,a5,0x4
    800030fc:	f8b40023          	sb	a1,-128(s0)
    80003100:	0047d59b          	srliw	a1,a5,0x4
    80003104:	0ac75e63          	bge	a4,a2,800031c0 <__printf+0x668>
    80003108:	00f6f693          	andi	a3,a3,15
    8000310c:	00dd86b3          	add	a3,s11,a3
    80003110:	0006c603          	lbu	a2,0(a3)
    80003114:	00f00693          	li	a3,15
    80003118:	0087d79b          	srliw	a5,a5,0x8
    8000311c:	f8c400a3          	sb	a2,-127(s0)
    80003120:	d8b6e4e3          	bltu	a3,a1,80002ea8 <__printf+0x350>
    80003124:	00200793          	li	a5,2
    80003128:	e2dff06f          	j	80002f54 <__printf+0x3fc>
    8000312c:	00002c97          	auipc	s9,0x2
    80003130:	084c8c93          	addi	s9,s9,132 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    80003134:	02800513          	li	a0,40
    80003138:	ef1ff06f          	j	80003028 <__printf+0x4d0>
    8000313c:	00700793          	li	a5,7
    80003140:	00600c93          	li	s9,6
    80003144:	e0dff06f          	j	80002f50 <__printf+0x3f8>
    80003148:	00700793          	li	a5,7
    8000314c:	00600c93          	li	s9,6
    80003150:	c69ff06f          	j	80002db8 <__printf+0x260>
    80003154:	00300793          	li	a5,3
    80003158:	00200c93          	li	s9,2
    8000315c:	c5dff06f          	j	80002db8 <__printf+0x260>
    80003160:	00300793          	li	a5,3
    80003164:	00200c93          	li	s9,2
    80003168:	de9ff06f          	j	80002f50 <__printf+0x3f8>
    8000316c:	00400793          	li	a5,4
    80003170:	00300c93          	li	s9,3
    80003174:	dddff06f          	j	80002f50 <__printf+0x3f8>
    80003178:	00400793          	li	a5,4
    8000317c:	00300c93          	li	s9,3
    80003180:	c39ff06f          	j	80002db8 <__printf+0x260>
    80003184:	00500793          	li	a5,5
    80003188:	00400c93          	li	s9,4
    8000318c:	c2dff06f          	j	80002db8 <__printf+0x260>
    80003190:	00500793          	li	a5,5
    80003194:	00400c93          	li	s9,4
    80003198:	db9ff06f          	j	80002f50 <__printf+0x3f8>
    8000319c:	00600793          	li	a5,6
    800031a0:	00500c93          	li	s9,5
    800031a4:	dadff06f          	j	80002f50 <__printf+0x3f8>
    800031a8:	00600793          	li	a5,6
    800031ac:	00500c93          	li	s9,5
    800031b0:	c09ff06f          	j	80002db8 <__printf+0x260>
    800031b4:	00800793          	li	a5,8
    800031b8:	00700c93          	li	s9,7
    800031bc:	bfdff06f          	j	80002db8 <__printf+0x260>
    800031c0:	00100793          	li	a5,1
    800031c4:	d91ff06f          	j	80002f54 <__printf+0x3fc>
    800031c8:	00100793          	li	a5,1
    800031cc:	bf1ff06f          	j	80002dbc <__printf+0x264>
    800031d0:	00900793          	li	a5,9
    800031d4:	00800c93          	li	s9,8
    800031d8:	be1ff06f          	j	80002db8 <__printf+0x260>
    800031dc:	00002517          	auipc	a0,0x2
    800031e0:	fdc50513          	addi	a0,a0,-36 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	918080e7          	jalr	-1768(ra) # 80002afc <panic>

00000000800031ec <printfinit>:
    800031ec:	fe010113          	addi	sp,sp,-32
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	02010413          	addi	s0,sp,32
    80003200:	00004497          	auipc	s1,0x4
    80003204:	98048493          	addi	s1,s1,-1664 # 80006b80 <pr>
    80003208:	00048513          	mv	a0,s1
    8000320c:	00002597          	auipc	a1,0x2
    80003210:	fbc58593          	addi	a1,a1,-68 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    80003214:	00000097          	auipc	ra,0x0
    80003218:	5f4080e7          	jalr	1524(ra) # 80003808 <initlock>
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	0004ac23          	sw	zero,24(s1)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	02010113          	addi	sp,sp,32
    80003230:	00008067          	ret

0000000080003234 <uartinit>:
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00813423          	sd	s0,8(sp)
    8000323c:	01010413          	addi	s0,sp,16
    80003240:	100007b7          	lui	a5,0x10000
    80003244:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003248:	f8000713          	li	a4,-128
    8000324c:	00e781a3          	sb	a4,3(a5)
    80003250:	00300713          	li	a4,3
    80003254:	00e78023          	sb	a4,0(a5)
    80003258:	000780a3          	sb	zero,1(a5)
    8000325c:	00e781a3          	sb	a4,3(a5)
    80003260:	00700693          	li	a3,7
    80003264:	00d78123          	sb	a3,2(a5)
    80003268:	00e780a3          	sb	a4,1(a5)
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <uartputc>:
    80003278:	00002797          	auipc	a5,0x2
    8000327c:	6907a783          	lw	a5,1680(a5) # 80005908 <panicked>
    80003280:	00078463          	beqz	a5,80003288 <uartputc+0x10>
    80003284:	0000006f          	j	80003284 <uartputc+0xc>
    80003288:	fd010113          	addi	sp,sp,-48
    8000328c:	02813023          	sd	s0,32(sp)
    80003290:	00913c23          	sd	s1,24(sp)
    80003294:	01213823          	sd	s2,16(sp)
    80003298:	01313423          	sd	s3,8(sp)
    8000329c:	02113423          	sd	ra,40(sp)
    800032a0:	03010413          	addi	s0,sp,48
    800032a4:	00002917          	auipc	s2,0x2
    800032a8:	66c90913          	addi	s2,s2,1644 # 80005910 <uart_tx_r>
    800032ac:	00093783          	ld	a5,0(s2)
    800032b0:	00002497          	auipc	s1,0x2
    800032b4:	66848493          	addi	s1,s1,1640 # 80005918 <uart_tx_w>
    800032b8:	0004b703          	ld	a4,0(s1)
    800032bc:	02078693          	addi	a3,a5,32
    800032c0:	00050993          	mv	s3,a0
    800032c4:	02e69c63          	bne	a3,a4,800032fc <uartputc+0x84>
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	834080e7          	jalr	-1996(ra) # 80003afc <push_on>
    800032d0:	00093783          	ld	a5,0(s2)
    800032d4:	0004b703          	ld	a4,0(s1)
    800032d8:	02078793          	addi	a5,a5,32
    800032dc:	00e79463          	bne	a5,a4,800032e4 <uartputc+0x6c>
    800032e0:	0000006f          	j	800032e0 <uartputc+0x68>
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	88c080e7          	jalr	-1908(ra) # 80003b70 <pop_on>
    800032ec:	00093783          	ld	a5,0(s2)
    800032f0:	0004b703          	ld	a4,0(s1)
    800032f4:	02078693          	addi	a3,a5,32
    800032f8:	fce688e3          	beq	a3,a4,800032c8 <uartputc+0x50>
    800032fc:	01f77693          	andi	a3,a4,31
    80003300:	00004597          	auipc	a1,0x4
    80003304:	8a058593          	addi	a1,a1,-1888 # 80006ba0 <uart_tx_buf>
    80003308:	00d586b3          	add	a3,a1,a3
    8000330c:	00170713          	addi	a4,a4,1
    80003310:	01368023          	sb	s3,0(a3)
    80003314:	00e4b023          	sd	a4,0(s1)
    80003318:	10000637          	lui	a2,0x10000
    8000331c:	02f71063          	bne	a4,a5,8000333c <uartputc+0xc4>
    80003320:	0340006f          	j	80003354 <uartputc+0xdc>
    80003324:	00074703          	lbu	a4,0(a4)
    80003328:	00f93023          	sd	a5,0(s2)
    8000332c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003330:	00093783          	ld	a5,0(s2)
    80003334:	0004b703          	ld	a4,0(s1)
    80003338:	00f70e63          	beq	a4,a5,80003354 <uartputc+0xdc>
    8000333c:	00564683          	lbu	a3,5(a2)
    80003340:	01f7f713          	andi	a4,a5,31
    80003344:	00e58733          	add	a4,a1,a4
    80003348:	0206f693          	andi	a3,a3,32
    8000334c:	00178793          	addi	a5,a5,1
    80003350:	fc069ae3          	bnez	a3,80003324 <uartputc+0xac>
    80003354:	02813083          	ld	ra,40(sp)
    80003358:	02013403          	ld	s0,32(sp)
    8000335c:	01813483          	ld	s1,24(sp)
    80003360:	01013903          	ld	s2,16(sp)
    80003364:	00813983          	ld	s3,8(sp)
    80003368:	03010113          	addi	sp,sp,48
    8000336c:	00008067          	ret

0000000080003370 <uartputc_sync>:
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00813423          	sd	s0,8(sp)
    80003378:	01010413          	addi	s0,sp,16
    8000337c:	00002717          	auipc	a4,0x2
    80003380:	58c72703          	lw	a4,1420(a4) # 80005908 <panicked>
    80003384:	02071663          	bnez	a4,800033b0 <uartputc_sync+0x40>
    80003388:	00050793          	mv	a5,a0
    8000338c:	100006b7          	lui	a3,0x10000
    80003390:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003394:	02077713          	andi	a4,a4,32
    80003398:	fe070ce3          	beqz	a4,80003390 <uartputc_sync+0x20>
    8000339c:	0ff7f793          	andi	a5,a5,255
    800033a0:	00f68023          	sb	a5,0(a3)
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret
    800033b0:	0000006f          	j	800033b0 <uartputc_sync+0x40>

00000000800033b4 <uartstart>:
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00813423          	sd	s0,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	00002617          	auipc	a2,0x2
    800033c4:	55060613          	addi	a2,a2,1360 # 80005910 <uart_tx_r>
    800033c8:	00002517          	auipc	a0,0x2
    800033cc:	55050513          	addi	a0,a0,1360 # 80005918 <uart_tx_w>
    800033d0:	00063783          	ld	a5,0(a2)
    800033d4:	00053703          	ld	a4,0(a0)
    800033d8:	04f70263          	beq	a4,a5,8000341c <uartstart+0x68>
    800033dc:	100005b7          	lui	a1,0x10000
    800033e0:	00003817          	auipc	a6,0x3
    800033e4:	7c080813          	addi	a6,a6,1984 # 80006ba0 <uart_tx_buf>
    800033e8:	01c0006f          	j	80003404 <uartstart+0x50>
    800033ec:	0006c703          	lbu	a4,0(a3)
    800033f0:	00f63023          	sd	a5,0(a2)
    800033f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033f8:	00063783          	ld	a5,0(a2)
    800033fc:	00053703          	ld	a4,0(a0)
    80003400:	00f70e63          	beq	a4,a5,8000341c <uartstart+0x68>
    80003404:	01f7f713          	andi	a4,a5,31
    80003408:	00e806b3          	add	a3,a6,a4
    8000340c:	0055c703          	lbu	a4,5(a1)
    80003410:	00178793          	addi	a5,a5,1
    80003414:	02077713          	andi	a4,a4,32
    80003418:	fc071ae3          	bnez	a4,800033ec <uartstart+0x38>
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret

0000000080003428 <uartgetc>:
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00813423          	sd	s0,8(sp)
    80003430:	01010413          	addi	s0,sp,16
    80003434:	10000737          	lui	a4,0x10000
    80003438:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000343c:	0017f793          	andi	a5,a5,1
    80003440:	00078c63          	beqz	a5,80003458 <uartgetc+0x30>
    80003444:	00074503          	lbu	a0,0(a4)
    80003448:	0ff57513          	andi	a0,a0,255
    8000344c:	00813403          	ld	s0,8(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret
    80003458:	fff00513          	li	a0,-1
    8000345c:	ff1ff06f          	j	8000344c <uartgetc+0x24>

0000000080003460 <uartintr>:
    80003460:	100007b7          	lui	a5,0x10000
    80003464:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003468:	0017f793          	andi	a5,a5,1
    8000346c:	0a078463          	beqz	a5,80003514 <uartintr+0xb4>
    80003470:	fe010113          	addi	sp,sp,-32
    80003474:	00813823          	sd	s0,16(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	00113c23          	sd	ra,24(sp)
    80003480:	02010413          	addi	s0,sp,32
    80003484:	100004b7          	lui	s1,0x10000
    80003488:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000348c:	0ff57513          	andi	a0,a0,255
    80003490:	fffff097          	auipc	ra,0xfffff
    80003494:	534080e7          	jalr	1332(ra) # 800029c4 <consoleintr>
    80003498:	0054c783          	lbu	a5,5(s1)
    8000349c:	0017f793          	andi	a5,a5,1
    800034a0:	fe0794e3          	bnez	a5,80003488 <uartintr+0x28>
    800034a4:	00002617          	auipc	a2,0x2
    800034a8:	46c60613          	addi	a2,a2,1132 # 80005910 <uart_tx_r>
    800034ac:	00002517          	auipc	a0,0x2
    800034b0:	46c50513          	addi	a0,a0,1132 # 80005918 <uart_tx_w>
    800034b4:	00063783          	ld	a5,0(a2)
    800034b8:	00053703          	ld	a4,0(a0)
    800034bc:	04f70263          	beq	a4,a5,80003500 <uartintr+0xa0>
    800034c0:	100005b7          	lui	a1,0x10000
    800034c4:	00003817          	auipc	a6,0x3
    800034c8:	6dc80813          	addi	a6,a6,1756 # 80006ba0 <uart_tx_buf>
    800034cc:	01c0006f          	j	800034e8 <uartintr+0x88>
    800034d0:	0006c703          	lbu	a4,0(a3)
    800034d4:	00f63023          	sd	a5,0(a2)
    800034d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034dc:	00063783          	ld	a5,0(a2)
    800034e0:	00053703          	ld	a4,0(a0)
    800034e4:	00f70e63          	beq	a4,a5,80003500 <uartintr+0xa0>
    800034e8:	01f7f713          	andi	a4,a5,31
    800034ec:	00e806b3          	add	a3,a6,a4
    800034f0:	0055c703          	lbu	a4,5(a1)
    800034f4:	00178793          	addi	a5,a5,1
    800034f8:	02077713          	andi	a4,a4,32
    800034fc:	fc071ae3          	bnez	a4,800034d0 <uartintr+0x70>
    80003500:	01813083          	ld	ra,24(sp)
    80003504:	01013403          	ld	s0,16(sp)
    80003508:	00813483          	ld	s1,8(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret
    80003514:	00002617          	auipc	a2,0x2
    80003518:	3fc60613          	addi	a2,a2,1020 # 80005910 <uart_tx_r>
    8000351c:	00002517          	auipc	a0,0x2
    80003520:	3fc50513          	addi	a0,a0,1020 # 80005918 <uart_tx_w>
    80003524:	00063783          	ld	a5,0(a2)
    80003528:	00053703          	ld	a4,0(a0)
    8000352c:	04f70263          	beq	a4,a5,80003570 <uartintr+0x110>
    80003530:	100005b7          	lui	a1,0x10000
    80003534:	00003817          	auipc	a6,0x3
    80003538:	66c80813          	addi	a6,a6,1644 # 80006ba0 <uart_tx_buf>
    8000353c:	01c0006f          	j	80003558 <uartintr+0xf8>
    80003540:	0006c703          	lbu	a4,0(a3)
    80003544:	00f63023          	sd	a5,0(a2)
    80003548:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000354c:	00063783          	ld	a5,0(a2)
    80003550:	00053703          	ld	a4,0(a0)
    80003554:	02f70063          	beq	a4,a5,80003574 <uartintr+0x114>
    80003558:	01f7f713          	andi	a4,a5,31
    8000355c:	00e806b3          	add	a3,a6,a4
    80003560:	0055c703          	lbu	a4,5(a1)
    80003564:	00178793          	addi	a5,a5,1
    80003568:	02077713          	andi	a4,a4,32
    8000356c:	fc071ae3          	bnez	a4,80003540 <uartintr+0xe0>
    80003570:	00008067          	ret
    80003574:	00008067          	ret

0000000080003578 <kinit>:
    80003578:	fc010113          	addi	sp,sp,-64
    8000357c:	02913423          	sd	s1,40(sp)
    80003580:	fffff7b7          	lui	a5,0xfffff
    80003584:	00004497          	auipc	s1,0x4
    80003588:	64b48493          	addi	s1,s1,1611 # 80007bcf <end+0xfff>
    8000358c:	02813823          	sd	s0,48(sp)
    80003590:	01313c23          	sd	s3,24(sp)
    80003594:	00f4f4b3          	and	s1,s1,a5
    80003598:	02113c23          	sd	ra,56(sp)
    8000359c:	03213023          	sd	s2,32(sp)
    800035a0:	01413823          	sd	s4,16(sp)
    800035a4:	01513423          	sd	s5,8(sp)
    800035a8:	04010413          	addi	s0,sp,64
    800035ac:	000017b7          	lui	a5,0x1
    800035b0:	01100993          	li	s3,17
    800035b4:	00f487b3          	add	a5,s1,a5
    800035b8:	01b99993          	slli	s3,s3,0x1b
    800035bc:	06f9e063          	bltu	s3,a5,8000361c <kinit+0xa4>
    800035c0:	00003a97          	auipc	s5,0x3
    800035c4:	610a8a93          	addi	s5,s5,1552 # 80006bd0 <end>
    800035c8:	0754ec63          	bltu	s1,s5,80003640 <kinit+0xc8>
    800035cc:	0734fa63          	bgeu	s1,s3,80003640 <kinit+0xc8>
    800035d0:	00088a37          	lui	s4,0x88
    800035d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800035d8:	00002917          	auipc	s2,0x2
    800035dc:	34890913          	addi	s2,s2,840 # 80005920 <kmem>
    800035e0:	00ca1a13          	slli	s4,s4,0xc
    800035e4:	0140006f          	j	800035f8 <kinit+0x80>
    800035e8:	000017b7          	lui	a5,0x1
    800035ec:	00f484b3          	add	s1,s1,a5
    800035f0:	0554e863          	bltu	s1,s5,80003640 <kinit+0xc8>
    800035f4:	0534f663          	bgeu	s1,s3,80003640 <kinit+0xc8>
    800035f8:	00001637          	lui	a2,0x1
    800035fc:	00100593          	li	a1,1
    80003600:	00048513          	mv	a0,s1
    80003604:	00000097          	auipc	ra,0x0
    80003608:	5e4080e7          	jalr	1508(ra) # 80003be8 <__memset>
    8000360c:	00093783          	ld	a5,0(s2)
    80003610:	00f4b023          	sd	a5,0(s1)
    80003614:	00993023          	sd	s1,0(s2)
    80003618:	fd4498e3          	bne	s1,s4,800035e8 <kinit+0x70>
    8000361c:	03813083          	ld	ra,56(sp)
    80003620:	03013403          	ld	s0,48(sp)
    80003624:	02813483          	ld	s1,40(sp)
    80003628:	02013903          	ld	s2,32(sp)
    8000362c:	01813983          	ld	s3,24(sp)
    80003630:	01013a03          	ld	s4,16(sp)
    80003634:	00813a83          	ld	s5,8(sp)
    80003638:	04010113          	addi	sp,sp,64
    8000363c:	00008067          	ret
    80003640:	00002517          	auipc	a0,0x2
    80003644:	ba850513          	addi	a0,a0,-1112 # 800051e8 <digits+0x18>
    80003648:	fffff097          	auipc	ra,0xfffff
    8000364c:	4b4080e7          	jalr	1204(ra) # 80002afc <panic>

0000000080003650 <freerange>:
    80003650:	fc010113          	addi	sp,sp,-64
    80003654:	000017b7          	lui	a5,0x1
    80003658:	02913423          	sd	s1,40(sp)
    8000365c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003660:	009504b3          	add	s1,a0,s1
    80003664:	fffff537          	lui	a0,0xfffff
    80003668:	02813823          	sd	s0,48(sp)
    8000366c:	02113c23          	sd	ra,56(sp)
    80003670:	03213023          	sd	s2,32(sp)
    80003674:	01313c23          	sd	s3,24(sp)
    80003678:	01413823          	sd	s4,16(sp)
    8000367c:	01513423          	sd	s5,8(sp)
    80003680:	01613023          	sd	s6,0(sp)
    80003684:	04010413          	addi	s0,sp,64
    80003688:	00a4f4b3          	and	s1,s1,a0
    8000368c:	00f487b3          	add	a5,s1,a5
    80003690:	06f5e463          	bltu	a1,a5,800036f8 <freerange+0xa8>
    80003694:	00003a97          	auipc	s5,0x3
    80003698:	53ca8a93          	addi	s5,s5,1340 # 80006bd0 <end>
    8000369c:	0954e263          	bltu	s1,s5,80003720 <freerange+0xd0>
    800036a0:	01100993          	li	s3,17
    800036a4:	01b99993          	slli	s3,s3,0x1b
    800036a8:	0734fc63          	bgeu	s1,s3,80003720 <freerange+0xd0>
    800036ac:	00058a13          	mv	s4,a1
    800036b0:	00002917          	auipc	s2,0x2
    800036b4:	27090913          	addi	s2,s2,624 # 80005920 <kmem>
    800036b8:	00002b37          	lui	s6,0x2
    800036bc:	0140006f          	j	800036d0 <freerange+0x80>
    800036c0:	000017b7          	lui	a5,0x1
    800036c4:	00f484b3          	add	s1,s1,a5
    800036c8:	0554ec63          	bltu	s1,s5,80003720 <freerange+0xd0>
    800036cc:	0534fa63          	bgeu	s1,s3,80003720 <freerange+0xd0>
    800036d0:	00001637          	lui	a2,0x1
    800036d4:	00100593          	li	a1,1
    800036d8:	00048513          	mv	a0,s1
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	50c080e7          	jalr	1292(ra) # 80003be8 <__memset>
    800036e4:	00093703          	ld	a4,0(s2)
    800036e8:	016487b3          	add	a5,s1,s6
    800036ec:	00e4b023          	sd	a4,0(s1)
    800036f0:	00993023          	sd	s1,0(s2)
    800036f4:	fcfa76e3          	bgeu	s4,a5,800036c0 <freerange+0x70>
    800036f8:	03813083          	ld	ra,56(sp)
    800036fc:	03013403          	ld	s0,48(sp)
    80003700:	02813483          	ld	s1,40(sp)
    80003704:	02013903          	ld	s2,32(sp)
    80003708:	01813983          	ld	s3,24(sp)
    8000370c:	01013a03          	ld	s4,16(sp)
    80003710:	00813a83          	ld	s5,8(sp)
    80003714:	00013b03          	ld	s6,0(sp)
    80003718:	04010113          	addi	sp,sp,64
    8000371c:	00008067          	ret
    80003720:	00002517          	auipc	a0,0x2
    80003724:	ac850513          	addi	a0,a0,-1336 # 800051e8 <digits+0x18>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	3d4080e7          	jalr	980(ra) # 80002afc <panic>

0000000080003730 <kfree>:
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	03451793          	slli	a5,a0,0x34
    80003748:	04079c63          	bnez	a5,800037a0 <kfree+0x70>
    8000374c:	00003797          	auipc	a5,0x3
    80003750:	48478793          	addi	a5,a5,1156 # 80006bd0 <end>
    80003754:	00050493          	mv	s1,a0
    80003758:	04f56463          	bltu	a0,a5,800037a0 <kfree+0x70>
    8000375c:	01100793          	li	a5,17
    80003760:	01b79793          	slli	a5,a5,0x1b
    80003764:	02f57e63          	bgeu	a0,a5,800037a0 <kfree+0x70>
    80003768:	00001637          	lui	a2,0x1
    8000376c:	00100593          	li	a1,1
    80003770:	00000097          	auipc	ra,0x0
    80003774:	478080e7          	jalr	1144(ra) # 80003be8 <__memset>
    80003778:	00002797          	auipc	a5,0x2
    8000377c:	1a878793          	addi	a5,a5,424 # 80005920 <kmem>
    80003780:	0007b703          	ld	a4,0(a5)
    80003784:	01813083          	ld	ra,24(sp)
    80003788:	01013403          	ld	s0,16(sp)
    8000378c:	00e4b023          	sd	a4,0(s1)
    80003790:	0097b023          	sd	s1,0(a5)
    80003794:	00813483          	ld	s1,8(sp)
    80003798:	02010113          	addi	sp,sp,32
    8000379c:	00008067          	ret
    800037a0:	00002517          	auipc	a0,0x2
    800037a4:	a4850513          	addi	a0,a0,-1464 # 800051e8 <digits+0x18>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	354080e7          	jalr	852(ra) # 80002afc <panic>

00000000800037b0 <kalloc>:
    800037b0:	fe010113          	addi	sp,sp,-32
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	00113c23          	sd	ra,24(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00002797          	auipc	a5,0x2
    800037c8:	15c78793          	addi	a5,a5,348 # 80005920 <kmem>
    800037cc:	0007b483          	ld	s1,0(a5)
    800037d0:	02048063          	beqz	s1,800037f0 <kalloc+0x40>
    800037d4:	0004b703          	ld	a4,0(s1)
    800037d8:	00001637          	lui	a2,0x1
    800037dc:	00500593          	li	a1,5
    800037e0:	00048513          	mv	a0,s1
    800037e4:	00e7b023          	sd	a4,0(a5)
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	400080e7          	jalr	1024(ra) # 80003be8 <__memset>
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00048513          	mv	a0,s1
    800037fc:	00813483          	ld	s1,8(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <initlock>:
    80003808:	ff010113          	addi	sp,sp,-16
    8000380c:	00813423          	sd	s0,8(sp)
    80003810:	01010413          	addi	s0,sp,16
    80003814:	00813403          	ld	s0,8(sp)
    80003818:	00b53423          	sd	a1,8(a0)
    8000381c:	00052023          	sw	zero,0(a0)
    80003820:	00053823          	sd	zero,16(a0)
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00008067          	ret

000000008000382c <acquire>:
    8000382c:	fe010113          	addi	sp,sp,-32
    80003830:	00813823          	sd	s0,16(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	01213023          	sd	s2,0(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00050493          	mv	s1,a0
    80003848:	10002973          	csrr	s2,sstatus
    8000384c:	100027f3          	csrr	a5,sstatus
    80003850:	ffd7f793          	andi	a5,a5,-3
    80003854:	10079073          	csrw	sstatus,a5
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	8e8080e7          	jalr	-1816(ra) # 80002140 <mycpu>
    80003860:	07852783          	lw	a5,120(a0)
    80003864:	06078e63          	beqz	a5,800038e0 <acquire+0xb4>
    80003868:	fffff097          	auipc	ra,0xfffff
    8000386c:	8d8080e7          	jalr	-1832(ra) # 80002140 <mycpu>
    80003870:	07852783          	lw	a5,120(a0)
    80003874:	0004a703          	lw	a4,0(s1)
    80003878:	0017879b          	addiw	a5,a5,1
    8000387c:	06f52c23          	sw	a5,120(a0)
    80003880:	04071063          	bnez	a4,800038c0 <acquire+0x94>
    80003884:	00100713          	li	a4,1
    80003888:	00070793          	mv	a5,a4
    8000388c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003890:	0007879b          	sext.w	a5,a5
    80003894:	fe079ae3          	bnez	a5,80003888 <acquire+0x5c>
    80003898:	0ff0000f          	fence
    8000389c:	fffff097          	auipc	ra,0xfffff
    800038a0:	8a4080e7          	jalr	-1884(ra) # 80002140 <mycpu>
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00a4b823          	sd	a0,16(s1)
    800038b0:	00013903          	ld	s2,0(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	02010113          	addi	sp,sp,32
    800038bc:	00008067          	ret
    800038c0:	0104b903          	ld	s2,16(s1)
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	87c080e7          	jalr	-1924(ra) # 80002140 <mycpu>
    800038cc:	faa91ce3          	bne	s2,a0,80003884 <acquire+0x58>
    800038d0:	00002517          	auipc	a0,0x2
    800038d4:	92050513          	addi	a0,a0,-1760 # 800051f0 <digits+0x20>
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	224080e7          	jalr	548(ra) # 80002afc <panic>
    800038e0:	00195913          	srli	s2,s2,0x1
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	85c080e7          	jalr	-1956(ra) # 80002140 <mycpu>
    800038ec:	00197913          	andi	s2,s2,1
    800038f0:	07252e23          	sw	s2,124(a0)
    800038f4:	f75ff06f          	j	80003868 <acquire+0x3c>

00000000800038f8 <release>:
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00113c23          	sd	ra,24(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	01213023          	sd	s2,0(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00052783          	lw	a5,0(a0)
    80003914:	00079a63          	bnez	a5,80003928 <release+0x30>
    80003918:	00002517          	auipc	a0,0x2
    8000391c:	8e050513          	addi	a0,a0,-1824 # 800051f8 <digits+0x28>
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	1dc080e7          	jalr	476(ra) # 80002afc <panic>
    80003928:	01053903          	ld	s2,16(a0)
    8000392c:	00050493          	mv	s1,a0
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	810080e7          	jalr	-2032(ra) # 80002140 <mycpu>
    80003938:	fea910e3          	bne	s2,a0,80003918 <release+0x20>
    8000393c:	0004b823          	sd	zero,16(s1)
    80003940:	0ff0000f          	fence
    80003944:	0f50000f          	fence	iorw,ow
    80003948:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	7f4080e7          	jalr	2036(ra) # 80002140 <mycpu>
    80003954:	100027f3          	csrr	a5,sstatus
    80003958:	0027f793          	andi	a5,a5,2
    8000395c:	04079a63          	bnez	a5,800039b0 <release+0xb8>
    80003960:	07852783          	lw	a5,120(a0)
    80003964:	02f05e63          	blez	a5,800039a0 <release+0xa8>
    80003968:	fff7871b          	addiw	a4,a5,-1
    8000396c:	06e52c23          	sw	a4,120(a0)
    80003970:	00071c63          	bnez	a4,80003988 <release+0x90>
    80003974:	07c52783          	lw	a5,124(a0)
    80003978:	00078863          	beqz	a5,80003988 <release+0x90>
    8000397c:	100027f3          	csrr	a5,sstatus
    80003980:	0027e793          	ori	a5,a5,2
    80003984:	10079073          	csrw	sstatus,a5
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	01013403          	ld	s0,16(sp)
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	00013903          	ld	s2,0(sp)
    80003998:	02010113          	addi	sp,sp,32
    8000399c:	00008067          	ret
    800039a0:	00002517          	auipc	a0,0x2
    800039a4:	87850513          	addi	a0,a0,-1928 # 80005218 <digits+0x48>
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	154080e7          	jalr	340(ra) # 80002afc <panic>
    800039b0:	00002517          	auipc	a0,0x2
    800039b4:	85050513          	addi	a0,a0,-1968 # 80005200 <digits+0x30>
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	144080e7          	jalr	324(ra) # 80002afc <panic>

00000000800039c0 <holding>:
    800039c0:	00052783          	lw	a5,0(a0)
    800039c4:	00079663          	bnez	a5,800039d0 <holding+0x10>
    800039c8:	00000513          	li	a0,0
    800039cc:	00008067          	ret
    800039d0:	fe010113          	addi	sp,sp,-32
    800039d4:	00813823          	sd	s0,16(sp)
    800039d8:	00913423          	sd	s1,8(sp)
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	02010413          	addi	s0,sp,32
    800039e4:	01053483          	ld	s1,16(a0)
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	758080e7          	jalr	1880(ra) # 80002140 <mycpu>
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	40a48533          	sub	a0,s1,a0
    800039fc:	00153513          	seqz	a0,a0
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	02010113          	addi	sp,sp,32
    80003a08:	00008067          	ret

0000000080003a0c <push_off>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00113c23          	sd	ra,24(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	100024f3          	csrr	s1,sstatus
    80003a24:	100027f3          	csrr	a5,sstatus
    80003a28:	ffd7f793          	andi	a5,a5,-3
    80003a2c:	10079073          	csrw	sstatus,a5
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	710080e7          	jalr	1808(ra) # 80002140 <mycpu>
    80003a38:	07852783          	lw	a5,120(a0)
    80003a3c:	02078663          	beqz	a5,80003a68 <push_off+0x5c>
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	700080e7          	jalr	1792(ra) # 80002140 <mycpu>
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
    80003a70:	6d4080e7          	jalr	1748(ra) # 80002140 <mycpu>
    80003a74:	0014f493          	andi	s1,s1,1
    80003a78:	06952e23          	sw	s1,124(a0)
    80003a7c:	fc5ff06f          	j	80003a40 <push_off+0x34>

0000000080003a80 <pop_off>:
    80003a80:	ff010113          	addi	sp,sp,-16
    80003a84:	00813023          	sd	s0,0(sp)
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	6b0080e7          	jalr	1712(ra) # 80002140 <mycpu>
    80003a98:	100027f3          	csrr	a5,sstatus
    80003a9c:	0027f793          	andi	a5,a5,2
    80003aa0:	04079663          	bnez	a5,80003aec <pop_off+0x6c>
    80003aa4:	07852783          	lw	a5,120(a0)
    80003aa8:	02f05a63          	blez	a5,80003adc <pop_off+0x5c>
    80003aac:	fff7871b          	addiw	a4,a5,-1
    80003ab0:	06e52c23          	sw	a4,120(a0)
    80003ab4:	00071c63          	bnez	a4,80003acc <pop_off+0x4c>
    80003ab8:	07c52783          	lw	a5,124(a0)
    80003abc:	00078863          	beqz	a5,80003acc <pop_off+0x4c>
    80003ac0:	100027f3          	csrr	a5,sstatus
    80003ac4:	0027e793          	ori	a5,a5,2
    80003ac8:	10079073          	csrw	sstatus,a5
    80003acc:	00813083          	ld	ra,8(sp)
    80003ad0:	00013403          	ld	s0,0(sp)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret
    80003adc:	00001517          	auipc	a0,0x1
    80003ae0:	73c50513          	addi	a0,a0,1852 # 80005218 <digits+0x48>
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	018080e7          	jalr	24(ra) # 80002afc <panic>
    80003aec:	00001517          	auipc	a0,0x1
    80003af0:	71450513          	addi	a0,a0,1812 # 80005200 <digits+0x30>
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	008080e7          	jalr	8(ra) # 80002afc <panic>

0000000080003afc <push_on>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00813823          	sd	s0,16(sp)
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	100024f3          	csrr	s1,sstatus
    80003b14:	100027f3          	csrr	a5,sstatus
    80003b18:	0027e793          	ori	a5,a5,2
    80003b1c:	10079073          	csrw	sstatus,a5
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	620080e7          	jalr	1568(ra) # 80002140 <mycpu>
    80003b28:	07852783          	lw	a5,120(a0)
    80003b2c:	02078663          	beqz	a5,80003b58 <push_on+0x5c>
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	610080e7          	jalr	1552(ra) # 80002140 <mycpu>
    80003b38:	07852783          	lw	a5,120(a0)
    80003b3c:	01813083          	ld	ra,24(sp)
    80003b40:	01013403          	ld	s0,16(sp)
    80003b44:	0017879b          	addiw	a5,a5,1
    80003b48:	06f52c23          	sw	a5,120(a0)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret
    80003b58:	0014d493          	srli	s1,s1,0x1
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	5e4080e7          	jalr	1508(ra) # 80002140 <mycpu>
    80003b64:	0014f493          	andi	s1,s1,1
    80003b68:	06952e23          	sw	s1,124(a0)
    80003b6c:	fc5ff06f          	j	80003b30 <push_on+0x34>

0000000080003b70 <pop_on>:
    80003b70:	ff010113          	addi	sp,sp,-16
    80003b74:	00813023          	sd	s0,0(sp)
    80003b78:	00113423          	sd	ra,8(sp)
    80003b7c:	01010413          	addi	s0,sp,16
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	5c0080e7          	jalr	1472(ra) # 80002140 <mycpu>
    80003b88:	100027f3          	csrr	a5,sstatus
    80003b8c:	0027f793          	andi	a5,a5,2
    80003b90:	04078463          	beqz	a5,80003bd8 <pop_on+0x68>
    80003b94:	07852783          	lw	a5,120(a0)
    80003b98:	02f05863          	blez	a5,80003bc8 <pop_on+0x58>
    80003b9c:	fff7879b          	addiw	a5,a5,-1
    80003ba0:	06f52c23          	sw	a5,120(a0)
    80003ba4:	07853783          	ld	a5,120(a0)
    80003ba8:	00079863          	bnez	a5,80003bb8 <pop_on+0x48>
    80003bac:	100027f3          	csrr	a5,sstatus
    80003bb0:	ffd7f793          	andi	a5,a5,-3
    80003bb4:	10079073          	csrw	sstatus,a5
    80003bb8:	00813083          	ld	ra,8(sp)
    80003bbc:	00013403          	ld	s0,0(sp)
    80003bc0:	01010113          	addi	sp,sp,16
    80003bc4:	00008067          	ret
    80003bc8:	00001517          	auipc	a0,0x1
    80003bcc:	67850513          	addi	a0,a0,1656 # 80005240 <digits+0x70>
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	f2c080e7          	jalr	-212(ra) # 80002afc <panic>
    80003bd8:	00001517          	auipc	a0,0x1
    80003bdc:	64850513          	addi	a0,a0,1608 # 80005220 <digits+0x50>
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	f1c080e7          	jalr	-228(ra) # 80002afc <panic>

0000000080003be8 <__memset>:
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00813423          	sd	s0,8(sp)
    80003bf0:	01010413          	addi	s0,sp,16
    80003bf4:	1a060e63          	beqz	a2,80003db0 <__memset+0x1c8>
    80003bf8:	40a007b3          	neg	a5,a0
    80003bfc:	0077f793          	andi	a5,a5,7
    80003c00:	00778693          	addi	a3,a5,7
    80003c04:	00b00813          	li	a6,11
    80003c08:	0ff5f593          	andi	a1,a1,255
    80003c0c:	fff6071b          	addiw	a4,a2,-1
    80003c10:	1b06e663          	bltu	a3,a6,80003dbc <__memset+0x1d4>
    80003c14:	1cd76463          	bltu	a4,a3,80003ddc <__memset+0x1f4>
    80003c18:	1a078e63          	beqz	a5,80003dd4 <__memset+0x1ec>
    80003c1c:	00b50023          	sb	a1,0(a0)
    80003c20:	00100713          	li	a4,1
    80003c24:	1ae78463          	beq	a5,a4,80003dcc <__memset+0x1e4>
    80003c28:	00b500a3          	sb	a1,1(a0)
    80003c2c:	00200713          	li	a4,2
    80003c30:	1ae78a63          	beq	a5,a4,80003de4 <__memset+0x1fc>
    80003c34:	00b50123          	sb	a1,2(a0)
    80003c38:	00300713          	li	a4,3
    80003c3c:	18e78463          	beq	a5,a4,80003dc4 <__memset+0x1dc>
    80003c40:	00b501a3          	sb	a1,3(a0)
    80003c44:	00400713          	li	a4,4
    80003c48:	1ae78263          	beq	a5,a4,80003dec <__memset+0x204>
    80003c4c:	00b50223          	sb	a1,4(a0)
    80003c50:	00500713          	li	a4,5
    80003c54:	1ae78063          	beq	a5,a4,80003df4 <__memset+0x20c>
    80003c58:	00b502a3          	sb	a1,5(a0)
    80003c5c:	00700713          	li	a4,7
    80003c60:	18e79e63          	bne	a5,a4,80003dfc <__memset+0x214>
    80003c64:	00b50323          	sb	a1,6(a0)
    80003c68:	00700e93          	li	t4,7
    80003c6c:	00859713          	slli	a4,a1,0x8
    80003c70:	00e5e733          	or	a4,a1,a4
    80003c74:	01059e13          	slli	t3,a1,0x10
    80003c78:	01c76e33          	or	t3,a4,t3
    80003c7c:	01859313          	slli	t1,a1,0x18
    80003c80:	006e6333          	or	t1,t3,t1
    80003c84:	02059893          	slli	a7,a1,0x20
    80003c88:	40f60e3b          	subw	t3,a2,a5
    80003c8c:	011368b3          	or	a7,t1,a7
    80003c90:	02859813          	slli	a6,a1,0x28
    80003c94:	0108e833          	or	a6,a7,a6
    80003c98:	03059693          	slli	a3,a1,0x30
    80003c9c:	003e589b          	srliw	a7,t3,0x3
    80003ca0:	00d866b3          	or	a3,a6,a3
    80003ca4:	03859713          	slli	a4,a1,0x38
    80003ca8:	00389813          	slli	a6,a7,0x3
    80003cac:	00f507b3          	add	a5,a0,a5
    80003cb0:	00e6e733          	or	a4,a3,a4
    80003cb4:	000e089b          	sext.w	a7,t3
    80003cb8:	00f806b3          	add	a3,a6,a5
    80003cbc:	00e7b023          	sd	a4,0(a5)
    80003cc0:	00878793          	addi	a5,a5,8
    80003cc4:	fed79ce3          	bne	a5,a3,80003cbc <__memset+0xd4>
    80003cc8:	ff8e7793          	andi	a5,t3,-8
    80003ccc:	0007871b          	sext.w	a4,a5
    80003cd0:	01d787bb          	addw	a5,a5,t4
    80003cd4:	0ce88e63          	beq	a7,a4,80003db0 <__memset+0x1c8>
    80003cd8:	00f50733          	add	a4,a0,a5
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0017871b          	addiw	a4,a5,1
    80003ce4:	0cc77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	0027871b          	addiw	a4,a5,2
    80003cf4:	0ac77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	0037871b          	addiw	a4,a5,3
    80003d04:	0ac77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	0047871b          	addiw	a4,a5,4
    80003d14:	08c77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	0057871b          	addiw	a4,a5,5
    80003d24:	08c77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0067871b          	addiw	a4,a5,6
    80003d34:	06c77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0077871b          	addiw	a4,a5,7
    80003d44:	06c77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0087871b          	addiw	a4,a5,8
    80003d54:	04c77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0097871b          	addiw	a4,a5,9
    80003d64:	04c77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	00a7871b          	addiw	a4,a5,10
    80003d74:	02c77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	00b7871b          	addiw	a4,a5,11
    80003d84:	02c77663          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	00c7871b          	addiw	a4,a5,12
    80003d94:	00c77e63          	bgeu	a4,a2,80003db0 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	00d7879b          	addiw	a5,a5,13
    80003da4:	00c7f663          	bgeu	a5,a2,80003db0 <__memset+0x1c8>
    80003da8:	00f507b3          	add	a5,a0,a5
    80003dac:	00b78023          	sb	a1,0(a5)
    80003db0:	00813403          	ld	s0,8(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret
    80003dbc:	00b00693          	li	a3,11
    80003dc0:	e55ff06f          	j	80003c14 <__memset+0x2c>
    80003dc4:	00300e93          	li	t4,3
    80003dc8:	ea5ff06f          	j	80003c6c <__memset+0x84>
    80003dcc:	00100e93          	li	t4,1
    80003dd0:	e9dff06f          	j	80003c6c <__memset+0x84>
    80003dd4:	00000e93          	li	t4,0
    80003dd8:	e95ff06f          	j	80003c6c <__memset+0x84>
    80003ddc:	00000793          	li	a5,0
    80003de0:	ef9ff06f          	j	80003cd8 <__memset+0xf0>
    80003de4:	00200e93          	li	t4,2
    80003de8:	e85ff06f          	j	80003c6c <__memset+0x84>
    80003dec:	00400e93          	li	t4,4
    80003df0:	e7dff06f          	j	80003c6c <__memset+0x84>
    80003df4:	00500e93          	li	t4,5
    80003df8:	e75ff06f          	j	80003c6c <__memset+0x84>
    80003dfc:	00600e93          	li	t4,6
    80003e00:	e6dff06f          	j	80003c6c <__memset+0x84>

0000000080003e04 <__memmove>:
    80003e04:	ff010113          	addi	sp,sp,-16
    80003e08:	00813423          	sd	s0,8(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    80003e10:	0e060863          	beqz	a2,80003f00 <__memmove+0xfc>
    80003e14:	fff6069b          	addiw	a3,a2,-1
    80003e18:	0006881b          	sext.w	a6,a3
    80003e1c:	0ea5e863          	bltu	a1,a0,80003f0c <__memmove+0x108>
    80003e20:	00758713          	addi	a4,a1,7
    80003e24:	00a5e7b3          	or	a5,a1,a0
    80003e28:	40a70733          	sub	a4,a4,a0
    80003e2c:	0077f793          	andi	a5,a5,7
    80003e30:	00f73713          	sltiu	a4,a4,15
    80003e34:	00174713          	xori	a4,a4,1
    80003e38:	0017b793          	seqz	a5,a5
    80003e3c:	00e7f7b3          	and	a5,a5,a4
    80003e40:	10078863          	beqz	a5,80003f50 <__memmove+0x14c>
    80003e44:	00900793          	li	a5,9
    80003e48:	1107f463          	bgeu	a5,a6,80003f50 <__memmove+0x14c>
    80003e4c:	0036581b          	srliw	a6,a2,0x3
    80003e50:	fff8081b          	addiw	a6,a6,-1
    80003e54:	02081813          	slli	a6,a6,0x20
    80003e58:	01d85893          	srli	a7,a6,0x1d
    80003e5c:	00858813          	addi	a6,a1,8
    80003e60:	00058793          	mv	a5,a1
    80003e64:	00050713          	mv	a4,a0
    80003e68:	01088833          	add	a6,a7,a6
    80003e6c:	0007b883          	ld	a7,0(a5)
    80003e70:	00878793          	addi	a5,a5,8
    80003e74:	00870713          	addi	a4,a4,8
    80003e78:	ff173c23          	sd	a7,-8(a4)
    80003e7c:	ff0798e3          	bne	a5,a6,80003e6c <__memmove+0x68>
    80003e80:	ff867713          	andi	a4,a2,-8
    80003e84:	02071793          	slli	a5,a4,0x20
    80003e88:	0207d793          	srli	a5,a5,0x20
    80003e8c:	00f585b3          	add	a1,a1,a5
    80003e90:	40e686bb          	subw	a3,a3,a4
    80003e94:	00f507b3          	add	a5,a0,a5
    80003e98:	06e60463          	beq	a2,a4,80003f00 <__memmove+0xfc>
    80003e9c:	0005c703          	lbu	a4,0(a1)
    80003ea0:	00e78023          	sb	a4,0(a5)
    80003ea4:	04068e63          	beqz	a3,80003f00 <__memmove+0xfc>
    80003ea8:	0015c603          	lbu	a2,1(a1)
    80003eac:	00100713          	li	a4,1
    80003eb0:	00c780a3          	sb	a2,1(a5)
    80003eb4:	04e68663          	beq	a3,a4,80003f00 <__memmove+0xfc>
    80003eb8:	0025c603          	lbu	a2,2(a1)
    80003ebc:	00200713          	li	a4,2
    80003ec0:	00c78123          	sb	a2,2(a5)
    80003ec4:	02e68e63          	beq	a3,a4,80003f00 <__memmove+0xfc>
    80003ec8:	0035c603          	lbu	a2,3(a1)
    80003ecc:	00300713          	li	a4,3
    80003ed0:	00c781a3          	sb	a2,3(a5)
    80003ed4:	02e68663          	beq	a3,a4,80003f00 <__memmove+0xfc>
    80003ed8:	0045c603          	lbu	a2,4(a1)
    80003edc:	00400713          	li	a4,4
    80003ee0:	00c78223          	sb	a2,4(a5)
    80003ee4:	00e68e63          	beq	a3,a4,80003f00 <__memmove+0xfc>
    80003ee8:	0055c603          	lbu	a2,5(a1)
    80003eec:	00500713          	li	a4,5
    80003ef0:	00c782a3          	sb	a2,5(a5)
    80003ef4:	00e68663          	beq	a3,a4,80003f00 <__memmove+0xfc>
    80003ef8:	0065c703          	lbu	a4,6(a1)
    80003efc:	00e78323          	sb	a4,6(a5)
    80003f00:	00813403          	ld	s0,8(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret
    80003f0c:	02061713          	slli	a4,a2,0x20
    80003f10:	02075713          	srli	a4,a4,0x20
    80003f14:	00e587b3          	add	a5,a1,a4
    80003f18:	f0f574e3          	bgeu	a0,a5,80003e20 <__memmove+0x1c>
    80003f1c:	02069613          	slli	a2,a3,0x20
    80003f20:	02065613          	srli	a2,a2,0x20
    80003f24:	fff64613          	not	a2,a2
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00c78633          	add	a2,a5,a2
    80003f30:	fff7c683          	lbu	a3,-1(a5)
    80003f34:	fff78793          	addi	a5,a5,-1
    80003f38:	fff70713          	addi	a4,a4,-1
    80003f3c:	00d70023          	sb	a3,0(a4)
    80003f40:	fec798e3          	bne	a5,a2,80003f30 <__memmove+0x12c>
    80003f44:	00813403          	ld	s0,8(sp)
    80003f48:	01010113          	addi	sp,sp,16
    80003f4c:	00008067          	ret
    80003f50:	02069713          	slli	a4,a3,0x20
    80003f54:	02075713          	srli	a4,a4,0x20
    80003f58:	00170713          	addi	a4,a4,1
    80003f5c:	00e50733          	add	a4,a0,a4
    80003f60:	00050793          	mv	a5,a0
    80003f64:	0005c683          	lbu	a3,0(a1)
    80003f68:	00178793          	addi	a5,a5,1
    80003f6c:	00158593          	addi	a1,a1,1
    80003f70:	fed78fa3          	sb	a3,-1(a5)
    80003f74:	fee798e3          	bne	a5,a4,80003f64 <__memmove+0x160>
    80003f78:	f89ff06f          	j	80003f00 <__memmove+0xfc>

0000000080003f7c <__mem_free>:
    80003f7c:	ff010113          	addi	sp,sp,-16
    80003f80:	00813423          	sd	s0,8(sp)
    80003f84:	01010413          	addi	s0,sp,16
    80003f88:	00002597          	auipc	a1,0x2
    80003f8c:	9a058593          	addi	a1,a1,-1632 # 80005928 <freep>
    80003f90:	0005b783          	ld	a5,0(a1)
    80003f94:	ff050693          	addi	a3,a0,-16
    80003f98:	0007b703          	ld	a4,0(a5)
    80003f9c:	00d7fc63          	bgeu	a5,a3,80003fb4 <__mem_free+0x38>
    80003fa0:	00e6ee63          	bltu	a3,a4,80003fbc <__mem_free+0x40>
    80003fa4:	00e7fc63          	bgeu	a5,a4,80003fbc <__mem_free+0x40>
    80003fa8:	00070793          	mv	a5,a4
    80003fac:	0007b703          	ld	a4,0(a5)
    80003fb0:	fed7e8e3          	bltu	a5,a3,80003fa0 <__mem_free+0x24>
    80003fb4:	fee7eae3          	bltu	a5,a4,80003fa8 <__mem_free+0x2c>
    80003fb8:	fee6f8e3          	bgeu	a3,a4,80003fa8 <__mem_free+0x2c>
    80003fbc:	ff852803          	lw	a6,-8(a0)
    80003fc0:	02081613          	slli	a2,a6,0x20
    80003fc4:	01c65613          	srli	a2,a2,0x1c
    80003fc8:	00c68633          	add	a2,a3,a2
    80003fcc:	02c70a63          	beq	a4,a2,80004000 <__mem_free+0x84>
    80003fd0:	fee53823          	sd	a4,-16(a0)
    80003fd4:	0087a503          	lw	a0,8(a5)
    80003fd8:	02051613          	slli	a2,a0,0x20
    80003fdc:	01c65613          	srli	a2,a2,0x1c
    80003fe0:	00c78633          	add	a2,a5,a2
    80003fe4:	04c68263          	beq	a3,a2,80004028 <__mem_free+0xac>
    80003fe8:	00813403          	ld	s0,8(sp)
    80003fec:	00d7b023          	sd	a3,0(a5)
    80003ff0:	00f5b023          	sd	a5,0(a1)
    80003ff4:	00000513          	li	a0,0
    80003ff8:	01010113          	addi	sp,sp,16
    80003ffc:	00008067          	ret
    80004000:	00872603          	lw	a2,8(a4)
    80004004:	00073703          	ld	a4,0(a4)
    80004008:	0106083b          	addw	a6,a2,a6
    8000400c:	ff052c23          	sw	a6,-8(a0)
    80004010:	fee53823          	sd	a4,-16(a0)
    80004014:	0087a503          	lw	a0,8(a5)
    80004018:	02051613          	slli	a2,a0,0x20
    8000401c:	01c65613          	srli	a2,a2,0x1c
    80004020:	00c78633          	add	a2,a5,a2
    80004024:	fcc692e3          	bne	a3,a2,80003fe8 <__mem_free+0x6c>
    80004028:	00813403          	ld	s0,8(sp)
    8000402c:	0105053b          	addw	a0,a0,a6
    80004030:	00a7a423          	sw	a0,8(a5)
    80004034:	00e7b023          	sd	a4,0(a5)
    80004038:	00f5b023          	sd	a5,0(a1)
    8000403c:	00000513          	li	a0,0
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret

0000000080004048 <__mem_alloc>:
    80004048:	fc010113          	addi	sp,sp,-64
    8000404c:	02813823          	sd	s0,48(sp)
    80004050:	02913423          	sd	s1,40(sp)
    80004054:	03213023          	sd	s2,32(sp)
    80004058:	01513423          	sd	s5,8(sp)
    8000405c:	02113c23          	sd	ra,56(sp)
    80004060:	01313c23          	sd	s3,24(sp)
    80004064:	01413823          	sd	s4,16(sp)
    80004068:	01613023          	sd	s6,0(sp)
    8000406c:	04010413          	addi	s0,sp,64
    80004070:	00002a97          	auipc	s5,0x2
    80004074:	8b8a8a93          	addi	s5,s5,-1864 # 80005928 <freep>
    80004078:	00f50913          	addi	s2,a0,15
    8000407c:	000ab683          	ld	a3,0(s5)
    80004080:	00495913          	srli	s2,s2,0x4
    80004084:	0019049b          	addiw	s1,s2,1
    80004088:	00048913          	mv	s2,s1
    8000408c:	0c068c63          	beqz	a3,80004164 <__mem_alloc+0x11c>
    80004090:	0006b503          	ld	a0,0(a3)
    80004094:	00852703          	lw	a4,8(a0)
    80004098:	10977063          	bgeu	a4,s1,80004198 <__mem_alloc+0x150>
    8000409c:	000017b7          	lui	a5,0x1
    800040a0:	0009099b          	sext.w	s3,s2
    800040a4:	0af4e863          	bltu	s1,a5,80004154 <__mem_alloc+0x10c>
    800040a8:	02099a13          	slli	s4,s3,0x20
    800040ac:	01ca5a13          	srli	s4,s4,0x1c
    800040b0:	fff00b13          	li	s6,-1
    800040b4:	0100006f          	j	800040c4 <__mem_alloc+0x7c>
    800040b8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800040bc:	00852703          	lw	a4,8(a0)
    800040c0:	04977463          	bgeu	a4,s1,80004108 <__mem_alloc+0xc0>
    800040c4:	00050793          	mv	a5,a0
    800040c8:	fea698e3          	bne	a3,a0,800040b8 <__mem_alloc+0x70>
    800040cc:	000a0513          	mv	a0,s4
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	1f0080e7          	jalr	496(ra) # 800042c0 <kvmincrease>
    800040d8:	00050793          	mv	a5,a0
    800040dc:	01050513          	addi	a0,a0,16
    800040e0:	07678e63          	beq	a5,s6,8000415c <__mem_alloc+0x114>
    800040e4:	0137a423          	sw	s3,8(a5)
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	e94080e7          	jalr	-364(ra) # 80003f7c <__mem_free>
    800040f0:	000ab783          	ld	a5,0(s5)
    800040f4:	06078463          	beqz	a5,8000415c <__mem_alloc+0x114>
    800040f8:	0007b503          	ld	a0,0(a5)
    800040fc:	00078693          	mv	a3,a5
    80004100:	00852703          	lw	a4,8(a0)
    80004104:	fc9760e3          	bltu	a4,s1,800040c4 <__mem_alloc+0x7c>
    80004108:	08e48263          	beq	s1,a4,8000418c <__mem_alloc+0x144>
    8000410c:	4127073b          	subw	a4,a4,s2
    80004110:	02071693          	slli	a3,a4,0x20
    80004114:	01c6d693          	srli	a3,a3,0x1c
    80004118:	00e52423          	sw	a4,8(a0)
    8000411c:	00d50533          	add	a0,a0,a3
    80004120:	01252423          	sw	s2,8(a0)
    80004124:	00fab023          	sd	a5,0(s5)
    80004128:	01050513          	addi	a0,a0,16
    8000412c:	03813083          	ld	ra,56(sp)
    80004130:	03013403          	ld	s0,48(sp)
    80004134:	02813483          	ld	s1,40(sp)
    80004138:	02013903          	ld	s2,32(sp)
    8000413c:	01813983          	ld	s3,24(sp)
    80004140:	01013a03          	ld	s4,16(sp)
    80004144:	00813a83          	ld	s5,8(sp)
    80004148:	00013b03          	ld	s6,0(sp)
    8000414c:	04010113          	addi	sp,sp,64
    80004150:	00008067          	ret
    80004154:	000019b7          	lui	s3,0x1
    80004158:	f51ff06f          	j	800040a8 <__mem_alloc+0x60>
    8000415c:	00000513          	li	a0,0
    80004160:	fcdff06f          	j	8000412c <__mem_alloc+0xe4>
    80004164:	00003797          	auipc	a5,0x3
    80004168:	a5c78793          	addi	a5,a5,-1444 # 80006bc0 <base>
    8000416c:	00078513          	mv	a0,a5
    80004170:	00fab023          	sd	a5,0(s5)
    80004174:	00f7b023          	sd	a5,0(a5)
    80004178:	00000713          	li	a4,0
    8000417c:	00003797          	auipc	a5,0x3
    80004180:	a407a623          	sw	zero,-1460(a5) # 80006bc8 <base+0x8>
    80004184:	00050693          	mv	a3,a0
    80004188:	f11ff06f          	j	80004098 <__mem_alloc+0x50>
    8000418c:	00053703          	ld	a4,0(a0)
    80004190:	00e7b023          	sd	a4,0(a5)
    80004194:	f91ff06f          	j	80004124 <__mem_alloc+0xdc>
    80004198:	00068793          	mv	a5,a3
    8000419c:	f6dff06f          	j	80004108 <__mem_alloc+0xc0>

00000000800041a0 <__putc>:
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	00813823          	sd	s0,16(sp)
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	02010413          	addi	s0,sp,32
    800041b0:	00050793          	mv	a5,a0
    800041b4:	fef40593          	addi	a1,s0,-17
    800041b8:	00100613          	li	a2,1
    800041bc:	00000513          	li	a0,0
    800041c0:	fef407a3          	sb	a5,-17(s0)
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	918080e7          	jalr	-1768(ra) # 80002adc <console_write>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	02010113          	addi	sp,sp,32
    800041d8:	00008067          	ret

00000000800041dc <__getc>:
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00113c23          	sd	ra,24(sp)
    800041e8:	02010413          	addi	s0,sp,32
    800041ec:	fe840593          	addi	a1,s0,-24
    800041f0:	00100613          	li	a2,1
    800041f4:	00000513          	li	a0,0
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	8c4080e7          	jalr	-1852(ra) # 80002abc <console_read>
    80004200:	fe844503          	lbu	a0,-24(s0)
    80004204:	01813083          	ld	ra,24(sp)
    80004208:	01013403          	ld	s0,16(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret

0000000080004214 <console_handler>:
    80004214:	fe010113          	addi	sp,sp,-32
    80004218:	00813823          	sd	s0,16(sp)
    8000421c:	00113c23          	sd	ra,24(sp)
    80004220:	00913423          	sd	s1,8(sp)
    80004224:	02010413          	addi	s0,sp,32
    80004228:	14202773          	csrr	a4,scause
    8000422c:	100027f3          	csrr	a5,sstatus
    80004230:	0027f793          	andi	a5,a5,2
    80004234:	06079e63          	bnez	a5,800042b0 <console_handler+0x9c>
    80004238:	00074c63          	bltz	a4,80004250 <console_handler+0x3c>
    8000423c:	01813083          	ld	ra,24(sp)
    80004240:	01013403          	ld	s0,16(sp)
    80004244:	00813483          	ld	s1,8(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret
    80004250:	0ff77713          	andi	a4,a4,255
    80004254:	00900793          	li	a5,9
    80004258:	fef712e3          	bne	a4,a5,8000423c <console_handler+0x28>
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	4b8080e7          	jalr	1208(ra) # 80002714 <plic_claim>
    80004264:	00a00793          	li	a5,10
    80004268:	00050493          	mv	s1,a0
    8000426c:	02f50c63          	beq	a0,a5,800042a4 <console_handler+0x90>
    80004270:	fc0506e3          	beqz	a0,8000423c <console_handler+0x28>
    80004274:	00050593          	mv	a1,a0
    80004278:	00001517          	auipc	a0,0x1
    8000427c:	ed050513          	addi	a0,a0,-304 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80004280:	fffff097          	auipc	ra,0xfffff
    80004284:	8d8080e7          	jalr	-1832(ra) # 80002b58 <__printf>
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	01813083          	ld	ra,24(sp)
    80004290:	00048513          	mv	a0,s1
    80004294:	00813483          	ld	s1,8(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	ffffe317          	auipc	t1,0xffffe
    800042a0:	4b030067          	jr	1200(t1) # 8000274c <plic_complete>
    800042a4:	fffff097          	auipc	ra,0xfffff
    800042a8:	1bc080e7          	jalr	444(ra) # 80003460 <uartintr>
    800042ac:	fddff06f          	j	80004288 <console_handler+0x74>
    800042b0:	00001517          	auipc	a0,0x1
    800042b4:	f9850513          	addi	a0,a0,-104 # 80005248 <digits+0x78>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	844080e7          	jalr	-1980(ra) # 80002afc <panic>

00000000800042c0 <kvmincrease>:
    800042c0:	fe010113          	addi	sp,sp,-32
    800042c4:	01213023          	sd	s2,0(sp)
    800042c8:	00001937          	lui	s2,0x1
    800042cc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800042d0:	00813823          	sd	s0,16(sp)
    800042d4:	00113c23          	sd	ra,24(sp)
    800042d8:	00913423          	sd	s1,8(sp)
    800042dc:	02010413          	addi	s0,sp,32
    800042e0:	01250933          	add	s2,a0,s2
    800042e4:	00c95913          	srli	s2,s2,0xc
    800042e8:	02090863          	beqz	s2,80004318 <kvmincrease+0x58>
    800042ec:	00000493          	li	s1,0
    800042f0:	00148493          	addi	s1,s1,1
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	4bc080e7          	jalr	1212(ra) # 800037b0 <kalloc>
    800042fc:	fe991ae3          	bne	s2,s1,800042f0 <kvmincrease+0x30>
    80004300:	01813083          	ld	ra,24(sp)
    80004304:	01013403          	ld	s0,16(sp)
    80004308:	00813483          	ld	s1,8(sp)
    8000430c:	00013903          	ld	s2,0(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret
    80004318:	01813083          	ld	ra,24(sp)
    8000431c:	01013403          	ld	s0,16(sp)
    80004320:	00813483          	ld	s1,8(sp)
    80004324:	00013903          	ld	s2,0(sp)
    80004328:	00000513          	li	a0,0
    8000432c:	02010113          	addi	sp,sp,32
    80004330:	00008067          	ret
	...

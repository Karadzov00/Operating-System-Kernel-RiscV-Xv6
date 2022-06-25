
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
    8000001c:	6e9010ef          	jal	ra,80001f04 <start>

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
    8000116c:	7a870713          	addi	a4,a4,1960 # 80005910 <_ZN7_thread8globalIdE>
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
    80001218:	6fc48493          	addi	s1,s1,1788 # 80005910 <_ZN7_thread8globalIdE>
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
    8000126c:	6b04b483          	ld	s1,1712(s1) # 80005918 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001270:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001274:	02078c63          	beqz	a5,800012ac <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	43c080e7          	jalr	1084(ra) # 800016b4 <_ZN9Scheduler3getEv>
    80001280:	00004797          	auipc	a5,0x4
    80001284:	68a7bc23          	sd	a0,1688(a5) # 80005918 <_ZN7_thread7runningE>
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
    800012d0:	abc080e7          	jalr	-1348(ra) # 80001d88 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001370:	a1c080e7          	jalr	-1508(ra) # 80001d88 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001398:	a1c080e7          	jalr	-1508(ra) # 80001db0 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013c0:	9f4080e7          	jalr	-1548(ra) # 80001db0 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
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
    80001564:	3387b783          	ld	a5,824(a5) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001598:	2fc7b783          	ld	a5,764(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000159c:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyA, nullptr)){
    800015a0:	00000613          	li	a2,0
    800015a4:	00004597          	auipc	a1,0x4
    800015a8:	3045b583          	ld	a1,772(a1) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800015d0:	2e45b583          	ld	a1,740(a1) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800015f8:	a0c50513          	addi	a0,a0,-1524 # 80005000 <kvmincrease+0xcf0>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	7dc080e7          	jalr	2012(ra) # 80001dd8 <_Z11printStringPKc>
    80001604:	f81ff06f          	j	80001584 <main+0x34>
        printString("thread created");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	9f850513          	addi	a0,a0,-1544 # 80005000 <kvmincrease+0xcf0>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	7c8080e7          	jalr	1992(ra) # 80001dd8 <_Z11printStringPKc>
    80001618:	fa5ff06f          	j	800015bc <main+0x6c>
        printString("thread created");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	9e450513          	addi	a0,a0,-1564 # 80005000 <kvmincrease+0xcf0>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	7b4080e7          	jalr	1972(ra) # 80001dd8 <_Z11printStringPKc>
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
    80001654:	9c050513          	addi	a0,a0,-1600 # 80005010 <kvmincrease+0xd00>
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	780080e7          	jalr	1920(ra) # 80001dd8 <_Z11printStringPKc>

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
    800016a4:	28878793          	addi	a5,a5,648 # 80005928 <_ZN9Scheduler16readyThreadQueueE>
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
    800016cc:	26053503          	ld	a0,608(a0) # 80005928 <_ZN9Scheduler16readyThreadQueueE>
    800016d0:	04050263          	beqz	a0,80001714 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800016d4:	00853783          	ld	a5,8(a0)
    800016d8:	00004717          	auipc	a4,0x4
    800016dc:	24f73823          	sd	a5,592(a4) # 80005928 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800016e0:	02078463          	beqz	a5,80001708 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800016e4:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	6c8080e7          	jalr	1736(ra) # 80001db0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800016f0:	00048513          	mv	a0,s1
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret
        if (!head) { tail = 0; }
    80001708:	00004797          	auipc	a5,0x4
    8000170c:	2207b423          	sd	zero,552(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    8000173c:	650080e7          	jalr	1616(ra) # 80001d88 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001740:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001744:	00053423          	sd	zero,8(a0)
        if (tail)
    80001748:	00004797          	auipc	a5,0x4
    8000174c:	1e87b783          	ld	a5,488(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001750:	02078263          	beqz	a5,80001774 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001754:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001758:	00004797          	auipc	a5,0x4
    8000175c:	1ca7bc23          	sd	a0,472(a5) # 80005930 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001760:	01813083          	ld	ra,24(sp)
    80001764:	01013403          	ld	s0,16(sp)
    80001768:	00813483          	ld	s1,8(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret
            head = tail = elem;
    80001774:	00004797          	auipc	a5,0x4
    80001778:	1b478793          	addi	a5,a5,436 # 80005928 <_ZN9Scheduler16readyThreadQueueE>
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
    800018f0:	73450513          	addi	a0,a0,1844 # 80005020 <kvmincrease+0xd10>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	4e4080e7          	jalr	1252(ra) # 80001dd8 <_Z11printStringPKc>
        printInteger(i);
    800018fc:	00048513          	mv	a0,s1
    80001900:	00000097          	auipc	ra,0x0
    80001904:	548080e7          	jalr	1352(ra) # 80001e48 <_Z12printIntegerm>
        printString("\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	72850513          	addi	a0,a0,1832 # 80005030 <kvmincrease+0xd20>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	4c8080e7          	jalr	1224(ra) # 80001dd8 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001918:	0014849b          	addiw	s1,s1,1
    8000191c:	0ff4f493          	andi	s1,s1,255
    80001920:	00200793          	li	a5,2
    80001924:	fc97f4e3          	bgeu	a5,s1,800018ec <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	70050513          	addi	a0,a0,1792 # 80005028 <kvmincrease+0xd18>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	4a8080e7          	jalr	1192(ra) # 80001dd8 <_Z11printStringPKc>
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
    8000194c:	6f050513          	addi	a0,a0,1776 # 80005038 <kvmincrease+0xd28>
    80001950:	00000097          	auipc	ra,0x0
    80001954:	488080e7          	jalr	1160(ra) # 80001dd8 <_Z11printStringPKc>
    printInteger(t1);
    80001958:	00090513          	mv	a0,s2
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	4ec080e7          	jalr	1260(ra) # 80001e48 <_Z12printIntegerm>
    printString("\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6cc50513          	addi	a0,a0,1740 # 80005030 <kvmincrease+0xd20>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	46c080e7          	jalr	1132(ra) # 80001dd8 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001974:	01400513          	li	a0,20
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	ee4080e7          	jalr	-284(ra) # 8000185c <_ZL9fibonaccim>
    80001980:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6bc50513          	addi	a0,a0,1724 # 80005040 <kvmincrease+0xd30>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	44c080e7          	jalr	1100(ra) # 80001dd8 <_Z11printStringPKc>
    printInteger(result);
    80001994:	00090513          	mv	a0,s2
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	4b0080e7          	jalr	1200(ra) # 80001e48 <_Z12printIntegerm>
    printString("\n");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	69050513          	addi	a0,a0,1680 # 80005030 <kvmincrease+0xd20>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	430080e7          	jalr	1072(ra) # 80001dd8 <_Z11printStringPKc>
    800019b0:	0380006f          	j	800019e8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019b4:	00003517          	auipc	a0,0x3
    800019b8:	66c50513          	addi	a0,a0,1644 # 80005020 <kvmincrease+0xd10>
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	41c080e7          	jalr	1052(ra) # 80001dd8 <_Z11printStringPKc>
        printInteger(i);
    800019c4:	00048513          	mv	a0,s1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	480080e7          	jalr	1152(ra) # 80001e48 <_Z12printIntegerm>
        printString("\n");
    800019d0:	00003517          	auipc	a0,0x3
    800019d4:	66050513          	addi	a0,a0,1632 # 80005030 <kvmincrease+0xd20>
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	400080e7          	jalr	1024(ra) # 80001dd8 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019e0:	0014849b          	addiw	s1,s1,1
    800019e4:	0ff4f493          	andi	s1,s1,255
    800019e8:	00500793          	li	a5,5
    800019ec:	fc97f4e3          	bgeu	a5,s1,800019b4 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    800019f0:	00004797          	auipc	a5,0x4
    800019f4:	ea07b783          	ld	a5,-352(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001a48:	60c50513          	addi	a0,a0,1548 # 80005050 <kvmincrease+0xd40>
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	38c080e7          	jalr	908(ra) # 80001dd8 <_Z11printStringPKc>
        printInteger(i);
    80001a54:	00048513          	mv	a0,s1
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	3f0080e7          	jalr	1008(ra) # 80001e48 <_Z12printIntegerm>
        printString("\n");
    80001a60:	00003517          	auipc	a0,0x3
    80001a64:	5d050513          	addi	a0,a0,1488 # 80005030 <kvmincrease+0xd20>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	370080e7          	jalr	880(ra) # 80001dd8 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a70:	0014849b          	addiw	s1,s1,1
    80001a74:	0ff4f493          	andi	s1,s1,255
    80001a78:	00c00793          	li	a5,12
    80001a7c:	fc97f4e3          	bgeu	a5,s1,80001a44 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	5d850513          	addi	a0,a0,1496 # 80005058 <kvmincrease+0xd48>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	350080e7          	jalr	848(ra) # 80001dd8 <_Z11printStringPKc>
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
    80001ab0:	59450513          	addi	a0,a0,1428 # 80005040 <kvmincrease+0xd30>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	324080e7          	jalr	804(ra) # 80001dd8 <_Z11printStringPKc>
    printInteger(result);
    80001abc:	00090513          	mv	a0,s2
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	388080e7          	jalr	904(ra) # 80001e48 <_Z12printIntegerm>
    printString("\n");
    80001ac8:	00003517          	auipc	a0,0x3
    80001acc:	56850513          	addi	a0,a0,1384 # 80005030 <kvmincrease+0xd20>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	308080e7          	jalr	776(ra) # 80001dd8 <_Z11printStringPKc>
    80001ad8:	0380006f          	j	80001b10 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001adc:	00003517          	auipc	a0,0x3
    80001ae0:	57450513          	addi	a0,a0,1396 # 80005050 <kvmincrease+0xd40>
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	2f4080e7          	jalr	756(ra) # 80001dd8 <_Z11printStringPKc>
        printInteger(i);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	358080e7          	jalr	856(ra) # 80001e48 <_Z12printIntegerm>
        printString("\n");
    80001af8:	00003517          	auipc	a0,0x3
    80001afc:	53850513          	addi	a0,a0,1336 # 80005030 <kvmincrease+0xd20>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	2d8080e7          	jalr	728(ra) # 80001dd8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b08:	0014849b          	addiw	s1,s1,1
    80001b0c:	0ff4f493          	andi	s1,s1,255
    80001b10:	00f00793          	li	a5,15
    80001b14:	fc97f4e3          	bgeu	a5,s1,80001adc <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b18:	00004797          	auipc	a5,0x4
    80001b1c:	d787b783          	ld	a5,-648(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001b6c:	f6010113          	addi	sp,sp,-160
    80001b70:	08113c23          	sd	ra,152(sp)
    80001b74:	08813823          	sd	s0,144(sp)
    80001b78:	08913423          	sd	s1,136(sp)
    80001b7c:	09213023          	sd	s2,128(sp)
    80001b80:	07313c23          	sd	s3,120(sp)
    80001b84:	07413823          	sd	s4,112(sp)
    80001b88:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b8c:	142027f3          	csrr	a5,scause
    80001b90:	f6f43423          	sd	a5,-152(s0)
    return scause;
    80001b94:	f6843783          	ld	a5,-152(s0)
    uint scause = r_scause();
    80001b98:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
//    uint64 arg0;
    uint64 arg1;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001b9c:	00050493          	mv	s1,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001ba0:	ff87879b          	addiw	a5,a5,-8
    80001ba4:	00100713          	li	a4,1
    80001ba8:	02f77263          	bgeu	a4,a5,80001bcc <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001bac:	09813083          	ld	ra,152(sp)
    80001bb0:	09013403          	ld	s0,144(sp)
    80001bb4:	08813483          	ld	s1,136(sp)
    80001bb8:	08013903          	ld	s2,128(sp)
    80001bbc:	07813983          	ld	s3,120(sp)
    80001bc0:	07013a03          	ld	s4,112(sp)
    80001bc4:	0a010113          	addi	sp,sp,160
    80001bc8:	00008067          	ret
        if(a0reg==0x04){
    80001bcc:	00400793          	li	a5,4
    80001bd0:	04f48e63          	beq	s1,a5,80001c2c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        else if(a0reg==0x11){
    80001bd4:	01100793          	li	a5,17
    80001bd8:	08f48863          	beq	s1,a5,80001c68 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        if(a0reg== 0x01 ){
    80001bdc:	00100793          	li	a5,1
    80001be0:	0ef48863          	beq	s1,a5,80001cd0 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if(a0reg==0x02){
    80001be4:	00200793          	li	a5,2
    80001be8:	12f48263          	beq	s1,a5,80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if(a0reg==0x12){
    80001bec:	01200793          	li	a5,18
    80001bf0:	14f48a63          	beq	s1,a5,80001d44 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if(a0reg == 0x13){
    80001bf4:	01300793          	li	a5,19
    80001bf8:	faf49ae3          	bne	s1,a5,80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bfc:	141027f3          	csrr	a5,sepc
    80001c00:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c04:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c08:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c0c:	100027f3          	csrr	a5,sstatus
    80001c10:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001c14:	fc043903          	ld	s2,-64(s0)
            _thread::dispatch();
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	63c080e7          	jalr	1596(ra) # 80001254 <_ZN7_thread8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c20:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c24:	14149073          	csrw	sepc,s1
}
    80001c28:	f85ff06f          	j	80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c2c:	141027f3          	csrr	a5,sepc
    80001c30:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80001c34:	f7843903          	ld	s2,-136(s0)
            uint64 sepc = r_sepc() + 4;
    80001c38:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c3c:	100027f3          	csrr	a5,sstatus
    80001c40:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80001c44:	f7043983          	ld	s3,-144(s0)
            _thread::timeSliceCounter = 0;
    80001c48:	00004797          	auipc	a5,0x4
    80001c4c:	c707b783          	ld	a5,-912(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c50:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	600080e7          	jalr	1536(ra) # 80001254 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c5c:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c60:	14191073          	csrw	sepc,s2
}
    80001c64:	f79ff06f          	j	80001bdc <_ZN5Riscv20handleSupervisorTrapEv+0x70>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c68:	141027f3          	csrr	a5,sepc
    80001c6c:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001c70:	f8843903          	ld	s2,-120(s0)
            uint64 sepc = r_sepc() + 4;
    80001c74:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c78:	100027f3          	csrr	a5,sstatus
    80001c7c:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001c80:	f8043983          	ld	s3,-128(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001c84:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001c88:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001c8c:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001c90:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001c94:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001c98:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001c9c:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001ca0:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80001ca4:	fffff097          	auipc	ra,0xfffff
    80001ca8:	640080e7          	jalr	1600(ra) # 800012e4 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80001cac:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80001cb0:	00050c63          	beqz	a0,80001cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    80001cb4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001cb8:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cbc:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cc0:	14191073          	csrw	sepc,s2
}
    80001cc4:	f19ff06f          	j	80001bdc <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            else ret =-1;
    80001cc8:	fff00793          	li	a5,-1
    80001ccc:	fedff06f          	j	80001cb8 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cd0:	141027f3          	csrr	a5,sepc
    80001cd4:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80001cd8:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    80001cdc:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce0:	100027f3          	csrr	a5,sstatus
    80001ce4:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80001ce8:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001cec:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    80001cf0:	00651513          	slli	a0,a0,0x6
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	094080e7          	jalr	148(ra) # 80001d88 <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001cfc:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d00:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d04:	14149073          	csrw	sepc,s1
}
    80001d08:	ea5ff06f          	j	80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d0c:	141027f3          	csrr	a5,sepc
    80001d10:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001d14:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001d18:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d1c:	100027f3          	csrr	a5,sstatus
    80001d20:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001d24:	fa043903          	ld	s2,-96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001d28:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	084080e7          	jalr	132(ra) # 80001db0 <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001d34:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d38:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d3c:	14149073          	csrw	sepc,s1
}
    80001d40:	e6dff06f          	j	80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d44:	141027f3          	csrr	a5,sepc
    80001d48:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d4c:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001d50:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d54:	100027f3          	csrr	a5,sstatus
    80001d58:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001d5c:	fb043903          	ld	s2,-80(s0)
            _thread::running->finished=true;
    80001d60:	00004797          	auipc	a5,0x4
    80001d64:	b307b783          	ld	a5,-1232(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d68:	0007b783          	ld	a5,0(a5)
    80001d6c:	00100713          	li	a4,1
    80001d70:	02e78423          	sb	a4,40(a5)
            _thread::dispatch();
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	4e0080e7          	jalr	1248(ra) # 80001254 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d7c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d80:	14149073          	csrw	sepc,s1
}
    80001d84:	e29ff06f          	j	80001bac <_ZN5Riscv20handleSupervisorTrapEv+0x40>

0000000080001d88 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	300080e7          	jalr	768(ra) # 80004098 <__mem_alloc>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001dc0:	00002097          	auipc	ra,0x2
    80001dc4:	20c080e7          	jalr	524(ra) # 80003fcc <__mem_free>
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001dd8:	fd010113          	addi	sp,sp,-48
    80001ddc:	02113423          	sd	ra,40(sp)
    80001de0:	02813023          	sd	s0,32(sp)
    80001de4:	00913c23          	sd	s1,24(sp)
    80001de8:	01213823          	sd	s2,16(sp)
    80001dec:	03010413          	addi	s0,sp,48
    80001df0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001df4:	100027f3          	csrr	a5,sstatus
    80001df8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001dfc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e00:	00200793          	li	a5,2
    80001e04:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001e08:	0004c503          	lbu	a0,0(s1)
    80001e0c:	00050a63          	beqz	a0,80001e20 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	3e0080e7          	jalr	992(ra) # 800041f0 <__putc>
        string++;
    80001e18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e1c:	fedff06f          	j	80001e08 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001e20:	0009091b          	sext.w	s2,s2
    80001e24:	00297913          	andi	s2,s2,2
    80001e28:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e2c:	10092073          	csrs	sstatus,s2
}
    80001e30:	02813083          	ld	ra,40(sp)
    80001e34:	02013403          	ld	s0,32(sp)
    80001e38:	01813483          	ld	s1,24(sp)
    80001e3c:	01013903          	ld	s2,16(sp)
    80001e40:	03010113          	addi	sp,sp,48
    80001e44:	00008067          	ret

0000000080001e48 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e48:	fc010113          	addi	sp,sp,-64
    80001e4c:	02113c23          	sd	ra,56(sp)
    80001e50:	02813823          	sd	s0,48(sp)
    80001e54:	02913423          	sd	s1,40(sp)
    80001e58:	03213023          	sd	s2,32(sp)
    80001e5c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e60:	100027f3          	csrr	a5,sstatus
    80001e64:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e68:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e6c:	00200793          	li	a5,2
    80001e70:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e74:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e78:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e7c:	00a00613          	li	a2,10
    80001e80:	02c5773b          	remuw	a4,a0,a2
    80001e84:	02071693          	slli	a3,a4,0x20
    80001e88:	0206d693          	srli	a3,a3,0x20
    80001e8c:	00003717          	auipc	a4,0x3
    80001e90:	1dc70713          	addi	a4,a4,476 # 80005068 <_ZZ12printIntegermE6digits>
    80001e94:	00d70733          	add	a4,a4,a3
    80001e98:	00074703          	lbu	a4,0(a4)
    80001e9c:	fe040693          	addi	a3,s0,-32
    80001ea0:	009687b3          	add	a5,a3,s1
    80001ea4:	0014849b          	addiw	s1,s1,1
    80001ea8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001eac:	0005071b          	sext.w	a4,a0
    80001eb0:	02c5553b          	divuw	a0,a0,a2
    80001eb4:	00900793          	li	a5,9
    80001eb8:	fce7e2e3          	bltu	a5,a4,80001e7c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001ebc:	fff4849b          	addiw	s1,s1,-1
    80001ec0:	0004ce63          	bltz	s1,80001edc <_Z12printIntegerm+0x94>
    80001ec4:	fe040793          	addi	a5,s0,-32
    80001ec8:	009787b3          	add	a5,a5,s1
    80001ecc:	ff07c503          	lbu	a0,-16(a5)
    80001ed0:	00002097          	auipc	ra,0x2
    80001ed4:	320080e7          	jalr	800(ra) # 800041f0 <__putc>
    80001ed8:	fe5ff06f          	j	80001ebc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001edc:	0009091b          	sext.w	s2,s2
    80001ee0:	00297913          	andi	s2,s2,2
    80001ee4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ee8:	10092073          	csrs	sstatus,s2
}
    80001eec:	03813083          	ld	ra,56(sp)
    80001ef0:	03013403          	ld	s0,48(sp)
    80001ef4:	02813483          	ld	s1,40(sp)
    80001ef8:	02013903          	ld	s2,32(sp)
    80001efc:	04010113          	addi	sp,sp,64
    80001f00:	00008067          	ret

0000000080001f04 <start>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    80001f10:	300027f3          	csrr	a5,mstatus
    80001f14:	ffffe737          	lui	a4,0xffffe
    80001f18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c4f>
    80001f1c:	00e7f7b3          	and	a5,a5,a4
    80001f20:	00001737          	lui	a4,0x1
    80001f24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f28:	00e7e7b3          	or	a5,a5,a4
    80001f2c:	30079073          	csrw	mstatus,a5
    80001f30:	00000797          	auipc	a5,0x0
    80001f34:	16078793          	addi	a5,a5,352 # 80002090 <system_main>
    80001f38:	34179073          	csrw	mepc,a5
    80001f3c:	00000793          	li	a5,0
    80001f40:	18079073          	csrw	satp,a5
    80001f44:	000107b7          	lui	a5,0x10
    80001f48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f4c:	30279073          	csrw	medeleg,a5
    80001f50:	30379073          	csrw	mideleg,a5
    80001f54:	104027f3          	csrr	a5,sie
    80001f58:	2227e793          	ori	a5,a5,546
    80001f5c:	10479073          	csrw	sie,a5
    80001f60:	fff00793          	li	a5,-1
    80001f64:	00a7d793          	srli	a5,a5,0xa
    80001f68:	3b079073          	csrw	pmpaddr0,a5
    80001f6c:	00f00793          	li	a5,15
    80001f70:	3a079073          	csrw	pmpcfg0,a5
    80001f74:	f14027f3          	csrr	a5,mhartid
    80001f78:	0200c737          	lui	a4,0x200c
    80001f7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f80:	0007869b          	sext.w	a3,a5
    80001f84:	00269713          	slli	a4,a3,0x2
    80001f88:	000f4637          	lui	a2,0xf4
    80001f8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f90:	00d70733          	add	a4,a4,a3
    80001f94:	0037979b          	slliw	a5,a5,0x3
    80001f98:	020046b7          	lui	a3,0x2004
    80001f9c:	00d787b3          	add	a5,a5,a3
    80001fa0:	00c585b3          	add	a1,a1,a2
    80001fa4:	00371693          	slli	a3,a4,0x3
    80001fa8:	00004717          	auipc	a4,0x4
    80001fac:	99870713          	addi	a4,a4,-1640 # 80005940 <timer_scratch>
    80001fb0:	00b7b023          	sd	a1,0(a5)
    80001fb4:	00d70733          	add	a4,a4,a3
    80001fb8:	00f73c23          	sd	a5,24(a4)
    80001fbc:	02c73023          	sd	a2,32(a4)
    80001fc0:	34071073          	csrw	mscratch,a4
    80001fc4:	00000797          	auipc	a5,0x0
    80001fc8:	6ec78793          	addi	a5,a5,1772 # 800026b0 <timervec>
    80001fcc:	30579073          	csrw	mtvec,a5
    80001fd0:	300027f3          	csrr	a5,mstatus
    80001fd4:	0087e793          	ori	a5,a5,8
    80001fd8:	30079073          	csrw	mstatus,a5
    80001fdc:	304027f3          	csrr	a5,mie
    80001fe0:	0807e793          	ori	a5,a5,128
    80001fe4:	30479073          	csrw	mie,a5
    80001fe8:	f14027f3          	csrr	a5,mhartid
    80001fec:	0007879b          	sext.w	a5,a5
    80001ff0:	00078213          	mv	tp,a5
    80001ff4:	30200073          	mret
    80001ff8:	00813403          	ld	s0,8(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <timerinit>:
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    80002010:	f14027f3          	csrr	a5,mhartid
    80002014:	0200c737          	lui	a4,0x200c
    80002018:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000201c:	0007869b          	sext.w	a3,a5
    80002020:	00269713          	slli	a4,a3,0x2
    80002024:	000f4637          	lui	a2,0xf4
    80002028:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000202c:	00d70733          	add	a4,a4,a3
    80002030:	0037979b          	slliw	a5,a5,0x3
    80002034:	020046b7          	lui	a3,0x2004
    80002038:	00d787b3          	add	a5,a5,a3
    8000203c:	00c585b3          	add	a1,a1,a2
    80002040:	00371693          	slli	a3,a4,0x3
    80002044:	00004717          	auipc	a4,0x4
    80002048:	8fc70713          	addi	a4,a4,-1796 # 80005940 <timer_scratch>
    8000204c:	00b7b023          	sd	a1,0(a5)
    80002050:	00d70733          	add	a4,a4,a3
    80002054:	00f73c23          	sd	a5,24(a4)
    80002058:	02c73023          	sd	a2,32(a4)
    8000205c:	34071073          	csrw	mscratch,a4
    80002060:	00000797          	auipc	a5,0x0
    80002064:	65078793          	addi	a5,a5,1616 # 800026b0 <timervec>
    80002068:	30579073          	csrw	mtvec,a5
    8000206c:	300027f3          	csrr	a5,mstatus
    80002070:	0087e793          	ori	a5,a5,8
    80002074:	30079073          	csrw	mstatus,a5
    80002078:	304027f3          	csrr	a5,mie
    8000207c:	0807e793          	ori	a5,a5,128
    80002080:	30479073          	csrw	mie,a5
    80002084:	00813403          	ld	s0,8(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <system_main>:
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00813823          	sd	s0,16(sp)
    80002098:	00913423          	sd	s1,8(sp)
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	02010413          	addi	s0,sp,32
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	0c4080e7          	jalr	196(ra) # 80002168 <cpuid>
    800020ac:	00004497          	auipc	s1,0x4
    800020b0:	83448493          	addi	s1,s1,-1996 # 800058e0 <started>
    800020b4:	02050263          	beqz	a0,800020d8 <system_main+0x48>
    800020b8:	0004a783          	lw	a5,0(s1)
    800020bc:	0007879b          	sext.w	a5,a5
    800020c0:	fe078ce3          	beqz	a5,800020b8 <system_main+0x28>
    800020c4:	0ff0000f          	fence
    800020c8:	00003517          	auipc	a0,0x3
    800020cc:	fe050513          	addi	a0,a0,-32 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	a7c080e7          	jalr	-1412(ra) # 80002b4c <panic>
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	9d0080e7          	jalr	-1584(ra) # 80002aa8 <consoleinit>
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	15c080e7          	jalr	348(ra) # 8000323c <printfinit>
    800020e8:	00003517          	auipc	a0,0x3
    800020ec:	f4850513          	addi	a0,a0,-184 # 80005030 <kvmincrease+0xd20>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	ab8080e7          	jalr	-1352(ra) # 80002ba8 <__printf>
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	f8050513          	addi	a0,a0,-128 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	aa8080e7          	jalr	-1368(ra) # 80002ba8 <__printf>
    80002108:	00003517          	auipc	a0,0x3
    8000210c:	f2850513          	addi	a0,a0,-216 # 80005030 <kvmincrease+0xd20>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	a98080e7          	jalr	-1384(ra) # 80002ba8 <__printf>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	4b0080e7          	jalr	1200(ra) # 800035c8 <kinit>
    80002120:	00000097          	auipc	ra,0x0
    80002124:	148080e7          	jalr	328(ra) # 80002268 <trapinit>
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	16c080e7          	jalr	364(ra) # 80002294 <trapinithart>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	5c0080e7          	jalr	1472(ra) # 800026f0 <plicinit>
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	5e0080e7          	jalr	1504(ra) # 80002718 <plicinithart>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	078080e7          	jalr	120(ra) # 800021b8 <userinit>
    80002148:	0ff0000f          	fence
    8000214c:	00100793          	li	a5,1
    80002150:	00003517          	auipc	a0,0x3
    80002154:	f4050513          	addi	a0,a0,-192 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    80002158:	00f4a023          	sw	a5,0(s1)
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	a4c080e7          	jalr	-1460(ra) # 80002ba8 <__printf>
    80002164:	0000006f          	j	80002164 <system_main+0xd4>

0000000080002168 <cpuid>:
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00813423          	sd	s0,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	00020513          	mv	a0,tp
    80002178:	00813403          	ld	s0,8(sp)
    8000217c:	0005051b          	sext.w	a0,a0
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <mycpu>:
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00813423          	sd	s0,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    80002194:	00020793          	mv	a5,tp
    80002198:	00813403          	ld	s0,8(sp)
    8000219c:	0007879b          	sext.w	a5,a5
    800021a0:	00779793          	slli	a5,a5,0x7
    800021a4:	00004517          	auipc	a0,0x4
    800021a8:	7cc50513          	addi	a0,a0,1996 # 80006970 <cpus>
    800021ac:	00f50533          	add	a0,a0,a5
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <userinit>:
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00813423          	sd	s0,8(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00813403          	ld	s0,8(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	fffff317          	auipc	t1,0xfffff
    800021d0:	38430067          	jr	900(t1) # 80001550 <main>

00000000800021d4 <either_copyout>:
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00813023          	sd	s0,0(sp)
    800021dc:	00113423          	sd	ra,8(sp)
    800021e0:	01010413          	addi	s0,sp,16
    800021e4:	02051663          	bnez	a0,80002210 <either_copyout+0x3c>
    800021e8:	00058513          	mv	a0,a1
    800021ec:	00060593          	mv	a1,a2
    800021f0:	0006861b          	sext.w	a2,a3
    800021f4:	00002097          	auipc	ra,0x2
    800021f8:	c60080e7          	jalr	-928(ra) # 80003e54 <__memmove>
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	00000513          	li	a0,0
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret
    80002210:	00003517          	auipc	a0,0x3
    80002214:	ec050513          	addi	a0,a0,-320 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	934080e7          	jalr	-1740(ra) # 80002b4c <panic>

0000000080002220 <either_copyin>:
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813023          	sd	s0,0(sp)
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	02059463          	bnez	a1,80002258 <either_copyin+0x38>
    80002234:	00060593          	mv	a1,a2
    80002238:	0006861b          	sext.w	a2,a3
    8000223c:	00002097          	auipc	ra,0x2
    80002240:	c18080e7          	jalr	-1000(ra) # 80003e54 <__memmove>
    80002244:	00813083          	ld	ra,8(sp)
    80002248:	00013403          	ld	s0,0(sp)
    8000224c:	00000513          	li	a0,0
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret
    80002258:	00003517          	auipc	a0,0x3
    8000225c:	ea050513          	addi	a0,a0,-352 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    80002260:	00001097          	auipc	ra,0x1
    80002264:	8ec080e7          	jalr	-1812(ra) # 80002b4c <panic>

0000000080002268 <trapinit>:
    80002268:	ff010113          	addi	sp,sp,-16
    8000226c:	00813423          	sd	s0,8(sp)
    80002270:	01010413          	addi	s0,sp,16
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	00003597          	auipc	a1,0x3
    8000227c:	ea858593          	addi	a1,a1,-344 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    80002280:	00004517          	auipc	a0,0x4
    80002284:	77050513          	addi	a0,a0,1904 # 800069f0 <tickslock>
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00001317          	auipc	t1,0x1
    80002290:	5cc30067          	jr	1484(t1) # 80003858 <initlock>

0000000080002294 <trapinithart>:
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00813423          	sd	s0,8(sp)
    8000229c:	01010413          	addi	s0,sp,16
    800022a0:	00000797          	auipc	a5,0x0
    800022a4:	30078793          	addi	a5,a5,768 # 800025a0 <kernelvec>
    800022a8:	10579073          	csrw	stvec,a5
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <usertrap>:
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00813423          	sd	s0,8(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <usertrapret>:
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <kerneltrap>:
    800022e8:	fe010113          	addi	sp,sp,-32
    800022ec:	00813823          	sd	s0,16(sp)
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00913423          	sd	s1,8(sp)
    800022f8:	02010413          	addi	s0,sp,32
    800022fc:	142025f3          	csrr	a1,scause
    80002300:	100027f3          	csrr	a5,sstatus
    80002304:	0027f793          	andi	a5,a5,2
    80002308:	10079c63          	bnez	a5,80002420 <kerneltrap+0x138>
    8000230c:	142027f3          	csrr	a5,scause
    80002310:	0207ce63          	bltz	a5,8000234c <kerneltrap+0x64>
    80002314:	00003517          	auipc	a0,0x3
    80002318:	e5450513          	addi	a0,a0,-428 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	88c080e7          	jalr	-1908(ra) # 80002ba8 <__printf>
    80002324:	141025f3          	csrr	a1,sepc
    80002328:	14302673          	csrr	a2,stval
    8000232c:	00003517          	auipc	a0,0x3
    80002330:	e4c50513          	addi	a0,a0,-436 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	874080e7          	jalr	-1932(ra) # 80002ba8 <__printf>
    8000233c:	00003517          	auipc	a0,0x3
    80002340:	e5450513          	addi	a0,a0,-428 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	808080e7          	jalr	-2040(ra) # 80002b4c <panic>
    8000234c:	0ff7f713          	andi	a4,a5,255
    80002350:	00900693          	li	a3,9
    80002354:	04d70063          	beq	a4,a3,80002394 <kerneltrap+0xac>
    80002358:	fff00713          	li	a4,-1
    8000235c:	03f71713          	slli	a4,a4,0x3f
    80002360:	00170713          	addi	a4,a4,1
    80002364:	fae798e3          	bne	a5,a4,80002314 <kerneltrap+0x2c>
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	e00080e7          	jalr	-512(ra) # 80002168 <cpuid>
    80002370:	06050663          	beqz	a0,800023dc <kerneltrap+0xf4>
    80002374:	144027f3          	csrr	a5,sip
    80002378:	ffd7f793          	andi	a5,a5,-3
    8000237c:	14479073          	csrw	sip,a5
    80002380:	01813083          	ld	ra,24(sp)
    80002384:	01013403          	ld	s0,16(sp)
    80002388:	00813483          	ld	s1,8(sp)
    8000238c:	02010113          	addi	sp,sp,32
    80002390:	00008067          	ret
    80002394:	00000097          	auipc	ra,0x0
    80002398:	3d0080e7          	jalr	976(ra) # 80002764 <plic_claim>
    8000239c:	00a00793          	li	a5,10
    800023a0:	00050493          	mv	s1,a0
    800023a4:	06f50863          	beq	a0,a5,80002414 <kerneltrap+0x12c>
    800023a8:	fc050ce3          	beqz	a0,80002380 <kerneltrap+0x98>
    800023ac:	00050593          	mv	a1,a0
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	d9850513          	addi	a0,a0,-616 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	7f0080e7          	jalr	2032(ra) # 80002ba8 <__printf>
    800023c0:	01013403          	ld	s0,16(sp)
    800023c4:	01813083          	ld	ra,24(sp)
    800023c8:	00048513          	mv	a0,s1
    800023cc:	00813483          	ld	s1,8(sp)
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00000317          	auipc	t1,0x0
    800023d8:	3c830067          	jr	968(t1) # 8000279c <plic_complete>
    800023dc:	00004517          	auipc	a0,0x4
    800023e0:	61450513          	addi	a0,a0,1556 # 800069f0 <tickslock>
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	498080e7          	jalr	1176(ra) # 8000387c <acquire>
    800023ec:	00003717          	auipc	a4,0x3
    800023f0:	4f870713          	addi	a4,a4,1272 # 800058e4 <ticks>
    800023f4:	00072783          	lw	a5,0(a4)
    800023f8:	00004517          	auipc	a0,0x4
    800023fc:	5f850513          	addi	a0,a0,1528 # 800069f0 <tickslock>
    80002400:	0017879b          	addiw	a5,a5,1
    80002404:	00f72023          	sw	a5,0(a4)
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	540080e7          	jalr	1344(ra) # 80003948 <release>
    80002410:	f65ff06f          	j	80002374 <kerneltrap+0x8c>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	09c080e7          	jalr	156(ra) # 800034b0 <uartintr>
    8000241c:	fa5ff06f          	j	800023c0 <kerneltrap+0xd8>
    80002420:	00003517          	auipc	a0,0x3
    80002424:	d0850513          	addi	a0,a0,-760 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	724080e7          	jalr	1828(ra) # 80002b4c <panic>

0000000080002430 <clockintr>:
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00813823          	sd	s0,16(sp)
    80002438:	00913423          	sd	s1,8(sp)
    8000243c:	00113c23          	sd	ra,24(sp)
    80002440:	02010413          	addi	s0,sp,32
    80002444:	00004497          	auipc	s1,0x4
    80002448:	5ac48493          	addi	s1,s1,1452 # 800069f0 <tickslock>
    8000244c:	00048513          	mv	a0,s1
    80002450:	00001097          	auipc	ra,0x1
    80002454:	42c080e7          	jalr	1068(ra) # 8000387c <acquire>
    80002458:	00003717          	auipc	a4,0x3
    8000245c:	48c70713          	addi	a4,a4,1164 # 800058e4 <ticks>
    80002460:	00072783          	lw	a5,0(a4)
    80002464:	01013403          	ld	s0,16(sp)
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	00048513          	mv	a0,s1
    80002470:	0017879b          	addiw	a5,a5,1
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	00f72023          	sw	a5,0(a4)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00001317          	auipc	t1,0x1
    80002484:	4c830067          	jr	1224(t1) # 80003948 <release>

0000000080002488 <devintr>:
    80002488:	142027f3          	csrr	a5,scause
    8000248c:	00000513          	li	a0,0
    80002490:	0007c463          	bltz	a5,80002498 <devintr+0x10>
    80002494:	00008067          	ret
    80002498:	fe010113          	addi	sp,sp,-32
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00113c23          	sd	ra,24(sp)
    800024a4:	00913423          	sd	s1,8(sp)
    800024a8:	02010413          	addi	s0,sp,32
    800024ac:	0ff7f713          	andi	a4,a5,255
    800024b0:	00900693          	li	a3,9
    800024b4:	04d70c63          	beq	a4,a3,8000250c <devintr+0x84>
    800024b8:	fff00713          	li	a4,-1
    800024bc:	03f71713          	slli	a4,a4,0x3f
    800024c0:	00170713          	addi	a4,a4,1
    800024c4:	00e78c63          	beq	a5,a4,800024dc <devintr+0x54>
    800024c8:	01813083          	ld	ra,24(sp)
    800024cc:	01013403          	ld	s0,16(sp)
    800024d0:	00813483          	ld	s1,8(sp)
    800024d4:	02010113          	addi	sp,sp,32
    800024d8:	00008067          	ret
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	c8c080e7          	jalr	-884(ra) # 80002168 <cpuid>
    800024e4:	06050663          	beqz	a0,80002550 <devintr+0xc8>
    800024e8:	144027f3          	csrr	a5,sip
    800024ec:	ffd7f793          	andi	a5,a5,-3
    800024f0:	14479073          	csrw	sip,a5
    800024f4:	01813083          	ld	ra,24(sp)
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	00813483          	ld	s1,8(sp)
    80002500:	00200513          	li	a0,2
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	258080e7          	jalr	600(ra) # 80002764 <plic_claim>
    80002514:	00a00793          	li	a5,10
    80002518:	00050493          	mv	s1,a0
    8000251c:	06f50663          	beq	a0,a5,80002588 <devintr+0x100>
    80002520:	00100513          	li	a0,1
    80002524:	fa0482e3          	beqz	s1,800024c8 <devintr+0x40>
    80002528:	00048593          	mv	a1,s1
    8000252c:	00003517          	auipc	a0,0x3
    80002530:	c1c50513          	addi	a0,a0,-996 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80002534:	00000097          	auipc	ra,0x0
    80002538:	674080e7          	jalr	1652(ra) # 80002ba8 <__printf>
    8000253c:	00048513          	mv	a0,s1
    80002540:	00000097          	auipc	ra,0x0
    80002544:	25c080e7          	jalr	604(ra) # 8000279c <plic_complete>
    80002548:	00100513          	li	a0,1
    8000254c:	f7dff06f          	j	800024c8 <devintr+0x40>
    80002550:	00004517          	auipc	a0,0x4
    80002554:	4a050513          	addi	a0,a0,1184 # 800069f0 <tickslock>
    80002558:	00001097          	auipc	ra,0x1
    8000255c:	324080e7          	jalr	804(ra) # 8000387c <acquire>
    80002560:	00003717          	auipc	a4,0x3
    80002564:	38470713          	addi	a4,a4,900 # 800058e4 <ticks>
    80002568:	00072783          	lw	a5,0(a4)
    8000256c:	00004517          	auipc	a0,0x4
    80002570:	48450513          	addi	a0,a0,1156 # 800069f0 <tickslock>
    80002574:	0017879b          	addiw	a5,a5,1
    80002578:	00f72023          	sw	a5,0(a4)
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	3cc080e7          	jalr	972(ra) # 80003948 <release>
    80002584:	f65ff06f          	j	800024e8 <devintr+0x60>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	f28080e7          	jalr	-216(ra) # 800034b0 <uartintr>
    80002590:	fadff06f          	j	8000253c <devintr+0xb4>
	...

00000000800025a0 <kernelvec>:
    800025a0:	f0010113          	addi	sp,sp,-256
    800025a4:	00113023          	sd	ra,0(sp)
    800025a8:	00213423          	sd	sp,8(sp)
    800025ac:	00313823          	sd	gp,16(sp)
    800025b0:	00413c23          	sd	tp,24(sp)
    800025b4:	02513023          	sd	t0,32(sp)
    800025b8:	02613423          	sd	t1,40(sp)
    800025bc:	02713823          	sd	t2,48(sp)
    800025c0:	02813c23          	sd	s0,56(sp)
    800025c4:	04913023          	sd	s1,64(sp)
    800025c8:	04a13423          	sd	a0,72(sp)
    800025cc:	04b13823          	sd	a1,80(sp)
    800025d0:	04c13c23          	sd	a2,88(sp)
    800025d4:	06d13023          	sd	a3,96(sp)
    800025d8:	06e13423          	sd	a4,104(sp)
    800025dc:	06f13823          	sd	a5,112(sp)
    800025e0:	07013c23          	sd	a6,120(sp)
    800025e4:	09113023          	sd	a7,128(sp)
    800025e8:	09213423          	sd	s2,136(sp)
    800025ec:	09313823          	sd	s3,144(sp)
    800025f0:	09413c23          	sd	s4,152(sp)
    800025f4:	0b513023          	sd	s5,160(sp)
    800025f8:	0b613423          	sd	s6,168(sp)
    800025fc:	0b713823          	sd	s7,176(sp)
    80002600:	0b813c23          	sd	s8,184(sp)
    80002604:	0d913023          	sd	s9,192(sp)
    80002608:	0da13423          	sd	s10,200(sp)
    8000260c:	0db13823          	sd	s11,208(sp)
    80002610:	0dc13c23          	sd	t3,216(sp)
    80002614:	0fd13023          	sd	t4,224(sp)
    80002618:	0fe13423          	sd	t5,232(sp)
    8000261c:	0ff13823          	sd	t6,240(sp)
    80002620:	cc9ff0ef          	jal	ra,800022e8 <kerneltrap>
    80002624:	00013083          	ld	ra,0(sp)
    80002628:	00813103          	ld	sp,8(sp)
    8000262c:	01013183          	ld	gp,16(sp)
    80002630:	02013283          	ld	t0,32(sp)
    80002634:	02813303          	ld	t1,40(sp)
    80002638:	03013383          	ld	t2,48(sp)
    8000263c:	03813403          	ld	s0,56(sp)
    80002640:	04013483          	ld	s1,64(sp)
    80002644:	04813503          	ld	a0,72(sp)
    80002648:	05013583          	ld	a1,80(sp)
    8000264c:	05813603          	ld	a2,88(sp)
    80002650:	06013683          	ld	a3,96(sp)
    80002654:	06813703          	ld	a4,104(sp)
    80002658:	07013783          	ld	a5,112(sp)
    8000265c:	07813803          	ld	a6,120(sp)
    80002660:	08013883          	ld	a7,128(sp)
    80002664:	08813903          	ld	s2,136(sp)
    80002668:	09013983          	ld	s3,144(sp)
    8000266c:	09813a03          	ld	s4,152(sp)
    80002670:	0a013a83          	ld	s5,160(sp)
    80002674:	0a813b03          	ld	s6,168(sp)
    80002678:	0b013b83          	ld	s7,176(sp)
    8000267c:	0b813c03          	ld	s8,184(sp)
    80002680:	0c013c83          	ld	s9,192(sp)
    80002684:	0c813d03          	ld	s10,200(sp)
    80002688:	0d013d83          	ld	s11,208(sp)
    8000268c:	0d813e03          	ld	t3,216(sp)
    80002690:	0e013e83          	ld	t4,224(sp)
    80002694:	0e813f03          	ld	t5,232(sp)
    80002698:	0f013f83          	ld	t6,240(sp)
    8000269c:	10010113          	addi	sp,sp,256
    800026a0:	10200073          	sret
    800026a4:	00000013          	nop
    800026a8:	00000013          	nop
    800026ac:	00000013          	nop

00000000800026b0 <timervec>:
    800026b0:	34051573          	csrrw	a0,mscratch,a0
    800026b4:	00b53023          	sd	a1,0(a0)
    800026b8:	00c53423          	sd	a2,8(a0)
    800026bc:	00d53823          	sd	a3,16(a0)
    800026c0:	01853583          	ld	a1,24(a0)
    800026c4:	02053603          	ld	a2,32(a0)
    800026c8:	0005b683          	ld	a3,0(a1)
    800026cc:	00c686b3          	add	a3,a3,a2
    800026d0:	00d5b023          	sd	a3,0(a1)
    800026d4:	00200593          	li	a1,2
    800026d8:	14459073          	csrw	sip,a1
    800026dc:	01053683          	ld	a3,16(a0)
    800026e0:	00853603          	ld	a2,8(a0)
    800026e4:	00053583          	ld	a1,0(a0)
    800026e8:	34051573          	csrrw	a0,mscratch,a0
    800026ec:	30200073          	mret

00000000800026f0 <plicinit>:
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00813423          	sd	s0,8(sp)
    800026f8:	01010413          	addi	s0,sp,16
    800026fc:	00813403          	ld	s0,8(sp)
    80002700:	0c0007b7          	lui	a5,0xc000
    80002704:	00100713          	li	a4,1
    80002708:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000270c:	00e7a223          	sw	a4,4(a5)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <plicinithart>:
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	00113423          	sd	ra,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	a40080e7          	jalr	-1472(ra) # 80002168 <cpuid>
    80002730:	0085171b          	slliw	a4,a0,0x8
    80002734:	0c0027b7          	lui	a5,0xc002
    80002738:	00e787b3          	add	a5,a5,a4
    8000273c:	40200713          	li	a4,1026
    80002740:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	00d5151b          	slliw	a0,a0,0xd
    80002750:	0c2017b7          	lui	a5,0xc201
    80002754:	00a78533          	add	a0,a5,a0
    80002758:	00052023          	sw	zero,0(a0)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <plic_claim>:
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	00113423          	sd	ra,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    80002774:	00000097          	auipc	ra,0x0
    80002778:	9f4080e7          	jalr	-1548(ra) # 80002168 <cpuid>
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	00d5151b          	slliw	a0,a0,0xd
    80002788:	0c2017b7          	lui	a5,0xc201
    8000278c:	00a78533          	add	a0,a5,a0
    80002790:	00452503          	lw	a0,4(a0)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <plic_complete>:
    8000279c:	fe010113          	addi	sp,sp,-32
    800027a0:	00813823          	sd	s0,16(sp)
    800027a4:	00913423          	sd	s1,8(sp)
    800027a8:	00113c23          	sd	ra,24(sp)
    800027ac:	02010413          	addi	s0,sp,32
    800027b0:	00050493          	mv	s1,a0
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	9b4080e7          	jalr	-1612(ra) # 80002168 <cpuid>
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00d5179b          	slliw	a5,a0,0xd
    800027c8:	0c201737          	lui	a4,0xc201
    800027cc:	00f707b3          	add	a5,a4,a5
    800027d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800027d4:	00813483          	ld	s1,8(sp)
    800027d8:	02010113          	addi	sp,sp,32
    800027dc:	00008067          	ret

00000000800027e0 <consolewrite>:
    800027e0:	fb010113          	addi	sp,sp,-80
    800027e4:	04813023          	sd	s0,64(sp)
    800027e8:	04113423          	sd	ra,72(sp)
    800027ec:	02913c23          	sd	s1,56(sp)
    800027f0:	03213823          	sd	s2,48(sp)
    800027f4:	03313423          	sd	s3,40(sp)
    800027f8:	03413023          	sd	s4,32(sp)
    800027fc:	01513c23          	sd	s5,24(sp)
    80002800:	05010413          	addi	s0,sp,80
    80002804:	06c05c63          	blez	a2,8000287c <consolewrite+0x9c>
    80002808:	00060993          	mv	s3,a2
    8000280c:	00050a13          	mv	s4,a0
    80002810:	00058493          	mv	s1,a1
    80002814:	00000913          	li	s2,0
    80002818:	fff00a93          	li	s5,-1
    8000281c:	01c0006f          	j	80002838 <consolewrite+0x58>
    80002820:	fbf44503          	lbu	a0,-65(s0)
    80002824:	0019091b          	addiw	s2,s2,1
    80002828:	00148493          	addi	s1,s1,1
    8000282c:	00001097          	auipc	ra,0x1
    80002830:	a9c080e7          	jalr	-1380(ra) # 800032c8 <uartputc>
    80002834:	03298063          	beq	s3,s2,80002854 <consolewrite+0x74>
    80002838:	00048613          	mv	a2,s1
    8000283c:	00100693          	li	a3,1
    80002840:	000a0593          	mv	a1,s4
    80002844:	fbf40513          	addi	a0,s0,-65
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	9d8080e7          	jalr	-1576(ra) # 80002220 <either_copyin>
    80002850:	fd5518e3          	bne	a0,s5,80002820 <consolewrite+0x40>
    80002854:	04813083          	ld	ra,72(sp)
    80002858:	04013403          	ld	s0,64(sp)
    8000285c:	03813483          	ld	s1,56(sp)
    80002860:	02813983          	ld	s3,40(sp)
    80002864:	02013a03          	ld	s4,32(sp)
    80002868:	01813a83          	ld	s5,24(sp)
    8000286c:	00090513          	mv	a0,s2
    80002870:	03013903          	ld	s2,48(sp)
    80002874:	05010113          	addi	sp,sp,80
    80002878:	00008067          	ret
    8000287c:	00000913          	li	s2,0
    80002880:	fd5ff06f          	j	80002854 <consolewrite+0x74>

0000000080002884 <consoleread>:
    80002884:	f9010113          	addi	sp,sp,-112
    80002888:	06813023          	sd	s0,96(sp)
    8000288c:	04913c23          	sd	s1,88(sp)
    80002890:	05213823          	sd	s2,80(sp)
    80002894:	05313423          	sd	s3,72(sp)
    80002898:	05413023          	sd	s4,64(sp)
    8000289c:	03513c23          	sd	s5,56(sp)
    800028a0:	03613823          	sd	s6,48(sp)
    800028a4:	03713423          	sd	s7,40(sp)
    800028a8:	03813023          	sd	s8,32(sp)
    800028ac:	06113423          	sd	ra,104(sp)
    800028b0:	01913c23          	sd	s9,24(sp)
    800028b4:	07010413          	addi	s0,sp,112
    800028b8:	00060b93          	mv	s7,a2
    800028bc:	00050913          	mv	s2,a0
    800028c0:	00058c13          	mv	s8,a1
    800028c4:	00060b1b          	sext.w	s6,a2
    800028c8:	00004497          	auipc	s1,0x4
    800028cc:	15048493          	addi	s1,s1,336 # 80006a18 <cons>
    800028d0:	00400993          	li	s3,4
    800028d4:	fff00a13          	li	s4,-1
    800028d8:	00a00a93          	li	s5,10
    800028dc:	05705e63          	blez	s7,80002938 <consoleread+0xb4>
    800028e0:	09c4a703          	lw	a4,156(s1)
    800028e4:	0984a783          	lw	a5,152(s1)
    800028e8:	0007071b          	sext.w	a4,a4
    800028ec:	08e78463          	beq	a5,a4,80002974 <consoleread+0xf0>
    800028f0:	07f7f713          	andi	a4,a5,127
    800028f4:	00e48733          	add	a4,s1,a4
    800028f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800028fc:	0017869b          	addiw	a3,a5,1
    80002900:	08d4ac23          	sw	a3,152(s1)
    80002904:	00070c9b          	sext.w	s9,a4
    80002908:	0b370663          	beq	a4,s3,800029b4 <consoleread+0x130>
    8000290c:	00100693          	li	a3,1
    80002910:	f9f40613          	addi	a2,s0,-97
    80002914:	000c0593          	mv	a1,s8
    80002918:	00090513          	mv	a0,s2
    8000291c:	f8e40fa3          	sb	a4,-97(s0)
    80002920:	00000097          	auipc	ra,0x0
    80002924:	8b4080e7          	jalr	-1868(ra) # 800021d4 <either_copyout>
    80002928:	01450863          	beq	a0,s4,80002938 <consoleread+0xb4>
    8000292c:	001c0c13          	addi	s8,s8,1
    80002930:	fffb8b9b          	addiw	s7,s7,-1
    80002934:	fb5c94e3          	bne	s9,s5,800028dc <consoleread+0x58>
    80002938:	000b851b          	sext.w	a0,s7
    8000293c:	06813083          	ld	ra,104(sp)
    80002940:	06013403          	ld	s0,96(sp)
    80002944:	05813483          	ld	s1,88(sp)
    80002948:	05013903          	ld	s2,80(sp)
    8000294c:	04813983          	ld	s3,72(sp)
    80002950:	04013a03          	ld	s4,64(sp)
    80002954:	03813a83          	ld	s5,56(sp)
    80002958:	02813b83          	ld	s7,40(sp)
    8000295c:	02013c03          	ld	s8,32(sp)
    80002960:	01813c83          	ld	s9,24(sp)
    80002964:	40ab053b          	subw	a0,s6,a0
    80002968:	03013b03          	ld	s6,48(sp)
    8000296c:	07010113          	addi	sp,sp,112
    80002970:	00008067          	ret
    80002974:	00001097          	auipc	ra,0x1
    80002978:	1d8080e7          	jalr	472(ra) # 80003b4c <push_on>
    8000297c:	0984a703          	lw	a4,152(s1)
    80002980:	09c4a783          	lw	a5,156(s1)
    80002984:	0007879b          	sext.w	a5,a5
    80002988:	fef70ce3          	beq	a4,a5,80002980 <consoleread+0xfc>
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	234080e7          	jalr	564(ra) # 80003bc0 <pop_on>
    80002994:	0984a783          	lw	a5,152(s1)
    80002998:	07f7f713          	andi	a4,a5,127
    8000299c:	00e48733          	add	a4,s1,a4
    800029a0:	01874703          	lbu	a4,24(a4)
    800029a4:	0017869b          	addiw	a3,a5,1
    800029a8:	08d4ac23          	sw	a3,152(s1)
    800029ac:	00070c9b          	sext.w	s9,a4
    800029b0:	f5371ee3          	bne	a4,s3,8000290c <consoleread+0x88>
    800029b4:	000b851b          	sext.w	a0,s7
    800029b8:	f96bf2e3          	bgeu	s7,s6,8000293c <consoleread+0xb8>
    800029bc:	08f4ac23          	sw	a5,152(s1)
    800029c0:	f7dff06f          	j	8000293c <consoleread+0xb8>

00000000800029c4 <consputc>:
    800029c4:	10000793          	li	a5,256
    800029c8:	00f50663          	beq	a0,a5,800029d4 <consputc+0x10>
    800029cc:	00001317          	auipc	t1,0x1
    800029d0:	9f430067          	jr	-1548(t1) # 800033c0 <uartputc_sync>
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
    800029e4:	00800513          	li	a0,8
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	9d8080e7          	jalr	-1576(ra) # 800033c0 <uartputc_sync>
    800029f0:	02000513          	li	a0,32
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	9cc080e7          	jalr	-1588(ra) # 800033c0 <uartputc_sync>
    800029fc:	00013403          	ld	s0,0(sp)
    80002a00:	00813083          	ld	ra,8(sp)
    80002a04:	00800513          	li	a0,8
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00001317          	auipc	t1,0x1
    80002a10:	9b430067          	jr	-1612(t1) # 800033c0 <uartputc_sync>

0000000080002a14 <consoleintr>:
    80002a14:	fe010113          	addi	sp,sp,-32
    80002a18:	00813823          	sd	s0,16(sp)
    80002a1c:	00913423          	sd	s1,8(sp)
    80002a20:	01213023          	sd	s2,0(sp)
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	02010413          	addi	s0,sp,32
    80002a2c:	00004917          	auipc	s2,0x4
    80002a30:	fec90913          	addi	s2,s2,-20 # 80006a18 <cons>
    80002a34:	00050493          	mv	s1,a0
    80002a38:	00090513          	mv	a0,s2
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	e40080e7          	jalr	-448(ra) # 8000387c <acquire>
    80002a44:	02048c63          	beqz	s1,80002a7c <consoleintr+0x68>
    80002a48:	0a092783          	lw	a5,160(s2)
    80002a4c:	09892703          	lw	a4,152(s2)
    80002a50:	07f00693          	li	a3,127
    80002a54:	40e7873b          	subw	a4,a5,a4
    80002a58:	02e6e263          	bltu	a3,a4,80002a7c <consoleintr+0x68>
    80002a5c:	00d00713          	li	a4,13
    80002a60:	04e48063          	beq	s1,a4,80002aa0 <consoleintr+0x8c>
    80002a64:	07f7f713          	andi	a4,a5,127
    80002a68:	00e90733          	add	a4,s2,a4
    80002a6c:	0017879b          	addiw	a5,a5,1
    80002a70:	0af92023          	sw	a5,160(s2)
    80002a74:	00970c23          	sb	s1,24(a4)
    80002a78:	08f92e23          	sw	a5,156(s2)
    80002a7c:	01013403          	ld	s0,16(sp)
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	00813483          	ld	s1,8(sp)
    80002a88:	00013903          	ld	s2,0(sp)
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	f8c50513          	addi	a0,a0,-116 # 80006a18 <cons>
    80002a94:	02010113          	addi	sp,sp,32
    80002a98:	00001317          	auipc	t1,0x1
    80002a9c:	eb030067          	jr	-336(t1) # 80003948 <release>
    80002aa0:	00a00493          	li	s1,10
    80002aa4:	fc1ff06f          	j	80002a64 <consoleintr+0x50>

0000000080002aa8 <consoleinit>:
    80002aa8:	fe010113          	addi	sp,sp,-32
    80002aac:	00113c23          	sd	ra,24(sp)
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    80002abc:	00004497          	auipc	s1,0x4
    80002ac0:	f5c48493          	addi	s1,s1,-164 # 80006a18 <cons>
    80002ac4:	00048513          	mv	a0,s1
    80002ac8:	00002597          	auipc	a1,0x2
    80002acc:	6d858593          	addi	a1,a1,1752 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	d88080e7          	jalr	-632(ra) # 80003858 <initlock>
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	7ac080e7          	jalr	1964(ra) # 80003284 <uartinit>
    80002ae0:	01813083          	ld	ra,24(sp)
    80002ae4:	01013403          	ld	s0,16(sp)
    80002ae8:	00000797          	auipc	a5,0x0
    80002aec:	d9c78793          	addi	a5,a5,-612 # 80002884 <consoleread>
    80002af0:	0af4bc23          	sd	a5,184(s1)
    80002af4:	00000797          	auipc	a5,0x0
    80002af8:	cec78793          	addi	a5,a5,-788 # 800027e0 <consolewrite>
    80002afc:	0cf4b023          	sd	a5,192(s1)
    80002b00:	00813483          	ld	s1,8(sp)
    80002b04:	02010113          	addi	sp,sp,32
    80002b08:	00008067          	ret

0000000080002b0c <console_read>:
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00813423          	sd	s0,8(sp)
    80002b14:	01010413          	addi	s0,sp,16
    80002b18:	00813403          	ld	s0,8(sp)
    80002b1c:	00004317          	auipc	t1,0x4
    80002b20:	fb433303          	ld	t1,-76(t1) # 80006ad0 <devsw+0x10>
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00030067          	jr	t1

0000000080002b2c <console_write>:
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    80002b38:	00813403          	ld	s0,8(sp)
    80002b3c:	00004317          	auipc	t1,0x4
    80002b40:	f9c33303          	ld	t1,-100(t1) # 80006ad8 <devsw+0x18>
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00030067          	jr	t1

0000000080002b4c <panic>:
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	02010413          	addi	s0,sp,32
    80002b60:	00050493          	mv	s1,a0
    80002b64:	00002517          	auipc	a0,0x2
    80002b68:	64450513          	addi	a0,a0,1604 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002b6c:	00004797          	auipc	a5,0x4
    80002b70:	0007a623          	sw	zero,12(a5) # 80006b78 <pr+0x18>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	034080e7          	jalr	52(ra) # 80002ba8 <__printf>
    80002b7c:	00048513          	mv	a0,s1
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	028080e7          	jalr	40(ra) # 80002ba8 <__printf>
    80002b88:	00002517          	auipc	a0,0x2
    80002b8c:	4a850513          	addi	a0,a0,1192 # 80005030 <kvmincrease+0xd20>
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	018080e7          	jalr	24(ra) # 80002ba8 <__printf>
    80002b98:	00100793          	li	a5,1
    80002b9c:	00003717          	auipc	a4,0x3
    80002ba0:	d4f72623          	sw	a5,-692(a4) # 800058e8 <panicked>
    80002ba4:	0000006f          	j	80002ba4 <panic+0x58>

0000000080002ba8 <__printf>:
    80002ba8:	f3010113          	addi	sp,sp,-208
    80002bac:	08813023          	sd	s0,128(sp)
    80002bb0:	07313423          	sd	s3,104(sp)
    80002bb4:	09010413          	addi	s0,sp,144
    80002bb8:	05813023          	sd	s8,64(sp)
    80002bbc:	08113423          	sd	ra,136(sp)
    80002bc0:	06913c23          	sd	s1,120(sp)
    80002bc4:	07213823          	sd	s2,112(sp)
    80002bc8:	07413023          	sd	s4,96(sp)
    80002bcc:	05513c23          	sd	s5,88(sp)
    80002bd0:	05613823          	sd	s6,80(sp)
    80002bd4:	05713423          	sd	s7,72(sp)
    80002bd8:	03913c23          	sd	s9,56(sp)
    80002bdc:	03a13823          	sd	s10,48(sp)
    80002be0:	03b13423          	sd	s11,40(sp)
    80002be4:	00004317          	auipc	t1,0x4
    80002be8:	f7c30313          	addi	t1,t1,-132 # 80006b60 <pr>
    80002bec:	01832c03          	lw	s8,24(t1)
    80002bf0:	00b43423          	sd	a1,8(s0)
    80002bf4:	00c43823          	sd	a2,16(s0)
    80002bf8:	00d43c23          	sd	a3,24(s0)
    80002bfc:	02e43023          	sd	a4,32(s0)
    80002c00:	02f43423          	sd	a5,40(s0)
    80002c04:	03043823          	sd	a6,48(s0)
    80002c08:	03143c23          	sd	a7,56(s0)
    80002c0c:	00050993          	mv	s3,a0
    80002c10:	4a0c1663          	bnez	s8,800030bc <__printf+0x514>
    80002c14:	60098c63          	beqz	s3,8000322c <__printf+0x684>
    80002c18:	0009c503          	lbu	a0,0(s3)
    80002c1c:	00840793          	addi	a5,s0,8
    80002c20:	f6f43c23          	sd	a5,-136(s0)
    80002c24:	00000493          	li	s1,0
    80002c28:	22050063          	beqz	a0,80002e48 <__printf+0x2a0>
    80002c2c:	00002a37          	lui	s4,0x2
    80002c30:	00018ab7          	lui	s5,0x18
    80002c34:	000f4b37          	lui	s6,0xf4
    80002c38:	00989bb7          	lui	s7,0x989
    80002c3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c4c:	00148c9b          	addiw	s9,s1,1
    80002c50:	02500793          	li	a5,37
    80002c54:	01998933          	add	s2,s3,s9
    80002c58:	38f51263          	bne	a0,a5,80002fdc <__printf+0x434>
    80002c5c:	00094783          	lbu	a5,0(s2)
    80002c60:	00078c9b          	sext.w	s9,a5
    80002c64:	1e078263          	beqz	a5,80002e48 <__printf+0x2a0>
    80002c68:	0024849b          	addiw	s1,s1,2
    80002c6c:	07000713          	li	a4,112
    80002c70:	00998933          	add	s2,s3,s1
    80002c74:	38e78a63          	beq	a5,a4,80003008 <__printf+0x460>
    80002c78:	20f76863          	bltu	a4,a5,80002e88 <__printf+0x2e0>
    80002c7c:	42a78863          	beq	a5,a0,800030ac <__printf+0x504>
    80002c80:	06400713          	li	a4,100
    80002c84:	40e79663          	bne	a5,a4,80003090 <__printf+0x4e8>
    80002c88:	f7843783          	ld	a5,-136(s0)
    80002c8c:	0007a603          	lw	a2,0(a5)
    80002c90:	00878793          	addi	a5,a5,8
    80002c94:	f6f43c23          	sd	a5,-136(s0)
    80002c98:	42064a63          	bltz	a2,800030cc <__printf+0x524>
    80002c9c:	00a00713          	li	a4,10
    80002ca0:	02e677bb          	remuw	a5,a2,a4
    80002ca4:	00002d97          	auipc	s11,0x2
    80002ca8:	52cd8d93          	addi	s11,s11,1324 # 800051d0 <digits>
    80002cac:	00900593          	li	a1,9
    80002cb0:	0006051b          	sext.w	a0,a2
    80002cb4:	00000c93          	li	s9,0
    80002cb8:	02079793          	slli	a5,a5,0x20
    80002cbc:	0207d793          	srli	a5,a5,0x20
    80002cc0:	00fd87b3          	add	a5,s11,a5
    80002cc4:	0007c783          	lbu	a5,0(a5)
    80002cc8:	02e656bb          	divuw	a3,a2,a4
    80002ccc:	f8f40023          	sb	a5,-128(s0)
    80002cd0:	14c5d863          	bge	a1,a2,80002e20 <__printf+0x278>
    80002cd4:	06300593          	li	a1,99
    80002cd8:	00100c93          	li	s9,1
    80002cdc:	02e6f7bb          	remuw	a5,a3,a4
    80002ce0:	02079793          	slli	a5,a5,0x20
    80002ce4:	0207d793          	srli	a5,a5,0x20
    80002ce8:	00fd87b3          	add	a5,s11,a5
    80002cec:	0007c783          	lbu	a5,0(a5)
    80002cf0:	02e6d73b          	divuw	a4,a3,a4
    80002cf4:	f8f400a3          	sb	a5,-127(s0)
    80002cf8:	12a5f463          	bgeu	a1,a0,80002e20 <__printf+0x278>
    80002cfc:	00a00693          	li	a3,10
    80002d00:	00900593          	li	a1,9
    80002d04:	02d777bb          	remuw	a5,a4,a3
    80002d08:	02079793          	slli	a5,a5,0x20
    80002d0c:	0207d793          	srli	a5,a5,0x20
    80002d10:	00fd87b3          	add	a5,s11,a5
    80002d14:	0007c503          	lbu	a0,0(a5)
    80002d18:	02d757bb          	divuw	a5,a4,a3
    80002d1c:	f8a40123          	sb	a0,-126(s0)
    80002d20:	48e5f263          	bgeu	a1,a4,800031a4 <__printf+0x5fc>
    80002d24:	06300513          	li	a0,99
    80002d28:	02d7f5bb          	remuw	a1,a5,a3
    80002d2c:	02059593          	slli	a1,a1,0x20
    80002d30:	0205d593          	srli	a1,a1,0x20
    80002d34:	00bd85b3          	add	a1,s11,a1
    80002d38:	0005c583          	lbu	a1,0(a1)
    80002d3c:	02d7d7bb          	divuw	a5,a5,a3
    80002d40:	f8b401a3          	sb	a1,-125(s0)
    80002d44:	48e57263          	bgeu	a0,a4,800031c8 <__printf+0x620>
    80002d48:	3e700513          	li	a0,999
    80002d4c:	02d7f5bb          	remuw	a1,a5,a3
    80002d50:	02059593          	slli	a1,a1,0x20
    80002d54:	0205d593          	srli	a1,a1,0x20
    80002d58:	00bd85b3          	add	a1,s11,a1
    80002d5c:	0005c583          	lbu	a1,0(a1)
    80002d60:	02d7d7bb          	divuw	a5,a5,a3
    80002d64:	f8b40223          	sb	a1,-124(s0)
    80002d68:	46e57663          	bgeu	a0,a4,800031d4 <__printf+0x62c>
    80002d6c:	02d7f5bb          	remuw	a1,a5,a3
    80002d70:	02059593          	slli	a1,a1,0x20
    80002d74:	0205d593          	srli	a1,a1,0x20
    80002d78:	00bd85b3          	add	a1,s11,a1
    80002d7c:	0005c583          	lbu	a1,0(a1)
    80002d80:	02d7d7bb          	divuw	a5,a5,a3
    80002d84:	f8b402a3          	sb	a1,-123(s0)
    80002d88:	46ea7863          	bgeu	s4,a4,800031f8 <__printf+0x650>
    80002d8c:	02d7f5bb          	remuw	a1,a5,a3
    80002d90:	02059593          	slli	a1,a1,0x20
    80002d94:	0205d593          	srli	a1,a1,0x20
    80002d98:	00bd85b3          	add	a1,s11,a1
    80002d9c:	0005c583          	lbu	a1,0(a1)
    80002da0:	02d7d7bb          	divuw	a5,a5,a3
    80002da4:	f8b40323          	sb	a1,-122(s0)
    80002da8:	3eeaf863          	bgeu	s5,a4,80003198 <__printf+0x5f0>
    80002dac:	02d7f5bb          	remuw	a1,a5,a3
    80002db0:	02059593          	slli	a1,a1,0x20
    80002db4:	0205d593          	srli	a1,a1,0x20
    80002db8:	00bd85b3          	add	a1,s11,a1
    80002dbc:	0005c583          	lbu	a1,0(a1)
    80002dc0:	02d7d7bb          	divuw	a5,a5,a3
    80002dc4:	f8b403a3          	sb	a1,-121(s0)
    80002dc8:	42eb7e63          	bgeu	s6,a4,80003204 <__printf+0x65c>
    80002dcc:	02d7f5bb          	remuw	a1,a5,a3
    80002dd0:	02059593          	slli	a1,a1,0x20
    80002dd4:	0205d593          	srli	a1,a1,0x20
    80002dd8:	00bd85b3          	add	a1,s11,a1
    80002ddc:	0005c583          	lbu	a1,0(a1)
    80002de0:	02d7d7bb          	divuw	a5,a5,a3
    80002de4:	f8b40423          	sb	a1,-120(s0)
    80002de8:	42ebfc63          	bgeu	s7,a4,80003220 <__printf+0x678>
    80002dec:	02079793          	slli	a5,a5,0x20
    80002df0:	0207d793          	srli	a5,a5,0x20
    80002df4:	00fd8db3          	add	s11,s11,a5
    80002df8:	000dc703          	lbu	a4,0(s11)
    80002dfc:	00a00793          	li	a5,10
    80002e00:	00900c93          	li	s9,9
    80002e04:	f8e404a3          	sb	a4,-119(s0)
    80002e08:	00065c63          	bgez	a2,80002e20 <__printf+0x278>
    80002e0c:	f9040713          	addi	a4,s0,-112
    80002e10:	00f70733          	add	a4,a4,a5
    80002e14:	02d00693          	li	a3,45
    80002e18:	fed70823          	sb	a3,-16(a4)
    80002e1c:	00078c93          	mv	s9,a5
    80002e20:	f8040793          	addi	a5,s0,-128
    80002e24:	01978cb3          	add	s9,a5,s9
    80002e28:	f7f40d13          	addi	s10,s0,-129
    80002e2c:	000cc503          	lbu	a0,0(s9)
    80002e30:	fffc8c93          	addi	s9,s9,-1
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	b90080e7          	jalr	-1136(ra) # 800029c4 <consputc>
    80002e3c:	ffac98e3          	bne	s9,s10,80002e2c <__printf+0x284>
    80002e40:	00094503          	lbu	a0,0(s2)
    80002e44:	e00514e3          	bnez	a0,80002c4c <__printf+0xa4>
    80002e48:	1a0c1663          	bnez	s8,80002ff4 <__printf+0x44c>
    80002e4c:	08813083          	ld	ra,136(sp)
    80002e50:	08013403          	ld	s0,128(sp)
    80002e54:	07813483          	ld	s1,120(sp)
    80002e58:	07013903          	ld	s2,112(sp)
    80002e5c:	06813983          	ld	s3,104(sp)
    80002e60:	06013a03          	ld	s4,96(sp)
    80002e64:	05813a83          	ld	s5,88(sp)
    80002e68:	05013b03          	ld	s6,80(sp)
    80002e6c:	04813b83          	ld	s7,72(sp)
    80002e70:	04013c03          	ld	s8,64(sp)
    80002e74:	03813c83          	ld	s9,56(sp)
    80002e78:	03013d03          	ld	s10,48(sp)
    80002e7c:	02813d83          	ld	s11,40(sp)
    80002e80:	0d010113          	addi	sp,sp,208
    80002e84:	00008067          	ret
    80002e88:	07300713          	li	a4,115
    80002e8c:	1ce78a63          	beq	a5,a4,80003060 <__printf+0x4b8>
    80002e90:	07800713          	li	a4,120
    80002e94:	1ee79e63          	bne	a5,a4,80003090 <__printf+0x4e8>
    80002e98:	f7843783          	ld	a5,-136(s0)
    80002e9c:	0007a703          	lw	a4,0(a5)
    80002ea0:	00878793          	addi	a5,a5,8
    80002ea4:	f6f43c23          	sd	a5,-136(s0)
    80002ea8:	28074263          	bltz	a4,8000312c <__printf+0x584>
    80002eac:	00002d97          	auipc	s11,0x2
    80002eb0:	324d8d93          	addi	s11,s11,804 # 800051d0 <digits>
    80002eb4:	00f77793          	andi	a5,a4,15
    80002eb8:	00fd87b3          	add	a5,s11,a5
    80002ebc:	0007c683          	lbu	a3,0(a5)
    80002ec0:	00f00613          	li	a2,15
    80002ec4:	0007079b          	sext.w	a5,a4
    80002ec8:	f8d40023          	sb	a3,-128(s0)
    80002ecc:	0047559b          	srliw	a1,a4,0x4
    80002ed0:	0047569b          	srliw	a3,a4,0x4
    80002ed4:	00000c93          	li	s9,0
    80002ed8:	0ee65063          	bge	a2,a4,80002fb8 <__printf+0x410>
    80002edc:	00f6f693          	andi	a3,a3,15
    80002ee0:	00dd86b3          	add	a3,s11,a3
    80002ee4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ee8:	0087d79b          	srliw	a5,a5,0x8
    80002eec:	00100c93          	li	s9,1
    80002ef0:	f8d400a3          	sb	a3,-127(s0)
    80002ef4:	0cb67263          	bgeu	a2,a1,80002fb8 <__printf+0x410>
    80002ef8:	00f7f693          	andi	a3,a5,15
    80002efc:	00dd86b3          	add	a3,s11,a3
    80002f00:	0006c583          	lbu	a1,0(a3)
    80002f04:	00f00613          	li	a2,15
    80002f08:	0047d69b          	srliw	a3,a5,0x4
    80002f0c:	f8b40123          	sb	a1,-126(s0)
    80002f10:	0047d593          	srli	a1,a5,0x4
    80002f14:	28f67e63          	bgeu	a2,a5,800031b0 <__printf+0x608>
    80002f18:	00f6f693          	andi	a3,a3,15
    80002f1c:	00dd86b3          	add	a3,s11,a3
    80002f20:	0006c503          	lbu	a0,0(a3)
    80002f24:	0087d813          	srli	a6,a5,0x8
    80002f28:	0087d69b          	srliw	a3,a5,0x8
    80002f2c:	f8a401a3          	sb	a0,-125(s0)
    80002f30:	28b67663          	bgeu	a2,a1,800031bc <__printf+0x614>
    80002f34:	00f6f693          	andi	a3,a3,15
    80002f38:	00dd86b3          	add	a3,s11,a3
    80002f3c:	0006c583          	lbu	a1,0(a3)
    80002f40:	00c7d513          	srli	a0,a5,0xc
    80002f44:	00c7d69b          	srliw	a3,a5,0xc
    80002f48:	f8b40223          	sb	a1,-124(s0)
    80002f4c:	29067a63          	bgeu	a2,a6,800031e0 <__printf+0x638>
    80002f50:	00f6f693          	andi	a3,a3,15
    80002f54:	00dd86b3          	add	a3,s11,a3
    80002f58:	0006c583          	lbu	a1,0(a3)
    80002f5c:	0107d813          	srli	a6,a5,0x10
    80002f60:	0107d69b          	srliw	a3,a5,0x10
    80002f64:	f8b402a3          	sb	a1,-123(s0)
    80002f68:	28a67263          	bgeu	a2,a0,800031ec <__printf+0x644>
    80002f6c:	00f6f693          	andi	a3,a3,15
    80002f70:	00dd86b3          	add	a3,s11,a3
    80002f74:	0006c683          	lbu	a3,0(a3)
    80002f78:	0147d79b          	srliw	a5,a5,0x14
    80002f7c:	f8d40323          	sb	a3,-122(s0)
    80002f80:	21067663          	bgeu	a2,a6,8000318c <__printf+0x5e4>
    80002f84:	02079793          	slli	a5,a5,0x20
    80002f88:	0207d793          	srli	a5,a5,0x20
    80002f8c:	00fd8db3          	add	s11,s11,a5
    80002f90:	000dc683          	lbu	a3,0(s11)
    80002f94:	00800793          	li	a5,8
    80002f98:	00700c93          	li	s9,7
    80002f9c:	f8d403a3          	sb	a3,-121(s0)
    80002fa0:	00075c63          	bgez	a4,80002fb8 <__printf+0x410>
    80002fa4:	f9040713          	addi	a4,s0,-112
    80002fa8:	00f70733          	add	a4,a4,a5
    80002fac:	02d00693          	li	a3,45
    80002fb0:	fed70823          	sb	a3,-16(a4)
    80002fb4:	00078c93          	mv	s9,a5
    80002fb8:	f8040793          	addi	a5,s0,-128
    80002fbc:	01978cb3          	add	s9,a5,s9
    80002fc0:	f7f40d13          	addi	s10,s0,-129
    80002fc4:	000cc503          	lbu	a0,0(s9)
    80002fc8:	fffc8c93          	addi	s9,s9,-1
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	9f8080e7          	jalr	-1544(ra) # 800029c4 <consputc>
    80002fd4:	ff9d18e3          	bne	s10,s9,80002fc4 <__printf+0x41c>
    80002fd8:	0100006f          	j	80002fe8 <__printf+0x440>
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	9e8080e7          	jalr	-1560(ra) # 800029c4 <consputc>
    80002fe4:	000c8493          	mv	s1,s9
    80002fe8:	00094503          	lbu	a0,0(s2)
    80002fec:	c60510e3          	bnez	a0,80002c4c <__printf+0xa4>
    80002ff0:	e40c0ee3          	beqz	s8,80002e4c <__printf+0x2a4>
    80002ff4:	00004517          	auipc	a0,0x4
    80002ff8:	b6c50513          	addi	a0,a0,-1172 # 80006b60 <pr>
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	94c080e7          	jalr	-1716(ra) # 80003948 <release>
    80003004:	e49ff06f          	j	80002e4c <__printf+0x2a4>
    80003008:	f7843783          	ld	a5,-136(s0)
    8000300c:	03000513          	li	a0,48
    80003010:	01000d13          	li	s10,16
    80003014:	00878713          	addi	a4,a5,8
    80003018:	0007bc83          	ld	s9,0(a5)
    8000301c:	f6e43c23          	sd	a4,-136(s0)
    80003020:	00000097          	auipc	ra,0x0
    80003024:	9a4080e7          	jalr	-1628(ra) # 800029c4 <consputc>
    80003028:	07800513          	li	a0,120
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	998080e7          	jalr	-1640(ra) # 800029c4 <consputc>
    80003034:	00002d97          	auipc	s11,0x2
    80003038:	19cd8d93          	addi	s11,s11,412 # 800051d0 <digits>
    8000303c:	03ccd793          	srli	a5,s9,0x3c
    80003040:	00fd87b3          	add	a5,s11,a5
    80003044:	0007c503          	lbu	a0,0(a5)
    80003048:	fffd0d1b          	addiw	s10,s10,-1
    8000304c:	004c9c93          	slli	s9,s9,0x4
    80003050:	00000097          	auipc	ra,0x0
    80003054:	974080e7          	jalr	-1676(ra) # 800029c4 <consputc>
    80003058:	fe0d12e3          	bnez	s10,8000303c <__printf+0x494>
    8000305c:	f8dff06f          	j	80002fe8 <__printf+0x440>
    80003060:	f7843783          	ld	a5,-136(s0)
    80003064:	0007bc83          	ld	s9,0(a5)
    80003068:	00878793          	addi	a5,a5,8
    8000306c:	f6f43c23          	sd	a5,-136(s0)
    80003070:	000c9a63          	bnez	s9,80003084 <__printf+0x4dc>
    80003074:	1080006f          	j	8000317c <__printf+0x5d4>
    80003078:	001c8c93          	addi	s9,s9,1
    8000307c:	00000097          	auipc	ra,0x0
    80003080:	948080e7          	jalr	-1720(ra) # 800029c4 <consputc>
    80003084:	000cc503          	lbu	a0,0(s9)
    80003088:	fe0518e3          	bnez	a0,80003078 <__printf+0x4d0>
    8000308c:	f5dff06f          	j	80002fe8 <__printf+0x440>
    80003090:	02500513          	li	a0,37
    80003094:	00000097          	auipc	ra,0x0
    80003098:	930080e7          	jalr	-1744(ra) # 800029c4 <consputc>
    8000309c:	000c8513          	mv	a0,s9
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	924080e7          	jalr	-1756(ra) # 800029c4 <consputc>
    800030a8:	f41ff06f          	j	80002fe8 <__printf+0x440>
    800030ac:	02500513          	li	a0,37
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	914080e7          	jalr	-1772(ra) # 800029c4 <consputc>
    800030b8:	f31ff06f          	j	80002fe8 <__printf+0x440>
    800030bc:	00030513          	mv	a0,t1
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	7bc080e7          	jalr	1980(ra) # 8000387c <acquire>
    800030c8:	b4dff06f          	j	80002c14 <__printf+0x6c>
    800030cc:	40c0053b          	negw	a0,a2
    800030d0:	00a00713          	li	a4,10
    800030d4:	02e576bb          	remuw	a3,a0,a4
    800030d8:	00002d97          	auipc	s11,0x2
    800030dc:	0f8d8d93          	addi	s11,s11,248 # 800051d0 <digits>
    800030e0:	ff700593          	li	a1,-9
    800030e4:	02069693          	slli	a3,a3,0x20
    800030e8:	0206d693          	srli	a3,a3,0x20
    800030ec:	00dd86b3          	add	a3,s11,a3
    800030f0:	0006c683          	lbu	a3,0(a3)
    800030f4:	02e557bb          	divuw	a5,a0,a4
    800030f8:	f8d40023          	sb	a3,-128(s0)
    800030fc:	10b65e63          	bge	a2,a1,80003218 <__printf+0x670>
    80003100:	06300593          	li	a1,99
    80003104:	02e7f6bb          	remuw	a3,a5,a4
    80003108:	02069693          	slli	a3,a3,0x20
    8000310c:	0206d693          	srli	a3,a3,0x20
    80003110:	00dd86b3          	add	a3,s11,a3
    80003114:	0006c683          	lbu	a3,0(a3)
    80003118:	02e7d73b          	divuw	a4,a5,a4
    8000311c:	00200793          	li	a5,2
    80003120:	f8d400a3          	sb	a3,-127(s0)
    80003124:	bca5ece3          	bltu	a1,a0,80002cfc <__printf+0x154>
    80003128:	ce5ff06f          	j	80002e0c <__printf+0x264>
    8000312c:	40e007bb          	negw	a5,a4
    80003130:	00002d97          	auipc	s11,0x2
    80003134:	0a0d8d93          	addi	s11,s11,160 # 800051d0 <digits>
    80003138:	00f7f693          	andi	a3,a5,15
    8000313c:	00dd86b3          	add	a3,s11,a3
    80003140:	0006c583          	lbu	a1,0(a3)
    80003144:	ff100613          	li	a2,-15
    80003148:	0047d69b          	srliw	a3,a5,0x4
    8000314c:	f8b40023          	sb	a1,-128(s0)
    80003150:	0047d59b          	srliw	a1,a5,0x4
    80003154:	0ac75e63          	bge	a4,a2,80003210 <__printf+0x668>
    80003158:	00f6f693          	andi	a3,a3,15
    8000315c:	00dd86b3          	add	a3,s11,a3
    80003160:	0006c603          	lbu	a2,0(a3)
    80003164:	00f00693          	li	a3,15
    80003168:	0087d79b          	srliw	a5,a5,0x8
    8000316c:	f8c400a3          	sb	a2,-127(s0)
    80003170:	d8b6e4e3          	bltu	a3,a1,80002ef8 <__printf+0x350>
    80003174:	00200793          	li	a5,2
    80003178:	e2dff06f          	j	80002fa4 <__printf+0x3fc>
    8000317c:	00002c97          	auipc	s9,0x2
    80003180:	034c8c93          	addi	s9,s9,52 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    80003184:	02800513          	li	a0,40
    80003188:	ef1ff06f          	j	80003078 <__printf+0x4d0>
    8000318c:	00700793          	li	a5,7
    80003190:	00600c93          	li	s9,6
    80003194:	e0dff06f          	j	80002fa0 <__printf+0x3f8>
    80003198:	00700793          	li	a5,7
    8000319c:	00600c93          	li	s9,6
    800031a0:	c69ff06f          	j	80002e08 <__printf+0x260>
    800031a4:	00300793          	li	a5,3
    800031a8:	00200c93          	li	s9,2
    800031ac:	c5dff06f          	j	80002e08 <__printf+0x260>
    800031b0:	00300793          	li	a5,3
    800031b4:	00200c93          	li	s9,2
    800031b8:	de9ff06f          	j	80002fa0 <__printf+0x3f8>
    800031bc:	00400793          	li	a5,4
    800031c0:	00300c93          	li	s9,3
    800031c4:	dddff06f          	j	80002fa0 <__printf+0x3f8>
    800031c8:	00400793          	li	a5,4
    800031cc:	00300c93          	li	s9,3
    800031d0:	c39ff06f          	j	80002e08 <__printf+0x260>
    800031d4:	00500793          	li	a5,5
    800031d8:	00400c93          	li	s9,4
    800031dc:	c2dff06f          	j	80002e08 <__printf+0x260>
    800031e0:	00500793          	li	a5,5
    800031e4:	00400c93          	li	s9,4
    800031e8:	db9ff06f          	j	80002fa0 <__printf+0x3f8>
    800031ec:	00600793          	li	a5,6
    800031f0:	00500c93          	li	s9,5
    800031f4:	dadff06f          	j	80002fa0 <__printf+0x3f8>
    800031f8:	00600793          	li	a5,6
    800031fc:	00500c93          	li	s9,5
    80003200:	c09ff06f          	j	80002e08 <__printf+0x260>
    80003204:	00800793          	li	a5,8
    80003208:	00700c93          	li	s9,7
    8000320c:	bfdff06f          	j	80002e08 <__printf+0x260>
    80003210:	00100793          	li	a5,1
    80003214:	d91ff06f          	j	80002fa4 <__printf+0x3fc>
    80003218:	00100793          	li	a5,1
    8000321c:	bf1ff06f          	j	80002e0c <__printf+0x264>
    80003220:	00900793          	li	a5,9
    80003224:	00800c93          	li	s9,8
    80003228:	be1ff06f          	j	80002e08 <__printf+0x260>
    8000322c:	00002517          	auipc	a0,0x2
    80003230:	f8c50513          	addi	a0,a0,-116 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	918080e7          	jalr	-1768(ra) # 80002b4c <panic>

000000008000323c <printfinit>:
    8000323c:	fe010113          	addi	sp,sp,-32
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	02010413          	addi	s0,sp,32
    80003250:	00004497          	auipc	s1,0x4
    80003254:	91048493          	addi	s1,s1,-1776 # 80006b60 <pr>
    80003258:	00048513          	mv	a0,s1
    8000325c:	00002597          	auipc	a1,0x2
    80003260:	f6c58593          	addi	a1,a1,-148 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    80003264:	00000097          	auipc	ra,0x0
    80003268:	5f4080e7          	jalr	1524(ra) # 80003858 <initlock>
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	0004ac23          	sw	zero,24(s1)
    80003278:	00813483          	ld	s1,8(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <uartinit>:
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00813423          	sd	s0,8(sp)
    8000328c:	01010413          	addi	s0,sp,16
    80003290:	100007b7          	lui	a5,0x10000
    80003294:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003298:	f8000713          	li	a4,-128
    8000329c:	00e781a3          	sb	a4,3(a5)
    800032a0:	00300713          	li	a4,3
    800032a4:	00e78023          	sb	a4,0(a5)
    800032a8:	000780a3          	sb	zero,1(a5)
    800032ac:	00e781a3          	sb	a4,3(a5)
    800032b0:	00700693          	li	a3,7
    800032b4:	00d78123          	sb	a3,2(a5)
    800032b8:	00e780a3          	sb	a4,1(a5)
    800032bc:	00813403          	ld	s0,8(sp)
    800032c0:	01010113          	addi	sp,sp,16
    800032c4:	00008067          	ret

00000000800032c8 <uartputc>:
    800032c8:	00002797          	auipc	a5,0x2
    800032cc:	6207a783          	lw	a5,1568(a5) # 800058e8 <panicked>
    800032d0:	00078463          	beqz	a5,800032d8 <uartputc+0x10>
    800032d4:	0000006f          	j	800032d4 <uartputc+0xc>
    800032d8:	fd010113          	addi	sp,sp,-48
    800032dc:	02813023          	sd	s0,32(sp)
    800032e0:	00913c23          	sd	s1,24(sp)
    800032e4:	01213823          	sd	s2,16(sp)
    800032e8:	01313423          	sd	s3,8(sp)
    800032ec:	02113423          	sd	ra,40(sp)
    800032f0:	03010413          	addi	s0,sp,48
    800032f4:	00002917          	auipc	s2,0x2
    800032f8:	5fc90913          	addi	s2,s2,1532 # 800058f0 <uart_tx_r>
    800032fc:	00093783          	ld	a5,0(s2)
    80003300:	00002497          	auipc	s1,0x2
    80003304:	5f848493          	addi	s1,s1,1528 # 800058f8 <uart_tx_w>
    80003308:	0004b703          	ld	a4,0(s1)
    8000330c:	02078693          	addi	a3,a5,32
    80003310:	00050993          	mv	s3,a0
    80003314:	02e69c63          	bne	a3,a4,8000334c <uartputc+0x84>
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	834080e7          	jalr	-1996(ra) # 80003b4c <push_on>
    80003320:	00093783          	ld	a5,0(s2)
    80003324:	0004b703          	ld	a4,0(s1)
    80003328:	02078793          	addi	a5,a5,32
    8000332c:	00e79463          	bne	a5,a4,80003334 <uartputc+0x6c>
    80003330:	0000006f          	j	80003330 <uartputc+0x68>
    80003334:	00001097          	auipc	ra,0x1
    80003338:	88c080e7          	jalr	-1908(ra) # 80003bc0 <pop_on>
    8000333c:	00093783          	ld	a5,0(s2)
    80003340:	0004b703          	ld	a4,0(s1)
    80003344:	02078693          	addi	a3,a5,32
    80003348:	fce688e3          	beq	a3,a4,80003318 <uartputc+0x50>
    8000334c:	01f77693          	andi	a3,a4,31
    80003350:	00004597          	auipc	a1,0x4
    80003354:	83058593          	addi	a1,a1,-2000 # 80006b80 <uart_tx_buf>
    80003358:	00d586b3          	add	a3,a1,a3
    8000335c:	00170713          	addi	a4,a4,1
    80003360:	01368023          	sb	s3,0(a3)
    80003364:	00e4b023          	sd	a4,0(s1)
    80003368:	10000637          	lui	a2,0x10000
    8000336c:	02f71063          	bne	a4,a5,8000338c <uartputc+0xc4>
    80003370:	0340006f          	j	800033a4 <uartputc+0xdc>
    80003374:	00074703          	lbu	a4,0(a4)
    80003378:	00f93023          	sd	a5,0(s2)
    8000337c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003380:	00093783          	ld	a5,0(s2)
    80003384:	0004b703          	ld	a4,0(s1)
    80003388:	00f70e63          	beq	a4,a5,800033a4 <uartputc+0xdc>
    8000338c:	00564683          	lbu	a3,5(a2)
    80003390:	01f7f713          	andi	a4,a5,31
    80003394:	00e58733          	add	a4,a1,a4
    80003398:	0206f693          	andi	a3,a3,32
    8000339c:	00178793          	addi	a5,a5,1
    800033a0:	fc069ae3          	bnez	a3,80003374 <uartputc+0xac>
    800033a4:	02813083          	ld	ra,40(sp)
    800033a8:	02013403          	ld	s0,32(sp)
    800033ac:	01813483          	ld	s1,24(sp)
    800033b0:	01013903          	ld	s2,16(sp)
    800033b4:	00813983          	ld	s3,8(sp)
    800033b8:	03010113          	addi	sp,sp,48
    800033bc:	00008067          	ret

00000000800033c0 <uartputc_sync>:
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00002717          	auipc	a4,0x2
    800033d0:	51c72703          	lw	a4,1308(a4) # 800058e8 <panicked>
    800033d4:	02071663          	bnez	a4,80003400 <uartputc_sync+0x40>
    800033d8:	00050793          	mv	a5,a0
    800033dc:	100006b7          	lui	a3,0x10000
    800033e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800033e4:	02077713          	andi	a4,a4,32
    800033e8:	fe070ce3          	beqz	a4,800033e0 <uartputc_sync+0x20>
    800033ec:	0ff7f793          	andi	a5,a5,255
    800033f0:	00f68023          	sb	a5,0(a3)
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret
    80003400:	0000006f          	j	80003400 <uartputc_sync+0x40>

0000000080003404 <uartstart>:
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813423          	sd	s0,8(sp)
    8000340c:	01010413          	addi	s0,sp,16
    80003410:	00002617          	auipc	a2,0x2
    80003414:	4e060613          	addi	a2,a2,1248 # 800058f0 <uart_tx_r>
    80003418:	00002517          	auipc	a0,0x2
    8000341c:	4e050513          	addi	a0,a0,1248 # 800058f8 <uart_tx_w>
    80003420:	00063783          	ld	a5,0(a2)
    80003424:	00053703          	ld	a4,0(a0)
    80003428:	04f70263          	beq	a4,a5,8000346c <uartstart+0x68>
    8000342c:	100005b7          	lui	a1,0x10000
    80003430:	00003817          	auipc	a6,0x3
    80003434:	75080813          	addi	a6,a6,1872 # 80006b80 <uart_tx_buf>
    80003438:	01c0006f          	j	80003454 <uartstart+0x50>
    8000343c:	0006c703          	lbu	a4,0(a3)
    80003440:	00f63023          	sd	a5,0(a2)
    80003444:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003448:	00063783          	ld	a5,0(a2)
    8000344c:	00053703          	ld	a4,0(a0)
    80003450:	00f70e63          	beq	a4,a5,8000346c <uartstart+0x68>
    80003454:	01f7f713          	andi	a4,a5,31
    80003458:	00e806b3          	add	a3,a6,a4
    8000345c:	0055c703          	lbu	a4,5(a1)
    80003460:	00178793          	addi	a5,a5,1
    80003464:	02077713          	andi	a4,a4,32
    80003468:	fc071ae3          	bnez	a4,8000343c <uartstart+0x38>
    8000346c:	00813403          	ld	s0,8(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <uartgetc>:
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813423          	sd	s0,8(sp)
    80003480:	01010413          	addi	s0,sp,16
    80003484:	10000737          	lui	a4,0x10000
    80003488:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000348c:	0017f793          	andi	a5,a5,1
    80003490:	00078c63          	beqz	a5,800034a8 <uartgetc+0x30>
    80003494:	00074503          	lbu	a0,0(a4)
    80003498:	0ff57513          	andi	a0,a0,255
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret
    800034a8:	fff00513          	li	a0,-1
    800034ac:	ff1ff06f          	j	8000349c <uartgetc+0x24>

00000000800034b0 <uartintr>:
    800034b0:	100007b7          	lui	a5,0x10000
    800034b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034b8:	0017f793          	andi	a5,a5,1
    800034bc:	0a078463          	beqz	a5,80003564 <uartintr+0xb4>
    800034c0:	fe010113          	addi	sp,sp,-32
    800034c4:	00813823          	sd	s0,16(sp)
    800034c8:	00913423          	sd	s1,8(sp)
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	02010413          	addi	s0,sp,32
    800034d4:	100004b7          	lui	s1,0x10000
    800034d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800034dc:	0ff57513          	andi	a0,a0,255
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	534080e7          	jalr	1332(ra) # 80002a14 <consoleintr>
    800034e8:	0054c783          	lbu	a5,5(s1)
    800034ec:	0017f793          	andi	a5,a5,1
    800034f0:	fe0794e3          	bnez	a5,800034d8 <uartintr+0x28>
    800034f4:	00002617          	auipc	a2,0x2
    800034f8:	3fc60613          	addi	a2,a2,1020 # 800058f0 <uart_tx_r>
    800034fc:	00002517          	auipc	a0,0x2
    80003500:	3fc50513          	addi	a0,a0,1020 # 800058f8 <uart_tx_w>
    80003504:	00063783          	ld	a5,0(a2)
    80003508:	00053703          	ld	a4,0(a0)
    8000350c:	04f70263          	beq	a4,a5,80003550 <uartintr+0xa0>
    80003510:	100005b7          	lui	a1,0x10000
    80003514:	00003817          	auipc	a6,0x3
    80003518:	66c80813          	addi	a6,a6,1644 # 80006b80 <uart_tx_buf>
    8000351c:	01c0006f          	j	80003538 <uartintr+0x88>
    80003520:	0006c703          	lbu	a4,0(a3)
    80003524:	00f63023          	sd	a5,0(a2)
    80003528:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000352c:	00063783          	ld	a5,0(a2)
    80003530:	00053703          	ld	a4,0(a0)
    80003534:	00f70e63          	beq	a4,a5,80003550 <uartintr+0xa0>
    80003538:	01f7f713          	andi	a4,a5,31
    8000353c:	00e806b3          	add	a3,a6,a4
    80003540:	0055c703          	lbu	a4,5(a1)
    80003544:	00178793          	addi	a5,a5,1
    80003548:	02077713          	andi	a4,a4,32
    8000354c:	fc071ae3          	bnez	a4,80003520 <uartintr+0x70>
    80003550:	01813083          	ld	ra,24(sp)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret
    80003564:	00002617          	auipc	a2,0x2
    80003568:	38c60613          	addi	a2,a2,908 # 800058f0 <uart_tx_r>
    8000356c:	00002517          	auipc	a0,0x2
    80003570:	38c50513          	addi	a0,a0,908 # 800058f8 <uart_tx_w>
    80003574:	00063783          	ld	a5,0(a2)
    80003578:	00053703          	ld	a4,0(a0)
    8000357c:	04f70263          	beq	a4,a5,800035c0 <uartintr+0x110>
    80003580:	100005b7          	lui	a1,0x10000
    80003584:	00003817          	auipc	a6,0x3
    80003588:	5fc80813          	addi	a6,a6,1532 # 80006b80 <uart_tx_buf>
    8000358c:	01c0006f          	j	800035a8 <uartintr+0xf8>
    80003590:	0006c703          	lbu	a4,0(a3)
    80003594:	00f63023          	sd	a5,0(a2)
    80003598:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000359c:	00063783          	ld	a5,0(a2)
    800035a0:	00053703          	ld	a4,0(a0)
    800035a4:	02f70063          	beq	a4,a5,800035c4 <uartintr+0x114>
    800035a8:	01f7f713          	andi	a4,a5,31
    800035ac:	00e806b3          	add	a3,a6,a4
    800035b0:	0055c703          	lbu	a4,5(a1)
    800035b4:	00178793          	addi	a5,a5,1
    800035b8:	02077713          	andi	a4,a4,32
    800035bc:	fc071ae3          	bnez	a4,80003590 <uartintr+0xe0>
    800035c0:	00008067          	ret
    800035c4:	00008067          	ret

00000000800035c8 <kinit>:
    800035c8:	fc010113          	addi	sp,sp,-64
    800035cc:	02913423          	sd	s1,40(sp)
    800035d0:	fffff7b7          	lui	a5,0xfffff
    800035d4:	00004497          	auipc	s1,0x4
    800035d8:	5db48493          	addi	s1,s1,1499 # 80007baf <end+0xfff>
    800035dc:	02813823          	sd	s0,48(sp)
    800035e0:	01313c23          	sd	s3,24(sp)
    800035e4:	00f4f4b3          	and	s1,s1,a5
    800035e8:	02113c23          	sd	ra,56(sp)
    800035ec:	03213023          	sd	s2,32(sp)
    800035f0:	01413823          	sd	s4,16(sp)
    800035f4:	01513423          	sd	s5,8(sp)
    800035f8:	04010413          	addi	s0,sp,64
    800035fc:	000017b7          	lui	a5,0x1
    80003600:	01100993          	li	s3,17
    80003604:	00f487b3          	add	a5,s1,a5
    80003608:	01b99993          	slli	s3,s3,0x1b
    8000360c:	06f9e063          	bltu	s3,a5,8000366c <kinit+0xa4>
    80003610:	00003a97          	auipc	s5,0x3
    80003614:	5a0a8a93          	addi	s5,s5,1440 # 80006bb0 <end>
    80003618:	0754ec63          	bltu	s1,s5,80003690 <kinit+0xc8>
    8000361c:	0734fa63          	bgeu	s1,s3,80003690 <kinit+0xc8>
    80003620:	00088a37          	lui	s4,0x88
    80003624:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003628:	00002917          	auipc	s2,0x2
    8000362c:	2d890913          	addi	s2,s2,728 # 80005900 <kmem>
    80003630:	00ca1a13          	slli	s4,s4,0xc
    80003634:	0140006f          	j	80003648 <kinit+0x80>
    80003638:	000017b7          	lui	a5,0x1
    8000363c:	00f484b3          	add	s1,s1,a5
    80003640:	0554e863          	bltu	s1,s5,80003690 <kinit+0xc8>
    80003644:	0534f663          	bgeu	s1,s3,80003690 <kinit+0xc8>
    80003648:	00001637          	lui	a2,0x1
    8000364c:	00100593          	li	a1,1
    80003650:	00048513          	mv	a0,s1
    80003654:	00000097          	auipc	ra,0x0
    80003658:	5e4080e7          	jalr	1508(ra) # 80003c38 <__memset>
    8000365c:	00093783          	ld	a5,0(s2)
    80003660:	00f4b023          	sd	a5,0(s1)
    80003664:	00993023          	sd	s1,0(s2)
    80003668:	fd4498e3          	bne	s1,s4,80003638 <kinit+0x70>
    8000366c:	03813083          	ld	ra,56(sp)
    80003670:	03013403          	ld	s0,48(sp)
    80003674:	02813483          	ld	s1,40(sp)
    80003678:	02013903          	ld	s2,32(sp)
    8000367c:	01813983          	ld	s3,24(sp)
    80003680:	01013a03          	ld	s4,16(sp)
    80003684:	00813a83          	ld	s5,8(sp)
    80003688:	04010113          	addi	sp,sp,64
    8000368c:	00008067          	ret
    80003690:	00002517          	auipc	a0,0x2
    80003694:	b5850513          	addi	a0,a0,-1192 # 800051e8 <digits+0x18>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	4b4080e7          	jalr	1204(ra) # 80002b4c <panic>

00000000800036a0 <freerange>:
    800036a0:	fc010113          	addi	sp,sp,-64
    800036a4:	000017b7          	lui	a5,0x1
    800036a8:	02913423          	sd	s1,40(sp)
    800036ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036b0:	009504b3          	add	s1,a0,s1
    800036b4:	fffff537          	lui	a0,0xfffff
    800036b8:	02813823          	sd	s0,48(sp)
    800036bc:	02113c23          	sd	ra,56(sp)
    800036c0:	03213023          	sd	s2,32(sp)
    800036c4:	01313c23          	sd	s3,24(sp)
    800036c8:	01413823          	sd	s4,16(sp)
    800036cc:	01513423          	sd	s5,8(sp)
    800036d0:	01613023          	sd	s6,0(sp)
    800036d4:	04010413          	addi	s0,sp,64
    800036d8:	00a4f4b3          	and	s1,s1,a0
    800036dc:	00f487b3          	add	a5,s1,a5
    800036e0:	06f5e463          	bltu	a1,a5,80003748 <freerange+0xa8>
    800036e4:	00003a97          	auipc	s5,0x3
    800036e8:	4cca8a93          	addi	s5,s5,1228 # 80006bb0 <end>
    800036ec:	0954e263          	bltu	s1,s5,80003770 <freerange+0xd0>
    800036f0:	01100993          	li	s3,17
    800036f4:	01b99993          	slli	s3,s3,0x1b
    800036f8:	0734fc63          	bgeu	s1,s3,80003770 <freerange+0xd0>
    800036fc:	00058a13          	mv	s4,a1
    80003700:	00002917          	auipc	s2,0x2
    80003704:	20090913          	addi	s2,s2,512 # 80005900 <kmem>
    80003708:	00002b37          	lui	s6,0x2
    8000370c:	0140006f          	j	80003720 <freerange+0x80>
    80003710:	000017b7          	lui	a5,0x1
    80003714:	00f484b3          	add	s1,s1,a5
    80003718:	0554ec63          	bltu	s1,s5,80003770 <freerange+0xd0>
    8000371c:	0534fa63          	bgeu	s1,s3,80003770 <freerange+0xd0>
    80003720:	00001637          	lui	a2,0x1
    80003724:	00100593          	li	a1,1
    80003728:	00048513          	mv	a0,s1
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	50c080e7          	jalr	1292(ra) # 80003c38 <__memset>
    80003734:	00093703          	ld	a4,0(s2)
    80003738:	016487b3          	add	a5,s1,s6
    8000373c:	00e4b023          	sd	a4,0(s1)
    80003740:	00993023          	sd	s1,0(s2)
    80003744:	fcfa76e3          	bgeu	s4,a5,80003710 <freerange+0x70>
    80003748:	03813083          	ld	ra,56(sp)
    8000374c:	03013403          	ld	s0,48(sp)
    80003750:	02813483          	ld	s1,40(sp)
    80003754:	02013903          	ld	s2,32(sp)
    80003758:	01813983          	ld	s3,24(sp)
    8000375c:	01013a03          	ld	s4,16(sp)
    80003760:	00813a83          	ld	s5,8(sp)
    80003764:	00013b03          	ld	s6,0(sp)
    80003768:	04010113          	addi	sp,sp,64
    8000376c:	00008067          	ret
    80003770:	00002517          	auipc	a0,0x2
    80003774:	a7850513          	addi	a0,a0,-1416 # 800051e8 <digits+0x18>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	3d4080e7          	jalr	980(ra) # 80002b4c <panic>

0000000080003780 <kfree>:
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00913423          	sd	s1,8(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	03451793          	slli	a5,a0,0x34
    80003798:	04079c63          	bnez	a5,800037f0 <kfree+0x70>
    8000379c:	00003797          	auipc	a5,0x3
    800037a0:	41478793          	addi	a5,a5,1044 # 80006bb0 <end>
    800037a4:	00050493          	mv	s1,a0
    800037a8:	04f56463          	bltu	a0,a5,800037f0 <kfree+0x70>
    800037ac:	01100793          	li	a5,17
    800037b0:	01b79793          	slli	a5,a5,0x1b
    800037b4:	02f57e63          	bgeu	a0,a5,800037f0 <kfree+0x70>
    800037b8:	00001637          	lui	a2,0x1
    800037bc:	00100593          	li	a1,1
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	478080e7          	jalr	1144(ra) # 80003c38 <__memset>
    800037c8:	00002797          	auipc	a5,0x2
    800037cc:	13878793          	addi	a5,a5,312 # 80005900 <kmem>
    800037d0:	0007b703          	ld	a4,0(a5)
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00e4b023          	sd	a4,0(s1)
    800037e0:	0097b023          	sd	s1,0(a5)
    800037e4:	00813483          	ld	s1,8(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret
    800037f0:	00002517          	auipc	a0,0x2
    800037f4:	9f850513          	addi	a0,a0,-1544 # 800051e8 <digits+0x18>
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	354080e7          	jalr	852(ra) # 80002b4c <panic>

0000000080003800 <kalloc>:
    80003800:	fe010113          	addi	sp,sp,-32
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	02010413          	addi	s0,sp,32
    80003814:	00002797          	auipc	a5,0x2
    80003818:	0ec78793          	addi	a5,a5,236 # 80005900 <kmem>
    8000381c:	0007b483          	ld	s1,0(a5)
    80003820:	02048063          	beqz	s1,80003840 <kalloc+0x40>
    80003824:	0004b703          	ld	a4,0(s1)
    80003828:	00001637          	lui	a2,0x1
    8000382c:	00500593          	li	a1,5
    80003830:	00048513          	mv	a0,s1
    80003834:	00e7b023          	sd	a4,0(a5)
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	400080e7          	jalr	1024(ra) # 80003c38 <__memset>
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00048513          	mv	a0,s1
    8000384c:	00813483          	ld	s1,8(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <initlock>:
    80003858:	ff010113          	addi	sp,sp,-16
    8000385c:	00813423          	sd	s0,8(sp)
    80003860:	01010413          	addi	s0,sp,16
    80003864:	00813403          	ld	s0,8(sp)
    80003868:	00b53423          	sd	a1,8(a0)
    8000386c:	00052023          	sw	zero,0(a0)
    80003870:	00053823          	sd	zero,16(a0)
    80003874:	01010113          	addi	sp,sp,16
    80003878:	00008067          	ret

000000008000387c <acquire>:
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00913423          	sd	s1,8(sp)
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	00050493          	mv	s1,a0
    80003898:	10002973          	csrr	s2,sstatus
    8000389c:	100027f3          	csrr	a5,sstatus
    800038a0:	ffd7f793          	andi	a5,a5,-3
    800038a4:	10079073          	csrw	sstatus,a5
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	8e0080e7          	jalr	-1824(ra) # 80002188 <mycpu>
    800038b0:	07852783          	lw	a5,120(a0)
    800038b4:	06078e63          	beqz	a5,80003930 <acquire+0xb4>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	8d0080e7          	jalr	-1840(ra) # 80002188 <mycpu>
    800038c0:	07852783          	lw	a5,120(a0)
    800038c4:	0004a703          	lw	a4,0(s1)
    800038c8:	0017879b          	addiw	a5,a5,1
    800038cc:	06f52c23          	sw	a5,120(a0)
    800038d0:	04071063          	bnez	a4,80003910 <acquire+0x94>
    800038d4:	00100713          	li	a4,1
    800038d8:	00070793          	mv	a5,a4
    800038dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800038e0:	0007879b          	sext.w	a5,a5
    800038e4:	fe079ae3          	bnez	a5,800038d8 <acquire+0x5c>
    800038e8:	0ff0000f          	fence
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	89c080e7          	jalr	-1892(ra) # 80002188 <mycpu>
    800038f4:	01813083          	ld	ra,24(sp)
    800038f8:	01013403          	ld	s0,16(sp)
    800038fc:	00a4b823          	sd	a0,16(s1)
    80003900:	00013903          	ld	s2,0(sp)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret
    80003910:	0104b903          	ld	s2,16(s1)
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	874080e7          	jalr	-1932(ra) # 80002188 <mycpu>
    8000391c:	faa91ce3          	bne	s2,a0,800038d4 <acquire+0x58>
    80003920:	00002517          	auipc	a0,0x2
    80003924:	8d050513          	addi	a0,a0,-1840 # 800051f0 <digits+0x20>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	224080e7          	jalr	548(ra) # 80002b4c <panic>
    80003930:	00195913          	srli	s2,s2,0x1
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	854080e7          	jalr	-1964(ra) # 80002188 <mycpu>
    8000393c:	00197913          	andi	s2,s2,1
    80003940:	07252e23          	sw	s2,124(a0)
    80003944:	f75ff06f          	j	800038b8 <acquire+0x3c>

0000000080003948 <release>:
    80003948:	fe010113          	addi	sp,sp,-32
    8000394c:	00813823          	sd	s0,16(sp)
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	01213023          	sd	s2,0(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00052783          	lw	a5,0(a0)
    80003964:	00079a63          	bnez	a5,80003978 <release+0x30>
    80003968:	00002517          	auipc	a0,0x2
    8000396c:	89050513          	addi	a0,a0,-1904 # 800051f8 <digits+0x28>
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	1dc080e7          	jalr	476(ra) # 80002b4c <panic>
    80003978:	01053903          	ld	s2,16(a0)
    8000397c:	00050493          	mv	s1,a0
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	808080e7          	jalr	-2040(ra) # 80002188 <mycpu>
    80003988:	fea910e3          	bne	s2,a0,80003968 <release+0x20>
    8000398c:	0004b823          	sd	zero,16(s1)
    80003990:	0ff0000f          	fence
    80003994:	0f50000f          	fence	iorw,ow
    80003998:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	7ec080e7          	jalr	2028(ra) # 80002188 <mycpu>
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	0027f793          	andi	a5,a5,2
    800039ac:	04079a63          	bnez	a5,80003a00 <release+0xb8>
    800039b0:	07852783          	lw	a5,120(a0)
    800039b4:	02f05e63          	blez	a5,800039f0 <release+0xa8>
    800039b8:	fff7871b          	addiw	a4,a5,-1
    800039bc:	06e52c23          	sw	a4,120(a0)
    800039c0:	00071c63          	bnez	a4,800039d8 <release+0x90>
    800039c4:	07c52783          	lw	a5,124(a0)
    800039c8:	00078863          	beqz	a5,800039d8 <release+0x90>
    800039cc:	100027f3          	csrr	a5,sstatus
    800039d0:	0027e793          	ori	a5,a5,2
    800039d4:	10079073          	csrw	sstatus,a5
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00013903          	ld	s2,0(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret
    800039f0:	00002517          	auipc	a0,0x2
    800039f4:	82850513          	addi	a0,a0,-2008 # 80005218 <digits+0x48>
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	154080e7          	jalr	340(ra) # 80002b4c <panic>
    80003a00:	00002517          	auipc	a0,0x2
    80003a04:	80050513          	addi	a0,a0,-2048 # 80005200 <digits+0x30>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	144080e7          	jalr	324(ra) # 80002b4c <panic>

0000000080003a10 <holding>:
    80003a10:	00052783          	lw	a5,0(a0)
    80003a14:	00079663          	bnez	a5,80003a20 <holding+0x10>
    80003a18:	00000513          	li	a0,0
    80003a1c:	00008067          	ret
    80003a20:	fe010113          	addi	sp,sp,-32
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	01053483          	ld	s1,16(a0)
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	750080e7          	jalr	1872(ra) # 80002188 <mycpu>
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	40a48533          	sub	a0,s1,a0
    80003a4c:	00153513          	seqz	a0,a0
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret

0000000080003a5c <push_off>:
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00813823          	sd	s0,16(sp)
    80003a64:	00113c23          	sd	ra,24(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	02010413          	addi	s0,sp,32
    80003a70:	100024f3          	csrr	s1,sstatus
    80003a74:	100027f3          	csrr	a5,sstatus
    80003a78:	ffd7f793          	andi	a5,a5,-3
    80003a7c:	10079073          	csrw	sstatus,a5
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	708080e7          	jalr	1800(ra) # 80002188 <mycpu>
    80003a88:	07852783          	lw	a5,120(a0)
    80003a8c:	02078663          	beqz	a5,80003ab8 <push_off+0x5c>
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	6f8080e7          	jalr	1784(ra) # 80002188 <mycpu>
    80003a98:	07852783          	lw	a5,120(a0)
    80003a9c:	01813083          	ld	ra,24(sp)
    80003aa0:	01013403          	ld	s0,16(sp)
    80003aa4:	0017879b          	addiw	a5,a5,1
    80003aa8:	06f52c23          	sw	a5,120(a0)
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	02010113          	addi	sp,sp,32
    80003ab4:	00008067          	ret
    80003ab8:	0014d493          	srli	s1,s1,0x1
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	6cc080e7          	jalr	1740(ra) # 80002188 <mycpu>
    80003ac4:	0014f493          	andi	s1,s1,1
    80003ac8:	06952e23          	sw	s1,124(a0)
    80003acc:	fc5ff06f          	j	80003a90 <push_off+0x34>

0000000080003ad0 <pop_off>:
    80003ad0:	ff010113          	addi	sp,sp,-16
    80003ad4:	00813023          	sd	s0,0(sp)
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	01010413          	addi	s0,sp,16
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	6a8080e7          	jalr	1704(ra) # 80002188 <mycpu>
    80003ae8:	100027f3          	csrr	a5,sstatus
    80003aec:	0027f793          	andi	a5,a5,2
    80003af0:	04079663          	bnez	a5,80003b3c <pop_off+0x6c>
    80003af4:	07852783          	lw	a5,120(a0)
    80003af8:	02f05a63          	blez	a5,80003b2c <pop_off+0x5c>
    80003afc:	fff7871b          	addiw	a4,a5,-1
    80003b00:	06e52c23          	sw	a4,120(a0)
    80003b04:	00071c63          	bnez	a4,80003b1c <pop_off+0x4c>
    80003b08:	07c52783          	lw	a5,124(a0)
    80003b0c:	00078863          	beqz	a5,80003b1c <pop_off+0x4c>
    80003b10:	100027f3          	csrr	a5,sstatus
    80003b14:	0027e793          	ori	a5,a5,2
    80003b18:	10079073          	csrw	sstatus,a5
    80003b1c:	00813083          	ld	ra,8(sp)
    80003b20:	00013403          	ld	s0,0(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret
    80003b2c:	00001517          	auipc	a0,0x1
    80003b30:	6ec50513          	addi	a0,a0,1772 # 80005218 <digits+0x48>
    80003b34:	fffff097          	auipc	ra,0xfffff
    80003b38:	018080e7          	jalr	24(ra) # 80002b4c <panic>
    80003b3c:	00001517          	auipc	a0,0x1
    80003b40:	6c450513          	addi	a0,a0,1732 # 80005200 <digits+0x30>
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	008080e7          	jalr	8(ra) # 80002b4c <panic>

0000000080003b4c <push_on>:
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00113c23          	sd	ra,24(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	100024f3          	csrr	s1,sstatus
    80003b64:	100027f3          	csrr	a5,sstatus
    80003b68:	0027e793          	ori	a5,a5,2
    80003b6c:	10079073          	csrw	sstatus,a5
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	618080e7          	jalr	1560(ra) # 80002188 <mycpu>
    80003b78:	07852783          	lw	a5,120(a0)
    80003b7c:	02078663          	beqz	a5,80003ba8 <push_on+0x5c>
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	608080e7          	jalr	1544(ra) # 80002188 <mycpu>
    80003b88:	07852783          	lw	a5,120(a0)
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	0017879b          	addiw	a5,a5,1
    80003b98:	06f52c23          	sw	a5,120(a0)
    80003b9c:	00813483          	ld	s1,8(sp)
    80003ba0:	02010113          	addi	sp,sp,32
    80003ba4:	00008067          	ret
    80003ba8:	0014d493          	srli	s1,s1,0x1
    80003bac:	ffffe097          	auipc	ra,0xffffe
    80003bb0:	5dc080e7          	jalr	1500(ra) # 80002188 <mycpu>
    80003bb4:	0014f493          	andi	s1,s1,1
    80003bb8:	06952e23          	sw	s1,124(a0)
    80003bbc:	fc5ff06f          	j	80003b80 <push_on+0x34>

0000000080003bc0 <pop_on>:
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00813023          	sd	s0,0(sp)
    80003bc8:	00113423          	sd	ra,8(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	5b8080e7          	jalr	1464(ra) # 80002188 <mycpu>
    80003bd8:	100027f3          	csrr	a5,sstatus
    80003bdc:	0027f793          	andi	a5,a5,2
    80003be0:	04078463          	beqz	a5,80003c28 <pop_on+0x68>
    80003be4:	07852783          	lw	a5,120(a0)
    80003be8:	02f05863          	blez	a5,80003c18 <pop_on+0x58>
    80003bec:	fff7879b          	addiw	a5,a5,-1
    80003bf0:	06f52c23          	sw	a5,120(a0)
    80003bf4:	07853783          	ld	a5,120(a0)
    80003bf8:	00079863          	bnez	a5,80003c08 <pop_on+0x48>
    80003bfc:	100027f3          	csrr	a5,sstatus
    80003c00:	ffd7f793          	andi	a5,a5,-3
    80003c04:	10079073          	csrw	sstatus,a5
    80003c08:	00813083          	ld	ra,8(sp)
    80003c0c:	00013403          	ld	s0,0(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret
    80003c18:	00001517          	auipc	a0,0x1
    80003c1c:	62850513          	addi	a0,a0,1576 # 80005240 <digits+0x70>
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	f2c080e7          	jalr	-212(ra) # 80002b4c <panic>
    80003c28:	00001517          	auipc	a0,0x1
    80003c2c:	5f850513          	addi	a0,a0,1528 # 80005220 <digits+0x50>
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	f1c080e7          	jalr	-228(ra) # 80002b4c <panic>

0000000080003c38 <__memset>:
    80003c38:	ff010113          	addi	sp,sp,-16
    80003c3c:	00813423          	sd	s0,8(sp)
    80003c40:	01010413          	addi	s0,sp,16
    80003c44:	1a060e63          	beqz	a2,80003e00 <__memset+0x1c8>
    80003c48:	40a007b3          	neg	a5,a0
    80003c4c:	0077f793          	andi	a5,a5,7
    80003c50:	00778693          	addi	a3,a5,7
    80003c54:	00b00813          	li	a6,11
    80003c58:	0ff5f593          	andi	a1,a1,255
    80003c5c:	fff6071b          	addiw	a4,a2,-1
    80003c60:	1b06e663          	bltu	a3,a6,80003e0c <__memset+0x1d4>
    80003c64:	1cd76463          	bltu	a4,a3,80003e2c <__memset+0x1f4>
    80003c68:	1a078e63          	beqz	a5,80003e24 <__memset+0x1ec>
    80003c6c:	00b50023          	sb	a1,0(a0)
    80003c70:	00100713          	li	a4,1
    80003c74:	1ae78463          	beq	a5,a4,80003e1c <__memset+0x1e4>
    80003c78:	00b500a3          	sb	a1,1(a0)
    80003c7c:	00200713          	li	a4,2
    80003c80:	1ae78a63          	beq	a5,a4,80003e34 <__memset+0x1fc>
    80003c84:	00b50123          	sb	a1,2(a0)
    80003c88:	00300713          	li	a4,3
    80003c8c:	18e78463          	beq	a5,a4,80003e14 <__memset+0x1dc>
    80003c90:	00b501a3          	sb	a1,3(a0)
    80003c94:	00400713          	li	a4,4
    80003c98:	1ae78263          	beq	a5,a4,80003e3c <__memset+0x204>
    80003c9c:	00b50223          	sb	a1,4(a0)
    80003ca0:	00500713          	li	a4,5
    80003ca4:	1ae78063          	beq	a5,a4,80003e44 <__memset+0x20c>
    80003ca8:	00b502a3          	sb	a1,5(a0)
    80003cac:	00700713          	li	a4,7
    80003cb0:	18e79e63          	bne	a5,a4,80003e4c <__memset+0x214>
    80003cb4:	00b50323          	sb	a1,6(a0)
    80003cb8:	00700e93          	li	t4,7
    80003cbc:	00859713          	slli	a4,a1,0x8
    80003cc0:	00e5e733          	or	a4,a1,a4
    80003cc4:	01059e13          	slli	t3,a1,0x10
    80003cc8:	01c76e33          	or	t3,a4,t3
    80003ccc:	01859313          	slli	t1,a1,0x18
    80003cd0:	006e6333          	or	t1,t3,t1
    80003cd4:	02059893          	slli	a7,a1,0x20
    80003cd8:	40f60e3b          	subw	t3,a2,a5
    80003cdc:	011368b3          	or	a7,t1,a7
    80003ce0:	02859813          	slli	a6,a1,0x28
    80003ce4:	0108e833          	or	a6,a7,a6
    80003ce8:	03059693          	slli	a3,a1,0x30
    80003cec:	003e589b          	srliw	a7,t3,0x3
    80003cf0:	00d866b3          	or	a3,a6,a3
    80003cf4:	03859713          	slli	a4,a1,0x38
    80003cf8:	00389813          	slli	a6,a7,0x3
    80003cfc:	00f507b3          	add	a5,a0,a5
    80003d00:	00e6e733          	or	a4,a3,a4
    80003d04:	000e089b          	sext.w	a7,t3
    80003d08:	00f806b3          	add	a3,a6,a5
    80003d0c:	00e7b023          	sd	a4,0(a5)
    80003d10:	00878793          	addi	a5,a5,8
    80003d14:	fed79ce3          	bne	a5,a3,80003d0c <__memset+0xd4>
    80003d18:	ff8e7793          	andi	a5,t3,-8
    80003d1c:	0007871b          	sext.w	a4,a5
    80003d20:	01d787bb          	addw	a5,a5,t4
    80003d24:	0ce88e63          	beq	a7,a4,80003e00 <__memset+0x1c8>
    80003d28:	00f50733          	add	a4,a0,a5
    80003d2c:	00b70023          	sb	a1,0(a4)
    80003d30:	0017871b          	addiw	a4,a5,1
    80003d34:	0cc77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d38:	00e50733          	add	a4,a0,a4
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0027871b          	addiw	a4,a5,2
    80003d44:	0ac77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0037871b          	addiw	a4,a5,3
    80003d54:	0ac77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0047871b          	addiw	a4,a5,4
    80003d64:	08c77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0057871b          	addiw	a4,a5,5
    80003d74:	08c77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0067871b          	addiw	a4,a5,6
    80003d84:	06c77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0077871b          	addiw	a4,a5,7
    80003d94:	06c77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0087871b          	addiw	a4,a5,8
    80003da4:	04c77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0097871b          	addiw	a4,a5,9
    80003db4:	04c77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	00a7871b          	addiw	a4,a5,10
    80003dc4:	02c77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	00b7871b          	addiw	a4,a5,11
    80003dd4:	02c77663          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	00c7871b          	addiw	a4,a5,12
    80003de4:	00c77e63          	bgeu	a4,a2,80003e00 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	00d7879b          	addiw	a5,a5,13
    80003df4:	00c7f663          	bgeu	a5,a2,80003e00 <__memset+0x1c8>
    80003df8:	00f507b3          	add	a5,a0,a5
    80003dfc:	00b78023          	sb	a1,0(a5)
    80003e00:	00813403          	ld	s0,8(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	00b00693          	li	a3,11
    80003e10:	e55ff06f          	j	80003c64 <__memset+0x2c>
    80003e14:	00300e93          	li	t4,3
    80003e18:	ea5ff06f          	j	80003cbc <__memset+0x84>
    80003e1c:	00100e93          	li	t4,1
    80003e20:	e9dff06f          	j	80003cbc <__memset+0x84>
    80003e24:	00000e93          	li	t4,0
    80003e28:	e95ff06f          	j	80003cbc <__memset+0x84>
    80003e2c:	00000793          	li	a5,0
    80003e30:	ef9ff06f          	j	80003d28 <__memset+0xf0>
    80003e34:	00200e93          	li	t4,2
    80003e38:	e85ff06f          	j	80003cbc <__memset+0x84>
    80003e3c:	00400e93          	li	t4,4
    80003e40:	e7dff06f          	j	80003cbc <__memset+0x84>
    80003e44:	00500e93          	li	t4,5
    80003e48:	e75ff06f          	j	80003cbc <__memset+0x84>
    80003e4c:	00600e93          	li	t4,6
    80003e50:	e6dff06f          	j	80003cbc <__memset+0x84>

0000000080003e54 <__memmove>:
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00813423          	sd	s0,8(sp)
    80003e5c:	01010413          	addi	s0,sp,16
    80003e60:	0e060863          	beqz	a2,80003f50 <__memmove+0xfc>
    80003e64:	fff6069b          	addiw	a3,a2,-1
    80003e68:	0006881b          	sext.w	a6,a3
    80003e6c:	0ea5e863          	bltu	a1,a0,80003f5c <__memmove+0x108>
    80003e70:	00758713          	addi	a4,a1,7
    80003e74:	00a5e7b3          	or	a5,a1,a0
    80003e78:	40a70733          	sub	a4,a4,a0
    80003e7c:	0077f793          	andi	a5,a5,7
    80003e80:	00f73713          	sltiu	a4,a4,15
    80003e84:	00174713          	xori	a4,a4,1
    80003e88:	0017b793          	seqz	a5,a5
    80003e8c:	00e7f7b3          	and	a5,a5,a4
    80003e90:	10078863          	beqz	a5,80003fa0 <__memmove+0x14c>
    80003e94:	00900793          	li	a5,9
    80003e98:	1107f463          	bgeu	a5,a6,80003fa0 <__memmove+0x14c>
    80003e9c:	0036581b          	srliw	a6,a2,0x3
    80003ea0:	fff8081b          	addiw	a6,a6,-1
    80003ea4:	02081813          	slli	a6,a6,0x20
    80003ea8:	01d85893          	srli	a7,a6,0x1d
    80003eac:	00858813          	addi	a6,a1,8
    80003eb0:	00058793          	mv	a5,a1
    80003eb4:	00050713          	mv	a4,a0
    80003eb8:	01088833          	add	a6,a7,a6
    80003ebc:	0007b883          	ld	a7,0(a5)
    80003ec0:	00878793          	addi	a5,a5,8
    80003ec4:	00870713          	addi	a4,a4,8
    80003ec8:	ff173c23          	sd	a7,-8(a4)
    80003ecc:	ff0798e3          	bne	a5,a6,80003ebc <__memmove+0x68>
    80003ed0:	ff867713          	andi	a4,a2,-8
    80003ed4:	02071793          	slli	a5,a4,0x20
    80003ed8:	0207d793          	srli	a5,a5,0x20
    80003edc:	00f585b3          	add	a1,a1,a5
    80003ee0:	40e686bb          	subw	a3,a3,a4
    80003ee4:	00f507b3          	add	a5,a0,a5
    80003ee8:	06e60463          	beq	a2,a4,80003f50 <__memmove+0xfc>
    80003eec:	0005c703          	lbu	a4,0(a1)
    80003ef0:	00e78023          	sb	a4,0(a5)
    80003ef4:	04068e63          	beqz	a3,80003f50 <__memmove+0xfc>
    80003ef8:	0015c603          	lbu	a2,1(a1)
    80003efc:	00100713          	li	a4,1
    80003f00:	00c780a3          	sb	a2,1(a5)
    80003f04:	04e68663          	beq	a3,a4,80003f50 <__memmove+0xfc>
    80003f08:	0025c603          	lbu	a2,2(a1)
    80003f0c:	00200713          	li	a4,2
    80003f10:	00c78123          	sb	a2,2(a5)
    80003f14:	02e68e63          	beq	a3,a4,80003f50 <__memmove+0xfc>
    80003f18:	0035c603          	lbu	a2,3(a1)
    80003f1c:	00300713          	li	a4,3
    80003f20:	00c781a3          	sb	a2,3(a5)
    80003f24:	02e68663          	beq	a3,a4,80003f50 <__memmove+0xfc>
    80003f28:	0045c603          	lbu	a2,4(a1)
    80003f2c:	00400713          	li	a4,4
    80003f30:	00c78223          	sb	a2,4(a5)
    80003f34:	00e68e63          	beq	a3,a4,80003f50 <__memmove+0xfc>
    80003f38:	0055c603          	lbu	a2,5(a1)
    80003f3c:	00500713          	li	a4,5
    80003f40:	00c782a3          	sb	a2,5(a5)
    80003f44:	00e68663          	beq	a3,a4,80003f50 <__memmove+0xfc>
    80003f48:	0065c703          	lbu	a4,6(a1)
    80003f4c:	00e78323          	sb	a4,6(a5)
    80003f50:	00813403          	ld	s0,8(sp)
    80003f54:	01010113          	addi	sp,sp,16
    80003f58:	00008067          	ret
    80003f5c:	02061713          	slli	a4,a2,0x20
    80003f60:	02075713          	srli	a4,a4,0x20
    80003f64:	00e587b3          	add	a5,a1,a4
    80003f68:	f0f574e3          	bgeu	a0,a5,80003e70 <__memmove+0x1c>
    80003f6c:	02069613          	slli	a2,a3,0x20
    80003f70:	02065613          	srli	a2,a2,0x20
    80003f74:	fff64613          	not	a2,a2
    80003f78:	00e50733          	add	a4,a0,a4
    80003f7c:	00c78633          	add	a2,a5,a2
    80003f80:	fff7c683          	lbu	a3,-1(a5)
    80003f84:	fff78793          	addi	a5,a5,-1
    80003f88:	fff70713          	addi	a4,a4,-1
    80003f8c:	00d70023          	sb	a3,0(a4)
    80003f90:	fec798e3          	bne	a5,a2,80003f80 <__memmove+0x12c>
    80003f94:	00813403          	ld	s0,8(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret
    80003fa0:	02069713          	slli	a4,a3,0x20
    80003fa4:	02075713          	srli	a4,a4,0x20
    80003fa8:	00170713          	addi	a4,a4,1
    80003fac:	00e50733          	add	a4,a0,a4
    80003fb0:	00050793          	mv	a5,a0
    80003fb4:	0005c683          	lbu	a3,0(a1)
    80003fb8:	00178793          	addi	a5,a5,1
    80003fbc:	00158593          	addi	a1,a1,1
    80003fc0:	fed78fa3          	sb	a3,-1(a5)
    80003fc4:	fee798e3          	bne	a5,a4,80003fb4 <__memmove+0x160>
    80003fc8:	f89ff06f          	j	80003f50 <__memmove+0xfc>

0000000080003fcc <__mem_free>:
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00813423          	sd	s0,8(sp)
    80003fd4:	01010413          	addi	s0,sp,16
    80003fd8:	00002597          	auipc	a1,0x2
    80003fdc:	93058593          	addi	a1,a1,-1744 # 80005908 <freep>
    80003fe0:	0005b783          	ld	a5,0(a1)
    80003fe4:	ff050693          	addi	a3,a0,-16
    80003fe8:	0007b703          	ld	a4,0(a5)
    80003fec:	00d7fc63          	bgeu	a5,a3,80004004 <__mem_free+0x38>
    80003ff0:	00e6ee63          	bltu	a3,a4,8000400c <__mem_free+0x40>
    80003ff4:	00e7fc63          	bgeu	a5,a4,8000400c <__mem_free+0x40>
    80003ff8:	00070793          	mv	a5,a4
    80003ffc:	0007b703          	ld	a4,0(a5)
    80004000:	fed7e8e3          	bltu	a5,a3,80003ff0 <__mem_free+0x24>
    80004004:	fee7eae3          	bltu	a5,a4,80003ff8 <__mem_free+0x2c>
    80004008:	fee6f8e3          	bgeu	a3,a4,80003ff8 <__mem_free+0x2c>
    8000400c:	ff852803          	lw	a6,-8(a0)
    80004010:	02081613          	slli	a2,a6,0x20
    80004014:	01c65613          	srli	a2,a2,0x1c
    80004018:	00c68633          	add	a2,a3,a2
    8000401c:	02c70a63          	beq	a4,a2,80004050 <__mem_free+0x84>
    80004020:	fee53823          	sd	a4,-16(a0)
    80004024:	0087a503          	lw	a0,8(a5)
    80004028:	02051613          	slli	a2,a0,0x20
    8000402c:	01c65613          	srli	a2,a2,0x1c
    80004030:	00c78633          	add	a2,a5,a2
    80004034:	04c68263          	beq	a3,a2,80004078 <__mem_free+0xac>
    80004038:	00813403          	ld	s0,8(sp)
    8000403c:	00d7b023          	sd	a3,0(a5)
    80004040:	00f5b023          	sd	a5,0(a1)
    80004044:	00000513          	li	a0,0
    80004048:	01010113          	addi	sp,sp,16
    8000404c:	00008067          	ret
    80004050:	00872603          	lw	a2,8(a4)
    80004054:	00073703          	ld	a4,0(a4)
    80004058:	0106083b          	addw	a6,a2,a6
    8000405c:	ff052c23          	sw	a6,-8(a0)
    80004060:	fee53823          	sd	a4,-16(a0)
    80004064:	0087a503          	lw	a0,8(a5)
    80004068:	02051613          	slli	a2,a0,0x20
    8000406c:	01c65613          	srli	a2,a2,0x1c
    80004070:	00c78633          	add	a2,a5,a2
    80004074:	fcc692e3          	bne	a3,a2,80004038 <__mem_free+0x6c>
    80004078:	00813403          	ld	s0,8(sp)
    8000407c:	0105053b          	addw	a0,a0,a6
    80004080:	00a7a423          	sw	a0,8(a5)
    80004084:	00e7b023          	sd	a4,0(a5)
    80004088:	00f5b023          	sd	a5,0(a1)
    8000408c:	00000513          	li	a0,0
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <__mem_alloc>:
    80004098:	fc010113          	addi	sp,sp,-64
    8000409c:	02813823          	sd	s0,48(sp)
    800040a0:	02913423          	sd	s1,40(sp)
    800040a4:	03213023          	sd	s2,32(sp)
    800040a8:	01513423          	sd	s5,8(sp)
    800040ac:	02113c23          	sd	ra,56(sp)
    800040b0:	01313c23          	sd	s3,24(sp)
    800040b4:	01413823          	sd	s4,16(sp)
    800040b8:	01613023          	sd	s6,0(sp)
    800040bc:	04010413          	addi	s0,sp,64
    800040c0:	00002a97          	auipc	s5,0x2
    800040c4:	848a8a93          	addi	s5,s5,-1976 # 80005908 <freep>
    800040c8:	00f50913          	addi	s2,a0,15
    800040cc:	000ab683          	ld	a3,0(s5)
    800040d0:	00495913          	srli	s2,s2,0x4
    800040d4:	0019049b          	addiw	s1,s2,1
    800040d8:	00048913          	mv	s2,s1
    800040dc:	0c068c63          	beqz	a3,800041b4 <__mem_alloc+0x11c>
    800040e0:	0006b503          	ld	a0,0(a3)
    800040e4:	00852703          	lw	a4,8(a0)
    800040e8:	10977063          	bgeu	a4,s1,800041e8 <__mem_alloc+0x150>
    800040ec:	000017b7          	lui	a5,0x1
    800040f0:	0009099b          	sext.w	s3,s2
    800040f4:	0af4e863          	bltu	s1,a5,800041a4 <__mem_alloc+0x10c>
    800040f8:	02099a13          	slli	s4,s3,0x20
    800040fc:	01ca5a13          	srli	s4,s4,0x1c
    80004100:	fff00b13          	li	s6,-1
    80004104:	0100006f          	j	80004114 <__mem_alloc+0x7c>
    80004108:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000410c:	00852703          	lw	a4,8(a0)
    80004110:	04977463          	bgeu	a4,s1,80004158 <__mem_alloc+0xc0>
    80004114:	00050793          	mv	a5,a0
    80004118:	fea698e3          	bne	a3,a0,80004108 <__mem_alloc+0x70>
    8000411c:	000a0513          	mv	a0,s4
    80004120:	00000097          	auipc	ra,0x0
    80004124:	1f0080e7          	jalr	496(ra) # 80004310 <kvmincrease>
    80004128:	00050793          	mv	a5,a0
    8000412c:	01050513          	addi	a0,a0,16
    80004130:	07678e63          	beq	a5,s6,800041ac <__mem_alloc+0x114>
    80004134:	0137a423          	sw	s3,8(a5)
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	e94080e7          	jalr	-364(ra) # 80003fcc <__mem_free>
    80004140:	000ab783          	ld	a5,0(s5)
    80004144:	06078463          	beqz	a5,800041ac <__mem_alloc+0x114>
    80004148:	0007b503          	ld	a0,0(a5)
    8000414c:	00078693          	mv	a3,a5
    80004150:	00852703          	lw	a4,8(a0)
    80004154:	fc9760e3          	bltu	a4,s1,80004114 <__mem_alloc+0x7c>
    80004158:	08e48263          	beq	s1,a4,800041dc <__mem_alloc+0x144>
    8000415c:	4127073b          	subw	a4,a4,s2
    80004160:	02071693          	slli	a3,a4,0x20
    80004164:	01c6d693          	srli	a3,a3,0x1c
    80004168:	00e52423          	sw	a4,8(a0)
    8000416c:	00d50533          	add	a0,a0,a3
    80004170:	01252423          	sw	s2,8(a0)
    80004174:	00fab023          	sd	a5,0(s5)
    80004178:	01050513          	addi	a0,a0,16
    8000417c:	03813083          	ld	ra,56(sp)
    80004180:	03013403          	ld	s0,48(sp)
    80004184:	02813483          	ld	s1,40(sp)
    80004188:	02013903          	ld	s2,32(sp)
    8000418c:	01813983          	ld	s3,24(sp)
    80004190:	01013a03          	ld	s4,16(sp)
    80004194:	00813a83          	ld	s5,8(sp)
    80004198:	00013b03          	ld	s6,0(sp)
    8000419c:	04010113          	addi	sp,sp,64
    800041a0:	00008067          	ret
    800041a4:	000019b7          	lui	s3,0x1
    800041a8:	f51ff06f          	j	800040f8 <__mem_alloc+0x60>
    800041ac:	00000513          	li	a0,0
    800041b0:	fcdff06f          	j	8000417c <__mem_alloc+0xe4>
    800041b4:	00003797          	auipc	a5,0x3
    800041b8:	9ec78793          	addi	a5,a5,-1556 # 80006ba0 <base>
    800041bc:	00078513          	mv	a0,a5
    800041c0:	00fab023          	sd	a5,0(s5)
    800041c4:	00f7b023          	sd	a5,0(a5)
    800041c8:	00000713          	li	a4,0
    800041cc:	00003797          	auipc	a5,0x3
    800041d0:	9c07ae23          	sw	zero,-1572(a5) # 80006ba8 <base+0x8>
    800041d4:	00050693          	mv	a3,a0
    800041d8:	f11ff06f          	j	800040e8 <__mem_alloc+0x50>
    800041dc:	00053703          	ld	a4,0(a0)
    800041e0:	00e7b023          	sd	a4,0(a5)
    800041e4:	f91ff06f          	j	80004174 <__mem_alloc+0xdc>
    800041e8:	00068793          	mv	a5,a3
    800041ec:	f6dff06f          	j	80004158 <__mem_alloc+0xc0>

00000000800041f0 <__putc>:
    800041f0:	fe010113          	addi	sp,sp,-32
    800041f4:	00813823          	sd	s0,16(sp)
    800041f8:	00113c23          	sd	ra,24(sp)
    800041fc:	02010413          	addi	s0,sp,32
    80004200:	00050793          	mv	a5,a0
    80004204:	fef40593          	addi	a1,s0,-17
    80004208:	00100613          	li	a2,1
    8000420c:	00000513          	li	a0,0
    80004210:	fef407a3          	sb	a5,-17(s0)
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	918080e7          	jalr	-1768(ra) # 80002b2c <console_write>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	02010113          	addi	sp,sp,32
    80004228:	00008067          	ret

000000008000422c <__getc>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	fe840593          	addi	a1,s0,-24
    80004240:	00100613          	li	a2,1
    80004244:	00000513          	li	a0,0
    80004248:	fffff097          	auipc	ra,0xfffff
    8000424c:	8c4080e7          	jalr	-1852(ra) # 80002b0c <console_read>
    80004250:	fe844503          	lbu	a0,-24(s0)
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret

0000000080004264 <console_handler>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	14202773          	csrr	a4,scause
    8000427c:	100027f3          	csrr	a5,sstatus
    80004280:	0027f793          	andi	a5,a5,2
    80004284:	06079e63          	bnez	a5,80004300 <console_handler+0x9c>
    80004288:	00074c63          	bltz	a4,800042a0 <console_handler+0x3c>
    8000428c:	01813083          	ld	ra,24(sp)
    80004290:	01013403          	ld	s0,16(sp)
    80004294:	00813483          	ld	s1,8(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret
    800042a0:	0ff77713          	andi	a4,a4,255
    800042a4:	00900793          	li	a5,9
    800042a8:	fef712e3          	bne	a4,a5,8000428c <console_handler+0x28>
    800042ac:	ffffe097          	auipc	ra,0xffffe
    800042b0:	4b8080e7          	jalr	1208(ra) # 80002764 <plic_claim>
    800042b4:	00a00793          	li	a5,10
    800042b8:	00050493          	mv	s1,a0
    800042bc:	02f50c63          	beq	a0,a5,800042f4 <console_handler+0x90>
    800042c0:	fc0506e3          	beqz	a0,8000428c <console_handler+0x28>
    800042c4:	00050593          	mv	a1,a0
    800042c8:	00001517          	auipc	a0,0x1
    800042cc:	e8050513          	addi	a0,a0,-384 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	8d8080e7          	jalr	-1832(ra) # 80002ba8 <__printf>
    800042d8:	01013403          	ld	s0,16(sp)
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00813483          	ld	s1,8(sp)
    800042e8:	02010113          	addi	sp,sp,32
    800042ec:	ffffe317          	auipc	t1,0xffffe
    800042f0:	4b030067          	jr	1200(t1) # 8000279c <plic_complete>
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	1bc080e7          	jalr	444(ra) # 800034b0 <uartintr>
    800042fc:	fddff06f          	j	800042d8 <console_handler+0x74>
    80004300:	00001517          	auipc	a0,0x1
    80004304:	f4850513          	addi	a0,a0,-184 # 80005248 <digits+0x78>
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	844080e7          	jalr	-1980(ra) # 80002b4c <panic>

0000000080004310 <kvmincrease>:
    80004310:	fe010113          	addi	sp,sp,-32
    80004314:	01213023          	sd	s2,0(sp)
    80004318:	00001937          	lui	s2,0x1
    8000431c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	01250933          	add	s2,a0,s2
    80004334:	00c95913          	srli	s2,s2,0xc
    80004338:	02090863          	beqz	s2,80004368 <kvmincrease+0x58>
    8000433c:	00000493          	li	s1,0
    80004340:	00148493          	addi	s1,s1,1
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	4bc080e7          	jalr	1212(ra) # 80003800 <kalloc>
    8000434c:	fe991ae3          	bne	s2,s1,80004340 <kvmincrease+0x30>
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	01013403          	ld	s0,16(sp)
    80004358:	00813483          	ld	s1,8(sp)
    8000435c:	00013903          	ld	s2,0(sp)
    80004360:	02010113          	addi	sp,sp,32
    80004364:	00008067          	ret
    80004368:	01813083          	ld	ra,24(sp)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	00813483          	ld	s1,8(sp)
    80004374:	00013903          	ld	s2,0(sp)
    80004378:	00000513          	li	a0,0
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret
	...

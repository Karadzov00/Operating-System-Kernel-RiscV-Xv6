
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a2013103          	ld	sp,-1504(sp) # 80005a20 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	160020ef          	jal	ra,8000217c <start>

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
    80001080:	559000ef          	jal	ra,80001dd8 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_ZN7_thread5startEv>:
//    if(status==Status::FINISHED)return;
//    if(status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    status=Status::READY;
    if(this->body!= nullptr)
    80001124:	00053783          	ld	a5,0(a0)
    80001128:	02078663          	beqz	a5,80001154 <_ZN7_thread5startEv+0x30>
void _thread::start() {
    8000112c:	ff010113          	addi	sp,sp,-16
    80001130:	00113423          	sd	ra,8(sp)
    80001134:	00813023          	sd	s0,0(sp)
    80001138:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    8000113c:	00001097          	auipc	ra,0x1
    80001140:	b3c080e7          	jalr	-1220(ra) # 80001c78 <_ZN9Scheduler3putEP7_thread>
}
    80001144:	00813083          	ld	ra,8(sp)
    80001148:	00013403          	ld	s0,0(sp)
    8000114c:	01010113          	addi	sp,sp,16
    80001150:	00008067          	ret
    80001154:	00008067          	ret

0000000080001158 <_ZN7_threadC1EPFvPvEmS0_Pm>:
_thread::_thread(Body body, uint64 timeSlice, void* arg, uint64* stek)
    80001158:	ff010113          	addi	sp,sp,-16
    8000115c:	00113423          	sd	ra,8(sp)
    80001160:	00813023          	sd	s0,0(sp)
    80001164:	01010413          	addi	s0,sp,16
    this->body=body;
    80001168:	00b53023          	sd	a1,0(a0)
    this->timeSlice=timeSlice;
    8000116c:	02c53023          	sd	a2,32(a0)
    this->finished=false;
    80001170:	02050423          	sb	zero,40(a0)
    this->stack = (body!= nullptr) ? stek: nullptr;
    80001174:	06058063          	beqz	a1,800011d4 <_ZN7_threadC1EPFvPvEmS0_Pm+0x7c>
    80001178:	00e53423          	sd	a4,8(a0)
    this->context.ra=(uint64)&threadWrapper;
    8000117c:	00000797          	auipc	a5,0x0
    80001180:	09478793          	addi	a5,a5,148 # 80001210 <_ZN7_thread13threadWrapperEv>
    80001184:	00f53823          	sd	a5,16(a0)
    this->context.sp= (this->stack!= nullptr)?(uint64)&stack[DEFAULT_STACK_SIZE]:0;
    80001188:	04070a63          	beqz	a4,800011dc <_ZN7_threadC1EPFvPvEmS0_Pm+0x84>
    8000118c:	000087b7          	lui	a5,0x8
    80001190:	00f70733          	add	a4,a4,a5
    80001194:	00e53c23          	sd	a4,24(a0)
    status = Status::NEW;
    80001198:	00100793          	li	a5,1
    8000119c:	04f52023          	sw	a5,64(a0)
    id = globalId++;
    800011a0:	00005717          	auipc	a4,0x5
    800011a4:	8e070713          	addi	a4,a4,-1824 # 80005a80 <_ZN7_thread8globalIdE>
    800011a8:	00073783          	ld	a5,0(a4)
    800011ac:	00178613          	addi	a2,a5,1 # 8001 <_entry-0x7fff7fff>
    800011b0:	00c73023          	sd	a2,0(a4)
    800011b4:	02f53c23          	sd	a5,56(a0)
    this->arg=arg;
    800011b8:	02d53823          	sd	a3,48(a0)
    this->start();
    800011bc:	00000097          	auipc	ra,0x0
    800011c0:	f68080e7          	jalr	-152(ra) # 80001124 <_ZN7_thread5startEv>
}
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	00013403          	ld	s0,0(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret
    this->stack = (body!= nullptr) ? stek: nullptr;
    800011d4:	00000713          	li	a4,0
    800011d8:	fa1ff06f          	j	80001178 <_ZN7_threadC1EPFvPvEmS0_Pm+0x20>
    this->context.sp= (this->stack!= nullptr)?(uint64)&stack[DEFAULT_STACK_SIZE]:0;
    800011dc:	00000713          	li	a4,0
    800011e0:	fb5ff06f          	j	80001194 <_ZN7_threadC1EPFvPvEmS0_Pm+0x3c>

00000000800011e4 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    800011e4:	ff010113          	addi	sp,sp,-16
    800011e8:	00813423          	sd	s0,8(sp)
    800011ec:	01010413          	addi	s0,sp,16
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800011f0:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800011f4:	00400713          	li	a4,4
    800011f8:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    800011fc:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    80001200:	00078513          	mv	a0,a5

}
    80001204:	00813403          	ld	s0,8(sp)
    80001208:	01010113          	addi	sp,sp,16
    8000120c:	00008067          	ret

0000000080001210 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001210:	fe010113          	addi	sp,sp,-32
    80001214:	00113c23          	sd	ra,24(sp)
    80001218:	00813823          	sd	s0,16(sp)
    8000121c:	00913423          	sd	s1,8(sp)
    80001220:	02010413          	addi	s0,sp,32
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    80001224:	00005497          	auipc	s1,0x5
    80001228:	85c48493          	addi	s1,s1,-1956 # 80005a80 <_ZN7_thread8globalIdE>
    8000122c:	0084b783          	ld	a5,8(s1)
    80001230:	0007b703          	ld	a4,0(a5)
    80001234:	0307b503          	ld	a0,48(a5)
    80001238:	000700e7          	jalr	a4
    running->setFinished(true);
    8000123c:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001240:	00100713          	li	a4,1
    80001244:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	f9c080e7          	jalr	-100(ra) # 800011e4 <_ZN7_thread5yieldEv>
}
    80001250:	01813083          	ld	ra,24(sp)
    80001254:	01013403          	ld	s0,16(sp)
    80001258:	00813483          	ld	s1,8(sp)
    8000125c:	02010113          	addi	sp,sp,32
    80001260:	00008067          	ret

0000000080001264 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001264:	fe010113          	addi	sp,sp,-32
    80001268:	00113c23          	sd	ra,24(sp)
    8000126c:	00813823          	sd	s0,16(sp)
    80001270:	00913423          	sd	s1,8(sp)
    80001274:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001278:	00005497          	auipc	s1,0x5
    8000127c:	8104b483          	ld	s1,-2032(s1) # 80005a88 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001280:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001284:	02078c63          	beqz	a5,800012bc <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	988080e7          	jalr	-1656(ra) # 80001c10 <_ZN9Scheduler3getEv>
    80001290:	00004797          	auipc	a5,0x4
    80001294:	7ea7bc23          	sd	a0,2040(a5) # 80005a88 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    80001298:	01050593          	addi	a1,a0,16
    8000129c:	01048513          	addi	a0,s1,16
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	e70080e7          	jalr	-400(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012a8:	01813083          	ld	ra,24(sp)
    800012ac:	01013403          	ld	s0,16(sp)
    800012b0:	00813483          	ld	s1,8(sp)
    800012b4:	02010113          	addi	sp,sp,32
    800012b8:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012bc:	00048513          	mv	a0,s1
    800012c0:	00001097          	auipc	ra,0x1
    800012c4:	9b8080e7          	jalr	-1608(ra) # 80001c78 <_ZN9Scheduler3putEP7_thread>
    800012c8:	fc1ff06f          	j	80001288 <_ZN7_thread8dispatchEv+0x24>

00000000800012cc <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00113423          	sd	ra,8(sp)
    800012d4:	00813023          	sd	s0,0(sp)
    800012d8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012dc:	00001097          	auipc	ra,0x1
    800012e0:	d24080e7          	jalr	-732(ra) # 80002000 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012e4:	00813083          	ld	ra,8(sp)
    800012e8:	00013403          	ld	s0,0(sp)
    800012ec:	01010113          	addi	sp,sp,16
    800012f0:	00008067          	ret

00000000800012f4 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    800012f4:	ff010113          	addi	sp,sp,-16
    800012f8:	00113423          	sd	ra,8(sp)
    800012fc:	00813023          	sd	s0,0(sp)
    80001300:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001304:	00001097          	auipc	ra,0x1
    80001308:	cfc080e7          	jalr	-772(ra) # 80002000 <_ZN15MemoryAllocator10kmem_allocEm>
}
    8000130c:	00813083          	ld	ra,8(sp)
    80001310:	00013403          	ld	s0,0(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret

000000008000131c <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00113423          	sd	ra,8(sp)
    80001324:	00813023          	sd	s0,0(sp)
    80001328:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	cfc080e7          	jalr	-772(ra) # 80002028 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001334:	00813083          	ld	ra,8(sp)
    80001338:	00013403          	ld	s0,0(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_ZN7_thread12createThreadEPFvPvES0_Pm>:
_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    80001344:	fd010113          	addi	sp,sp,-48
    80001348:	02113423          	sd	ra,40(sp)
    8000134c:	02813023          	sd	s0,32(sp)
    80001350:	00913c23          	sd	s1,24(sp)
    80001354:	01213823          	sd	s2,16(sp)
    80001358:	01313423          	sd	s3,8(sp)
    8000135c:	01413023          	sd	s4,0(sp)
    80001360:	03010413          	addi	s0,sp,48
    80001364:	00050913          	mv	s2,a0
    80001368:	00058993          	mv	s3,a1
    8000136c:	00060a13          	mv	s4,a2
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
    80001370:	04800513          	li	a0,72
    80001374:	00000097          	auipc	ra,0x0
    80001378:	f58080e7          	jalr	-168(ra) # 800012cc <_ZN7_threadnwEm>
    8000137c:	00050493          	mv	s1,a0
    80001380:	000a0713          	mv	a4,s4
    80001384:	00098693          	mv	a3,s3
    80001388:	00200613          	li	a2,2
    8000138c:	00090593          	mv	a1,s2
    80001390:	00000097          	auipc	ra,0x0
    80001394:	dc8080e7          	jalr	-568(ra) # 80001158 <_ZN7_threadC1EPFvPvEmS0_Pm>
    80001398:	0200006f          	j	800013b8 <_ZN7_thread12createThreadEPFvPvES0_Pm+0x74>
    8000139c:	00050913          	mv	s2,a0
    800013a0:	00048513          	mv	a0,s1
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	f78080e7          	jalr	-136(ra) # 8000131c <_ZN7_threaddlEPv>
    800013ac:	00090513          	mv	a0,s2
    800013b0:	00005097          	auipc	ra,0x5
    800013b4:	7c8080e7          	jalr	1992(ra) # 80006b78 <_Unwind_Resume>
}
    800013b8:	00048513          	mv	a0,s1
    800013bc:	02813083          	ld	ra,40(sp)
    800013c0:	02013403          	ld	s0,32(sp)
    800013c4:	01813483          	ld	s1,24(sp)
    800013c8:	01013903          	ld	s2,16(sp)
    800013cc:	00813983          	ld	s3,8(sp)
    800013d0:	00013a03          	ld	s4,0(sp)
    800013d4:	03010113          	addi	sp,sp,48
    800013d8:	00008067          	ret

00000000800013dc <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00113423          	sd	ra,8(sp)
    800013e4:	00813023          	sd	s0,0(sp)
    800013e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	c3c080e7          	jalr	-964(ra) # 80002028 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013f4:	00813083          	ld	ra,8(sp)
    800013f8:	00013403          	ld	s0,0(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <main>:
        _thread::thread_t * handle,
        void(*start_routine)(void*),
        void* arg
);

int main(){
    80001404:	fe010113          	addi	sp,sp,-32
    80001408:	00113c23          	sd	ra,24(sp)
    8000140c:	00813823          	sd	s0,16(sp)
    80001410:	02010413          	addi	s0,sp,32


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001414:	00004797          	auipc	a5,0x4
    80001418:	6047b783          	ld	a5,1540(a5) # 80005a18 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000141c:	10579073          	csrw	stvec,a5
//
//
//    printString("finished \n");

    _thread* idle;
    if(!thread_create(&idle, nullptr, nullptr)){
    80001420:	00000613          	li	a2,0
    80001424:	00000593          	li	a1,0
    80001428:	fe840513          	addi	a0,s0,-24
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	104080e7          	jalr	260(ra) # 80001530 <_Z13thread_createPP7_threadPFvPvES2_>
//            printString("thread created");
        }
    _thread::running=idle;
    80001434:	00004797          	auipc	a5,0x4
    80001438:	5dc7b783          	ld	a5,1500(a5) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000143c:	fe843703          	ld	a4,-24(s0)
    80001440:	00e7b023          	sd	a4,0(a5)
    userMain();
    80001444:	00000097          	auipc	ra,0x0
    80001448:	764080e7          	jalr	1892(ra) # 80001ba8 <_Z8userMainv>

    return 0;
}
    8000144c:	00000513          	li	a0,0
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z7syscallP4args>:
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    8000146c:	00053583          	ld	a1,0(a0)
    uint64 arg1 = arg->a1;
    80001470:	00853603          	ld	a2,8(a0)
    uint64 arg2 = arg->a2;
    80001474:	01053683          	ld	a3,16(a0)
    uint64 arg3 = arg->a3;
    80001478:	01853703          	ld	a4,24(a0)
    uint64 arg4 = arg->a4;
    8000147c:	02053783          	ld	a5,32(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001480:	00058513          	mv	a0,a1
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001484:	00060593          	mv	a1,a2
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001488:	00068613          	mv	a2,a3
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    8000148c:	00070693          	mv	a3,a4
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    80001490:	00078713          	mv	a4,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001494:	00000073          	ecall


}
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    800014a4:	fc010113          	addi	sp,sp,-64
    800014a8:	02113c23          	sd	ra,56(sp)
    800014ac:	02813823          	sd	s0,48(sp)
    800014b0:	04010413          	addi	s0,sp,64
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    800014b4:	00100793          	li	a5,1
    800014b8:	fcf43423          	sd	a5,-56(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    800014bc:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    800014c0:	03f57513          	andi	a0,a0,63
    800014c4:	00050463          	beqz	a0,800014cc <_Z9mem_allocm+0x28>
    800014c8:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    800014cc:	fcf43823          	sd	a5,-48(s0)

    syscall(&arg);
    800014d0:	fc840513          	addi	a0,s0,-56
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f8c080e7          	jalr	-116(ra) # 80001460 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014dc:	00050513          	mv	a0,a0

    return (void*)ret;
}
    800014e0:	03813083          	ld	ra,56(sp)
    800014e4:	03013403          	ld	s0,48(sp)
    800014e8:	04010113          	addi	sp,sp,64
    800014ec:	00008067          	ret

00000000800014f0 <_Z8mem_freePv>:

int mem_free (void* p){
    800014f0:	fc010113          	addi	sp,sp,-64
    800014f4:	02113c23          	sd	ra,56(sp)
    800014f8:	02813823          	sd	s0,48(sp)
    800014fc:	04010413          	addi	s0,sp,64
    args arg;
    arg.a0=0x02;
    80001500:	00200793          	li	a5,2
    80001504:	fcf43423          	sd	a5,-56(s0)
    arg.a1=(uint64)p;
    80001508:	fca43823          	sd	a0,-48(s0)

    syscall(&arg);
    8000150c:	fc840513          	addi	a0,s0,-56
    80001510:	00000097          	auipc	ra,0x0
    80001514:	f50080e7          	jalr	-176(ra) # 80001460 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001518:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000151c:	0005051b          	sext.w	a0,a0
    80001520:	03813083          	ld	ra,56(sp)
    80001524:	03013403          	ld	s0,48(sp)
    80001528:	04010113          	addi	sp,sp,64
    8000152c:	00008067          	ret

0000000080001530 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    80001530:	fa010113          	addi	sp,sp,-96
    80001534:	04113c23          	sd	ra,88(sp)
    80001538:	04813823          	sd	s0,80(sp)
    8000153c:	04913423          	sd	s1,72(sp)
    80001540:	05213023          	sd	s2,64(sp)
    80001544:	03313c23          	sd	s3,56(sp)
    80001548:	06010413          	addi	s0,sp,96
    8000154c:	00050993          	mv	s3,a0
    80001550:	00058913          	mv	s2,a1
    80001554:	00060493          	mv	s1,a2

    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    80001558:	00008537          	lui	a0,0x8
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	f48080e7          	jalr	-184(ra) # 800014a4 <_Z9mem_allocm>
    args myArgs;
    myArgs.a0=0x11;
    80001564:	01100793          	li	a5,17
    80001568:	faf43423          	sd	a5,-88(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    8000156c:	fb343823          	sd	s3,-80(s0)
    myArgs.a2=(uint64)start_routine;
    80001570:	fb243c23          	sd	s2,-72(s0)
    myArgs.a3=(uint64)arg;
    80001574:	fc943023          	sd	s1,-64(s0)
    myArgs.a4=(uint64)stack;
    80001578:	fca43423          	sd	a0,-56(s0)

    syscall(&myArgs);
    8000157c:	fa840513          	addi	a0,s0,-88
    80001580:	00000097          	auipc	ra,0x0
    80001584:	ee0080e7          	jalr	-288(ra) # 80001460 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001588:	00050513          	mv	a0,a0

    return ret;


}
    8000158c:	0005051b          	sext.w	a0,a0
    80001590:	05813083          	ld	ra,88(sp)
    80001594:	05013403          	ld	s0,80(sp)
    80001598:	04813483          	ld	s1,72(sp)
    8000159c:	04013903          	ld	s2,64(sp)
    800015a0:	03813983          	ld	s3,56(sp)
    800015a4:	06010113          	addi	sp,sp,96
    800015a8:	00008067          	ret

00000000800015ac <_Z11thread_exitv>:

int thread_exit (){
    800015ac:	fc010113          	addi	sp,sp,-64
    800015b0:	02113c23          	sd	ra,56(sp)
    800015b4:	02813823          	sd	s0,48(sp)
    800015b8:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x12;
    800015bc:	01200793          	li	a5,18
    800015c0:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    800015c4:	fc840513          	addi	a0,s0,-56
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	e98080e7          	jalr	-360(ra) # 80001460 <_Z7syscallP4args>

    return 0;
}
    800015d0:	00000513          	li	a0,0
    800015d4:	03813083          	ld	ra,56(sp)
    800015d8:	03013403          	ld	s0,48(sp)
    800015dc:	04010113          	addi	sp,sp,64
    800015e0:	00008067          	ret

00000000800015e4 <_Z15thread_dispatchv>:


void thread_dispatch (){
    800015e4:	fc010113          	addi	sp,sp,-64
    800015e8:	02113c23          	sd	ra,56(sp)
    800015ec:	02813823          	sd	s0,48(sp)
    800015f0:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x13;
    800015f4:	01300793          	li	a5,19
    800015f8:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    800015fc:	fc840513          	addi	a0,s0,-56
    80001600:	00000097          	auipc	ra,0x0
    80001604:	e60080e7          	jalr	-416(ra) # 80001460 <_Z7syscallP4args>


}
    80001608:	03813083          	ld	ra,56(sp)
    8000160c:	03013403          	ld	s0,48(sp)
    80001610:	04010113          	addi	sp,sp,64
    80001614:	00008067          	ret

0000000080001618 <_Z11workerBodyAPv>:
uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00113c23          	sd	ra,24(sp)
    80001620:	00813823          	sd	s0,16(sp)
    80001624:	00913423          	sd	s1,8(sp)
    80001628:	01213023          	sd	s2,0(sp)
    8000162c:	02010413          	addi	s0,sp,32
void workerBodyA(void* arg) {
    80001630:	00000913          	li	s2,0
    80001634:	0380006f          	j	8000166c <_Z11workerBodyAPv+0x54>
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	fac080e7          	jalr	-84(ra) # 800015e4 <_Z15thread_dispatchv>
        printString("A: i="); printInteger(i); printString("\n");
    80001640:	00148493          	addi	s1,s1,1
    80001644:	000027b7          	lui	a5,0x2
    80001648:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000164c:	0097ee63          	bltu	a5,s1,80001668 <_Z11workerBodyAPv+0x50>
        for (uint64 j = 0; j < 10000; j++) {
    80001650:	00000713          	li	a4,0
    80001654:	000077b7          	lui	a5,0x7
    80001658:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000165c:	fce7eee3          	bltu	a5,a4,80001638 <_Z11workerBodyAPv+0x20>
    80001660:	00170713          	addi	a4,a4,1
    80001664:	ff1ff06f          	j	80001654 <_Z11workerBodyAPv+0x3c>
void workerBodyA(void* arg) {
    80001668:	00190913          	addi	s2,s2,1
    8000166c:	00900793          	li	a5,9
    80001670:	0327ec63          	bltu	a5,s2,800016a8 <_Z11workerBodyAPv+0x90>
    for (uint64 i = 0; i < 10; i++) {
    80001674:	00004517          	auipc	a0,0x4
    80001678:	98c50513          	addi	a0,a0,-1652 # 80005000 <kvmincrease+0xa80>
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	9d4080e7          	jalr	-1580(ra) # 80002050 <_Z11printStringPKc>
    80001684:	00090513          	mv	a0,s2
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	a38080e7          	jalr	-1480(ra) # 800020c0 <_Z12printIntegerm>
    80001690:	00004517          	auipc	a0,0x4
    80001694:	b8850513          	addi	a0,a0,-1144 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	9b8080e7          	jalr	-1608(ra) # 80002050 <_Z11printStringPKc>
        printString("A: i="); printInteger(i); printString("\n");
    800016a0:	00000493          	li	s1,0
    800016a4:	fa1ff06f          	j	80001644 <_Z11workerBodyAPv+0x2c>
            thread_dispatch();
        }
    }
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	96050513          	addi	a0,a0,-1696 # 80005008 <kvmincrease+0xa88>
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	9a0080e7          	jalr	-1632(ra) # 80002050 <_Z11printStringPKc>
    printString("A finished!\n");
    800016b8:	00100793          	li	a5,1
    800016bc:	00004717          	auipc	a4,0x4
    800016c0:	3cf70e23          	sb	a5,988(a4) # 80005a98 <finishedA>
    finishedA = true;
    800016c4:	01813083          	ld	ra,24(sp)
    800016c8:	01013403          	ld	s0,16(sp)
    800016cc:	00813483          	ld	s1,8(sp)
    800016d0:	00013903          	ld	s2,0(sp)
    800016d4:	02010113          	addi	sp,sp,32
    800016d8:	00008067          	ret

00000000800016dc <_Z11workerBodyBPv>:
}

    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
void workerBodyB(void* arg) {
    800016f4:	00000913          	li	s2,0
    800016f8:	0380006f          	j	80001730 <_Z11workerBodyBPv+0x54>
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	ee8080e7          	jalr	-280(ra) # 800015e4 <_Z15thread_dispatchv>
        printString("B: i="); printInteger(i); printString("\n");
    80001704:	00148493          	addi	s1,s1,1
    80001708:	000027b7          	lui	a5,0x2
    8000170c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001710:	0097ee63          	bltu	a5,s1,8000172c <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++) {
    80001714:	00000713          	li	a4,0
    80001718:	000077b7          	lui	a5,0x7
    8000171c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001720:	fce7eee3          	bltu	a5,a4,800016fc <_Z11workerBodyBPv+0x20>
    80001724:	00170713          	addi	a4,a4,1
    80001728:	ff1ff06f          	j	80001718 <_Z11workerBodyBPv+0x3c>
void workerBodyB(void* arg) {
    8000172c:	00190913          	addi	s2,s2,1
    80001730:	00f00793          	li	a5,15
    80001734:	0327ec63          	bltu	a5,s2,8000176c <_Z11workerBodyBPv+0x90>
    for (uint64 i = 0; i < 16; i++) {
    80001738:	00004517          	auipc	a0,0x4
    8000173c:	8e050513          	addi	a0,a0,-1824 # 80005018 <kvmincrease+0xa98>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	910080e7          	jalr	-1776(ra) # 80002050 <_Z11printStringPKc>
    80001748:	00090513          	mv	a0,s2
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	974080e7          	jalr	-1676(ra) # 800020c0 <_Z12printIntegerm>
    80001754:	00004517          	auipc	a0,0x4
    80001758:	ac450513          	addi	a0,a0,-1340 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	8f4080e7          	jalr	-1804(ra) # 80002050 <_Z11printStringPKc>
        printString("B: i="); printInteger(i); printString("\n");
    80001764:	00000493          	li	s1,0
    80001768:	fa1ff06f          	j	80001708 <_Z11workerBodyBPv+0x2c>
            thread_dispatch();
        }
    }
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	8b450513          	addi	a0,a0,-1868 # 80005020 <kvmincrease+0xaa0>
    80001774:	00001097          	auipc	ra,0x1
    80001778:	8dc080e7          	jalr	-1828(ra) # 80002050 <_Z11printStringPKc>
    printString("B finished!\n");
    8000177c:	00100793          	li	a5,1
    80001780:	00004717          	auipc	a4,0x4
    80001784:	30f70ca3          	sb	a5,793(a4) # 80005a99 <finishedB>
    finishedB = true;
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	e5c080e7          	jalr	-420(ra) # 800015e4 <_Z15thread_dispatchv>
    thread_dispatch();
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	00013903          	ld	s2,0(sp)
    800017a0:	02010113          	addi	sp,sp,32
    800017a4:	00008067          	ret

00000000800017a8 <_Z9fibonaccim>:

    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	01213023          	sd	s2,0(sp)
    800017bc:	02010413          	addi	s0,sp,32
    800017c0:	00050493          	mv	s1,a0
uint64 fibonacci(uint64 n) {
    800017c4:	00100793          	li	a5,1
    800017c8:	02a7f863          	bgeu	a5,a0,800017f8 <_Z9fibonaccim+0x50>
    if (n == 0 || n == 1) { return n; }
    800017cc:	00a00793          	li	a5,10
    800017d0:	02f577b3          	remu	a5,a0,a5
    800017d4:	02078e63          	beqz	a5,80001810 <_Z9fibonaccim+0x68>
    if (n % 10 == 0) { thread_dispatch(); }
    800017d8:	fff48513          	addi	a0,s1,-1
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	fcc080e7          	jalr	-52(ra) # 800017a8 <_Z9fibonaccim>
    800017e4:	00050913          	mv	s2,a0
    800017e8:	ffe48513          	addi	a0,s1,-2
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	fbc080e7          	jalr	-68(ra) # 800017a8 <_Z9fibonaccim>
    800017f4:	00a90533          	add	a0,s2,a0
    return fibonacci(n - 1) + fibonacci(n - 2);
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	00013903          	ld	s2,0(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret
    if (n == 0 || n == 1) { return n; }
    80001810:	00000097          	auipc	ra,0x0
    80001814:	dd4080e7          	jalr	-556(ra) # 800015e4 <_Z15thread_dispatchv>
    80001818:	fc1ff06f          	j	800017d8 <_Z9fibonaccim+0x30>

000000008000181c <_Z11workerBodyCPv>:
}

    8000181c:	fe010113          	addi	sp,sp,-32
    80001820:	00113c23          	sd	ra,24(sp)
    80001824:	00813823          	sd	s0,16(sp)
    80001828:	00913423          	sd	s1,8(sp)
    8000182c:	01213023          	sd	s2,0(sp)
    80001830:	02010413          	addi	s0,sp,32
void workerBodyC(void* arg) {
    80001834:	00000493          	li	s1,0
    80001838:	0380006f          	j	80001870 <_Z11workerBodyCPv+0x54>
    uint8 i = 0;
    for (; i < 3; i++) {
    8000183c:	00003517          	auipc	a0,0x3
    80001840:	7f450513          	addi	a0,a0,2036 # 80005030 <kvmincrease+0xab0>
    80001844:	00001097          	auipc	ra,0x1
    80001848:	80c080e7          	jalr	-2036(ra) # 80002050 <_Z11printStringPKc>
    8000184c:	00048513          	mv	a0,s1
    80001850:	00001097          	auipc	ra,0x1
    80001854:	870080e7          	jalr	-1936(ra) # 800020c0 <_Z12printIntegerm>
    80001858:	00004517          	auipc	a0,0x4
    8000185c:	9c050513          	addi	a0,a0,-1600 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001860:	00000097          	auipc	ra,0x0
    80001864:	7f0080e7          	jalr	2032(ra) # 80002050 <_Z11printStringPKc>
    uint8 i = 0;
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	0ff4f493          	andi	s1,s1,255
    80001870:	00200793          	li	a5,2
    80001874:	fc97f4e3          	bgeu	a5,s1,8000183c <_Z11workerBodyCPv+0x20>
        printString("C: i="); printInteger(i); printString("\n");
    }

    80001878:	00003517          	auipc	a0,0x3
    8000187c:	7c050513          	addi	a0,a0,1984 # 80005038 <kvmincrease+0xab8>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	7d0080e7          	jalr	2000(ra) # 80002050 <_Z11printStringPKc>
    printString("C: dispatch\n");
    80001888:	00700313          	li	t1,7
    __asm__ ("li t1, 7");
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	d58080e7          	jalr	-680(ra) # 800015e4 <_Z15thread_dispatchv>
    thread_dispatch();

    uint64 t1 = 0;
    80001894:	00030913          	mv	s2,t1
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    80001898:	00003517          	auipc	a0,0x3
    8000189c:	7b050513          	addi	a0,a0,1968 # 80005048 <kvmincrease+0xac8>
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	7b0080e7          	jalr	1968(ra) # 80002050 <_Z11printStringPKc>
    800018a8:	00090513          	mv	a0,s2
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	814080e7          	jalr	-2028(ra) # 800020c0 <_Z12printIntegerm>
    800018b4:	00004517          	auipc	a0,0x4
    800018b8:	96450513          	addi	a0,a0,-1692 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	794080e7          	jalr	1940(ra) # 80002050 <_Z11printStringPKc>
    printString("C: t1="); printInteger(t1); printString("\n");

    800018c4:	00c00513          	li	a0,12
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	ee0080e7          	jalr	-288(ra) # 800017a8 <_Z9fibonaccim>
    800018d0:	00050913          	mv	s2,a0
    uint64 result = fibonacci(12);
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	77c50513          	addi	a0,a0,1916 # 80005050 <kvmincrease+0xad0>
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	774080e7          	jalr	1908(ra) # 80002050 <_Z11printStringPKc>
    800018e4:	00090513          	mv	a0,s2
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	7d8080e7          	jalr	2008(ra) # 800020c0 <_Z12printIntegerm>
    800018f0:	00004517          	auipc	a0,0x4
    800018f4:	92850513          	addi	a0,a0,-1752 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	758080e7          	jalr	1880(ra) # 80002050 <_Z11printStringPKc>
    80001900:	0380006f          	j	80001938 <_Z11workerBodyCPv+0x11c>
    printString("C: fibonaci="); printInteger(result); printString("\n");

    for (; i < 6; i++) {
    80001904:	00003517          	auipc	a0,0x3
    80001908:	72c50513          	addi	a0,a0,1836 # 80005030 <kvmincrease+0xab0>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	744080e7          	jalr	1860(ra) # 80002050 <_Z11printStringPKc>
    80001914:	00048513          	mv	a0,s1
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	7a8080e7          	jalr	1960(ra) # 800020c0 <_Z12printIntegerm>
    80001920:	00004517          	auipc	a0,0x4
    80001924:	8f850513          	addi	a0,a0,-1800 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	728080e7          	jalr	1832(ra) # 80002050 <_Z11printStringPKc>

    80001930:	0014849b          	addiw	s1,s1,1
    80001934:	0ff4f493          	andi	s1,s1,255
    80001938:	00500793          	li	a5,5
    8000193c:	fc97f4e3          	bgeu	a5,s1,80001904 <_Z11workerBodyCPv+0xe8>
        printString("C: i="); printInteger(i); printString("\n");
    }

    80001940:	00003517          	auipc	a0,0x3
    80001944:	6c850513          	addi	a0,a0,1736 # 80005008 <kvmincrease+0xa88>
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	708080e7          	jalr	1800(ra) # 80002050 <_Z11printStringPKc>
    printString("A finished!\n");
    80001950:	00100793          	li	a5,1
    80001954:	00004717          	auipc	a4,0x4
    80001958:	14f70323          	sb	a5,326(a4) # 80005a9a <finishedC>
    finishedC = true;
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	c88080e7          	jalr	-888(ra) # 800015e4 <_Z15thread_dispatchv>
    thread_dispatch();
    80001964:	01813083          	ld	ra,24(sp)
    80001968:	01013403          	ld	s0,16(sp)
    8000196c:	00813483          	ld	s1,8(sp)
    80001970:	00013903          	ld	s2,0(sp)
    80001974:	02010113          	addi	sp,sp,32
    80001978:	00008067          	ret

000000008000197c <_Z11workerBodyDPv>:
}

    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00913423          	sd	s1,8(sp)
    8000198c:	01213023          	sd	s2,0(sp)
    80001990:	02010413          	addi	s0,sp,32
void workerBodyD(void* arg) {
    80001994:	00a00493          	li	s1,10
    80001998:	0380006f          	j	800019d0 <_Z11workerBodyDPv+0x54>
    uint8 i = 10;
    for (; i < 13; i++) {
    8000199c:	00003517          	auipc	a0,0x3
    800019a0:	6c450513          	addi	a0,a0,1732 # 80005060 <kvmincrease+0xae0>
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	6ac080e7          	jalr	1708(ra) # 80002050 <_Z11printStringPKc>
    800019ac:	00048513          	mv	a0,s1
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	710080e7          	jalr	1808(ra) # 800020c0 <_Z12printIntegerm>
    800019b8:	00004517          	auipc	a0,0x4
    800019bc:	86050513          	addi	a0,a0,-1952 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	690080e7          	jalr	1680(ra) # 80002050 <_Z11printStringPKc>
    uint8 i = 10;
    800019c8:	0014849b          	addiw	s1,s1,1
    800019cc:	0ff4f493          	andi	s1,s1,255
    800019d0:	00c00793          	li	a5,12
    800019d4:	fc97f4e3          	bgeu	a5,s1,8000199c <_Z11workerBodyDPv+0x20>
        printString("D: i="); printInteger(i); printString("\n");
    }

    800019d8:	00003517          	auipc	a0,0x3
    800019dc:	69050513          	addi	a0,a0,1680 # 80005068 <kvmincrease+0xae8>
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	670080e7          	jalr	1648(ra) # 80002050 <_Z11printStringPKc>
    printString("D: dispatch\n");
    800019e8:	00500313          	li	t1,5
    __asm__ ("li t1, 5");
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	bf8080e7          	jalr	-1032(ra) # 800015e4 <_Z15thread_dispatchv>
    thread_dispatch();

    800019f4:	01000513          	li	a0,16
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	db0080e7          	jalr	-592(ra) # 800017a8 <_Z9fibonaccim>
    80001a00:	00050913          	mv	s2,a0
    uint64 result = fibonacci(16);
    80001a04:	00003517          	auipc	a0,0x3
    80001a08:	67450513          	addi	a0,a0,1652 # 80005078 <kvmincrease+0xaf8>
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	644080e7          	jalr	1604(ra) # 80002050 <_Z11printStringPKc>
    80001a14:	00090513          	mv	a0,s2
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	6a8080e7          	jalr	1704(ra) # 800020c0 <_Z12printIntegerm>
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	7f850513          	addi	a0,a0,2040 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	628080e7          	jalr	1576(ra) # 80002050 <_Z11printStringPKc>
    80001a30:	0380006f          	j	80001a68 <_Z11workerBodyDPv+0xec>
    printString("D: fibonaci="); printInteger(result); printString("\n");

    for (; i < 16; i++) {
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	62c50513          	addi	a0,a0,1580 # 80005060 <kvmincrease+0xae0>
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	614080e7          	jalr	1556(ra) # 80002050 <_Z11printStringPKc>
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	678080e7          	jalr	1656(ra) # 800020c0 <_Z12printIntegerm>
    80001a50:	00003517          	auipc	a0,0x3
    80001a54:	7c850513          	addi	a0,a0,1992 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	5f8080e7          	jalr	1528(ra) # 80002050 <_Z11printStringPKc>

    80001a60:	0014849b          	addiw	s1,s1,1
    80001a64:	0ff4f493          	andi	s1,s1,255
    80001a68:	00f00793          	li	a5,15
    80001a6c:	fc97f4e3          	bgeu	a5,s1,80001a34 <_Z11workerBodyDPv+0xb8>
        printString("D: i="); printInteger(i); printString("\n");
    }

    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	61850513          	addi	a0,a0,1560 # 80005088 <kvmincrease+0xb08>
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	5d8080e7          	jalr	1496(ra) # 80002050 <_Z11printStringPKc>
    printString("D finished!\n");
    80001a80:	00100793          	li	a5,1
    80001a84:	00004717          	auipc	a4,0x4
    80001a88:	00f70ba3          	sb	a5,23(a4) # 80005a9b <finishedD>
    finishedD = true;
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	b58080e7          	jalr	-1192(ra) # 800015e4 <_Z15thread_dispatchv>
    thread_dispatch();
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	00013903          	ld	s2,0(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret

0000000080001aac <_Z18Threads_C_API_testv>:
}


    80001aac:	fd010113          	addi	sp,sp,-48
    80001ab0:	02113423          	sd	ra,40(sp)
    80001ab4:	02813023          	sd	s0,32(sp)
    80001ab8:	03010413          	addi	s0,sp,48
void Threads_C_API_test() {
    thread_t threads[4];
    80001abc:	00000613          	li	a2,0
    80001ac0:	00000597          	auipc	a1,0x0
    80001ac4:	b5858593          	addi	a1,a1,-1192 # 80001618 <_Z11workerBodyAPv>
    80001ac8:	fd040513          	addi	a0,s0,-48
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	a64080e7          	jalr	-1436(ra) # 80001530 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threads[0], workerBodyA, nullptr);
    80001ad4:	00003517          	auipc	a0,0x3
    80001ad8:	5c450513          	addi	a0,a0,1476 # 80005098 <kvmincrease+0xb18>
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	574080e7          	jalr	1396(ra) # 80002050 <_Z11printStringPKc>
    printString("ThreadA created\n");

    80001ae4:	00000613          	li	a2,0
    80001ae8:	00000597          	auipc	a1,0x0
    80001aec:	bf458593          	addi	a1,a1,-1036 # 800016dc <_Z11workerBodyBPv>
    80001af0:	fd840513          	addi	a0,s0,-40
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	a3c080e7          	jalr	-1476(ra) # 80001530 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threads[1], workerBodyB, nullptr);
    80001afc:	00003517          	auipc	a0,0x3
    80001b00:	5b450513          	addi	a0,a0,1460 # 800050b0 <kvmincrease+0xb30>
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	54c080e7          	jalr	1356(ra) # 80002050 <_Z11printStringPKc>
    printString("ThreadB created\n");

    80001b0c:	00000613          	li	a2,0
    80001b10:	00000597          	auipc	a1,0x0
    80001b14:	d0c58593          	addi	a1,a1,-756 # 8000181c <_Z11workerBodyCPv>
    80001b18:	fe040513          	addi	a0,s0,-32
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	a14080e7          	jalr	-1516(ra) # 80001530 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threads[2], workerBodyC, nullptr);
    80001b24:	00003517          	auipc	a0,0x3
    80001b28:	5a450513          	addi	a0,a0,1444 # 800050c8 <kvmincrease+0xb48>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	524080e7          	jalr	1316(ra) # 80002050 <_Z11printStringPKc>
    printString("ThreadC created\n");

    80001b34:	00000613          	li	a2,0
    80001b38:	00000597          	auipc	a1,0x0
    80001b3c:	e4458593          	addi	a1,a1,-444 # 8000197c <_Z11workerBodyDPv>
    80001b40:	fe840513          	addi	a0,s0,-24
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	9ec080e7          	jalr	-1556(ra) # 80001530 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threads[3], workerBodyD, nullptr);
    80001b4c:	00003517          	auipc	a0,0x3
    80001b50:	59450513          	addi	a0,a0,1428 # 800050e0 <kvmincrease+0xb60>
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	4fc080e7          	jalr	1276(ra) # 80002050 <_Z11printStringPKc>
    80001b5c:	00c0006f          	j	80001b68 <_Z18Threads_C_API_testv+0xbc>
    printString("ThreadD created\n");

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	a84080e7          	jalr	-1404(ra) # 800015e4 <_Z15thread_dispatchv>

    80001b68:	00004797          	auipc	a5,0x4
    80001b6c:	f307c783          	lbu	a5,-208(a5) # 80005a98 <finishedA>
    80001b70:	fe0788e3          	beqz	a5,80001b60 <_Z18Threads_C_API_testv+0xb4>
    80001b74:	00004797          	auipc	a5,0x4
    80001b78:	f257c783          	lbu	a5,-219(a5) # 80005a99 <finishedB>
    80001b7c:	fe0782e3          	beqz	a5,80001b60 <_Z18Threads_C_API_testv+0xb4>
    80001b80:	00004797          	auipc	a5,0x4
    80001b84:	f1a7c783          	lbu	a5,-230(a5) # 80005a9a <finishedC>
    80001b88:	fc078ce3          	beqz	a5,80001b60 <_Z18Threads_C_API_testv+0xb4>
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	f0f7c783          	lbu	a5,-241(a5) # 80005a9b <finishedD>
    80001b94:	fc0786e3          	beqz	a5,80001b60 <_Z18Threads_C_API_testv+0xb4>
        thread_dispatch();
    }

    80001b98:	02813083          	ld	ra,40(sp)
    80001b9c:	02013403          	ld	s0,32(sp)
    80001ba0:	03010113          	addi	sp,sp,48
    80001ba4:	00008067          	ret

0000000080001ba8 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001ba8:	ff010113          	addi	sp,sp,-16
    80001bac:	00113423          	sd	ra,8(sp)
    80001bb0:	00813023          	sd	s0,0(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	ef4080e7          	jalr	-268(ra) # 80001aac <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00100793          	li	a5,1
    80001be0:	00f50863          	beq	a0,a5,80001bf0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001be4:	00813403          	ld	s0,8(sp)
    80001be8:	01010113          	addi	sp,sp,16
    80001bec:	00008067          	ret
    80001bf0:	000107b7          	lui	a5,0x10
    80001bf4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bf8:	fef596e3          	bne	a1,a5,80001be4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001bfc:	00004797          	auipc	a5,0x4
    80001c00:	ea478793          	addi	a5,a5,-348 # 80005aa0 <_ZN9Scheduler16readyThreadQueueE>
    80001c04:	0007b023          	sd	zero,0(a5)
    80001c08:	0007b423          	sd	zero,8(a5)
    80001c0c:	fd9ff06f          	j	80001be4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c10 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001c10:	fe010113          	addi	sp,sp,-32
    80001c14:	00113c23          	sd	ra,24(sp)
    80001c18:	00813823          	sd	s0,16(sp)
    80001c1c:	00913423          	sd	s1,8(sp)
    80001c20:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001c24:	00004517          	auipc	a0,0x4
    80001c28:	e7c53503          	ld	a0,-388(a0) # 80005aa0 <_ZN9Scheduler16readyThreadQueueE>
    80001c2c:	04050263          	beqz	a0,80001c70 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001c30:	00853783          	ld	a5,8(a0)
    80001c34:	00004717          	auipc	a4,0x4
    80001c38:	e6f73623          	sd	a5,-404(a4) # 80005aa0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001c3c:	02078463          	beqz	a5,80001c64 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001c40:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	3e4080e7          	jalr	996(ra) # 80002028 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	01813083          	ld	ra,24(sp)
    80001c54:	01013403          	ld	s0,16(sp)
    80001c58:	00813483          	ld	s1,8(sp)
    80001c5c:	02010113          	addi	sp,sp,32
    80001c60:	00008067          	ret
        if (!head) { tail = 0; }
    80001c64:	00004797          	auipc	a5,0x4
    80001c68:	e407b223          	sd	zero,-444(a5) # 80005aa8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c6c:	fd5ff06f          	j	80001c40 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001c70:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001c74:	fd9ff06f          	j	80001c4c <_ZN9Scheduler3getEv+0x3c>

0000000080001c78 <_ZN9Scheduler3putEP7_thread>:
{
    80001c78:	fe010113          	addi	sp,sp,-32
    80001c7c:	00113c23          	sd	ra,24(sp)
    80001c80:	00813823          	sd	s0,16(sp)
    80001c84:	00913423          	sd	s1,8(sp)
    80001c88:	02010413          	addi	s0,sp,32
    80001c8c:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001c90:	01000513          	li	a0,16
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	36c080e7          	jalr	876(ra) # 80002000 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001c9c:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001ca0:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ca4:	00004797          	auipc	a5,0x4
    80001ca8:	e047b783          	ld	a5,-508(a5) # 80005aa8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001cac:	02078263          	beqz	a5,80001cd0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001cb0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	dea7ba23          	sd	a0,-524(a5) # 80005aa8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00813483          	ld	s1,8(sp)
    80001cc8:	02010113          	addi	sp,sp,32
    80001ccc:	00008067          	ret
            head = tail = elem;
    80001cd0:	00004797          	auipc	a5,0x4
    80001cd4:	dd078793          	addi	a5,a5,-560 # 80005aa0 <_ZN9Scheduler16readyThreadQueueE>
    80001cd8:	00a7b423          	sd	a0,8(a5)
    80001cdc:	00a7b023          	sd	a0,0(a5)
    80001ce0:	fddff06f          	j	80001cbc <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001ce4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00113423          	sd	ra,8(sp)
    80001cec:	00813023          	sd	s0,0(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    80001cf4:	000105b7          	lui	a1,0x10
    80001cf8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001cfc:	00100513          	li	a0,1
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	ed0080e7          	jalr	-304(ra) # 80001bd0 <_Z41__static_initialization_and_destruction_0ii>
    80001d08:	00813083          	ld	ra,8(sp)
    80001d0c:	00013403          	ld	s0,0(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00113423          	sd	ra,8(sp)
    80001d20:	00813023          	sd	s0,0(sp)
    80001d24:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001d28:	fffff097          	auipc	ra,0xfffff
    80001d2c:	77c080e7          	jalr	1916(ra) # 800014a4 <_Z9mem_allocm>
}
    80001d30:	00813083          	ld	ra,8(sp)
    80001d34:	00013403          	ld	s0,0(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_Znam>:

void* operator new[](size_t n){
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00113423          	sd	ra,8(sp)
    80001d48:	00813023          	sd	s0,0(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001d50:	fffff097          	auipc	ra,0xfffff
    80001d54:	754080e7          	jalr	1876(ra) # 800014a4 <_Z9mem_allocm>
}
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00113423          	sd	ra,8(sp)
    80001d70:	00813023          	sd	s0,0(sp)
    80001d74:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	778080e7          	jalr	1912(ra) # 800014f0 <_Z8mem_freePv>
}
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	750080e7          	jalr	1872(ra) # 800014f0 <_Z8mem_freePv>

}
    80001da8:	00813083          	ld	ra,8(sp)
    80001dac:	00013403          	ld	s0,0(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_ZN5Riscv10popSppSpieEv>:




void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001dc4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001dc8:	10200073          	sret
}
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001dd8:	f6010113          	addi	sp,sp,-160
    80001ddc:	08113c23          	sd	ra,152(sp)
    80001de0:	08813823          	sd	s0,144(sp)
    80001de4:	08913423          	sd	s1,136(sp)
    80001de8:	09213023          	sd	s2,128(sp)
    80001dec:	07313c23          	sd	s3,120(sp)
    80001df0:	07413823          	sd	s4,112(sp)
    80001df4:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001df8:	142027f3          	csrr	a5,scause
    80001dfc:	f6f43423          	sd	a5,-152(s0)
    return scause;
    80001e00:	f6843783          	ld	a5,-152(s0)
    uint scause = r_scause();
    80001e04:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
//    uint64 arg0;
    uint64 arg1;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001e08:	00050493          	mv	s1,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001e0c:	ff87879b          	addiw	a5,a5,-8
    80001e10:	00100713          	li	a4,1
    80001e14:	02f77263          	bgeu	a4,a5,80001e38 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001e18:	09813083          	ld	ra,152(sp)
    80001e1c:	09013403          	ld	s0,144(sp)
    80001e20:	08813483          	ld	s1,136(sp)
    80001e24:	08013903          	ld	s2,128(sp)
    80001e28:	07813983          	ld	s3,120(sp)
    80001e2c:	07013a03          	ld	s4,112(sp)
    80001e30:	0a010113          	addi	sp,sp,160
    80001e34:	00008067          	ret
        if(a0reg==0x04){
    80001e38:	00400793          	li	a5,4
    80001e3c:	06f48463          	beq	s1,a5,80001ea4 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
        else if(a0reg==0x11){
    80001e40:	01100793          	li	a5,17
    80001e44:	08f48e63          	beq	s1,a5,80001ee0 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        if(a0reg== 0x01 ){
    80001e48:	00100793          	li	a5,1
    80001e4c:	0ef48e63          	beq	s1,a5,80001f48 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
        else if(a0reg==0x02){
    80001e50:	00200793          	li	a5,2
    80001e54:	12f48863          	beq	s1,a5,80001f84 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
        else if(a0reg==0x12){
    80001e58:	01200793          	li	a5,18
    80001e5c:	16f48063          	beq	s1,a5,80001fbc <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if(a0reg == 0x13){
    80001e60:	01300793          	li	a5,19
    80001e64:	faf49ae3          	bne	s1,a5,80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e68:	141027f3          	csrr	a5,sepc
    80001e6c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001e70:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001e74:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e78:	100027f3          	csrr	a5,sstatus
    80001e7c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001e80:	fc043903          	ld	s2,-64(s0)
            _thread::timeSliceCounter = 0;
    80001e84:	00004797          	auipc	a5,0x4
    80001e88:	ba47b783          	ld	a5,-1116(a5) # 80005a28 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e8c:	0007b023          	sd	zero,0(a5)
            _thread::yield();
    80001e90:	fffff097          	auipc	ra,0xfffff
    80001e94:	354080e7          	jalr	852(ra) # 800011e4 <_ZN7_thread5yieldEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e98:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e9c:	14149073          	csrw	sepc,s1
}
    80001ea0:	f79ff06f          	j	80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ea4:	141027f3          	csrr	a5,sepc
    80001ea8:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80001eac:	f7843903          	ld	s2,-136(s0)
            uint64 sepc = r_sepc() + 4;
    80001eb0:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001eb4:	100027f3          	csrr	a5,sstatus
    80001eb8:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80001ebc:	f7043983          	ld	s3,-144(s0)
            _thread::timeSliceCounter = 0;
    80001ec0:	00004797          	auipc	a5,0x4
    80001ec4:	b687b783          	ld	a5,-1176(a5) # 80005a28 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ec8:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	398080e7          	jalr	920(ra) # 80001264 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ed4:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ed8:	14191073          	csrw	sepc,s2
}
    80001edc:	f6dff06f          	j	80001e48 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ee0:	141027f3          	csrr	a5,sepc
    80001ee4:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001ee8:	f8843903          	ld	s2,-120(s0)
            uint64 sepc = r_sepc() + 4;
    80001eec:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ef0:	100027f3          	csrr	a5,sstatus
    80001ef4:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001ef8:	f8043983          	ld	s3,-128(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001efc:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001f00:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001f04:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001f08:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001f0c:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001f10:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001f14:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001f18:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	428080e7          	jalr	1064(ra) # 80001344 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80001f24:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80001f28:	00050c63          	beqz	a0,80001f40 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
    80001f2c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001f30:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f34:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f38:	14191073          	csrw	sepc,s2
}
    80001f3c:	f0dff06f          	j	80001e48 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            else ret =-1;
    80001f40:	fff00793          	li	a5,-1
    80001f44:	fedff06f          	j	80001f30 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f48:	141027f3          	csrr	a5,sepc
    80001f4c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80001f50:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    80001f54:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f58:	100027f3          	csrr	a5,sstatus
    80001f5c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80001f60:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001f64:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    80001f68:	00651513          	slli	a0,a0,0x6
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	094080e7          	jalr	148(ra) # 80002000 <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001f74:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f78:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f7c:	14149073          	csrw	sepc,s1
}
    80001f80:	e99ff06f          	j	80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f84:	141027f3          	csrr	a5,sepc
    80001f88:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001f8c:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001f90:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f94:	100027f3          	csrr	a5,sstatus
    80001f98:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001f9c:	fa043903          	ld	s2,-96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001fa0:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	084080e7          	jalr	132(ra) # 80002028 <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001fac:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001fb0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001fb4:	14149073          	csrw	sepc,s1
}
    80001fb8:	e61ff06f          	j	80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001fbc:	141027f3          	csrr	a5,sepc
    80001fc0:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001fc4:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001fc8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fcc:	100027f3          	csrr	a5,sstatus
    80001fd0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001fd4:	fb043903          	ld	s2,-80(s0)
            _thread::running->finished=true;
    80001fd8:	00004797          	auipc	a5,0x4
    80001fdc:	a387b783          	ld	a5,-1480(a5) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001fe0:	0007b783          	ld	a5,0(a5)
    80001fe4:	00100713          	li	a4,1
    80001fe8:	02e78423          	sb	a4,40(a5)
            _thread::yield();
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	1f8080e7          	jalr	504(ra) # 800011e4 <_ZN7_thread5yieldEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ff4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ff8:	14149073          	csrw	sepc,s1
}
    80001ffc:	e1dff06f          	j	80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x40>

0000000080002000 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80002010:	00002097          	auipc	ra,0x2
    80002014:	2f8080e7          	jalr	760(ra) # 80004308 <__mem_alloc>
}
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00113423          	sd	ra,8(sp)
    80002030:	00813023          	sd	s0,0(sp)
    80002034:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80002038:	00002097          	auipc	ra,0x2
    8000203c:	204080e7          	jalr	516(ra) # 8000423c <__mem_free>
    80002040:	00813083          	ld	ra,8(sp)
    80002044:	00013403          	ld	s0,0(sp)
    80002048:	01010113          	addi	sp,sp,16
    8000204c:	00008067          	ret

0000000080002050 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002050:	fd010113          	addi	sp,sp,-48
    80002054:	02113423          	sd	ra,40(sp)
    80002058:	02813023          	sd	s0,32(sp)
    8000205c:	00913c23          	sd	s1,24(sp)
    80002060:	01213823          	sd	s2,16(sp)
    80002064:	03010413          	addi	s0,sp,48
    80002068:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000206c:	100027f3          	csrr	a5,sstatus
    80002070:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002074:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002078:	00200793          	li	a5,2
    8000207c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80002080:	0004c503          	lbu	a0,0(s1)
    80002084:	00050a63          	beqz	a0,80002098 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002088:	00002097          	auipc	ra,0x2
    8000208c:	3d8080e7          	jalr	984(ra) # 80004460 <__putc>
        string++;
    80002090:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002094:	fedff06f          	j	80002080 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80002098:	0009091b          	sext.w	s2,s2
    8000209c:	00297913          	andi	s2,s2,2
    800020a0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800020a4:	10092073          	csrs	sstatus,s2
}
    800020a8:	02813083          	ld	ra,40(sp)
    800020ac:	02013403          	ld	s0,32(sp)
    800020b0:	01813483          	ld	s1,24(sp)
    800020b4:	01013903          	ld	s2,16(sp)
    800020b8:	03010113          	addi	sp,sp,48
    800020bc:	00008067          	ret

00000000800020c0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800020c0:	fc010113          	addi	sp,sp,-64
    800020c4:	02113c23          	sd	ra,56(sp)
    800020c8:	02813823          	sd	s0,48(sp)
    800020cc:	02913423          	sd	s1,40(sp)
    800020d0:	03213023          	sd	s2,32(sp)
    800020d4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020d8:	100027f3          	csrr	a5,sstatus
    800020dc:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800020e0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800020e4:	00200793          	li	a5,2
    800020e8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800020ec:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800020f0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800020f4:	00a00613          	li	a2,10
    800020f8:	02c5773b          	remuw	a4,a0,a2
    800020fc:	02071693          	slli	a3,a4,0x20
    80002100:	0206d693          	srli	a3,a3,0x20
    80002104:	00003717          	auipc	a4,0x3
    80002108:	ff470713          	addi	a4,a4,-12 # 800050f8 <_ZZ12printIntegermE6digits>
    8000210c:	00d70733          	add	a4,a4,a3
    80002110:	00074703          	lbu	a4,0(a4)
    80002114:	fe040693          	addi	a3,s0,-32
    80002118:	009687b3          	add	a5,a3,s1
    8000211c:	0014849b          	addiw	s1,s1,1
    80002120:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002124:	0005071b          	sext.w	a4,a0
    80002128:	02c5553b          	divuw	a0,a0,a2
    8000212c:	00900793          	li	a5,9
    80002130:	fce7e2e3          	bltu	a5,a4,800020f4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002134:	fff4849b          	addiw	s1,s1,-1
    80002138:	0004ce63          	bltz	s1,80002154 <_Z12printIntegerm+0x94>
    8000213c:	fe040793          	addi	a5,s0,-32
    80002140:	009787b3          	add	a5,a5,s1
    80002144:	ff07c503          	lbu	a0,-16(a5)
    80002148:	00002097          	auipc	ra,0x2
    8000214c:	318080e7          	jalr	792(ra) # 80004460 <__putc>
    80002150:	fe5ff06f          	j	80002134 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002154:	0009091b          	sext.w	s2,s2
    80002158:	00297913          	andi	s2,s2,2
    8000215c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002160:	10092073          	csrs	sstatus,s2
}
    80002164:	03813083          	ld	ra,56(sp)
    80002168:	03013403          	ld	s0,48(sp)
    8000216c:	02813483          	ld	s1,40(sp)
    80002170:	02013903          	ld	s2,32(sp)
    80002174:	04010113          	addi	sp,sp,64
    80002178:	00008067          	ret

000000008000217c <start>:
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
    80002188:	300027f3          	csrr	a5,mstatus
    8000218c:	ffffe737          	lui	a4,0xffffe
    80002190:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7adf>
    80002194:	00e7f7b3          	and	a5,a5,a4
    80002198:	00001737          	lui	a4,0x1
    8000219c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800021a0:	00e7e7b3          	or	a5,a5,a4
    800021a4:	30079073          	csrw	mstatus,a5
    800021a8:	00000797          	auipc	a5,0x0
    800021ac:	16078793          	addi	a5,a5,352 # 80002308 <system_main>
    800021b0:	34179073          	csrw	mepc,a5
    800021b4:	00000793          	li	a5,0
    800021b8:	18079073          	csrw	satp,a5
    800021bc:	000107b7          	lui	a5,0x10
    800021c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021c4:	30279073          	csrw	medeleg,a5
    800021c8:	30379073          	csrw	mideleg,a5
    800021cc:	104027f3          	csrr	a5,sie
    800021d0:	2227e793          	ori	a5,a5,546
    800021d4:	10479073          	csrw	sie,a5
    800021d8:	fff00793          	li	a5,-1
    800021dc:	00a7d793          	srli	a5,a5,0xa
    800021e0:	3b079073          	csrw	pmpaddr0,a5
    800021e4:	00f00793          	li	a5,15
    800021e8:	3a079073          	csrw	pmpcfg0,a5
    800021ec:	f14027f3          	csrr	a5,mhartid
    800021f0:	0200c737          	lui	a4,0x200c
    800021f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021f8:	0007869b          	sext.w	a3,a5
    800021fc:	00269713          	slli	a4,a3,0x2
    80002200:	000f4637          	lui	a2,0xf4
    80002204:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002208:	00d70733          	add	a4,a4,a3
    8000220c:	0037979b          	slliw	a5,a5,0x3
    80002210:	020046b7          	lui	a3,0x2004
    80002214:	00d787b3          	add	a5,a5,a3
    80002218:	00c585b3          	add	a1,a1,a2
    8000221c:	00371693          	slli	a3,a4,0x3
    80002220:	00004717          	auipc	a4,0x4
    80002224:	89070713          	addi	a4,a4,-1904 # 80005ab0 <timer_scratch>
    80002228:	00b7b023          	sd	a1,0(a5)
    8000222c:	00d70733          	add	a4,a4,a3
    80002230:	00f73c23          	sd	a5,24(a4)
    80002234:	02c73023          	sd	a2,32(a4)
    80002238:	34071073          	csrw	mscratch,a4
    8000223c:	00000797          	auipc	a5,0x0
    80002240:	6e478793          	addi	a5,a5,1764 # 80002920 <timervec>
    80002244:	30579073          	csrw	mtvec,a5
    80002248:	300027f3          	csrr	a5,mstatus
    8000224c:	0087e793          	ori	a5,a5,8
    80002250:	30079073          	csrw	mstatus,a5
    80002254:	304027f3          	csrr	a5,mie
    80002258:	0807e793          	ori	a5,a5,128
    8000225c:	30479073          	csrw	mie,a5
    80002260:	f14027f3          	csrr	a5,mhartid
    80002264:	0007879b          	sext.w	a5,a5
    80002268:	00078213          	mv	tp,a5
    8000226c:	30200073          	mret
    80002270:	00813403          	ld	s0,8(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <timerinit>:
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00813423          	sd	s0,8(sp)
    80002284:	01010413          	addi	s0,sp,16
    80002288:	f14027f3          	csrr	a5,mhartid
    8000228c:	0200c737          	lui	a4,0x200c
    80002290:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002294:	0007869b          	sext.w	a3,a5
    80002298:	00269713          	slli	a4,a3,0x2
    8000229c:	000f4637          	lui	a2,0xf4
    800022a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022a4:	00d70733          	add	a4,a4,a3
    800022a8:	0037979b          	slliw	a5,a5,0x3
    800022ac:	020046b7          	lui	a3,0x2004
    800022b0:	00d787b3          	add	a5,a5,a3
    800022b4:	00c585b3          	add	a1,a1,a2
    800022b8:	00371693          	slli	a3,a4,0x3
    800022bc:	00003717          	auipc	a4,0x3
    800022c0:	7f470713          	addi	a4,a4,2036 # 80005ab0 <timer_scratch>
    800022c4:	00b7b023          	sd	a1,0(a5)
    800022c8:	00d70733          	add	a4,a4,a3
    800022cc:	00f73c23          	sd	a5,24(a4)
    800022d0:	02c73023          	sd	a2,32(a4)
    800022d4:	34071073          	csrw	mscratch,a4
    800022d8:	00000797          	auipc	a5,0x0
    800022dc:	64878793          	addi	a5,a5,1608 # 80002920 <timervec>
    800022e0:	30579073          	csrw	mtvec,a5
    800022e4:	300027f3          	csrr	a5,mstatus
    800022e8:	0087e793          	ori	a5,a5,8
    800022ec:	30079073          	csrw	mstatus,a5
    800022f0:	304027f3          	csrr	a5,mie
    800022f4:	0807e793          	ori	a5,a5,128
    800022f8:	30479073          	csrw	mie,a5
    800022fc:	00813403          	ld	s0,8(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <system_main>:
    80002308:	fe010113          	addi	sp,sp,-32
    8000230c:	00813823          	sd	s0,16(sp)
    80002310:	00913423          	sd	s1,8(sp)
    80002314:	00113c23          	sd	ra,24(sp)
    80002318:	02010413          	addi	s0,sp,32
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	0c4080e7          	jalr	196(ra) # 800023e0 <cpuid>
    80002324:	00003497          	auipc	s1,0x3
    80002328:	72c48493          	addi	s1,s1,1836 # 80005a50 <started>
    8000232c:	02050263          	beqz	a0,80002350 <system_main+0x48>
    80002330:	0004a783          	lw	a5,0(s1)
    80002334:	0007879b          	sext.w	a5,a5
    80002338:	fe078ce3          	beqz	a5,80002330 <system_main+0x28>
    8000233c:	0ff0000f          	fence
    80002340:	00003517          	auipc	a0,0x3
    80002344:	df850513          	addi	a0,a0,-520 # 80005138 <_ZZ12printIntegermE6digits+0x40>
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	a74080e7          	jalr	-1420(ra) # 80002dbc <panic>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	9c8080e7          	jalr	-1592(ra) # 80002d18 <consoleinit>
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	154080e7          	jalr	340(ra) # 800034ac <printfinit>
    80002360:	00003517          	auipc	a0,0x3
    80002364:	eb850513          	addi	a0,a0,-328 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	ab0080e7          	jalr	-1360(ra) # 80002e18 <__printf>
    80002370:	00003517          	auipc	a0,0x3
    80002374:	d9850513          	addi	a0,a0,-616 # 80005108 <_ZZ12printIntegermE6digits+0x10>
    80002378:	00001097          	auipc	ra,0x1
    8000237c:	aa0080e7          	jalr	-1376(ra) # 80002e18 <__printf>
    80002380:	00003517          	auipc	a0,0x3
    80002384:	e9850513          	addi	a0,a0,-360 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	a90080e7          	jalr	-1392(ra) # 80002e18 <__printf>
    80002390:	00001097          	auipc	ra,0x1
    80002394:	4a8080e7          	jalr	1192(ra) # 80003838 <kinit>
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	148080e7          	jalr	328(ra) # 800024e0 <trapinit>
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	16c080e7          	jalr	364(ra) # 8000250c <trapinithart>
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	5b8080e7          	jalr	1464(ra) # 80002960 <plicinit>
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	5d8080e7          	jalr	1496(ra) # 80002988 <plicinithart>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	078080e7          	jalr	120(ra) # 80002430 <userinit>
    800023c0:	0ff0000f          	fence
    800023c4:	00100793          	li	a5,1
    800023c8:	00003517          	auipc	a0,0x3
    800023cc:	d5850513          	addi	a0,a0,-680 # 80005120 <_ZZ12printIntegermE6digits+0x28>
    800023d0:	00f4a023          	sw	a5,0(s1)
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	a44080e7          	jalr	-1468(ra) # 80002e18 <__printf>
    800023dc:	0000006f          	j	800023dc <system_main+0xd4>

00000000800023e0 <cpuid>:
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813423          	sd	s0,8(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	00020513          	mv	a0,tp
    800023f0:	00813403          	ld	s0,8(sp)
    800023f4:	0005051b          	sext.w	a0,a0
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <mycpu>:
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00020793          	mv	a5,tp
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	0007879b          	sext.w	a5,a5
    80002418:	00779793          	slli	a5,a5,0x7
    8000241c:	00004517          	auipc	a0,0x4
    80002420:	6c450513          	addi	a0,a0,1732 # 80006ae0 <cpus>
    80002424:	00f50533          	add	a0,a0,a5
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <userinit>:
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
    8000243c:	00813403          	ld	s0,8(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	fffff317          	auipc	t1,0xfffff
    80002448:	fc030067          	jr	-64(t1) # 80001404 <main>

000000008000244c <either_copyout>:
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813023          	sd	s0,0(sp)
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    8000245c:	02051663          	bnez	a0,80002488 <either_copyout+0x3c>
    80002460:	00058513          	mv	a0,a1
    80002464:	00060593          	mv	a1,a2
    80002468:	0006861b          	sext.w	a2,a3
    8000246c:	00002097          	auipc	ra,0x2
    80002470:	c58080e7          	jalr	-936(ra) # 800040c4 <__memmove>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	00000513          	li	a0,0
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret
    80002488:	00003517          	auipc	a0,0x3
    8000248c:	cd850513          	addi	a0,a0,-808 # 80005160 <_ZZ12printIntegermE6digits+0x68>
    80002490:	00001097          	auipc	ra,0x1
    80002494:	92c080e7          	jalr	-1748(ra) # 80002dbc <panic>

0000000080002498 <either_copyin>:
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813023          	sd	s0,0(sp)
    800024a0:	00113423          	sd	ra,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	02059463          	bnez	a1,800024d0 <either_copyin+0x38>
    800024ac:	00060593          	mv	a1,a2
    800024b0:	0006861b          	sext.w	a2,a3
    800024b4:	00002097          	auipc	ra,0x2
    800024b8:	c10080e7          	jalr	-1008(ra) # 800040c4 <__memmove>
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	00000513          	li	a0,0
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret
    800024d0:	00003517          	auipc	a0,0x3
    800024d4:	cb850513          	addi	a0,a0,-840 # 80005188 <_ZZ12printIntegermE6digits+0x90>
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	8e4080e7          	jalr	-1820(ra) # 80002dbc <panic>

00000000800024e0 <trapinit>:
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
    800024ec:	00813403          	ld	s0,8(sp)
    800024f0:	00003597          	auipc	a1,0x3
    800024f4:	cc058593          	addi	a1,a1,-832 # 800051b0 <_ZZ12printIntegermE6digits+0xb8>
    800024f8:	00004517          	auipc	a0,0x4
    800024fc:	66850513          	addi	a0,a0,1640 # 80006b60 <tickslock>
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00001317          	auipc	t1,0x1
    80002508:	5c430067          	jr	1476(t1) # 80003ac8 <initlock>

000000008000250c <trapinithart>:
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00813423          	sd	s0,8(sp)
    80002514:	01010413          	addi	s0,sp,16
    80002518:	00000797          	auipc	a5,0x0
    8000251c:	2f878793          	addi	a5,a5,760 # 80002810 <kernelvec>
    80002520:	10579073          	csrw	stvec,a5
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <usertrap>:
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <usertrapret>:
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813423          	sd	s0,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	00813403          	ld	s0,8(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <kerneltrap>:
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00813823          	sd	s0,16(sp)
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	02010413          	addi	s0,sp,32
    80002574:	142025f3          	csrr	a1,scause
    80002578:	100027f3          	csrr	a5,sstatus
    8000257c:	0027f793          	andi	a5,a5,2
    80002580:	10079c63          	bnez	a5,80002698 <kerneltrap+0x138>
    80002584:	142027f3          	csrr	a5,scause
    80002588:	0207ce63          	bltz	a5,800025c4 <kerneltrap+0x64>
    8000258c:	00003517          	auipc	a0,0x3
    80002590:	c6c50513          	addi	a0,a0,-916 # 800051f8 <_ZZ12printIntegermE6digits+0x100>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	884080e7          	jalr	-1916(ra) # 80002e18 <__printf>
    8000259c:	141025f3          	csrr	a1,sepc
    800025a0:	14302673          	csrr	a2,stval
    800025a4:	00003517          	auipc	a0,0x3
    800025a8:	c6450513          	addi	a0,a0,-924 # 80005208 <_ZZ12printIntegermE6digits+0x110>
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	86c080e7          	jalr	-1940(ra) # 80002e18 <__printf>
    800025b4:	00003517          	auipc	a0,0x3
    800025b8:	c6c50513          	addi	a0,a0,-916 # 80005220 <_ZZ12printIntegermE6digits+0x128>
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	800080e7          	jalr	-2048(ra) # 80002dbc <panic>
    800025c4:	0ff7f713          	andi	a4,a5,255
    800025c8:	00900693          	li	a3,9
    800025cc:	04d70063          	beq	a4,a3,8000260c <kerneltrap+0xac>
    800025d0:	fff00713          	li	a4,-1
    800025d4:	03f71713          	slli	a4,a4,0x3f
    800025d8:	00170713          	addi	a4,a4,1
    800025dc:	fae798e3          	bne	a5,a4,8000258c <kerneltrap+0x2c>
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	e00080e7          	jalr	-512(ra) # 800023e0 <cpuid>
    800025e8:	06050663          	beqz	a0,80002654 <kerneltrap+0xf4>
    800025ec:	144027f3          	csrr	a5,sip
    800025f0:	ffd7f793          	andi	a5,a5,-3
    800025f4:	14479073          	csrw	sip,a5
    800025f8:	01813083          	ld	ra,24(sp)
    800025fc:	01013403          	ld	s0,16(sp)
    80002600:	00813483          	ld	s1,8(sp)
    80002604:	02010113          	addi	sp,sp,32
    80002608:	00008067          	ret
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	3c8080e7          	jalr	968(ra) # 800029d4 <plic_claim>
    80002614:	00a00793          	li	a5,10
    80002618:	00050493          	mv	s1,a0
    8000261c:	06f50863          	beq	a0,a5,8000268c <kerneltrap+0x12c>
    80002620:	fc050ce3          	beqz	a0,800025f8 <kerneltrap+0x98>
    80002624:	00050593          	mv	a1,a0
    80002628:	00003517          	auipc	a0,0x3
    8000262c:	bb050513          	addi	a0,a0,-1104 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002630:	00000097          	auipc	ra,0x0
    80002634:	7e8080e7          	jalr	2024(ra) # 80002e18 <__printf>
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	00048513          	mv	a0,s1
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00000317          	auipc	t1,0x0
    80002650:	3c030067          	jr	960(t1) # 80002a0c <plic_complete>
    80002654:	00004517          	auipc	a0,0x4
    80002658:	50c50513          	addi	a0,a0,1292 # 80006b60 <tickslock>
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	490080e7          	jalr	1168(ra) # 80003aec <acquire>
    80002664:	00003717          	auipc	a4,0x3
    80002668:	3f070713          	addi	a4,a4,1008 # 80005a54 <ticks>
    8000266c:	00072783          	lw	a5,0(a4)
    80002670:	00004517          	auipc	a0,0x4
    80002674:	4f050513          	addi	a0,a0,1264 # 80006b60 <tickslock>
    80002678:	0017879b          	addiw	a5,a5,1
    8000267c:	00f72023          	sw	a5,0(a4)
    80002680:	00001097          	auipc	ra,0x1
    80002684:	538080e7          	jalr	1336(ra) # 80003bb8 <release>
    80002688:	f65ff06f          	j	800025ec <kerneltrap+0x8c>
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	094080e7          	jalr	148(ra) # 80003720 <uartintr>
    80002694:	fa5ff06f          	j	80002638 <kerneltrap+0xd8>
    80002698:	00003517          	auipc	a0,0x3
    8000269c:	b2050513          	addi	a0,a0,-1248 # 800051b8 <_ZZ12printIntegermE6digits+0xc0>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	71c080e7          	jalr	1820(ra) # 80002dbc <panic>

00000000800026a8 <clockintr>:
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00813823          	sd	s0,16(sp)
    800026b0:	00913423          	sd	s1,8(sp)
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	02010413          	addi	s0,sp,32
    800026bc:	00004497          	auipc	s1,0x4
    800026c0:	4a448493          	addi	s1,s1,1188 # 80006b60 <tickslock>
    800026c4:	00048513          	mv	a0,s1
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	424080e7          	jalr	1060(ra) # 80003aec <acquire>
    800026d0:	00003717          	auipc	a4,0x3
    800026d4:	38470713          	addi	a4,a4,900 # 80005a54 <ticks>
    800026d8:	00072783          	lw	a5,0(a4)
    800026dc:	01013403          	ld	s0,16(sp)
    800026e0:	01813083          	ld	ra,24(sp)
    800026e4:	00048513          	mv	a0,s1
    800026e8:	0017879b          	addiw	a5,a5,1
    800026ec:	00813483          	ld	s1,8(sp)
    800026f0:	00f72023          	sw	a5,0(a4)
    800026f4:	02010113          	addi	sp,sp,32
    800026f8:	00001317          	auipc	t1,0x1
    800026fc:	4c030067          	jr	1216(t1) # 80003bb8 <release>

0000000080002700 <devintr>:
    80002700:	142027f3          	csrr	a5,scause
    80002704:	00000513          	li	a0,0
    80002708:	0007c463          	bltz	a5,80002710 <devintr+0x10>
    8000270c:	00008067          	ret
    80002710:	fe010113          	addi	sp,sp,-32
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00113c23          	sd	ra,24(sp)
    8000271c:	00913423          	sd	s1,8(sp)
    80002720:	02010413          	addi	s0,sp,32
    80002724:	0ff7f713          	andi	a4,a5,255
    80002728:	00900693          	li	a3,9
    8000272c:	04d70c63          	beq	a4,a3,80002784 <devintr+0x84>
    80002730:	fff00713          	li	a4,-1
    80002734:	03f71713          	slli	a4,a4,0x3f
    80002738:	00170713          	addi	a4,a4,1
    8000273c:	00e78c63          	beq	a5,a4,80002754 <devintr+0x54>
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	01013403          	ld	s0,16(sp)
    80002748:	00813483          	ld	s1,8(sp)
    8000274c:	02010113          	addi	sp,sp,32
    80002750:	00008067          	ret
    80002754:	00000097          	auipc	ra,0x0
    80002758:	c8c080e7          	jalr	-884(ra) # 800023e0 <cpuid>
    8000275c:	06050663          	beqz	a0,800027c8 <devintr+0xc8>
    80002760:	144027f3          	csrr	a5,sip
    80002764:	ffd7f793          	andi	a5,a5,-3
    80002768:	14479073          	csrw	sip,a5
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	00200513          	li	a0,2
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret
    80002784:	00000097          	auipc	ra,0x0
    80002788:	250080e7          	jalr	592(ra) # 800029d4 <plic_claim>
    8000278c:	00a00793          	li	a5,10
    80002790:	00050493          	mv	s1,a0
    80002794:	06f50663          	beq	a0,a5,80002800 <devintr+0x100>
    80002798:	00100513          	li	a0,1
    8000279c:	fa0482e3          	beqz	s1,80002740 <devintr+0x40>
    800027a0:	00048593          	mv	a1,s1
    800027a4:	00003517          	auipc	a0,0x3
    800027a8:	a3450513          	addi	a0,a0,-1484 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	66c080e7          	jalr	1644(ra) # 80002e18 <__printf>
    800027b4:	00048513          	mv	a0,s1
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	254080e7          	jalr	596(ra) # 80002a0c <plic_complete>
    800027c0:	00100513          	li	a0,1
    800027c4:	f7dff06f          	j	80002740 <devintr+0x40>
    800027c8:	00004517          	auipc	a0,0x4
    800027cc:	39850513          	addi	a0,a0,920 # 80006b60 <tickslock>
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	31c080e7          	jalr	796(ra) # 80003aec <acquire>
    800027d8:	00003717          	auipc	a4,0x3
    800027dc:	27c70713          	addi	a4,a4,636 # 80005a54 <ticks>
    800027e0:	00072783          	lw	a5,0(a4)
    800027e4:	00004517          	auipc	a0,0x4
    800027e8:	37c50513          	addi	a0,a0,892 # 80006b60 <tickslock>
    800027ec:	0017879b          	addiw	a5,a5,1
    800027f0:	00f72023          	sw	a5,0(a4)
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	3c4080e7          	jalr	964(ra) # 80003bb8 <release>
    800027fc:	f65ff06f          	j	80002760 <devintr+0x60>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	f20080e7          	jalr	-224(ra) # 80003720 <uartintr>
    80002808:	fadff06f          	j	800027b4 <devintr+0xb4>
    8000280c:	0000                	unimp
	...

0000000080002810 <kernelvec>:
    80002810:	f0010113          	addi	sp,sp,-256
    80002814:	00113023          	sd	ra,0(sp)
    80002818:	00213423          	sd	sp,8(sp)
    8000281c:	00313823          	sd	gp,16(sp)
    80002820:	00413c23          	sd	tp,24(sp)
    80002824:	02513023          	sd	t0,32(sp)
    80002828:	02613423          	sd	t1,40(sp)
    8000282c:	02713823          	sd	t2,48(sp)
    80002830:	02813c23          	sd	s0,56(sp)
    80002834:	04913023          	sd	s1,64(sp)
    80002838:	04a13423          	sd	a0,72(sp)
    8000283c:	04b13823          	sd	a1,80(sp)
    80002840:	04c13c23          	sd	a2,88(sp)
    80002844:	06d13023          	sd	a3,96(sp)
    80002848:	06e13423          	sd	a4,104(sp)
    8000284c:	06f13823          	sd	a5,112(sp)
    80002850:	07013c23          	sd	a6,120(sp)
    80002854:	09113023          	sd	a7,128(sp)
    80002858:	09213423          	sd	s2,136(sp)
    8000285c:	09313823          	sd	s3,144(sp)
    80002860:	09413c23          	sd	s4,152(sp)
    80002864:	0b513023          	sd	s5,160(sp)
    80002868:	0b613423          	sd	s6,168(sp)
    8000286c:	0b713823          	sd	s7,176(sp)
    80002870:	0b813c23          	sd	s8,184(sp)
    80002874:	0d913023          	sd	s9,192(sp)
    80002878:	0da13423          	sd	s10,200(sp)
    8000287c:	0db13823          	sd	s11,208(sp)
    80002880:	0dc13c23          	sd	t3,216(sp)
    80002884:	0fd13023          	sd	t4,224(sp)
    80002888:	0fe13423          	sd	t5,232(sp)
    8000288c:	0ff13823          	sd	t6,240(sp)
    80002890:	cd1ff0ef          	jal	ra,80002560 <kerneltrap>
    80002894:	00013083          	ld	ra,0(sp)
    80002898:	00813103          	ld	sp,8(sp)
    8000289c:	01013183          	ld	gp,16(sp)
    800028a0:	02013283          	ld	t0,32(sp)
    800028a4:	02813303          	ld	t1,40(sp)
    800028a8:	03013383          	ld	t2,48(sp)
    800028ac:	03813403          	ld	s0,56(sp)
    800028b0:	04013483          	ld	s1,64(sp)
    800028b4:	04813503          	ld	a0,72(sp)
    800028b8:	05013583          	ld	a1,80(sp)
    800028bc:	05813603          	ld	a2,88(sp)
    800028c0:	06013683          	ld	a3,96(sp)
    800028c4:	06813703          	ld	a4,104(sp)
    800028c8:	07013783          	ld	a5,112(sp)
    800028cc:	07813803          	ld	a6,120(sp)
    800028d0:	08013883          	ld	a7,128(sp)
    800028d4:	08813903          	ld	s2,136(sp)
    800028d8:	09013983          	ld	s3,144(sp)
    800028dc:	09813a03          	ld	s4,152(sp)
    800028e0:	0a013a83          	ld	s5,160(sp)
    800028e4:	0a813b03          	ld	s6,168(sp)
    800028e8:	0b013b83          	ld	s7,176(sp)
    800028ec:	0b813c03          	ld	s8,184(sp)
    800028f0:	0c013c83          	ld	s9,192(sp)
    800028f4:	0c813d03          	ld	s10,200(sp)
    800028f8:	0d013d83          	ld	s11,208(sp)
    800028fc:	0d813e03          	ld	t3,216(sp)
    80002900:	0e013e83          	ld	t4,224(sp)
    80002904:	0e813f03          	ld	t5,232(sp)
    80002908:	0f013f83          	ld	t6,240(sp)
    8000290c:	10010113          	addi	sp,sp,256
    80002910:	10200073          	sret
    80002914:	00000013          	nop
    80002918:	00000013          	nop
    8000291c:	00000013          	nop

0000000080002920 <timervec>:
    80002920:	34051573          	csrrw	a0,mscratch,a0
    80002924:	00b53023          	sd	a1,0(a0)
    80002928:	00c53423          	sd	a2,8(a0)
    8000292c:	00d53823          	sd	a3,16(a0)
    80002930:	01853583          	ld	a1,24(a0)
    80002934:	02053603          	ld	a2,32(a0)
    80002938:	0005b683          	ld	a3,0(a1)
    8000293c:	00c686b3          	add	a3,a3,a2
    80002940:	00d5b023          	sd	a3,0(a1)
    80002944:	00200593          	li	a1,2
    80002948:	14459073          	csrw	sip,a1
    8000294c:	01053683          	ld	a3,16(a0)
    80002950:	00853603          	ld	a2,8(a0)
    80002954:	00053583          	ld	a1,0(a0)
    80002958:	34051573          	csrrw	a0,mscratch,a0
    8000295c:	30200073          	mret

0000000080002960 <plicinit>:
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    8000296c:	00813403          	ld	s0,8(sp)
    80002970:	0c0007b7          	lui	a5,0xc000
    80002974:	00100713          	li	a4,1
    80002978:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000297c:	00e7a223          	sw	a4,4(a5)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <plicinithart>:
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	01010413          	addi	s0,sp,16
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	a48080e7          	jalr	-1464(ra) # 800023e0 <cpuid>
    800029a0:	0085171b          	slliw	a4,a0,0x8
    800029a4:	0c0027b7          	lui	a5,0xc002
    800029a8:	00e787b3          	add	a5,a5,a4
    800029ac:	40200713          	li	a4,1026
    800029b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	00d5151b          	slliw	a0,a0,0xd
    800029c0:	0c2017b7          	lui	a5,0xc201
    800029c4:	00a78533          	add	a0,a5,a0
    800029c8:	00052023          	sw	zero,0(a0)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <plic_claim>:
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813023          	sd	s0,0(sp)
    800029dc:	00113423          	sd	ra,8(sp)
    800029e0:	01010413          	addi	s0,sp,16
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	9fc080e7          	jalr	-1540(ra) # 800023e0 <cpuid>
    800029ec:	00813083          	ld	ra,8(sp)
    800029f0:	00013403          	ld	s0,0(sp)
    800029f4:	00d5151b          	slliw	a0,a0,0xd
    800029f8:	0c2017b7          	lui	a5,0xc201
    800029fc:	00a78533          	add	a0,a5,a0
    80002a00:	00452503          	lw	a0,4(a0)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <plic_complete>:
    80002a0c:	fe010113          	addi	sp,sp,-32
    80002a10:	00813823          	sd	s0,16(sp)
    80002a14:	00913423          	sd	s1,8(sp)
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	02010413          	addi	s0,sp,32
    80002a20:	00050493          	mv	s1,a0
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	9bc080e7          	jalr	-1604(ra) # 800023e0 <cpuid>
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00d5179b          	slliw	a5,a0,0xd
    80002a38:	0c201737          	lui	a4,0xc201
    80002a3c:	00f707b3          	add	a5,a4,a5
    80002a40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002a44:	00813483          	ld	s1,8(sp)
    80002a48:	02010113          	addi	sp,sp,32
    80002a4c:	00008067          	ret

0000000080002a50 <consolewrite>:
    80002a50:	fb010113          	addi	sp,sp,-80
    80002a54:	04813023          	sd	s0,64(sp)
    80002a58:	04113423          	sd	ra,72(sp)
    80002a5c:	02913c23          	sd	s1,56(sp)
    80002a60:	03213823          	sd	s2,48(sp)
    80002a64:	03313423          	sd	s3,40(sp)
    80002a68:	03413023          	sd	s4,32(sp)
    80002a6c:	01513c23          	sd	s5,24(sp)
    80002a70:	05010413          	addi	s0,sp,80
    80002a74:	06c05c63          	blez	a2,80002aec <consolewrite+0x9c>
    80002a78:	00060993          	mv	s3,a2
    80002a7c:	00050a13          	mv	s4,a0
    80002a80:	00058493          	mv	s1,a1
    80002a84:	00000913          	li	s2,0
    80002a88:	fff00a93          	li	s5,-1
    80002a8c:	01c0006f          	j	80002aa8 <consolewrite+0x58>
    80002a90:	fbf44503          	lbu	a0,-65(s0)
    80002a94:	0019091b          	addiw	s2,s2,1
    80002a98:	00148493          	addi	s1,s1,1
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	a9c080e7          	jalr	-1380(ra) # 80003538 <uartputc>
    80002aa4:	03298063          	beq	s3,s2,80002ac4 <consolewrite+0x74>
    80002aa8:	00048613          	mv	a2,s1
    80002aac:	00100693          	li	a3,1
    80002ab0:	000a0593          	mv	a1,s4
    80002ab4:	fbf40513          	addi	a0,s0,-65
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	9e0080e7          	jalr	-1568(ra) # 80002498 <either_copyin>
    80002ac0:	fd5518e3          	bne	a0,s5,80002a90 <consolewrite+0x40>
    80002ac4:	04813083          	ld	ra,72(sp)
    80002ac8:	04013403          	ld	s0,64(sp)
    80002acc:	03813483          	ld	s1,56(sp)
    80002ad0:	02813983          	ld	s3,40(sp)
    80002ad4:	02013a03          	ld	s4,32(sp)
    80002ad8:	01813a83          	ld	s5,24(sp)
    80002adc:	00090513          	mv	a0,s2
    80002ae0:	03013903          	ld	s2,48(sp)
    80002ae4:	05010113          	addi	sp,sp,80
    80002ae8:	00008067          	ret
    80002aec:	00000913          	li	s2,0
    80002af0:	fd5ff06f          	j	80002ac4 <consolewrite+0x74>

0000000080002af4 <consoleread>:
    80002af4:	f9010113          	addi	sp,sp,-112
    80002af8:	06813023          	sd	s0,96(sp)
    80002afc:	04913c23          	sd	s1,88(sp)
    80002b00:	05213823          	sd	s2,80(sp)
    80002b04:	05313423          	sd	s3,72(sp)
    80002b08:	05413023          	sd	s4,64(sp)
    80002b0c:	03513c23          	sd	s5,56(sp)
    80002b10:	03613823          	sd	s6,48(sp)
    80002b14:	03713423          	sd	s7,40(sp)
    80002b18:	03813023          	sd	s8,32(sp)
    80002b1c:	06113423          	sd	ra,104(sp)
    80002b20:	01913c23          	sd	s9,24(sp)
    80002b24:	07010413          	addi	s0,sp,112
    80002b28:	00060b93          	mv	s7,a2
    80002b2c:	00050913          	mv	s2,a0
    80002b30:	00058c13          	mv	s8,a1
    80002b34:	00060b1b          	sext.w	s6,a2
    80002b38:	00004497          	auipc	s1,0x4
    80002b3c:	05048493          	addi	s1,s1,80 # 80006b88 <cons>
    80002b40:	00400993          	li	s3,4
    80002b44:	fff00a13          	li	s4,-1
    80002b48:	00a00a93          	li	s5,10
    80002b4c:	05705e63          	blez	s7,80002ba8 <consoleread+0xb4>
    80002b50:	09c4a703          	lw	a4,156(s1)
    80002b54:	0984a783          	lw	a5,152(s1)
    80002b58:	0007071b          	sext.w	a4,a4
    80002b5c:	08e78463          	beq	a5,a4,80002be4 <consoleread+0xf0>
    80002b60:	07f7f713          	andi	a4,a5,127
    80002b64:	00e48733          	add	a4,s1,a4
    80002b68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002b6c:	0017869b          	addiw	a3,a5,1
    80002b70:	08d4ac23          	sw	a3,152(s1)
    80002b74:	00070c9b          	sext.w	s9,a4
    80002b78:	0b370663          	beq	a4,s3,80002c24 <consoleread+0x130>
    80002b7c:	00100693          	li	a3,1
    80002b80:	f9f40613          	addi	a2,s0,-97
    80002b84:	000c0593          	mv	a1,s8
    80002b88:	00090513          	mv	a0,s2
    80002b8c:	f8e40fa3          	sb	a4,-97(s0)
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	8bc080e7          	jalr	-1860(ra) # 8000244c <either_copyout>
    80002b98:	01450863          	beq	a0,s4,80002ba8 <consoleread+0xb4>
    80002b9c:	001c0c13          	addi	s8,s8,1
    80002ba0:	fffb8b9b          	addiw	s7,s7,-1
    80002ba4:	fb5c94e3          	bne	s9,s5,80002b4c <consoleread+0x58>
    80002ba8:	000b851b          	sext.w	a0,s7
    80002bac:	06813083          	ld	ra,104(sp)
    80002bb0:	06013403          	ld	s0,96(sp)
    80002bb4:	05813483          	ld	s1,88(sp)
    80002bb8:	05013903          	ld	s2,80(sp)
    80002bbc:	04813983          	ld	s3,72(sp)
    80002bc0:	04013a03          	ld	s4,64(sp)
    80002bc4:	03813a83          	ld	s5,56(sp)
    80002bc8:	02813b83          	ld	s7,40(sp)
    80002bcc:	02013c03          	ld	s8,32(sp)
    80002bd0:	01813c83          	ld	s9,24(sp)
    80002bd4:	40ab053b          	subw	a0,s6,a0
    80002bd8:	03013b03          	ld	s6,48(sp)
    80002bdc:	07010113          	addi	sp,sp,112
    80002be0:	00008067          	ret
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	1d8080e7          	jalr	472(ra) # 80003dbc <push_on>
    80002bec:	0984a703          	lw	a4,152(s1)
    80002bf0:	09c4a783          	lw	a5,156(s1)
    80002bf4:	0007879b          	sext.w	a5,a5
    80002bf8:	fef70ce3          	beq	a4,a5,80002bf0 <consoleread+0xfc>
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	234080e7          	jalr	564(ra) # 80003e30 <pop_on>
    80002c04:	0984a783          	lw	a5,152(s1)
    80002c08:	07f7f713          	andi	a4,a5,127
    80002c0c:	00e48733          	add	a4,s1,a4
    80002c10:	01874703          	lbu	a4,24(a4)
    80002c14:	0017869b          	addiw	a3,a5,1
    80002c18:	08d4ac23          	sw	a3,152(s1)
    80002c1c:	00070c9b          	sext.w	s9,a4
    80002c20:	f5371ee3          	bne	a4,s3,80002b7c <consoleread+0x88>
    80002c24:	000b851b          	sext.w	a0,s7
    80002c28:	f96bf2e3          	bgeu	s7,s6,80002bac <consoleread+0xb8>
    80002c2c:	08f4ac23          	sw	a5,152(s1)
    80002c30:	f7dff06f          	j	80002bac <consoleread+0xb8>

0000000080002c34 <consputc>:
    80002c34:	10000793          	li	a5,256
    80002c38:	00f50663          	beq	a0,a5,80002c44 <consputc+0x10>
    80002c3c:	00001317          	auipc	t1,0x1
    80002c40:	9f430067          	jr	-1548(t1) # 80003630 <uartputc_sync>
    80002c44:	ff010113          	addi	sp,sp,-16
    80002c48:	00113423          	sd	ra,8(sp)
    80002c4c:	00813023          	sd	s0,0(sp)
    80002c50:	01010413          	addi	s0,sp,16
    80002c54:	00800513          	li	a0,8
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	9d8080e7          	jalr	-1576(ra) # 80003630 <uartputc_sync>
    80002c60:	02000513          	li	a0,32
    80002c64:	00001097          	auipc	ra,0x1
    80002c68:	9cc080e7          	jalr	-1588(ra) # 80003630 <uartputc_sync>
    80002c6c:	00013403          	ld	s0,0(sp)
    80002c70:	00813083          	ld	ra,8(sp)
    80002c74:	00800513          	li	a0,8
    80002c78:	01010113          	addi	sp,sp,16
    80002c7c:	00001317          	auipc	t1,0x1
    80002c80:	9b430067          	jr	-1612(t1) # 80003630 <uartputc_sync>

0000000080002c84 <consoleintr>:
    80002c84:	fe010113          	addi	sp,sp,-32
    80002c88:	00813823          	sd	s0,16(sp)
    80002c8c:	00913423          	sd	s1,8(sp)
    80002c90:	01213023          	sd	s2,0(sp)
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	02010413          	addi	s0,sp,32
    80002c9c:	00004917          	auipc	s2,0x4
    80002ca0:	eec90913          	addi	s2,s2,-276 # 80006b88 <cons>
    80002ca4:	00050493          	mv	s1,a0
    80002ca8:	00090513          	mv	a0,s2
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	e40080e7          	jalr	-448(ra) # 80003aec <acquire>
    80002cb4:	02048c63          	beqz	s1,80002cec <consoleintr+0x68>
    80002cb8:	0a092783          	lw	a5,160(s2)
    80002cbc:	09892703          	lw	a4,152(s2)
    80002cc0:	07f00693          	li	a3,127
    80002cc4:	40e7873b          	subw	a4,a5,a4
    80002cc8:	02e6e263          	bltu	a3,a4,80002cec <consoleintr+0x68>
    80002ccc:	00d00713          	li	a4,13
    80002cd0:	04e48063          	beq	s1,a4,80002d10 <consoleintr+0x8c>
    80002cd4:	07f7f713          	andi	a4,a5,127
    80002cd8:	00e90733          	add	a4,s2,a4
    80002cdc:	0017879b          	addiw	a5,a5,1
    80002ce0:	0af92023          	sw	a5,160(s2)
    80002ce4:	00970c23          	sb	s1,24(a4)
    80002ce8:	08f92e23          	sw	a5,156(s2)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	01813083          	ld	ra,24(sp)
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	00013903          	ld	s2,0(sp)
    80002cfc:	00004517          	auipc	a0,0x4
    80002d00:	e8c50513          	addi	a0,a0,-372 # 80006b88 <cons>
    80002d04:	02010113          	addi	sp,sp,32
    80002d08:	00001317          	auipc	t1,0x1
    80002d0c:	eb030067          	jr	-336(t1) # 80003bb8 <release>
    80002d10:	00a00493          	li	s1,10
    80002d14:	fc1ff06f          	j	80002cd4 <consoleintr+0x50>

0000000080002d18 <consoleinit>:
    80002d18:	fe010113          	addi	sp,sp,-32
    80002d1c:	00113c23          	sd	ra,24(sp)
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	02010413          	addi	s0,sp,32
    80002d2c:	00004497          	auipc	s1,0x4
    80002d30:	e5c48493          	addi	s1,s1,-420 # 80006b88 <cons>
    80002d34:	00048513          	mv	a0,s1
    80002d38:	00002597          	auipc	a1,0x2
    80002d3c:	4f858593          	addi	a1,a1,1272 # 80005230 <_ZZ12printIntegermE6digits+0x138>
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	d88080e7          	jalr	-632(ra) # 80003ac8 <initlock>
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	7ac080e7          	jalr	1964(ra) # 800034f4 <uartinit>
    80002d50:	01813083          	ld	ra,24(sp)
    80002d54:	01013403          	ld	s0,16(sp)
    80002d58:	00000797          	auipc	a5,0x0
    80002d5c:	d9c78793          	addi	a5,a5,-612 # 80002af4 <consoleread>
    80002d60:	0af4bc23          	sd	a5,184(s1)
    80002d64:	00000797          	auipc	a5,0x0
    80002d68:	cec78793          	addi	a5,a5,-788 # 80002a50 <consolewrite>
    80002d6c:	0cf4b023          	sd	a5,192(s1)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret

0000000080002d7c <console_read>:
    80002d7c:	ff010113          	addi	sp,sp,-16
    80002d80:	00813423          	sd	s0,8(sp)
    80002d84:	01010413          	addi	s0,sp,16
    80002d88:	00813403          	ld	s0,8(sp)
    80002d8c:	00004317          	auipc	t1,0x4
    80002d90:	eb433303          	ld	t1,-332(t1) # 80006c40 <devsw+0x10>
    80002d94:	01010113          	addi	sp,sp,16
    80002d98:	00030067          	jr	t1

0000000080002d9c <console_write>:
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00813423          	sd	s0,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    80002da8:	00813403          	ld	s0,8(sp)
    80002dac:	00004317          	auipc	t1,0x4
    80002db0:	e9c33303          	ld	t1,-356(t1) # 80006c48 <devsw+0x18>
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00030067          	jr	t1

0000000080002dbc <panic>:
    80002dbc:	fe010113          	addi	sp,sp,-32
    80002dc0:	00113c23          	sd	ra,24(sp)
    80002dc4:	00813823          	sd	s0,16(sp)
    80002dc8:	00913423          	sd	s1,8(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050493          	mv	s1,a0
    80002dd4:	00002517          	auipc	a0,0x2
    80002dd8:	46450513          	addi	a0,a0,1124 # 80005238 <_ZZ12printIntegermE6digits+0x140>
    80002ddc:	00004797          	auipc	a5,0x4
    80002de0:	f007a623          	sw	zero,-244(a5) # 80006ce8 <pr+0x18>
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	034080e7          	jalr	52(ra) # 80002e18 <__printf>
    80002dec:	00048513          	mv	a0,s1
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	028080e7          	jalr	40(ra) # 80002e18 <__printf>
    80002df8:	00002517          	auipc	a0,0x2
    80002dfc:	42050513          	addi	a0,a0,1056 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	018080e7          	jalr	24(ra) # 80002e18 <__printf>
    80002e08:	00100793          	li	a5,1
    80002e0c:	00003717          	auipc	a4,0x3
    80002e10:	c4f72623          	sw	a5,-948(a4) # 80005a58 <panicked>
    80002e14:	0000006f          	j	80002e14 <panic+0x58>

0000000080002e18 <__printf>:
    80002e18:	f3010113          	addi	sp,sp,-208
    80002e1c:	08813023          	sd	s0,128(sp)
    80002e20:	07313423          	sd	s3,104(sp)
    80002e24:	09010413          	addi	s0,sp,144
    80002e28:	05813023          	sd	s8,64(sp)
    80002e2c:	08113423          	sd	ra,136(sp)
    80002e30:	06913c23          	sd	s1,120(sp)
    80002e34:	07213823          	sd	s2,112(sp)
    80002e38:	07413023          	sd	s4,96(sp)
    80002e3c:	05513c23          	sd	s5,88(sp)
    80002e40:	05613823          	sd	s6,80(sp)
    80002e44:	05713423          	sd	s7,72(sp)
    80002e48:	03913c23          	sd	s9,56(sp)
    80002e4c:	03a13823          	sd	s10,48(sp)
    80002e50:	03b13423          	sd	s11,40(sp)
    80002e54:	00004317          	auipc	t1,0x4
    80002e58:	e7c30313          	addi	t1,t1,-388 # 80006cd0 <pr>
    80002e5c:	01832c03          	lw	s8,24(t1)
    80002e60:	00b43423          	sd	a1,8(s0)
    80002e64:	00c43823          	sd	a2,16(s0)
    80002e68:	00d43c23          	sd	a3,24(s0)
    80002e6c:	02e43023          	sd	a4,32(s0)
    80002e70:	02f43423          	sd	a5,40(s0)
    80002e74:	03043823          	sd	a6,48(s0)
    80002e78:	03143c23          	sd	a7,56(s0)
    80002e7c:	00050993          	mv	s3,a0
    80002e80:	4a0c1663          	bnez	s8,8000332c <__printf+0x514>
    80002e84:	60098c63          	beqz	s3,8000349c <__printf+0x684>
    80002e88:	0009c503          	lbu	a0,0(s3)
    80002e8c:	00840793          	addi	a5,s0,8
    80002e90:	f6f43c23          	sd	a5,-136(s0)
    80002e94:	00000493          	li	s1,0
    80002e98:	22050063          	beqz	a0,800030b8 <__printf+0x2a0>
    80002e9c:	00002a37          	lui	s4,0x2
    80002ea0:	00018ab7          	lui	s5,0x18
    80002ea4:	000f4b37          	lui	s6,0xf4
    80002ea8:	00989bb7          	lui	s7,0x989
    80002eac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002eb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002eb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002eb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002ebc:	00148c9b          	addiw	s9,s1,1
    80002ec0:	02500793          	li	a5,37
    80002ec4:	01998933          	add	s2,s3,s9
    80002ec8:	38f51263          	bne	a0,a5,8000324c <__printf+0x434>
    80002ecc:	00094783          	lbu	a5,0(s2)
    80002ed0:	00078c9b          	sext.w	s9,a5
    80002ed4:	1e078263          	beqz	a5,800030b8 <__printf+0x2a0>
    80002ed8:	0024849b          	addiw	s1,s1,2
    80002edc:	07000713          	li	a4,112
    80002ee0:	00998933          	add	s2,s3,s1
    80002ee4:	38e78a63          	beq	a5,a4,80003278 <__printf+0x460>
    80002ee8:	20f76863          	bltu	a4,a5,800030f8 <__printf+0x2e0>
    80002eec:	42a78863          	beq	a5,a0,8000331c <__printf+0x504>
    80002ef0:	06400713          	li	a4,100
    80002ef4:	40e79663          	bne	a5,a4,80003300 <__printf+0x4e8>
    80002ef8:	f7843783          	ld	a5,-136(s0)
    80002efc:	0007a603          	lw	a2,0(a5)
    80002f00:	00878793          	addi	a5,a5,8
    80002f04:	f6f43c23          	sd	a5,-136(s0)
    80002f08:	42064a63          	bltz	a2,8000333c <__printf+0x524>
    80002f0c:	00a00713          	li	a4,10
    80002f10:	02e677bb          	remuw	a5,a2,a4
    80002f14:	00002d97          	auipc	s11,0x2
    80002f18:	34cd8d93          	addi	s11,s11,844 # 80005260 <digits>
    80002f1c:	00900593          	li	a1,9
    80002f20:	0006051b          	sext.w	a0,a2
    80002f24:	00000c93          	li	s9,0
    80002f28:	02079793          	slli	a5,a5,0x20
    80002f2c:	0207d793          	srli	a5,a5,0x20
    80002f30:	00fd87b3          	add	a5,s11,a5
    80002f34:	0007c783          	lbu	a5,0(a5)
    80002f38:	02e656bb          	divuw	a3,a2,a4
    80002f3c:	f8f40023          	sb	a5,-128(s0)
    80002f40:	14c5d863          	bge	a1,a2,80003090 <__printf+0x278>
    80002f44:	06300593          	li	a1,99
    80002f48:	00100c93          	li	s9,1
    80002f4c:	02e6f7bb          	remuw	a5,a3,a4
    80002f50:	02079793          	slli	a5,a5,0x20
    80002f54:	0207d793          	srli	a5,a5,0x20
    80002f58:	00fd87b3          	add	a5,s11,a5
    80002f5c:	0007c783          	lbu	a5,0(a5)
    80002f60:	02e6d73b          	divuw	a4,a3,a4
    80002f64:	f8f400a3          	sb	a5,-127(s0)
    80002f68:	12a5f463          	bgeu	a1,a0,80003090 <__printf+0x278>
    80002f6c:	00a00693          	li	a3,10
    80002f70:	00900593          	li	a1,9
    80002f74:	02d777bb          	remuw	a5,a4,a3
    80002f78:	02079793          	slli	a5,a5,0x20
    80002f7c:	0207d793          	srli	a5,a5,0x20
    80002f80:	00fd87b3          	add	a5,s11,a5
    80002f84:	0007c503          	lbu	a0,0(a5)
    80002f88:	02d757bb          	divuw	a5,a4,a3
    80002f8c:	f8a40123          	sb	a0,-126(s0)
    80002f90:	48e5f263          	bgeu	a1,a4,80003414 <__printf+0x5fc>
    80002f94:	06300513          	li	a0,99
    80002f98:	02d7f5bb          	remuw	a1,a5,a3
    80002f9c:	02059593          	slli	a1,a1,0x20
    80002fa0:	0205d593          	srli	a1,a1,0x20
    80002fa4:	00bd85b3          	add	a1,s11,a1
    80002fa8:	0005c583          	lbu	a1,0(a1)
    80002fac:	02d7d7bb          	divuw	a5,a5,a3
    80002fb0:	f8b401a3          	sb	a1,-125(s0)
    80002fb4:	48e57263          	bgeu	a0,a4,80003438 <__printf+0x620>
    80002fb8:	3e700513          	li	a0,999
    80002fbc:	02d7f5bb          	remuw	a1,a5,a3
    80002fc0:	02059593          	slli	a1,a1,0x20
    80002fc4:	0205d593          	srli	a1,a1,0x20
    80002fc8:	00bd85b3          	add	a1,s11,a1
    80002fcc:	0005c583          	lbu	a1,0(a1)
    80002fd0:	02d7d7bb          	divuw	a5,a5,a3
    80002fd4:	f8b40223          	sb	a1,-124(s0)
    80002fd8:	46e57663          	bgeu	a0,a4,80003444 <__printf+0x62c>
    80002fdc:	02d7f5bb          	remuw	a1,a5,a3
    80002fe0:	02059593          	slli	a1,a1,0x20
    80002fe4:	0205d593          	srli	a1,a1,0x20
    80002fe8:	00bd85b3          	add	a1,s11,a1
    80002fec:	0005c583          	lbu	a1,0(a1)
    80002ff0:	02d7d7bb          	divuw	a5,a5,a3
    80002ff4:	f8b402a3          	sb	a1,-123(s0)
    80002ff8:	46ea7863          	bgeu	s4,a4,80003468 <__printf+0x650>
    80002ffc:	02d7f5bb          	remuw	a1,a5,a3
    80003000:	02059593          	slli	a1,a1,0x20
    80003004:	0205d593          	srli	a1,a1,0x20
    80003008:	00bd85b3          	add	a1,s11,a1
    8000300c:	0005c583          	lbu	a1,0(a1)
    80003010:	02d7d7bb          	divuw	a5,a5,a3
    80003014:	f8b40323          	sb	a1,-122(s0)
    80003018:	3eeaf863          	bgeu	s5,a4,80003408 <__printf+0x5f0>
    8000301c:	02d7f5bb          	remuw	a1,a5,a3
    80003020:	02059593          	slli	a1,a1,0x20
    80003024:	0205d593          	srli	a1,a1,0x20
    80003028:	00bd85b3          	add	a1,s11,a1
    8000302c:	0005c583          	lbu	a1,0(a1)
    80003030:	02d7d7bb          	divuw	a5,a5,a3
    80003034:	f8b403a3          	sb	a1,-121(s0)
    80003038:	42eb7e63          	bgeu	s6,a4,80003474 <__printf+0x65c>
    8000303c:	02d7f5bb          	remuw	a1,a5,a3
    80003040:	02059593          	slli	a1,a1,0x20
    80003044:	0205d593          	srli	a1,a1,0x20
    80003048:	00bd85b3          	add	a1,s11,a1
    8000304c:	0005c583          	lbu	a1,0(a1)
    80003050:	02d7d7bb          	divuw	a5,a5,a3
    80003054:	f8b40423          	sb	a1,-120(s0)
    80003058:	42ebfc63          	bgeu	s7,a4,80003490 <__printf+0x678>
    8000305c:	02079793          	slli	a5,a5,0x20
    80003060:	0207d793          	srli	a5,a5,0x20
    80003064:	00fd8db3          	add	s11,s11,a5
    80003068:	000dc703          	lbu	a4,0(s11)
    8000306c:	00a00793          	li	a5,10
    80003070:	00900c93          	li	s9,9
    80003074:	f8e404a3          	sb	a4,-119(s0)
    80003078:	00065c63          	bgez	a2,80003090 <__printf+0x278>
    8000307c:	f9040713          	addi	a4,s0,-112
    80003080:	00f70733          	add	a4,a4,a5
    80003084:	02d00693          	li	a3,45
    80003088:	fed70823          	sb	a3,-16(a4)
    8000308c:	00078c93          	mv	s9,a5
    80003090:	f8040793          	addi	a5,s0,-128
    80003094:	01978cb3          	add	s9,a5,s9
    80003098:	f7f40d13          	addi	s10,s0,-129
    8000309c:	000cc503          	lbu	a0,0(s9)
    800030a0:	fffc8c93          	addi	s9,s9,-1
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	b90080e7          	jalr	-1136(ra) # 80002c34 <consputc>
    800030ac:	ffac98e3          	bne	s9,s10,8000309c <__printf+0x284>
    800030b0:	00094503          	lbu	a0,0(s2)
    800030b4:	e00514e3          	bnez	a0,80002ebc <__printf+0xa4>
    800030b8:	1a0c1663          	bnez	s8,80003264 <__printf+0x44c>
    800030bc:	08813083          	ld	ra,136(sp)
    800030c0:	08013403          	ld	s0,128(sp)
    800030c4:	07813483          	ld	s1,120(sp)
    800030c8:	07013903          	ld	s2,112(sp)
    800030cc:	06813983          	ld	s3,104(sp)
    800030d0:	06013a03          	ld	s4,96(sp)
    800030d4:	05813a83          	ld	s5,88(sp)
    800030d8:	05013b03          	ld	s6,80(sp)
    800030dc:	04813b83          	ld	s7,72(sp)
    800030e0:	04013c03          	ld	s8,64(sp)
    800030e4:	03813c83          	ld	s9,56(sp)
    800030e8:	03013d03          	ld	s10,48(sp)
    800030ec:	02813d83          	ld	s11,40(sp)
    800030f0:	0d010113          	addi	sp,sp,208
    800030f4:	00008067          	ret
    800030f8:	07300713          	li	a4,115
    800030fc:	1ce78a63          	beq	a5,a4,800032d0 <__printf+0x4b8>
    80003100:	07800713          	li	a4,120
    80003104:	1ee79e63          	bne	a5,a4,80003300 <__printf+0x4e8>
    80003108:	f7843783          	ld	a5,-136(s0)
    8000310c:	0007a703          	lw	a4,0(a5)
    80003110:	00878793          	addi	a5,a5,8
    80003114:	f6f43c23          	sd	a5,-136(s0)
    80003118:	28074263          	bltz	a4,8000339c <__printf+0x584>
    8000311c:	00002d97          	auipc	s11,0x2
    80003120:	144d8d93          	addi	s11,s11,324 # 80005260 <digits>
    80003124:	00f77793          	andi	a5,a4,15
    80003128:	00fd87b3          	add	a5,s11,a5
    8000312c:	0007c683          	lbu	a3,0(a5)
    80003130:	00f00613          	li	a2,15
    80003134:	0007079b          	sext.w	a5,a4
    80003138:	f8d40023          	sb	a3,-128(s0)
    8000313c:	0047559b          	srliw	a1,a4,0x4
    80003140:	0047569b          	srliw	a3,a4,0x4
    80003144:	00000c93          	li	s9,0
    80003148:	0ee65063          	bge	a2,a4,80003228 <__printf+0x410>
    8000314c:	00f6f693          	andi	a3,a3,15
    80003150:	00dd86b3          	add	a3,s11,a3
    80003154:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003158:	0087d79b          	srliw	a5,a5,0x8
    8000315c:	00100c93          	li	s9,1
    80003160:	f8d400a3          	sb	a3,-127(s0)
    80003164:	0cb67263          	bgeu	a2,a1,80003228 <__printf+0x410>
    80003168:	00f7f693          	andi	a3,a5,15
    8000316c:	00dd86b3          	add	a3,s11,a3
    80003170:	0006c583          	lbu	a1,0(a3)
    80003174:	00f00613          	li	a2,15
    80003178:	0047d69b          	srliw	a3,a5,0x4
    8000317c:	f8b40123          	sb	a1,-126(s0)
    80003180:	0047d593          	srli	a1,a5,0x4
    80003184:	28f67e63          	bgeu	a2,a5,80003420 <__printf+0x608>
    80003188:	00f6f693          	andi	a3,a3,15
    8000318c:	00dd86b3          	add	a3,s11,a3
    80003190:	0006c503          	lbu	a0,0(a3)
    80003194:	0087d813          	srli	a6,a5,0x8
    80003198:	0087d69b          	srliw	a3,a5,0x8
    8000319c:	f8a401a3          	sb	a0,-125(s0)
    800031a0:	28b67663          	bgeu	a2,a1,8000342c <__printf+0x614>
    800031a4:	00f6f693          	andi	a3,a3,15
    800031a8:	00dd86b3          	add	a3,s11,a3
    800031ac:	0006c583          	lbu	a1,0(a3)
    800031b0:	00c7d513          	srli	a0,a5,0xc
    800031b4:	00c7d69b          	srliw	a3,a5,0xc
    800031b8:	f8b40223          	sb	a1,-124(s0)
    800031bc:	29067a63          	bgeu	a2,a6,80003450 <__printf+0x638>
    800031c0:	00f6f693          	andi	a3,a3,15
    800031c4:	00dd86b3          	add	a3,s11,a3
    800031c8:	0006c583          	lbu	a1,0(a3)
    800031cc:	0107d813          	srli	a6,a5,0x10
    800031d0:	0107d69b          	srliw	a3,a5,0x10
    800031d4:	f8b402a3          	sb	a1,-123(s0)
    800031d8:	28a67263          	bgeu	a2,a0,8000345c <__printf+0x644>
    800031dc:	00f6f693          	andi	a3,a3,15
    800031e0:	00dd86b3          	add	a3,s11,a3
    800031e4:	0006c683          	lbu	a3,0(a3)
    800031e8:	0147d79b          	srliw	a5,a5,0x14
    800031ec:	f8d40323          	sb	a3,-122(s0)
    800031f0:	21067663          	bgeu	a2,a6,800033fc <__printf+0x5e4>
    800031f4:	02079793          	slli	a5,a5,0x20
    800031f8:	0207d793          	srli	a5,a5,0x20
    800031fc:	00fd8db3          	add	s11,s11,a5
    80003200:	000dc683          	lbu	a3,0(s11)
    80003204:	00800793          	li	a5,8
    80003208:	00700c93          	li	s9,7
    8000320c:	f8d403a3          	sb	a3,-121(s0)
    80003210:	00075c63          	bgez	a4,80003228 <__printf+0x410>
    80003214:	f9040713          	addi	a4,s0,-112
    80003218:	00f70733          	add	a4,a4,a5
    8000321c:	02d00693          	li	a3,45
    80003220:	fed70823          	sb	a3,-16(a4)
    80003224:	00078c93          	mv	s9,a5
    80003228:	f8040793          	addi	a5,s0,-128
    8000322c:	01978cb3          	add	s9,a5,s9
    80003230:	f7f40d13          	addi	s10,s0,-129
    80003234:	000cc503          	lbu	a0,0(s9)
    80003238:	fffc8c93          	addi	s9,s9,-1
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	9f8080e7          	jalr	-1544(ra) # 80002c34 <consputc>
    80003244:	ff9d18e3          	bne	s10,s9,80003234 <__printf+0x41c>
    80003248:	0100006f          	j	80003258 <__printf+0x440>
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	9e8080e7          	jalr	-1560(ra) # 80002c34 <consputc>
    80003254:	000c8493          	mv	s1,s9
    80003258:	00094503          	lbu	a0,0(s2)
    8000325c:	c60510e3          	bnez	a0,80002ebc <__printf+0xa4>
    80003260:	e40c0ee3          	beqz	s8,800030bc <__printf+0x2a4>
    80003264:	00004517          	auipc	a0,0x4
    80003268:	a6c50513          	addi	a0,a0,-1428 # 80006cd0 <pr>
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	94c080e7          	jalr	-1716(ra) # 80003bb8 <release>
    80003274:	e49ff06f          	j	800030bc <__printf+0x2a4>
    80003278:	f7843783          	ld	a5,-136(s0)
    8000327c:	03000513          	li	a0,48
    80003280:	01000d13          	li	s10,16
    80003284:	00878713          	addi	a4,a5,8
    80003288:	0007bc83          	ld	s9,0(a5)
    8000328c:	f6e43c23          	sd	a4,-136(s0)
    80003290:	00000097          	auipc	ra,0x0
    80003294:	9a4080e7          	jalr	-1628(ra) # 80002c34 <consputc>
    80003298:	07800513          	li	a0,120
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	998080e7          	jalr	-1640(ra) # 80002c34 <consputc>
    800032a4:	00002d97          	auipc	s11,0x2
    800032a8:	fbcd8d93          	addi	s11,s11,-68 # 80005260 <digits>
    800032ac:	03ccd793          	srli	a5,s9,0x3c
    800032b0:	00fd87b3          	add	a5,s11,a5
    800032b4:	0007c503          	lbu	a0,0(a5)
    800032b8:	fffd0d1b          	addiw	s10,s10,-1
    800032bc:	004c9c93          	slli	s9,s9,0x4
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	974080e7          	jalr	-1676(ra) # 80002c34 <consputc>
    800032c8:	fe0d12e3          	bnez	s10,800032ac <__printf+0x494>
    800032cc:	f8dff06f          	j	80003258 <__printf+0x440>
    800032d0:	f7843783          	ld	a5,-136(s0)
    800032d4:	0007bc83          	ld	s9,0(a5)
    800032d8:	00878793          	addi	a5,a5,8
    800032dc:	f6f43c23          	sd	a5,-136(s0)
    800032e0:	000c9a63          	bnez	s9,800032f4 <__printf+0x4dc>
    800032e4:	1080006f          	j	800033ec <__printf+0x5d4>
    800032e8:	001c8c93          	addi	s9,s9,1
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	948080e7          	jalr	-1720(ra) # 80002c34 <consputc>
    800032f4:	000cc503          	lbu	a0,0(s9)
    800032f8:	fe0518e3          	bnez	a0,800032e8 <__printf+0x4d0>
    800032fc:	f5dff06f          	j	80003258 <__printf+0x440>
    80003300:	02500513          	li	a0,37
    80003304:	00000097          	auipc	ra,0x0
    80003308:	930080e7          	jalr	-1744(ra) # 80002c34 <consputc>
    8000330c:	000c8513          	mv	a0,s9
    80003310:	00000097          	auipc	ra,0x0
    80003314:	924080e7          	jalr	-1756(ra) # 80002c34 <consputc>
    80003318:	f41ff06f          	j	80003258 <__printf+0x440>
    8000331c:	02500513          	li	a0,37
    80003320:	00000097          	auipc	ra,0x0
    80003324:	914080e7          	jalr	-1772(ra) # 80002c34 <consputc>
    80003328:	f31ff06f          	j	80003258 <__printf+0x440>
    8000332c:	00030513          	mv	a0,t1
    80003330:	00000097          	auipc	ra,0x0
    80003334:	7bc080e7          	jalr	1980(ra) # 80003aec <acquire>
    80003338:	b4dff06f          	j	80002e84 <__printf+0x6c>
    8000333c:	40c0053b          	negw	a0,a2
    80003340:	00a00713          	li	a4,10
    80003344:	02e576bb          	remuw	a3,a0,a4
    80003348:	00002d97          	auipc	s11,0x2
    8000334c:	f18d8d93          	addi	s11,s11,-232 # 80005260 <digits>
    80003350:	ff700593          	li	a1,-9
    80003354:	02069693          	slli	a3,a3,0x20
    80003358:	0206d693          	srli	a3,a3,0x20
    8000335c:	00dd86b3          	add	a3,s11,a3
    80003360:	0006c683          	lbu	a3,0(a3)
    80003364:	02e557bb          	divuw	a5,a0,a4
    80003368:	f8d40023          	sb	a3,-128(s0)
    8000336c:	10b65e63          	bge	a2,a1,80003488 <__printf+0x670>
    80003370:	06300593          	li	a1,99
    80003374:	02e7f6bb          	remuw	a3,a5,a4
    80003378:	02069693          	slli	a3,a3,0x20
    8000337c:	0206d693          	srli	a3,a3,0x20
    80003380:	00dd86b3          	add	a3,s11,a3
    80003384:	0006c683          	lbu	a3,0(a3)
    80003388:	02e7d73b          	divuw	a4,a5,a4
    8000338c:	00200793          	li	a5,2
    80003390:	f8d400a3          	sb	a3,-127(s0)
    80003394:	bca5ece3          	bltu	a1,a0,80002f6c <__printf+0x154>
    80003398:	ce5ff06f          	j	8000307c <__printf+0x264>
    8000339c:	40e007bb          	negw	a5,a4
    800033a0:	00002d97          	auipc	s11,0x2
    800033a4:	ec0d8d93          	addi	s11,s11,-320 # 80005260 <digits>
    800033a8:	00f7f693          	andi	a3,a5,15
    800033ac:	00dd86b3          	add	a3,s11,a3
    800033b0:	0006c583          	lbu	a1,0(a3)
    800033b4:	ff100613          	li	a2,-15
    800033b8:	0047d69b          	srliw	a3,a5,0x4
    800033bc:	f8b40023          	sb	a1,-128(s0)
    800033c0:	0047d59b          	srliw	a1,a5,0x4
    800033c4:	0ac75e63          	bge	a4,a2,80003480 <__printf+0x668>
    800033c8:	00f6f693          	andi	a3,a3,15
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c603          	lbu	a2,0(a3)
    800033d4:	00f00693          	li	a3,15
    800033d8:	0087d79b          	srliw	a5,a5,0x8
    800033dc:	f8c400a3          	sb	a2,-127(s0)
    800033e0:	d8b6e4e3          	bltu	a3,a1,80003168 <__printf+0x350>
    800033e4:	00200793          	li	a5,2
    800033e8:	e2dff06f          	j	80003214 <__printf+0x3fc>
    800033ec:	00002c97          	auipc	s9,0x2
    800033f0:	e54c8c93          	addi	s9,s9,-428 # 80005240 <_ZZ12printIntegermE6digits+0x148>
    800033f4:	02800513          	li	a0,40
    800033f8:	ef1ff06f          	j	800032e8 <__printf+0x4d0>
    800033fc:	00700793          	li	a5,7
    80003400:	00600c93          	li	s9,6
    80003404:	e0dff06f          	j	80003210 <__printf+0x3f8>
    80003408:	00700793          	li	a5,7
    8000340c:	00600c93          	li	s9,6
    80003410:	c69ff06f          	j	80003078 <__printf+0x260>
    80003414:	00300793          	li	a5,3
    80003418:	00200c93          	li	s9,2
    8000341c:	c5dff06f          	j	80003078 <__printf+0x260>
    80003420:	00300793          	li	a5,3
    80003424:	00200c93          	li	s9,2
    80003428:	de9ff06f          	j	80003210 <__printf+0x3f8>
    8000342c:	00400793          	li	a5,4
    80003430:	00300c93          	li	s9,3
    80003434:	dddff06f          	j	80003210 <__printf+0x3f8>
    80003438:	00400793          	li	a5,4
    8000343c:	00300c93          	li	s9,3
    80003440:	c39ff06f          	j	80003078 <__printf+0x260>
    80003444:	00500793          	li	a5,5
    80003448:	00400c93          	li	s9,4
    8000344c:	c2dff06f          	j	80003078 <__printf+0x260>
    80003450:	00500793          	li	a5,5
    80003454:	00400c93          	li	s9,4
    80003458:	db9ff06f          	j	80003210 <__printf+0x3f8>
    8000345c:	00600793          	li	a5,6
    80003460:	00500c93          	li	s9,5
    80003464:	dadff06f          	j	80003210 <__printf+0x3f8>
    80003468:	00600793          	li	a5,6
    8000346c:	00500c93          	li	s9,5
    80003470:	c09ff06f          	j	80003078 <__printf+0x260>
    80003474:	00800793          	li	a5,8
    80003478:	00700c93          	li	s9,7
    8000347c:	bfdff06f          	j	80003078 <__printf+0x260>
    80003480:	00100793          	li	a5,1
    80003484:	d91ff06f          	j	80003214 <__printf+0x3fc>
    80003488:	00100793          	li	a5,1
    8000348c:	bf1ff06f          	j	8000307c <__printf+0x264>
    80003490:	00900793          	li	a5,9
    80003494:	00800c93          	li	s9,8
    80003498:	be1ff06f          	j	80003078 <__printf+0x260>
    8000349c:	00002517          	auipc	a0,0x2
    800034a0:	dac50513          	addi	a0,a0,-596 # 80005248 <_ZZ12printIntegermE6digits+0x150>
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	918080e7          	jalr	-1768(ra) # 80002dbc <panic>

00000000800034ac <printfinit>:
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	02010413          	addi	s0,sp,32
    800034c0:	00004497          	auipc	s1,0x4
    800034c4:	81048493          	addi	s1,s1,-2032 # 80006cd0 <pr>
    800034c8:	00048513          	mv	a0,s1
    800034cc:	00002597          	auipc	a1,0x2
    800034d0:	d8c58593          	addi	a1,a1,-628 # 80005258 <_ZZ12printIntegermE6digits+0x160>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	5f4080e7          	jalr	1524(ra) # 80003ac8 <initlock>
    800034dc:	01813083          	ld	ra,24(sp)
    800034e0:	01013403          	ld	s0,16(sp)
    800034e4:	0004ac23          	sw	zero,24(s1)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret

00000000800034f4 <uartinit>:
    800034f4:	ff010113          	addi	sp,sp,-16
    800034f8:	00813423          	sd	s0,8(sp)
    800034fc:	01010413          	addi	s0,sp,16
    80003500:	100007b7          	lui	a5,0x10000
    80003504:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003508:	f8000713          	li	a4,-128
    8000350c:	00e781a3          	sb	a4,3(a5)
    80003510:	00300713          	li	a4,3
    80003514:	00e78023          	sb	a4,0(a5)
    80003518:	000780a3          	sb	zero,1(a5)
    8000351c:	00e781a3          	sb	a4,3(a5)
    80003520:	00700693          	li	a3,7
    80003524:	00d78123          	sb	a3,2(a5)
    80003528:	00e780a3          	sb	a4,1(a5)
    8000352c:	00813403          	ld	s0,8(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <uartputc>:
    80003538:	00002797          	auipc	a5,0x2
    8000353c:	5207a783          	lw	a5,1312(a5) # 80005a58 <panicked>
    80003540:	00078463          	beqz	a5,80003548 <uartputc+0x10>
    80003544:	0000006f          	j	80003544 <uartputc+0xc>
    80003548:	fd010113          	addi	sp,sp,-48
    8000354c:	02813023          	sd	s0,32(sp)
    80003550:	00913c23          	sd	s1,24(sp)
    80003554:	01213823          	sd	s2,16(sp)
    80003558:	01313423          	sd	s3,8(sp)
    8000355c:	02113423          	sd	ra,40(sp)
    80003560:	03010413          	addi	s0,sp,48
    80003564:	00002917          	auipc	s2,0x2
    80003568:	4fc90913          	addi	s2,s2,1276 # 80005a60 <uart_tx_r>
    8000356c:	00093783          	ld	a5,0(s2)
    80003570:	00002497          	auipc	s1,0x2
    80003574:	4f848493          	addi	s1,s1,1272 # 80005a68 <uart_tx_w>
    80003578:	0004b703          	ld	a4,0(s1)
    8000357c:	02078693          	addi	a3,a5,32
    80003580:	00050993          	mv	s3,a0
    80003584:	02e69c63          	bne	a3,a4,800035bc <uartputc+0x84>
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	834080e7          	jalr	-1996(ra) # 80003dbc <push_on>
    80003590:	00093783          	ld	a5,0(s2)
    80003594:	0004b703          	ld	a4,0(s1)
    80003598:	02078793          	addi	a5,a5,32
    8000359c:	00e79463          	bne	a5,a4,800035a4 <uartputc+0x6c>
    800035a0:	0000006f          	j	800035a0 <uartputc+0x68>
    800035a4:	00001097          	auipc	ra,0x1
    800035a8:	88c080e7          	jalr	-1908(ra) # 80003e30 <pop_on>
    800035ac:	00093783          	ld	a5,0(s2)
    800035b0:	0004b703          	ld	a4,0(s1)
    800035b4:	02078693          	addi	a3,a5,32
    800035b8:	fce688e3          	beq	a3,a4,80003588 <uartputc+0x50>
    800035bc:	01f77693          	andi	a3,a4,31
    800035c0:	00003597          	auipc	a1,0x3
    800035c4:	73058593          	addi	a1,a1,1840 # 80006cf0 <uart_tx_buf>
    800035c8:	00d586b3          	add	a3,a1,a3
    800035cc:	00170713          	addi	a4,a4,1
    800035d0:	01368023          	sb	s3,0(a3)
    800035d4:	00e4b023          	sd	a4,0(s1)
    800035d8:	10000637          	lui	a2,0x10000
    800035dc:	02f71063          	bne	a4,a5,800035fc <uartputc+0xc4>
    800035e0:	0340006f          	j	80003614 <uartputc+0xdc>
    800035e4:	00074703          	lbu	a4,0(a4)
    800035e8:	00f93023          	sd	a5,0(s2)
    800035ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800035f0:	00093783          	ld	a5,0(s2)
    800035f4:	0004b703          	ld	a4,0(s1)
    800035f8:	00f70e63          	beq	a4,a5,80003614 <uartputc+0xdc>
    800035fc:	00564683          	lbu	a3,5(a2)
    80003600:	01f7f713          	andi	a4,a5,31
    80003604:	00e58733          	add	a4,a1,a4
    80003608:	0206f693          	andi	a3,a3,32
    8000360c:	00178793          	addi	a5,a5,1
    80003610:	fc069ae3          	bnez	a3,800035e4 <uartputc+0xac>
    80003614:	02813083          	ld	ra,40(sp)
    80003618:	02013403          	ld	s0,32(sp)
    8000361c:	01813483          	ld	s1,24(sp)
    80003620:	01013903          	ld	s2,16(sp)
    80003624:	00813983          	ld	s3,8(sp)
    80003628:	03010113          	addi	sp,sp,48
    8000362c:	00008067          	ret

0000000080003630 <uartputc_sync>:
    80003630:	ff010113          	addi	sp,sp,-16
    80003634:	00813423          	sd	s0,8(sp)
    80003638:	01010413          	addi	s0,sp,16
    8000363c:	00002717          	auipc	a4,0x2
    80003640:	41c72703          	lw	a4,1052(a4) # 80005a58 <panicked>
    80003644:	02071663          	bnez	a4,80003670 <uartputc_sync+0x40>
    80003648:	00050793          	mv	a5,a0
    8000364c:	100006b7          	lui	a3,0x10000
    80003650:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003654:	02077713          	andi	a4,a4,32
    80003658:	fe070ce3          	beqz	a4,80003650 <uartputc_sync+0x20>
    8000365c:	0ff7f793          	andi	a5,a5,255
    80003660:	00f68023          	sb	a5,0(a3)
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret
    80003670:	0000006f          	j	80003670 <uartputc_sync+0x40>

0000000080003674 <uartstart>:
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00813423          	sd	s0,8(sp)
    8000367c:	01010413          	addi	s0,sp,16
    80003680:	00002617          	auipc	a2,0x2
    80003684:	3e060613          	addi	a2,a2,992 # 80005a60 <uart_tx_r>
    80003688:	00002517          	auipc	a0,0x2
    8000368c:	3e050513          	addi	a0,a0,992 # 80005a68 <uart_tx_w>
    80003690:	00063783          	ld	a5,0(a2)
    80003694:	00053703          	ld	a4,0(a0)
    80003698:	04f70263          	beq	a4,a5,800036dc <uartstart+0x68>
    8000369c:	100005b7          	lui	a1,0x10000
    800036a0:	00003817          	auipc	a6,0x3
    800036a4:	65080813          	addi	a6,a6,1616 # 80006cf0 <uart_tx_buf>
    800036a8:	01c0006f          	j	800036c4 <uartstart+0x50>
    800036ac:	0006c703          	lbu	a4,0(a3)
    800036b0:	00f63023          	sd	a5,0(a2)
    800036b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036b8:	00063783          	ld	a5,0(a2)
    800036bc:	00053703          	ld	a4,0(a0)
    800036c0:	00f70e63          	beq	a4,a5,800036dc <uartstart+0x68>
    800036c4:	01f7f713          	andi	a4,a5,31
    800036c8:	00e806b3          	add	a3,a6,a4
    800036cc:	0055c703          	lbu	a4,5(a1)
    800036d0:	00178793          	addi	a5,a5,1
    800036d4:	02077713          	andi	a4,a4,32
    800036d8:	fc071ae3          	bnez	a4,800036ac <uartstart+0x38>
    800036dc:	00813403          	ld	s0,8(sp)
    800036e0:	01010113          	addi	sp,sp,16
    800036e4:	00008067          	ret

00000000800036e8 <uartgetc>:
    800036e8:	ff010113          	addi	sp,sp,-16
    800036ec:	00813423          	sd	s0,8(sp)
    800036f0:	01010413          	addi	s0,sp,16
    800036f4:	10000737          	lui	a4,0x10000
    800036f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800036fc:	0017f793          	andi	a5,a5,1
    80003700:	00078c63          	beqz	a5,80003718 <uartgetc+0x30>
    80003704:	00074503          	lbu	a0,0(a4)
    80003708:	0ff57513          	andi	a0,a0,255
    8000370c:	00813403          	ld	s0,8(sp)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret
    80003718:	fff00513          	li	a0,-1
    8000371c:	ff1ff06f          	j	8000370c <uartgetc+0x24>

0000000080003720 <uartintr>:
    80003720:	100007b7          	lui	a5,0x10000
    80003724:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003728:	0017f793          	andi	a5,a5,1
    8000372c:	0a078463          	beqz	a5,800037d4 <uartintr+0xb4>
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	00113c23          	sd	ra,24(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	100004b7          	lui	s1,0x10000
    80003748:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000374c:	0ff57513          	andi	a0,a0,255
    80003750:	fffff097          	auipc	ra,0xfffff
    80003754:	534080e7          	jalr	1332(ra) # 80002c84 <consoleintr>
    80003758:	0054c783          	lbu	a5,5(s1)
    8000375c:	0017f793          	andi	a5,a5,1
    80003760:	fe0794e3          	bnez	a5,80003748 <uartintr+0x28>
    80003764:	00002617          	auipc	a2,0x2
    80003768:	2fc60613          	addi	a2,a2,764 # 80005a60 <uart_tx_r>
    8000376c:	00002517          	auipc	a0,0x2
    80003770:	2fc50513          	addi	a0,a0,764 # 80005a68 <uart_tx_w>
    80003774:	00063783          	ld	a5,0(a2)
    80003778:	00053703          	ld	a4,0(a0)
    8000377c:	04f70263          	beq	a4,a5,800037c0 <uartintr+0xa0>
    80003780:	100005b7          	lui	a1,0x10000
    80003784:	00003817          	auipc	a6,0x3
    80003788:	56c80813          	addi	a6,a6,1388 # 80006cf0 <uart_tx_buf>
    8000378c:	01c0006f          	j	800037a8 <uartintr+0x88>
    80003790:	0006c703          	lbu	a4,0(a3)
    80003794:	00f63023          	sd	a5,0(a2)
    80003798:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000379c:	00063783          	ld	a5,0(a2)
    800037a0:	00053703          	ld	a4,0(a0)
    800037a4:	00f70e63          	beq	a4,a5,800037c0 <uartintr+0xa0>
    800037a8:	01f7f713          	andi	a4,a5,31
    800037ac:	00e806b3          	add	a3,a6,a4
    800037b0:	0055c703          	lbu	a4,5(a1)
    800037b4:	00178793          	addi	a5,a5,1
    800037b8:	02077713          	andi	a4,a4,32
    800037bc:	fc071ae3          	bnez	a4,80003790 <uartintr+0x70>
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00813483          	ld	s1,8(sp)
    800037cc:	02010113          	addi	sp,sp,32
    800037d0:	00008067          	ret
    800037d4:	00002617          	auipc	a2,0x2
    800037d8:	28c60613          	addi	a2,a2,652 # 80005a60 <uart_tx_r>
    800037dc:	00002517          	auipc	a0,0x2
    800037e0:	28c50513          	addi	a0,a0,652 # 80005a68 <uart_tx_w>
    800037e4:	00063783          	ld	a5,0(a2)
    800037e8:	00053703          	ld	a4,0(a0)
    800037ec:	04f70263          	beq	a4,a5,80003830 <uartintr+0x110>
    800037f0:	100005b7          	lui	a1,0x10000
    800037f4:	00003817          	auipc	a6,0x3
    800037f8:	4fc80813          	addi	a6,a6,1276 # 80006cf0 <uart_tx_buf>
    800037fc:	01c0006f          	j	80003818 <uartintr+0xf8>
    80003800:	0006c703          	lbu	a4,0(a3)
    80003804:	00f63023          	sd	a5,0(a2)
    80003808:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000380c:	00063783          	ld	a5,0(a2)
    80003810:	00053703          	ld	a4,0(a0)
    80003814:	02f70063          	beq	a4,a5,80003834 <uartintr+0x114>
    80003818:	01f7f713          	andi	a4,a5,31
    8000381c:	00e806b3          	add	a3,a6,a4
    80003820:	0055c703          	lbu	a4,5(a1)
    80003824:	00178793          	addi	a5,a5,1
    80003828:	02077713          	andi	a4,a4,32
    8000382c:	fc071ae3          	bnez	a4,80003800 <uartintr+0xe0>
    80003830:	00008067          	ret
    80003834:	00008067          	ret

0000000080003838 <kinit>:
    80003838:	fc010113          	addi	sp,sp,-64
    8000383c:	02913423          	sd	s1,40(sp)
    80003840:	fffff7b7          	lui	a5,0xfffff
    80003844:	00004497          	auipc	s1,0x4
    80003848:	4db48493          	addi	s1,s1,1243 # 80007d1f <end+0xfff>
    8000384c:	02813823          	sd	s0,48(sp)
    80003850:	01313c23          	sd	s3,24(sp)
    80003854:	00f4f4b3          	and	s1,s1,a5
    80003858:	02113c23          	sd	ra,56(sp)
    8000385c:	03213023          	sd	s2,32(sp)
    80003860:	01413823          	sd	s4,16(sp)
    80003864:	01513423          	sd	s5,8(sp)
    80003868:	04010413          	addi	s0,sp,64
    8000386c:	000017b7          	lui	a5,0x1
    80003870:	01100993          	li	s3,17
    80003874:	00f487b3          	add	a5,s1,a5
    80003878:	01b99993          	slli	s3,s3,0x1b
    8000387c:	06f9e063          	bltu	s3,a5,800038dc <kinit+0xa4>
    80003880:	00003a97          	auipc	s5,0x3
    80003884:	4a0a8a93          	addi	s5,s5,1184 # 80006d20 <end>
    80003888:	0754ec63          	bltu	s1,s5,80003900 <kinit+0xc8>
    8000388c:	0734fa63          	bgeu	s1,s3,80003900 <kinit+0xc8>
    80003890:	00088a37          	lui	s4,0x88
    80003894:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003898:	00002917          	auipc	s2,0x2
    8000389c:	1d890913          	addi	s2,s2,472 # 80005a70 <kmem>
    800038a0:	00ca1a13          	slli	s4,s4,0xc
    800038a4:	0140006f          	j	800038b8 <kinit+0x80>
    800038a8:	000017b7          	lui	a5,0x1
    800038ac:	00f484b3          	add	s1,s1,a5
    800038b0:	0554e863          	bltu	s1,s5,80003900 <kinit+0xc8>
    800038b4:	0534f663          	bgeu	s1,s3,80003900 <kinit+0xc8>
    800038b8:	00001637          	lui	a2,0x1
    800038bc:	00100593          	li	a1,1
    800038c0:	00048513          	mv	a0,s1
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	5e4080e7          	jalr	1508(ra) # 80003ea8 <__memset>
    800038cc:	00093783          	ld	a5,0(s2)
    800038d0:	00f4b023          	sd	a5,0(s1)
    800038d4:	00993023          	sd	s1,0(s2)
    800038d8:	fd4498e3          	bne	s1,s4,800038a8 <kinit+0x70>
    800038dc:	03813083          	ld	ra,56(sp)
    800038e0:	03013403          	ld	s0,48(sp)
    800038e4:	02813483          	ld	s1,40(sp)
    800038e8:	02013903          	ld	s2,32(sp)
    800038ec:	01813983          	ld	s3,24(sp)
    800038f0:	01013a03          	ld	s4,16(sp)
    800038f4:	00813a83          	ld	s5,8(sp)
    800038f8:	04010113          	addi	sp,sp,64
    800038fc:	00008067          	ret
    80003900:	00002517          	auipc	a0,0x2
    80003904:	97850513          	addi	a0,a0,-1672 # 80005278 <digits+0x18>
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	4b4080e7          	jalr	1204(ra) # 80002dbc <panic>

0000000080003910 <freerange>:
    80003910:	fc010113          	addi	sp,sp,-64
    80003914:	000017b7          	lui	a5,0x1
    80003918:	02913423          	sd	s1,40(sp)
    8000391c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003920:	009504b3          	add	s1,a0,s1
    80003924:	fffff537          	lui	a0,0xfffff
    80003928:	02813823          	sd	s0,48(sp)
    8000392c:	02113c23          	sd	ra,56(sp)
    80003930:	03213023          	sd	s2,32(sp)
    80003934:	01313c23          	sd	s3,24(sp)
    80003938:	01413823          	sd	s4,16(sp)
    8000393c:	01513423          	sd	s5,8(sp)
    80003940:	01613023          	sd	s6,0(sp)
    80003944:	04010413          	addi	s0,sp,64
    80003948:	00a4f4b3          	and	s1,s1,a0
    8000394c:	00f487b3          	add	a5,s1,a5
    80003950:	06f5e463          	bltu	a1,a5,800039b8 <freerange+0xa8>
    80003954:	00003a97          	auipc	s5,0x3
    80003958:	3cca8a93          	addi	s5,s5,972 # 80006d20 <end>
    8000395c:	0954e263          	bltu	s1,s5,800039e0 <freerange+0xd0>
    80003960:	01100993          	li	s3,17
    80003964:	01b99993          	slli	s3,s3,0x1b
    80003968:	0734fc63          	bgeu	s1,s3,800039e0 <freerange+0xd0>
    8000396c:	00058a13          	mv	s4,a1
    80003970:	00002917          	auipc	s2,0x2
    80003974:	10090913          	addi	s2,s2,256 # 80005a70 <kmem>
    80003978:	00002b37          	lui	s6,0x2
    8000397c:	0140006f          	j	80003990 <freerange+0x80>
    80003980:	000017b7          	lui	a5,0x1
    80003984:	00f484b3          	add	s1,s1,a5
    80003988:	0554ec63          	bltu	s1,s5,800039e0 <freerange+0xd0>
    8000398c:	0534fa63          	bgeu	s1,s3,800039e0 <freerange+0xd0>
    80003990:	00001637          	lui	a2,0x1
    80003994:	00100593          	li	a1,1
    80003998:	00048513          	mv	a0,s1
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	50c080e7          	jalr	1292(ra) # 80003ea8 <__memset>
    800039a4:	00093703          	ld	a4,0(s2)
    800039a8:	016487b3          	add	a5,s1,s6
    800039ac:	00e4b023          	sd	a4,0(s1)
    800039b0:	00993023          	sd	s1,0(s2)
    800039b4:	fcfa76e3          	bgeu	s4,a5,80003980 <freerange+0x70>
    800039b8:	03813083          	ld	ra,56(sp)
    800039bc:	03013403          	ld	s0,48(sp)
    800039c0:	02813483          	ld	s1,40(sp)
    800039c4:	02013903          	ld	s2,32(sp)
    800039c8:	01813983          	ld	s3,24(sp)
    800039cc:	01013a03          	ld	s4,16(sp)
    800039d0:	00813a83          	ld	s5,8(sp)
    800039d4:	00013b03          	ld	s6,0(sp)
    800039d8:	04010113          	addi	sp,sp,64
    800039dc:	00008067          	ret
    800039e0:	00002517          	auipc	a0,0x2
    800039e4:	89850513          	addi	a0,a0,-1896 # 80005278 <digits+0x18>
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	3d4080e7          	jalr	980(ra) # 80002dbc <panic>

00000000800039f0 <kfree>:
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	03451793          	slli	a5,a0,0x34
    80003a08:	04079c63          	bnez	a5,80003a60 <kfree+0x70>
    80003a0c:	00003797          	auipc	a5,0x3
    80003a10:	31478793          	addi	a5,a5,788 # 80006d20 <end>
    80003a14:	00050493          	mv	s1,a0
    80003a18:	04f56463          	bltu	a0,a5,80003a60 <kfree+0x70>
    80003a1c:	01100793          	li	a5,17
    80003a20:	01b79793          	slli	a5,a5,0x1b
    80003a24:	02f57e63          	bgeu	a0,a5,80003a60 <kfree+0x70>
    80003a28:	00001637          	lui	a2,0x1
    80003a2c:	00100593          	li	a1,1
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	478080e7          	jalr	1144(ra) # 80003ea8 <__memset>
    80003a38:	00002797          	auipc	a5,0x2
    80003a3c:	03878793          	addi	a5,a5,56 # 80005a70 <kmem>
    80003a40:	0007b703          	ld	a4,0(a5)
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00e4b023          	sd	a4,0(s1)
    80003a50:	0097b023          	sd	s1,0(a5)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	81850513          	addi	a0,a0,-2024 # 80005278 <digits+0x18>
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	354080e7          	jalr	852(ra) # 80002dbc <panic>

0000000080003a70 <kalloc>:
    80003a70:	fe010113          	addi	sp,sp,-32
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	00113c23          	sd	ra,24(sp)
    80003a80:	02010413          	addi	s0,sp,32
    80003a84:	00002797          	auipc	a5,0x2
    80003a88:	fec78793          	addi	a5,a5,-20 # 80005a70 <kmem>
    80003a8c:	0007b483          	ld	s1,0(a5)
    80003a90:	02048063          	beqz	s1,80003ab0 <kalloc+0x40>
    80003a94:	0004b703          	ld	a4,0(s1)
    80003a98:	00001637          	lui	a2,0x1
    80003a9c:	00500593          	li	a1,5
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	00e7b023          	sd	a4,0(a5)
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	400080e7          	jalr	1024(ra) # 80003ea8 <__memset>
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret

0000000080003ac8 <initlock>:
    80003ac8:	ff010113          	addi	sp,sp,-16
    80003acc:	00813423          	sd	s0,8(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    80003ad4:	00813403          	ld	s0,8(sp)
    80003ad8:	00b53423          	sd	a1,8(a0)
    80003adc:	00052023          	sw	zero,0(a0)
    80003ae0:	00053823          	sd	zero,16(a0)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret

0000000080003aec <acquire>:
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00913423          	sd	s1,8(sp)
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	01213023          	sd	s2,0(sp)
    80003b00:	02010413          	addi	s0,sp,32
    80003b04:	00050493          	mv	s1,a0
    80003b08:	10002973          	csrr	s2,sstatus
    80003b0c:	100027f3          	csrr	a5,sstatus
    80003b10:	ffd7f793          	andi	a5,a5,-3
    80003b14:	10079073          	csrw	sstatus,a5
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	8e8080e7          	jalr	-1816(ra) # 80002400 <mycpu>
    80003b20:	07852783          	lw	a5,120(a0)
    80003b24:	06078e63          	beqz	a5,80003ba0 <acquire+0xb4>
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	8d8080e7          	jalr	-1832(ra) # 80002400 <mycpu>
    80003b30:	07852783          	lw	a5,120(a0)
    80003b34:	0004a703          	lw	a4,0(s1)
    80003b38:	0017879b          	addiw	a5,a5,1
    80003b3c:	06f52c23          	sw	a5,120(a0)
    80003b40:	04071063          	bnez	a4,80003b80 <acquire+0x94>
    80003b44:	00100713          	li	a4,1
    80003b48:	00070793          	mv	a5,a4
    80003b4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003b50:	0007879b          	sext.w	a5,a5
    80003b54:	fe079ae3          	bnez	a5,80003b48 <acquire+0x5c>
    80003b58:	0ff0000f          	fence
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	8a4080e7          	jalr	-1884(ra) # 80002400 <mycpu>
    80003b64:	01813083          	ld	ra,24(sp)
    80003b68:	01013403          	ld	s0,16(sp)
    80003b6c:	00a4b823          	sd	a0,16(s1)
    80003b70:	00013903          	ld	s2,0(sp)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	02010113          	addi	sp,sp,32
    80003b7c:	00008067          	ret
    80003b80:	0104b903          	ld	s2,16(s1)
    80003b84:	fffff097          	auipc	ra,0xfffff
    80003b88:	87c080e7          	jalr	-1924(ra) # 80002400 <mycpu>
    80003b8c:	faa91ce3          	bne	s2,a0,80003b44 <acquire+0x58>
    80003b90:	00001517          	auipc	a0,0x1
    80003b94:	6f050513          	addi	a0,a0,1776 # 80005280 <digits+0x20>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	224080e7          	jalr	548(ra) # 80002dbc <panic>
    80003ba0:	00195913          	srli	s2,s2,0x1
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	85c080e7          	jalr	-1956(ra) # 80002400 <mycpu>
    80003bac:	00197913          	andi	s2,s2,1
    80003bb0:	07252e23          	sw	s2,124(a0)
    80003bb4:	f75ff06f          	j	80003b28 <acquire+0x3c>

0000000080003bb8 <release>:
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00113c23          	sd	ra,24(sp)
    80003bc4:	00913423          	sd	s1,8(sp)
    80003bc8:	01213023          	sd	s2,0(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	00052783          	lw	a5,0(a0)
    80003bd4:	00079a63          	bnez	a5,80003be8 <release+0x30>
    80003bd8:	00001517          	auipc	a0,0x1
    80003bdc:	6b050513          	addi	a0,a0,1712 # 80005288 <digits+0x28>
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	1dc080e7          	jalr	476(ra) # 80002dbc <panic>
    80003be8:	01053903          	ld	s2,16(a0)
    80003bec:	00050493          	mv	s1,a0
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	810080e7          	jalr	-2032(ra) # 80002400 <mycpu>
    80003bf8:	fea910e3          	bne	s2,a0,80003bd8 <release+0x20>
    80003bfc:	0004b823          	sd	zero,16(s1)
    80003c00:	0ff0000f          	fence
    80003c04:	0f50000f          	fence	iorw,ow
    80003c08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	7f4080e7          	jalr	2036(ra) # 80002400 <mycpu>
    80003c14:	100027f3          	csrr	a5,sstatus
    80003c18:	0027f793          	andi	a5,a5,2
    80003c1c:	04079a63          	bnez	a5,80003c70 <release+0xb8>
    80003c20:	07852783          	lw	a5,120(a0)
    80003c24:	02f05e63          	blez	a5,80003c60 <release+0xa8>
    80003c28:	fff7871b          	addiw	a4,a5,-1
    80003c2c:	06e52c23          	sw	a4,120(a0)
    80003c30:	00071c63          	bnez	a4,80003c48 <release+0x90>
    80003c34:	07c52783          	lw	a5,124(a0)
    80003c38:	00078863          	beqz	a5,80003c48 <release+0x90>
    80003c3c:	100027f3          	csrr	a5,sstatus
    80003c40:	0027e793          	ori	a5,a5,2
    80003c44:	10079073          	csrw	sstatus,a5
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	00813483          	ld	s1,8(sp)
    80003c54:	00013903          	ld	s2,0(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	64850513          	addi	a0,a0,1608 # 800052a8 <digits+0x48>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	154080e7          	jalr	340(ra) # 80002dbc <panic>
    80003c70:	00001517          	auipc	a0,0x1
    80003c74:	62050513          	addi	a0,a0,1568 # 80005290 <digits+0x30>
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	144080e7          	jalr	324(ra) # 80002dbc <panic>

0000000080003c80 <holding>:
    80003c80:	00052783          	lw	a5,0(a0)
    80003c84:	00079663          	bnez	a5,80003c90 <holding+0x10>
    80003c88:	00000513          	li	a0,0
    80003c8c:	00008067          	ret
    80003c90:	fe010113          	addi	sp,sp,-32
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	00113c23          	sd	ra,24(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	01053483          	ld	s1,16(a0)
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	758080e7          	jalr	1880(ra) # 80002400 <mycpu>
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	40a48533          	sub	a0,s1,a0
    80003cbc:	00153513          	seqz	a0,a0
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	00008067          	ret

0000000080003ccc <push_off>:
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00813823          	sd	s0,16(sp)
    80003cd4:	00113c23          	sd	ra,24(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	100024f3          	csrr	s1,sstatus
    80003ce4:	100027f3          	csrr	a5,sstatus
    80003ce8:	ffd7f793          	andi	a5,a5,-3
    80003cec:	10079073          	csrw	sstatus,a5
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	710080e7          	jalr	1808(ra) # 80002400 <mycpu>
    80003cf8:	07852783          	lw	a5,120(a0)
    80003cfc:	02078663          	beqz	a5,80003d28 <push_off+0x5c>
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	700080e7          	jalr	1792(ra) # 80002400 <mycpu>
    80003d08:	07852783          	lw	a5,120(a0)
    80003d0c:	01813083          	ld	ra,24(sp)
    80003d10:	01013403          	ld	s0,16(sp)
    80003d14:	0017879b          	addiw	a5,a5,1
    80003d18:	06f52c23          	sw	a5,120(a0)
    80003d1c:	00813483          	ld	s1,8(sp)
    80003d20:	02010113          	addi	sp,sp,32
    80003d24:	00008067          	ret
    80003d28:	0014d493          	srli	s1,s1,0x1
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	6d4080e7          	jalr	1748(ra) # 80002400 <mycpu>
    80003d34:	0014f493          	andi	s1,s1,1
    80003d38:	06952e23          	sw	s1,124(a0)
    80003d3c:	fc5ff06f          	j	80003d00 <push_off+0x34>

0000000080003d40 <pop_off>:
    80003d40:	ff010113          	addi	sp,sp,-16
    80003d44:	00813023          	sd	s0,0(sp)
    80003d48:	00113423          	sd	ra,8(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	6b0080e7          	jalr	1712(ra) # 80002400 <mycpu>
    80003d58:	100027f3          	csrr	a5,sstatus
    80003d5c:	0027f793          	andi	a5,a5,2
    80003d60:	04079663          	bnez	a5,80003dac <pop_off+0x6c>
    80003d64:	07852783          	lw	a5,120(a0)
    80003d68:	02f05a63          	blez	a5,80003d9c <pop_off+0x5c>
    80003d6c:	fff7871b          	addiw	a4,a5,-1
    80003d70:	06e52c23          	sw	a4,120(a0)
    80003d74:	00071c63          	bnez	a4,80003d8c <pop_off+0x4c>
    80003d78:	07c52783          	lw	a5,124(a0)
    80003d7c:	00078863          	beqz	a5,80003d8c <pop_off+0x4c>
    80003d80:	100027f3          	csrr	a5,sstatus
    80003d84:	0027e793          	ori	a5,a5,2
    80003d88:	10079073          	csrw	sstatus,a5
    80003d8c:	00813083          	ld	ra,8(sp)
    80003d90:	00013403          	ld	s0,0(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    80003d9c:	00001517          	auipc	a0,0x1
    80003da0:	50c50513          	addi	a0,a0,1292 # 800052a8 <digits+0x48>
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	018080e7          	jalr	24(ra) # 80002dbc <panic>
    80003dac:	00001517          	auipc	a0,0x1
    80003db0:	4e450513          	addi	a0,a0,1252 # 80005290 <digits+0x30>
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	008080e7          	jalr	8(ra) # 80002dbc <panic>

0000000080003dbc <push_on>:
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	100024f3          	csrr	s1,sstatus
    80003dd4:	100027f3          	csrr	a5,sstatus
    80003dd8:	0027e793          	ori	a5,a5,2
    80003ddc:	10079073          	csrw	sstatus,a5
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	620080e7          	jalr	1568(ra) # 80002400 <mycpu>
    80003de8:	07852783          	lw	a5,120(a0)
    80003dec:	02078663          	beqz	a5,80003e18 <push_on+0x5c>
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	610080e7          	jalr	1552(ra) # 80002400 <mycpu>
    80003df8:	07852783          	lw	a5,120(a0)
    80003dfc:	01813083          	ld	ra,24(sp)
    80003e00:	01013403          	ld	s0,16(sp)
    80003e04:	0017879b          	addiw	a5,a5,1
    80003e08:	06f52c23          	sw	a5,120(a0)
    80003e0c:	00813483          	ld	s1,8(sp)
    80003e10:	02010113          	addi	sp,sp,32
    80003e14:	00008067          	ret
    80003e18:	0014d493          	srli	s1,s1,0x1
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	5e4080e7          	jalr	1508(ra) # 80002400 <mycpu>
    80003e24:	0014f493          	andi	s1,s1,1
    80003e28:	06952e23          	sw	s1,124(a0)
    80003e2c:	fc5ff06f          	j	80003df0 <push_on+0x34>

0000000080003e30 <pop_on>:
    80003e30:	ff010113          	addi	sp,sp,-16
    80003e34:	00813023          	sd	s0,0(sp)
    80003e38:	00113423          	sd	ra,8(sp)
    80003e3c:	01010413          	addi	s0,sp,16
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	5c0080e7          	jalr	1472(ra) # 80002400 <mycpu>
    80003e48:	100027f3          	csrr	a5,sstatus
    80003e4c:	0027f793          	andi	a5,a5,2
    80003e50:	04078463          	beqz	a5,80003e98 <pop_on+0x68>
    80003e54:	07852783          	lw	a5,120(a0)
    80003e58:	02f05863          	blez	a5,80003e88 <pop_on+0x58>
    80003e5c:	fff7879b          	addiw	a5,a5,-1
    80003e60:	06f52c23          	sw	a5,120(a0)
    80003e64:	07853783          	ld	a5,120(a0)
    80003e68:	00079863          	bnez	a5,80003e78 <pop_on+0x48>
    80003e6c:	100027f3          	csrr	a5,sstatus
    80003e70:	ffd7f793          	andi	a5,a5,-3
    80003e74:	10079073          	csrw	sstatus,a5
    80003e78:	00813083          	ld	ra,8(sp)
    80003e7c:	00013403          	ld	s0,0(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret
    80003e88:	00001517          	auipc	a0,0x1
    80003e8c:	44850513          	addi	a0,a0,1096 # 800052d0 <digits+0x70>
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	f2c080e7          	jalr	-212(ra) # 80002dbc <panic>
    80003e98:	00001517          	auipc	a0,0x1
    80003e9c:	41850513          	addi	a0,a0,1048 # 800052b0 <digits+0x50>
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	f1c080e7          	jalr	-228(ra) # 80002dbc <panic>

0000000080003ea8 <__memset>:
    80003ea8:	ff010113          	addi	sp,sp,-16
    80003eac:	00813423          	sd	s0,8(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    80003eb4:	1a060e63          	beqz	a2,80004070 <__memset+0x1c8>
    80003eb8:	40a007b3          	neg	a5,a0
    80003ebc:	0077f793          	andi	a5,a5,7
    80003ec0:	00778693          	addi	a3,a5,7
    80003ec4:	00b00813          	li	a6,11
    80003ec8:	0ff5f593          	andi	a1,a1,255
    80003ecc:	fff6071b          	addiw	a4,a2,-1
    80003ed0:	1b06e663          	bltu	a3,a6,8000407c <__memset+0x1d4>
    80003ed4:	1cd76463          	bltu	a4,a3,8000409c <__memset+0x1f4>
    80003ed8:	1a078e63          	beqz	a5,80004094 <__memset+0x1ec>
    80003edc:	00b50023          	sb	a1,0(a0)
    80003ee0:	00100713          	li	a4,1
    80003ee4:	1ae78463          	beq	a5,a4,8000408c <__memset+0x1e4>
    80003ee8:	00b500a3          	sb	a1,1(a0)
    80003eec:	00200713          	li	a4,2
    80003ef0:	1ae78a63          	beq	a5,a4,800040a4 <__memset+0x1fc>
    80003ef4:	00b50123          	sb	a1,2(a0)
    80003ef8:	00300713          	li	a4,3
    80003efc:	18e78463          	beq	a5,a4,80004084 <__memset+0x1dc>
    80003f00:	00b501a3          	sb	a1,3(a0)
    80003f04:	00400713          	li	a4,4
    80003f08:	1ae78263          	beq	a5,a4,800040ac <__memset+0x204>
    80003f0c:	00b50223          	sb	a1,4(a0)
    80003f10:	00500713          	li	a4,5
    80003f14:	1ae78063          	beq	a5,a4,800040b4 <__memset+0x20c>
    80003f18:	00b502a3          	sb	a1,5(a0)
    80003f1c:	00700713          	li	a4,7
    80003f20:	18e79e63          	bne	a5,a4,800040bc <__memset+0x214>
    80003f24:	00b50323          	sb	a1,6(a0)
    80003f28:	00700e93          	li	t4,7
    80003f2c:	00859713          	slli	a4,a1,0x8
    80003f30:	00e5e733          	or	a4,a1,a4
    80003f34:	01059e13          	slli	t3,a1,0x10
    80003f38:	01c76e33          	or	t3,a4,t3
    80003f3c:	01859313          	slli	t1,a1,0x18
    80003f40:	006e6333          	or	t1,t3,t1
    80003f44:	02059893          	slli	a7,a1,0x20
    80003f48:	40f60e3b          	subw	t3,a2,a5
    80003f4c:	011368b3          	or	a7,t1,a7
    80003f50:	02859813          	slli	a6,a1,0x28
    80003f54:	0108e833          	or	a6,a7,a6
    80003f58:	03059693          	slli	a3,a1,0x30
    80003f5c:	003e589b          	srliw	a7,t3,0x3
    80003f60:	00d866b3          	or	a3,a6,a3
    80003f64:	03859713          	slli	a4,a1,0x38
    80003f68:	00389813          	slli	a6,a7,0x3
    80003f6c:	00f507b3          	add	a5,a0,a5
    80003f70:	00e6e733          	or	a4,a3,a4
    80003f74:	000e089b          	sext.w	a7,t3
    80003f78:	00f806b3          	add	a3,a6,a5
    80003f7c:	00e7b023          	sd	a4,0(a5)
    80003f80:	00878793          	addi	a5,a5,8
    80003f84:	fed79ce3          	bne	a5,a3,80003f7c <__memset+0xd4>
    80003f88:	ff8e7793          	andi	a5,t3,-8
    80003f8c:	0007871b          	sext.w	a4,a5
    80003f90:	01d787bb          	addw	a5,a5,t4
    80003f94:	0ce88e63          	beq	a7,a4,80004070 <__memset+0x1c8>
    80003f98:	00f50733          	add	a4,a0,a5
    80003f9c:	00b70023          	sb	a1,0(a4)
    80003fa0:	0017871b          	addiw	a4,a5,1
    80003fa4:	0cc77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00b70023          	sb	a1,0(a4)
    80003fb0:	0027871b          	addiw	a4,a5,2
    80003fb4:	0ac77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003fb8:	00e50733          	add	a4,a0,a4
    80003fbc:	00b70023          	sb	a1,0(a4)
    80003fc0:	0037871b          	addiw	a4,a5,3
    80003fc4:	0ac77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003fc8:	00e50733          	add	a4,a0,a4
    80003fcc:	00b70023          	sb	a1,0(a4)
    80003fd0:	0047871b          	addiw	a4,a5,4
    80003fd4:	08c77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003fd8:	00e50733          	add	a4,a0,a4
    80003fdc:	00b70023          	sb	a1,0(a4)
    80003fe0:	0057871b          	addiw	a4,a5,5
    80003fe4:	08c77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003fe8:	00e50733          	add	a4,a0,a4
    80003fec:	00b70023          	sb	a1,0(a4)
    80003ff0:	0067871b          	addiw	a4,a5,6
    80003ff4:	06c77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80003ff8:	00e50733          	add	a4,a0,a4
    80003ffc:	00b70023          	sb	a1,0(a4)
    80004000:	0077871b          	addiw	a4,a5,7
    80004004:	06c77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004008:	00e50733          	add	a4,a0,a4
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0087871b          	addiw	a4,a5,8
    80004014:	04c77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	0097871b          	addiw	a4,a5,9
    80004024:	04c77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	00a7871b          	addiw	a4,a5,10
    80004034:	02c77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	00b7871b          	addiw	a4,a5,11
    80004044:	02c77663          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	00c7871b          	addiw	a4,a5,12
    80004054:	00c77e63          	bgeu	a4,a2,80004070 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	00d7879b          	addiw	a5,a5,13
    80004064:	00c7f663          	bgeu	a5,a2,80004070 <__memset+0x1c8>
    80004068:	00f507b3          	add	a5,a0,a5
    8000406c:	00b78023          	sb	a1,0(a5)
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret
    8000407c:	00b00693          	li	a3,11
    80004080:	e55ff06f          	j	80003ed4 <__memset+0x2c>
    80004084:	00300e93          	li	t4,3
    80004088:	ea5ff06f          	j	80003f2c <__memset+0x84>
    8000408c:	00100e93          	li	t4,1
    80004090:	e9dff06f          	j	80003f2c <__memset+0x84>
    80004094:	00000e93          	li	t4,0
    80004098:	e95ff06f          	j	80003f2c <__memset+0x84>
    8000409c:	00000793          	li	a5,0
    800040a0:	ef9ff06f          	j	80003f98 <__memset+0xf0>
    800040a4:	00200e93          	li	t4,2
    800040a8:	e85ff06f          	j	80003f2c <__memset+0x84>
    800040ac:	00400e93          	li	t4,4
    800040b0:	e7dff06f          	j	80003f2c <__memset+0x84>
    800040b4:	00500e93          	li	t4,5
    800040b8:	e75ff06f          	j	80003f2c <__memset+0x84>
    800040bc:	00600e93          	li	t4,6
    800040c0:	e6dff06f          	j	80003f2c <__memset+0x84>

00000000800040c4 <__memmove>:
    800040c4:	ff010113          	addi	sp,sp,-16
    800040c8:	00813423          	sd	s0,8(sp)
    800040cc:	01010413          	addi	s0,sp,16
    800040d0:	0e060863          	beqz	a2,800041c0 <__memmove+0xfc>
    800040d4:	fff6069b          	addiw	a3,a2,-1
    800040d8:	0006881b          	sext.w	a6,a3
    800040dc:	0ea5e863          	bltu	a1,a0,800041cc <__memmove+0x108>
    800040e0:	00758713          	addi	a4,a1,7
    800040e4:	00a5e7b3          	or	a5,a1,a0
    800040e8:	40a70733          	sub	a4,a4,a0
    800040ec:	0077f793          	andi	a5,a5,7
    800040f0:	00f73713          	sltiu	a4,a4,15
    800040f4:	00174713          	xori	a4,a4,1
    800040f8:	0017b793          	seqz	a5,a5
    800040fc:	00e7f7b3          	and	a5,a5,a4
    80004100:	10078863          	beqz	a5,80004210 <__memmove+0x14c>
    80004104:	00900793          	li	a5,9
    80004108:	1107f463          	bgeu	a5,a6,80004210 <__memmove+0x14c>
    8000410c:	0036581b          	srliw	a6,a2,0x3
    80004110:	fff8081b          	addiw	a6,a6,-1
    80004114:	02081813          	slli	a6,a6,0x20
    80004118:	01d85893          	srli	a7,a6,0x1d
    8000411c:	00858813          	addi	a6,a1,8
    80004120:	00058793          	mv	a5,a1
    80004124:	00050713          	mv	a4,a0
    80004128:	01088833          	add	a6,a7,a6
    8000412c:	0007b883          	ld	a7,0(a5)
    80004130:	00878793          	addi	a5,a5,8
    80004134:	00870713          	addi	a4,a4,8
    80004138:	ff173c23          	sd	a7,-8(a4)
    8000413c:	ff0798e3          	bne	a5,a6,8000412c <__memmove+0x68>
    80004140:	ff867713          	andi	a4,a2,-8
    80004144:	02071793          	slli	a5,a4,0x20
    80004148:	0207d793          	srli	a5,a5,0x20
    8000414c:	00f585b3          	add	a1,a1,a5
    80004150:	40e686bb          	subw	a3,a3,a4
    80004154:	00f507b3          	add	a5,a0,a5
    80004158:	06e60463          	beq	a2,a4,800041c0 <__memmove+0xfc>
    8000415c:	0005c703          	lbu	a4,0(a1)
    80004160:	00e78023          	sb	a4,0(a5)
    80004164:	04068e63          	beqz	a3,800041c0 <__memmove+0xfc>
    80004168:	0015c603          	lbu	a2,1(a1)
    8000416c:	00100713          	li	a4,1
    80004170:	00c780a3          	sb	a2,1(a5)
    80004174:	04e68663          	beq	a3,a4,800041c0 <__memmove+0xfc>
    80004178:	0025c603          	lbu	a2,2(a1)
    8000417c:	00200713          	li	a4,2
    80004180:	00c78123          	sb	a2,2(a5)
    80004184:	02e68e63          	beq	a3,a4,800041c0 <__memmove+0xfc>
    80004188:	0035c603          	lbu	a2,3(a1)
    8000418c:	00300713          	li	a4,3
    80004190:	00c781a3          	sb	a2,3(a5)
    80004194:	02e68663          	beq	a3,a4,800041c0 <__memmove+0xfc>
    80004198:	0045c603          	lbu	a2,4(a1)
    8000419c:	00400713          	li	a4,4
    800041a0:	00c78223          	sb	a2,4(a5)
    800041a4:	00e68e63          	beq	a3,a4,800041c0 <__memmove+0xfc>
    800041a8:	0055c603          	lbu	a2,5(a1)
    800041ac:	00500713          	li	a4,5
    800041b0:	00c782a3          	sb	a2,5(a5)
    800041b4:	00e68663          	beq	a3,a4,800041c0 <__memmove+0xfc>
    800041b8:	0065c703          	lbu	a4,6(a1)
    800041bc:	00e78323          	sb	a4,6(a5)
    800041c0:	00813403          	ld	s0,8(sp)
    800041c4:	01010113          	addi	sp,sp,16
    800041c8:	00008067          	ret
    800041cc:	02061713          	slli	a4,a2,0x20
    800041d0:	02075713          	srli	a4,a4,0x20
    800041d4:	00e587b3          	add	a5,a1,a4
    800041d8:	f0f574e3          	bgeu	a0,a5,800040e0 <__memmove+0x1c>
    800041dc:	02069613          	slli	a2,a3,0x20
    800041e0:	02065613          	srli	a2,a2,0x20
    800041e4:	fff64613          	not	a2,a2
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00c78633          	add	a2,a5,a2
    800041f0:	fff7c683          	lbu	a3,-1(a5)
    800041f4:	fff78793          	addi	a5,a5,-1
    800041f8:	fff70713          	addi	a4,a4,-1
    800041fc:	00d70023          	sb	a3,0(a4)
    80004200:	fec798e3          	bne	a5,a2,800041f0 <__memmove+0x12c>
    80004204:	00813403          	ld	s0,8(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret
    80004210:	02069713          	slli	a4,a3,0x20
    80004214:	02075713          	srli	a4,a4,0x20
    80004218:	00170713          	addi	a4,a4,1
    8000421c:	00e50733          	add	a4,a0,a4
    80004220:	00050793          	mv	a5,a0
    80004224:	0005c683          	lbu	a3,0(a1)
    80004228:	00178793          	addi	a5,a5,1
    8000422c:	00158593          	addi	a1,a1,1
    80004230:	fed78fa3          	sb	a3,-1(a5)
    80004234:	fee798e3          	bne	a5,a4,80004224 <__memmove+0x160>
    80004238:	f89ff06f          	j	800041c0 <__memmove+0xfc>

000000008000423c <__mem_free>:
    8000423c:	ff010113          	addi	sp,sp,-16
    80004240:	00813423          	sd	s0,8(sp)
    80004244:	01010413          	addi	s0,sp,16
    80004248:	00002597          	auipc	a1,0x2
    8000424c:	83058593          	addi	a1,a1,-2000 # 80005a78 <freep>
    80004250:	0005b783          	ld	a5,0(a1)
    80004254:	ff050693          	addi	a3,a0,-16
    80004258:	0007b703          	ld	a4,0(a5)
    8000425c:	00d7fc63          	bgeu	a5,a3,80004274 <__mem_free+0x38>
    80004260:	00e6ee63          	bltu	a3,a4,8000427c <__mem_free+0x40>
    80004264:	00e7fc63          	bgeu	a5,a4,8000427c <__mem_free+0x40>
    80004268:	00070793          	mv	a5,a4
    8000426c:	0007b703          	ld	a4,0(a5)
    80004270:	fed7e8e3          	bltu	a5,a3,80004260 <__mem_free+0x24>
    80004274:	fee7eae3          	bltu	a5,a4,80004268 <__mem_free+0x2c>
    80004278:	fee6f8e3          	bgeu	a3,a4,80004268 <__mem_free+0x2c>
    8000427c:	ff852803          	lw	a6,-8(a0)
    80004280:	02081613          	slli	a2,a6,0x20
    80004284:	01c65613          	srli	a2,a2,0x1c
    80004288:	00c68633          	add	a2,a3,a2
    8000428c:	02c70a63          	beq	a4,a2,800042c0 <__mem_free+0x84>
    80004290:	fee53823          	sd	a4,-16(a0)
    80004294:	0087a503          	lw	a0,8(a5)
    80004298:	02051613          	slli	a2,a0,0x20
    8000429c:	01c65613          	srli	a2,a2,0x1c
    800042a0:	00c78633          	add	a2,a5,a2
    800042a4:	04c68263          	beq	a3,a2,800042e8 <__mem_free+0xac>
    800042a8:	00813403          	ld	s0,8(sp)
    800042ac:	00d7b023          	sd	a3,0(a5)
    800042b0:	00f5b023          	sd	a5,0(a1)
    800042b4:	00000513          	li	a0,0
    800042b8:	01010113          	addi	sp,sp,16
    800042bc:	00008067          	ret
    800042c0:	00872603          	lw	a2,8(a4)
    800042c4:	00073703          	ld	a4,0(a4)
    800042c8:	0106083b          	addw	a6,a2,a6
    800042cc:	ff052c23          	sw	a6,-8(a0)
    800042d0:	fee53823          	sd	a4,-16(a0)
    800042d4:	0087a503          	lw	a0,8(a5)
    800042d8:	02051613          	slli	a2,a0,0x20
    800042dc:	01c65613          	srli	a2,a2,0x1c
    800042e0:	00c78633          	add	a2,a5,a2
    800042e4:	fcc692e3          	bne	a3,a2,800042a8 <__mem_free+0x6c>
    800042e8:	00813403          	ld	s0,8(sp)
    800042ec:	0105053b          	addw	a0,a0,a6
    800042f0:	00a7a423          	sw	a0,8(a5)
    800042f4:	00e7b023          	sd	a4,0(a5)
    800042f8:	00f5b023          	sd	a5,0(a1)
    800042fc:	00000513          	li	a0,0
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <__mem_alloc>:
    80004308:	fc010113          	addi	sp,sp,-64
    8000430c:	02813823          	sd	s0,48(sp)
    80004310:	02913423          	sd	s1,40(sp)
    80004314:	03213023          	sd	s2,32(sp)
    80004318:	01513423          	sd	s5,8(sp)
    8000431c:	02113c23          	sd	ra,56(sp)
    80004320:	01313c23          	sd	s3,24(sp)
    80004324:	01413823          	sd	s4,16(sp)
    80004328:	01613023          	sd	s6,0(sp)
    8000432c:	04010413          	addi	s0,sp,64
    80004330:	00001a97          	auipc	s5,0x1
    80004334:	748a8a93          	addi	s5,s5,1864 # 80005a78 <freep>
    80004338:	00f50913          	addi	s2,a0,15
    8000433c:	000ab683          	ld	a3,0(s5)
    80004340:	00495913          	srli	s2,s2,0x4
    80004344:	0019049b          	addiw	s1,s2,1
    80004348:	00048913          	mv	s2,s1
    8000434c:	0c068c63          	beqz	a3,80004424 <__mem_alloc+0x11c>
    80004350:	0006b503          	ld	a0,0(a3)
    80004354:	00852703          	lw	a4,8(a0)
    80004358:	10977063          	bgeu	a4,s1,80004458 <__mem_alloc+0x150>
    8000435c:	000017b7          	lui	a5,0x1
    80004360:	0009099b          	sext.w	s3,s2
    80004364:	0af4e863          	bltu	s1,a5,80004414 <__mem_alloc+0x10c>
    80004368:	02099a13          	slli	s4,s3,0x20
    8000436c:	01ca5a13          	srli	s4,s4,0x1c
    80004370:	fff00b13          	li	s6,-1
    80004374:	0100006f          	j	80004384 <__mem_alloc+0x7c>
    80004378:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000437c:	00852703          	lw	a4,8(a0)
    80004380:	04977463          	bgeu	a4,s1,800043c8 <__mem_alloc+0xc0>
    80004384:	00050793          	mv	a5,a0
    80004388:	fea698e3          	bne	a3,a0,80004378 <__mem_alloc+0x70>
    8000438c:	000a0513          	mv	a0,s4
    80004390:	00000097          	auipc	ra,0x0
    80004394:	1f0080e7          	jalr	496(ra) # 80004580 <kvmincrease>
    80004398:	00050793          	mv	a5,a0
    8000439c:	01050513          	addi	a0,a0,16
    800043a0:	07678e63          	beq	a5,s6,8000441c <__mem_alloc+0x114>
    800043a4:	0137a423          	sw	s3,8(a5)
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	e94080e7          	jalr	-364(ra) # 8000423c <__mem_free>
    800043b0:	000ab783          	ld	a5,0(s5)
    800043b4:	06078463          	beqz	a5,8000441c <__mem_alloc+0x114>
    800043b8:	0007b503          	ld	a0,0(a5)
    800043bc:	00078693          	mv	a3,a5
    800043c0:	00852703          	lw	a4,8(a0)
    800043c4:	fc9760e3          	bltu	a4,s1,80004384 <__mem_alloc+0x7c>
    800043c8:	08e48263          	beq	s1,a4,8000444c <__mem_alloc+0x144>
    800043cc:	4127073b          	subw	a4,a4,s2
    800043d0:	02071693          	slli	a3,a4,0x20
    800043d4:	01c6d693          	srli	a3,a3,0x1c
    800043d8:	00e52423          	sw	a4,8(a0)
    800043dc:	00d50533          	add	a0,a0,a3
    800043e0:	01252423          	sw	s2,8(a0)
    800043e4:	00fab023          	sd	a5,0(s5)
    800043e8:	01050513          	addi	a0,a0,16
    800043ec:	03813083          	ld	ra,56(sp)
    800043f0:	03013403          	ld	s0,48(sp)
    800043f4:	02813483          	ld	s1,40(sp)
    800043f8:	02013903          	ld	s2,32(sp)
    800043fc:	01813983          	ld	s3,24(sp)
    80004400:	01013a03          	ld	s4,16(sp)
    80004404:	00813a83          	ld	s5,8(sp)
    80004408:	00013b03          	ld	s6,0(sp)
    8000440c:	04010113          	addi	sp,sp,64
    80004410:	00008067          	ret
    80004414:	000019b7          	lui	s3,0x1
    80004418:	f51ff06f          	j	80004368 <__mem_alloc+0x60>
    8000441c:	00000513          	li	a0,0
    80004420:	fcdff06f          	j	800043ec <__mem_alloc+0xe4>
    80004424:	00003797          	auipc	a5,0x3
    80004428:	8ec78793          	addi	a5,a5,-1812 # 80006d10 <base>
    8000442c:	00078513          	mv	a0,a5
    80004430:	00fab023          	sd	a5,0(s5)
    80004434:	00f7b023          	sd	a5,0(a5)
    80004438:	00000713          	li	a4,0
    8000443c:	00003797          	auipc	a5,0x3
    80004440:	8c07ae23          	sw	zero,-1828(a5) # 80006d18 <base+0x8>
    80004444:	00050693          	mv	a3,a0
    80004448:	f11ff06f          	j	80004358 <__mem_alloc+0x50>
    8000444c:	00053703          	ld	a4,0(a0)
    80004450:	00e7b023          	sd	a4,0(a5)
    80004454:	f91ff06f          	j	800043e4 <__mem_alloc+0xdc>
    80004458:	00068793          	mv	a5,a3
    8000445c:	f6dff06f          	j	800043c8 <__mem_alloc+0xc0>

0000000080004460 <__putc>:
    80004460:	fe010113          	addi	sp,sp,-32
    80004464:	00813823          	sd	s0,16(sp)
    80004468:	00113c23          	sd	ra,24(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	00050793          	mv	a5,a0
    80004474:	fef40593          	addi	a1,s0,-17
    80004478:	00100613          	li	a2,1
    8000447c:	00000513          	li	a0,0
    80004480:	fef407a3          	sb	a5,-17(s0)
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	918080e7          	jalr	-1768(ra) # 80002d9c <console_write>
    8000448c:	01813083          	ld	ra,24(sp)
    80004490:	01013403          	ld	s0,16(sp)
    80004494:	02010113          	addi	sp,sp,32
    80004498:	00008067          	ret

000000008000449c <__getc>:
    8000449c:	fe010113          	addi	sp,sp,-32
    800044a0:	00813823          	sd	s0,16(sp)
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	02010413          	addi	s0,sp,32
    800044ac:	fe840593          	addi	a1,s0,-24
    800044b0:	00100613          	li	a2,1
    800044b4:	00000513          	li	a0,0
    800044b8:	fffff097          	auipc	ra,0xfffff
    800044bc:	8c4080e7          	jalr	-1852(ra) # 80002d7c <console_read>
    800044c0:	fe844503          	lbu	a0,-24(s0)
    800044c4:	01813083          	ld	ra,24(sp)
    800044c8:	01013403          	ld	s0,16(sp)
    800044cc:	02010113          	addi	sp,sp,32
    800044d0:	00008067          	ret

00000000800044d4 <console_handler>:
    800044d4:	fe010113          	addi	sp,sp,-32
    800044d8:	00813823          	sd	s0,16(sp)
    800044dc:	00113c23          	sd	ra,24(sp)
    800044e0:	00913423          	sd	s1,8(sp)
    800044e4:	02010413          	addi	s0,sp,32
    800044e8:	14202773          	csrr	a4,scause
    800044ec:	100027f3          	csrr	a5,sstatus
    800044f0:	0027f793          	andi	a5,a5,2
    800044f4:	06079e63          	bnez	a5,80004570 <console_handler+0x9c>
    800044f8:	00074c63          	bltz	a4,80004510 <console_handler+0x3c>
    800044fc:	01813083          	ld	ra,24(sp)
    80004500:	01013403          	ld	s0,16(sp)
    80004504:	00813483          	ld	s1,8(sp)
    80004508:	02010113          	addi	sp,sp,32
    8000450c:	00008067          	ret
    80004510:	0ff77713          	andi	a4,a4,255
    80004514:	00900793          	li	a5,9
    80004518:	fef712e3          	bne	a4,a5,800044fc <console_handler+0x28>
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	4b8080e7          	jalr	1208(ra) # 800029d4 <plic_claim>
    80004524:	00a00793          	li	a5,10
    80004528:	00050493          	mv	s1,a0
    8000452c:	02f50c63          	beq	a0,a5,80004564 <console_handler+0x90>
    80004530:	fc0506e3          	beqz	a0,800044fc <console_handler+0x28>
    80004534:	00050593          	mv	a1,a0
    80004538:	00001517          	auipc	a0,0x1
    8000453c:	ca050513          	addi	a0,a0,-864 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	8d8080e7          	jalr	-1832(ra) # 80002e18 <__printf>
    80004548:	01013403          	ld	s0,16(sp)
    8000454c:	01813083          	ld	ra,24(sp)
    80004550:	00048513          	mv	a0,s1
    80004554:	00813483          	ld	s1,8(sp)
    80004558:	02010113          	addi	sp,sp,32
    8000455c:	ffffe317          	auipc	t1,0xffffe
    80004560:	4b030067          	jr	1200(t1) # 80002a0c <plic_complete>
    80004564:	fffff097          	auipc	ra,0xfffff
    80004568:	1bc080e7          	jalr	444(ra) # 80003720 <uartintr>
    8000456c:	fddff06f          	j	80004548 <console_handler+0x74>
    80004570:	00001517          	auipc	a0,0x1
    80004574:	d6850513          	addi	a0,a0,-664 # 800052d8 <digits+0x78>
    80004578:	fffff097          	auipc	ra,0xfffff
    8000457c:	844080e7          	jalr	-1980(ra) # 80002dbc <panic>

0000000080004580 <kvmincrease>:
    80004580:	fe010113          	addi	sp,sp,-32
    80004584:	01213023          	sd	s2,0(sp)
    80004588:	00001937          	lui	s2,0x1
    8000458c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	01250933          	add	s2,a0,s2
    800045a4:	00c95913          	srli	s2,s2,0xc
    800045a8:	02090863          	beqz	s2,800045d8 <kvmincrease+0x58>
    800045ac:	00000493          	li	s1,0
    800045b0:	00148493          	addi	s1,s1,1
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	4bc080e7          	jalr	1212(ra) # 80003a70 <kalloc>
    800045bc:	fe991ae3          	bne	s2,s1,800045b0 <kvmincrease+0x30>
    800045c0:	01813083          	ld	ra,24(sp)
    800045c4:	01013403          	ld	s0,16(sp)
    800045c8:	00813483          	ld	s1,8(sp)
    800045cc:	00013903          	ld	s2,0(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	00013903          	ld	s2,0(sp)
    800045e8:	00000513          	li	a0,0
    800045ec:	02010113          	addi	sp,sp,32
    800045f0:	00008067          	ret
	...


kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	bd013103          	ld	sp,-1072(sp) # 80005bd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f8020ef          	jal	ra,80002614 <start>

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
    80001080:	058010ef          	jal	ra,800020d8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001140:	e3c080e7          	jalr	-452(ra) # 80001f78 <_ZN9Scheduler3putEP7_thread>
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
    80001168:	02050c23          	sb	zero,56(a0)
    this->body=body;
    8000116c:	00b53023          	sd	a1,0(a0)
    this->timeSlice=timeSlice;
    80001170:	02c53023          	sd	a2,32(a0)
    this->finished=false;
    80001174:	02050423          	sb	zero,40(a0)
    this->stack = (body!= nullptr) ? stek: nullptr;
    80001178:	06058063          	beqz	a1,800011d8 <_ZN7_threadC1EPFvPvEmS0_Pm+0x80>
    8000117c:	00e53423          	sd	a4,8(a0)
    this->context.ra=(uint64)&threadWrapper;
    80001180:	00000797          	auipc	a5,0x0
    80001184:	09478793          	addi	a5,a5,148 # 80001214 <_ZN7_thread13threadWrapperEv>
    80001188:	00f53823          	sd	a5,16(a0)
    this->context.sp= (this->stack!= nullptr)?(uint64)&stack[DEFAULT_STACK_SIZE]:0;
    8000118c:	04070a63          	beqz	a4,800011e0 <_ZN7_threadC1EPFvPvEmS0_Pm+0x88>
    80001190:	000087b7          	lui	a5,0x8
    80001194:	00f70733          	add	a4,a4,a5
    80001198:	00e53c23          	sd	a4,24(a0)
    status = Status::NEW;
    8000119c:	00100793          	li	a5,1
    800011a0:	04f52423          	sw	a5,72(a0)
    id = globalId++;
    800011a4:	00005717          	auipc	a4,0x5
    800011a8:	a8c70713          	addi	a4,a4,-1396 # 80005c30 <_ZN7_thread8globalIdE>
    800011ac:	00073783          	ld	a5,0(a4)
    800011b0:	00178613          	addi	a2,a5,1 # 8001 <_entry-0x7fff7fff>
    800011b4:	00c73023          	sd	a2,0(a4)
    800011b8:	04f53023          	sd	a5,64(a0)
    this->arg=arg;
    800011bc:	02d53823          	sd	a3,48(a0)
    this->start();
    800011c0:	00000097          	auipc	ra,0x0
    800011c4:	f64080e7          	jalr	-156(ra) # 80001124 <_ZN7_thread5startEv>
}
    800011c8:	00813083          	ld	ra,8(sp)
    800011cc:	00013403          	ld	s0,0(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret
    this->stack = (body!= nullptr) ? stek: nullptr;
    800011d8:	00000713          	li	a4,0
    800011dc:	fa1ff06f          	j	8000117c <_ZN7_threadC1EPFvPvEmS0_Pm+0x24>
    this->context.sp= (this->stack!= nullptr)?(uint64)&stack[DEFAULT_STACK_SIZE]:0;
    800011e0:	00000713          	li	a4,0
    800011e4:	fb5ff06f          	j	80001198 <_ZN7_threadC1EPFvPvEmS0_Pm+0x40>

00000000800011e8 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    800011e8:	ff010113          	addi	sp,sp,-16
    800011ec:	00813423          	sd	s0,8(sp)
    800011f0:	01010413          	addi	s0,sp,16
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800011f4:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800011f8:	00400713          	li	a4,4
    800011fc:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    80001200:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    80001204:	00078513          	mv	a0,a5

}
    80001208:	00813403          	ld	s0,8(sp)
    8000120c:	01010113          	addi	sp,sp,16
    80001210:	00008067          	ret

0000000080001214 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001214:	fe010113          	addi	sp,sp,-32
    80001218:	00113c23          	sd	ra,24(sp)
    8000121c:	00813823          	sd	s0,16(sp)
    80001220:	00913423          	sd	s1,8(sp)
    80001224:	02010413          	addi	s0,sp,32
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    80001228:	00005497          	auipc	s1,0x5
    8000122c:	a0848493          	addi	s1,s1,-1528 # 80005c30 <_ZN7_thread8globalIdE>
    80001230:	0084b783          	ld	a5,8(s1)
    80001234:	0007b703          	ld	a4,0(a5)
    80001238:	0307b503          	ld	a0,48(a5)
    8000123c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001240:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001244:	00100713          	li	a4,1
    80001248:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	f9c080e7          	jalr	-100(ra) # 800011e8 <_ZN7_thread5yieldEv>
}
    80001254:	01813083          	ld	ra,24(sp)
    80001258:	01013403          	ld	s0,16(sp)
    8000125c:	00813483          	ld	s1,8(sp)
    80001260:	02010113          	addi	sp,sp,32
    80001264:	00008067          	ret

0000000080001268 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001268:	fe010113          	addi	sp,sp,-32
    8000126c:	00113c23          	sd	ra,24(sp)
    80001270:	00813823          	sd	s0,16(sp)
    80001274:	00913423          	sd	s1,8(sp)
    80001278:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000127c:	00005497          	auipc	s1,0x5
    80001280:	9bc4b483          	ld	s1,-1604(s1) # 80005c38 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001284:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001288:	02078c63          	beqz	a5,800012c0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    8000128c:	00001097          	auipc	ra,0x1
    80001290:	c84080e7          	jalr	-892(ra) # 80001f10 <_ZN9Scheduler3getEv>
    80001294:	00005797          	auipc	a5,0x5
    80001298:	9aa7b223          	sd	a0,-1628(a5) # 80005c38 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    8000129c:	01050593          	addi	a1,a0,16
    800012a0:	01048513          	addi	a0,s1,16
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	e6c080e7          	jalr	-404(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012ac:	01813083          	ld	ra,24(sp)
    800012b0:	01013403          	ld	s0,16(sp)
    800012b4:	00813483          	ld	s1,8(sp)
    800012b8:	02010113          	addi	sp,sp,32
    800012bc:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012c0:	00048513          	mv	a0,s1
    800012c4:	00001097          	auipc	ra,0x1
    800012c8:	cb4080e7          	jalr	-844(ra) # 80001f78 <_ZN9Scheduler3putEP7_thread>
    800012cc:	fc1ff06f          	j	8000128c <_ZN7_thread8dispatchEv+0x24>

00000000800012d0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012e0:	00001097          	auipc	ra,0x1
    800012e4:	1b8080e7          	jalr	440(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012e8:	00813083          	ld	ra,8(sp)
    800012ec:	00013403          	ld	s0,0(sp)
    800012f0:	01010113          	addi	sp,sp,16
    800012f4:	00008067          	ret

00000000800012f8 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00113423          	sd	ra,8(sp)
    80001300:	00813023          	sd	s0,0(sp)
    80001304:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	190080e7          	jalr	400(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001310:	00813083          	ld	ra,8(sp)
    80001314:	00013403          	ld	s0,0(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00113423          	sd	ra,8(sp)
    80001328:	00813023          	sd	s0,0(sp)
    8000132c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001330:	00001097          	auipc	ra,0x1
    80001334:	190080e7          	jalr	400(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001338:	00813083          	ld	ra,8(sp)
    8000133c:	00013403          	ld	s0,0(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_ZN7_thread12createThreadEPFvPvES0_Pm>:
_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    80001348:	fd010113          	addi	sp,sp,-48
    8000134c:	02113423          	sd	ra,40(sp)
    80001350:	02813023          	sd	s0,32(sp)
    80001354:	00913c23          	sd	s1,24(sp)
    80001358:	01213823          	sd	s2,16(sp)
    8000135c:	01313423          	sd	s3,8(sp)
    80001360:	01413023          	sd	s4,0(sp)
    80001364:	03010413          	addi	s0,sp,48
    80001368:	00050913          	mv	s2,a0
    8000136c:	00058993          	mv	s3,a1
    80001370:	00060a13          	mv	s4,a2
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
    80001374:	05000513          	li	a0,80
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	f58080e7          	jalr	-168(ra) # 800012d0 <_ZN7_threadnwEm>
    80001380:	00050493          	mv	s1,a0
    80001384:	000a0713          	mv	a4,s4
    80001388:	00098693          	mv	a3,s3
    8000138c:	00200613          	li	a2,2
    80001390:	00090593          	mv	a1,s2
    80001394:	00000097          	auipc	ra,0x0
    80001398:	dc4080e7          	jalr	-572(ra) # 80001158 <_ZN7_threadC1EPFvPvEmS0_Pm>
    8000139c:	0200006f          	j	800013bc <_ZN7_thread12createThreadEPFvPvES0_Pm+0x74>
    800013a0:	00050913          	mv	s2,a0
    800013a4:	00048513          	mv	a0,s1
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	f78080e7          	jalr	-136(ra) # 80001320 <_ZN7_threaddlEPv>
    800013b0:	00090513          	mv	a0,s2
    800013b4:	00006097          	auipc	ra,0x6
    800013b8:	974080e7          	jalr	-1676(ra) # 80006d28 <_Unwind_Resume>
}
    800013bc:	00048513          	mv	a0,s1
    800013c0:	02813083          	ld	ra,40(sp)
    800013c4:	02013403          	ld	s0,32(sp)
    800013c8:	01813483          	ld	s1,24(sp)
    800013cc:	01013903          	ld	s2,16(sp)
    800013d0:	00813983          	ld	s3,8(sp)
    800013d4:	00013a03          	ld	s4,0(sp)
    800013d8:	03010113          	addi	sp,sp,48
    800013dc:	00008067          	ret

00000000800013e0 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00113423          	sd	ra,8(sp)
    800013e8:	00813023          	sd	s0,0(sp)
    800013ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	0d0080e7          	jalr	208(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_ZN9Semaphore4waitEv>:

#include "../h/Semaphore.hpp"


int Semaphore::wait() {
    if(--val < 0){
    80001408:	00052783          	lw	a5,0(a0)
    8000140c:	fff7879b          	addiw	a5,a5,-1
    80001410:	00f52023          	sw	a5,0(a0)
    80001414:	02079713          	slli	a4,a5,0x20
    80001418:	00074663          	bltz	a4,80001424 <_ZN9Semaphore4waitEv+0x1c>
        _thread::contextSwitch(&old->context, &_thread::running->context);

        if(_thread::running->deblocked==true)return -1;
        else return 0;
    }
    return 0;
    8000141c:	00000513          	li	a0,0
}
    80001420:	00008067          	ret
int Semaphore::wait() {
    80001424:	fe010113          	addi	sp,sp,-32
    80001428:	00113c23          	sd	ra,24(sp)
    8000142c:	00813823          	sd	s0,16(sp)
    80001430:	00913423          	sd	s1,8(sp)
    80001434:	01213023          	sd	s2,0(sp)
    80001438:	02010413          	addi	s0,sp,32
    8000143c:	00050493          	mv	s1,a0
        _thread* old = _thread::running;
    80001440:	00004797          	auipc	a5,0x4
    80001444:	7807b783          	ld	a5,1920(a5) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001448:	0007b903          	ld	s2,0(a5)
    8000144c:	02894783          	lbu	a5,40(s2)
        if(!old->isFinished()) { this->blocked.addLast(old); }
    80001450:	04078863          	beqz	a5,800014a0 <_ZN9Semaphore4waitEv+0x98>
        _thread::running = Scheduler::get();
    80001454:	00001097          	auipc	ra,0x1
    80001458:	abc080e7          	jalr	-1348(ra) # 80001f10 <_ZN9Scheduler3getEv>
    8000145c:	00004497          	auipc	s1,0x4
    80001460:	7644b483          	ld	s1,1892(s1) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001464:	00a4b023          	sd	a0,0(s1)
        _thread::contextSwitch(&old->context, &_thread::running->context);
    80001468:	01050593          	addi	a1,a0,16
    8000146c:	01090513          	addi	a0,s2,16
    80001470:	00000097          	auipc	ra,0x0
    80001474:	ca0080e7          	jalr	-864(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
        if(_thread::running->deblocked==true)return -1;
    80001478:	0004b783          	ld	a5,0(s1)
    8000147c:	0387c783          	lbu	a5,56(a5)
    80001480:	04079a63          	bnez	a5,800014d4 <_ZN9Semaphore4waitEv+0xcc>
        else return 0;
    80001484:	00000513          	li	a0,0
}
    80001488:	01813083          	ld	ra,24(sp)
    8000148c:	01013403          	ld	s0,16(sp)
    80001490:	00813483          	ld	s1,8(sp)
    80001494:	00013903          	ld	s2,0(sp)
    80001498:	02010113          	addi	sp,sp,32
    8000149c:	00008067          	ret
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    800014a0:	01000513          	li	a0,16
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	ff4080e7          	jalr	-12(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    800014ac:	01253023          	sd	s2,0(a0)
        elem->next=0;
    800014b0:	00053423          	sd	zero,8(a0)
        if (tail)
    800014b4:	0104b783          	ld	a5,16(s1)
    800014b8:	00078863          	beqz	a5,800014c8 <_ZN9Semaphore4waitEv+0xc0>
        {
            tail->next = elem;
    800014bc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014c0:	00a4b823          	sd	a0,16(s1)
    800014c4:	f91ff06f          	j	80001454 <_ZN9Semaphore4waitEv+0x4c>
        } else
        {
            head = tail = elem;
    800014c8:	00a4b823          	sd	a0,16(s1)
    800014cc:	00a4b423          	sd	a0,8(s1)
    800014d0:	f85ff06f          	j	80001454 <_ZN9Semaphore4waitEv+0x4c>
        if(_thread::running->deblocked==true)return -1;
    800014d4:	fff00513          	li	a0,-1
    800014d8:	fb1ff06f          	j	80001488 <_ZN9Semaphore4waitEv+0x80>

00000000800014dc <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    if(++val <=0){
    800014dc:	00052703          	lw	a4,0(a0)
    800014e0:	0017071b          	addiw	a4,a4,1
    800014e4:	0007069b          	sext.w	a3,a4
    800014e8:	00e52023          	sw	a4,0(a0)
    800014ec:	00d05463          	blez	a3,800014f4 <_ZN9Semaphore6signalEv+0x18>
    800014f0:	00008067          	ret
    800014f4:	00050793          	mv	a5,a0
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800014f8:	00853503          	ld	a0,8(a0)
    800014fc:	fe050ae3          	beqz	a0,800014f0 <_ZN9Semaphore6signalEv+0x14>
        return head->data;
    80001500:	00053703          	ld	a4,0(a0)
        if(this->blocked.peekFirst()!= 0){
    80001504:	fe0706e3          	beqz	a4,800014f0 <_ZN9Semaphore6signalEv+0x14>
void Semaphore::signal() {
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00113c23          	sd	ra,24(sp)
    80001510:	00813823          	sd	s0,16(sp)
    80001514:	00913423          	sd	s1,8(sp)
    80001518:	02010413          	addi	s0,sp,32
        head = head->next;
    8000151c:	00853703          	ld	a4,8(a0)
    80001520:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001524:	02070863          	beqz	a4,80001554 <_ZN9Semaphore6signalEv+0x78>
        T *ret = elem->data;
    80001528:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	f94080e7          	jalr	-108(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
            _thread* thread = blocked.removeFirst();
            Scheduler::put(thread);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	a40080e7          	jalr	-1472(ra) # 80001f78 <_ZN9Scheduler3putEP7_thread>
        }
    }
}
    80001540:	01813083          	ld	ra,24(sp)
    80001544:	01013403          	ld	s0,16(sp)
    80001548:	00813483          	ld	s1,8(sp)
    8000154c:	02010113          	addi	sp,sp,32
    80001550:	00008067          	ret
        if (!head) { tail = 0; }
    80001554:	0007b823          	sd	zero,16(a5)
    80001558:	fd1ff06f          	j	80001528 <_ZN9Semaphore6signalEv+0x4c>

000000008000155c <_ZN9SemaphorenwEm>:

void* Semaphore::operator new(size_t n) {
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	f2c080e7          	jalr	-212(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_ZN9SemaphorenaEm>:

void* Semaphore::operator new[](size_t n) {
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00113423          	sd	ra,8(sp)
    8000158c:	00813023          	sd	s0,0(sp)
    80001590:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001594:	00001097          	auipc	ra,0x1
    80001598:	f04080e7          	jalr	-252(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
}
    8000159c:	00813083          	ld	ra,8(sp)
    800015a0:	00013403          	ld	s0,0(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_ZN9SemaphoredlEPv>:

void Semaphore::operator delete(void *p) noexcept {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	00813023          	sd	s0,0(sp)
    800015b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	f04080e7          	jalr	-252(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800015c4:	00813083          	ld	ra,8(sp)
    800015c8:	00013403          	ld	s0,0(sp)
    800015cc:	01010113          	addi	sp,sp,16
    800015d0:	00008067          	ret

00000000800015d4 <_ZN9SemaphoredaEPv>:

void Semaphore::operator delete[](void *p) noexcept {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00113423          	sd	ra,8(sp)
    800015dc:	00813023          	sd	s0,0(sp)
    800015e0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	edc080e7          	jalr	-292(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800015ec:	00813083          	ld	ra,8(sp)
    800015f0:	00013403          	ld	s0,0(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <main>:
        _thread::thread_t * handle,
        void(*start_routine)(void*),
        void* arg
);

int main(){
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	02010413          	addi	s0,sp,32


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    8000160c:	00004797          	auipc	a5,0x4
    80001610:	5bc7b783          	ld	a5,1468(a5) # 80005bc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001614:	10579073          	csrw	stvec,a5
//
//
//    printString("finished \n");

    _thread* idle;
    if(!thread_create(&idle, nullptr, nullptr)){
    80001618:	00000613          	li	a2,0
    8000161c:	00000593          	li	a1,0
    80001620:	fe840513          	addi	a0,s0,-24
    80001624:	00000097          	auipc	ra,0x0
    80001628:	104080e7          	jalr	260(ra) # 80001728 <_Z13thread_createPP7_threadPFvPvES2_>
//            printString("thread created");
        }
    _thread::running=idle;
    8000162c:	00004797          	auipc	a5,0x4
    80001630:	5947b783          	ld	a5,1428(a5) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001634:	fe843703          	ld	a4,-24(s0)
    80001638:	00e7b023          	sd	a4,0(a5)
    userMain();
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	86c080e7          	jalr	-1940(ra) # 80001ea8 <_Z8userMainv>

    return 0;
}
    80001644:	00000513          	li	a0,0
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret

0000000080001658 <_Z7syscallP4args>:
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00813423          	sd	s0,8(sp)
    80001660:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001664:	00053583          	ld	a1,0(a0)
    uint64 arg1 = arg->a1;
    80001668:	00853603          	ld	a2,8(a0)
    uint64 arg2 = arg->a2;
    8000166c:	01053683          	ld	a3,16(a0)
    uint64 arg3 = arg->a3;
    80001670:	01853703          	ld	a4,24(a0)
    uint64 arg4 = arg->a4;
    80001674:	02053783          	ld	a5,32(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001678:	00058513          	mv	a0,a1
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    8000167c:	00060593          	mv	a1,a2
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001680:	00068613          	mv	a2,a3
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001684:	00070693          	mv	a3,a4
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    80001688:	00078713          	mv	a4,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    8000168c:	00000073          	ecall


}
    80001690:	00813403          	ld	s0,8(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    8000169c:	fc010113          	addi	sp,sp,-64
    800016a0:	02113c23          	sd	ra,56(sp)
    800016a4:	02813823          	sd	s0,48(sp)
    800016a8:	04010413          	addi	s0,sp,64
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    800016ac:	00100793          	li	a5,1
    800016b0:	fcf43423          	sd	a5,-56(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    800016b4:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    800016b8:	03f57513          	andi	a0,a0,63
    800016bc:	00050463          	beqz	a0,800016c4 <_Z9mem_allocm+0x28>
    800016c0:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    800016c4:	fcf43823          	sd	a5,-48(s0)

    syscall(&arg);
    800016c8:	fc840513          	addi	a0,s0,-56
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	f8c080e7          	jalr	-116(ra) # 80001658 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800016d4:	00050513          	mv	a0,a0

    return (void*)ret;
}
    800016d8:	03813083          	ld	ra,56(sp)
    800016dc:	03013403          	ld	s0,48(sp)
    800016e0:	04010113          	addi	sp,sp,64
    800016e4:	00008067          	ret

00000000800016e8 <_Z8mem_freePv>:

int mem_free (void* p){
    800016e8:	fc010113          	addi	sp,sp,-64
    800016ec:	02113c23          	sd	ra,56(sp)
    800016f0:	02813823          	sd	s0,48(sp)
    800016f4:	04010413          	addi	s0,sp,64
    args arg;
    arg.a0=0x02;
    800016f8:	00200793          	li	a5,2
    800016fc:	fcf43423          	sd	a5,-56(s0)
    arg.a1=(uint64)p;
    80001700:	fca43823          	sd	a0,-48(s0)

    syscall(&arg);
    80001704:	fc840513          	addi	a0,s0,-56
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	f50080e7          	jalr	-176(ra) # 80001658 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001710:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001714:	0005051b          	sext.w	a0,a0
    80001718:	03813083          	ld	ra,56(sp)
    8000171c:	03013403          	ld	s0,48(sp)
    80001720:	04010113          	addi	sp,sp,64
    80001724:	00008067          	ret

0000000080001728 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    80001728:	fa010113          	addi	sp,sp,-96
    8000172c:	04113c23          	sd	ra,88(sp)
    80001730:	04813823          	sd	s0,80(sp)
    80001734:	04913423          	sd	s1,72(sp)
    80001738:	05213023          	sd	s2,64(sp)
    8000173c:	03313c23          	sd	s3,56(sp)
    80001740:	06010413          	addi	s0,sp,96
    80001744:	00050993          	mv	s3,a0
    80001748:	00058913          	mv	s2,a1
    8000174c:	00060493          	mv	s1,a2

    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    80001750:	00008537          	lui	a0,0x8
    80001754:	00000097          	auipc	ra,0x0
    80001758:	f48080e7          	jalr	-184(ra) # 8000169c <_Z9mem_allocm>
    args myArgs;
    myArgs.a0=0x11;
    8000175c:	01100793          	li	a5,17
    80001760:	faf43423          	sd	a5,-88(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    80001764:	fb343823          	sd	s3,-80(s0)
    myArgs.a2=(uint64)start_routine;
    80001768:	fb243c23          	sd	s2,-72(s0)
    myArgs.a3=(uint64)arg;
    8000176c:	fc943023          	sd	s1,-64(s0)
    myArgs.a4=(uint64)stack;
    80001770:	fca43423          	sd	a0,-56(s0)

    syscall(&myArgs);
    80001774:	fa840513          	addi	a0,s0,-88
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	ee0080e7          	jalr	-288(ra) # 80001658 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001780:	00050513          	mv	a0,a0
    return ret;


}
    80001784:	0005051b          	sext.w	a0,a0
    80001788:	05813083          	ld	ra,88(sp)
    8000178c:	05013403          	ld	s0,80(sp)
    80001790:	04813483          	ld	s1,72(sp)
    80001794:	04013903          	ld	s2,64(sp)
    80001798:	03813983          	ld	s3,56(sp)
    8000179c:	06010113          	addi	sp,sp,96
    800017a0:	00008067          	ret

00000000800017a4 <_Z11thread_exitv>:

int thread_exit (){
    800017a4:	fc010113          	addi	sp,sp,-64
    800017a8:	02113c23          	sd	ra,56(sp)
    800017ac:	02813823          	sd	s0,48(sp)
    800017b0:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x12;
    800017b4:	01200793          	li	a5,18
    800017b8:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    800017bc:	fc840513          	addi	a0,s0,-56
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	e98080e7          	jalr	-360(ra) # 80001658 <_Z7syscallP4args>

    return 0;
}
    800017c8:	00000513          	li	a0,0
    800017cc:	03813083          	ld	ra,56(sp)
    800017d0:	03013403          	ld	s0,48(sp)
    800017d4:	04010113          	addi	sp,sp,64
    800017d8:	00008067          	ret

00000000800017dc <_Z15thread_dispatchv>:


void thread_dispatch (){
    800017dc:	fc010113          	addi	sp,sp,-64
    800017e0:	02113c23          	sd	ra,56(sp)
    800017e4:	02813823          	sd	s0,48(sp)
    800017e8:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x13;
    800017ec:	01300793          	li	a5,19
    800017f0:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    800017f4:	fc840513          	addi	a0,s0,-56
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	e60080e7          	jalr	-416(ra) # 80001658 <_Z7syscallP4args>


}
    80001800:	03813083          	ld	ra,56(sp)
    80001804:	03013403          	ld	s0,48(sp)
    80001808:	04010113          	addi	sp,sp,64
    8000180c:	00008067          	ret

0000000080001810 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00113c23          	sd	ra,24(sp)
    80001818:	00813823          	sd	s0,16(sp)
    8000181c:	00913423          	sd	s1,8(sp)
    80001820:	01213023          	sd	s2,0(sp)
    80001824:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001828:	00000913          	li	s2,0
    8000182c:	0380006f          	j	80001864 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001830:	00000097          	auipc	ra,0x0
    80001834:	fac080e7          	jalr	-84(ra) # 800017dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001838:	00148493          	addi	s1,s1,1
    8000183c:	000027b7          	lui	a5,0x2
    80001840:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001844:	0097ee63          	bltu	a5,s1,80001860 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001848:	00000713          	li	a4,0
    8000184c:	000077b7          	lui	a5,0x7
    80001850:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001854:	fce7eee3          	bltu	a5,a4,80001830 <_Z11workerBodyAPv+0x20>
    80001858:	00170713          	addi	a4,a4,1
    8000185c:	ff1ff06f          	j	8000184c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001860:	00190913          	addi	s2,s2,1
    80001864:	00900793          	li	a5,9
    80001868:	0327ec63          	bltu	a5,s2,800018a0 <_Z11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	79450513          	addi	a0,a0,1940 # 80005000 <kvmincrease+0x5e0>
    80001874:	00001097          	auipc	ra,0x1
    80001878:	c74080e7          	jalr	-908(ra) # 800024e8 <_Z11printStringPKc>
    8000187c:	00090513          	mv	a0,s2
    80001880:	00001097          	auipc	ra,0x1
    80001884:	cd8080e7          	jalr	-808(ra) # 80002558 <_Z12printIntegerm>
    80001888:	00004517          	auipc	a0,0x4
    8000188c:	99050513          	addi	a0,a0,-1648 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	c58080e7          	jalr	-936(ra) # 800024e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001898:	00000493          	li	s1,0
    8000189c:	fa1ff06f          	j	8000183c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800018a0:	00003517          	auipc	a0,0x3
    800018a4:	76850513          	addi	a0,a0,1896 # 80005008 <kvmincrease+0x5e8>
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	c40080e7          	jalr	-960(ra) # 800024e8 <_Z11printStringPKc>
    finishedA = true;
    800018b0:	00100793          	li	a5,1
    800018b4:	00004717          	auipc	a4,0x4
    800018b8:	38f70a23          	sb	a5,916(a4) # 80005c48 <finishedA>
}
    800018bc:	01813083          	ld	ra,24(sp)
    800018c0:	01013403          	ld	s0,16(sp)
    800018c4:	00813483          	ld	s1,8(sp)
    800018c8:	00013903          	ld	s2,0(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret

00000000800018d4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800018d4:	fe010113          	addi	sp,sp,-32
    800018d8:	00113c23          	sd	ra,24(sp)
    800018dc:	00813823          	sd	s0,16(sp)
    800018e0:	00913423          	sd	s1,8(sp)
    800018e4:	01213023          	sd	s2,0(sp)
    800018e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800018ec:	00000913          	li	s2,0
    800018f0:	0380006f          	j	80001928 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	ee8080e7          	jalr	-280(ra) # 800017dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800018fc:	00148493          	addi	s1,s1,1
    80001900:	000027b7          	lui	a5,0x2
    80001904:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001908:	0097ee63          	bltu	a5,s1,80001924 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000190c:	00000713          	li	a4,0
    80001910:	000077b7          	lui	a5,0x7
    80001914:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001918:	fce7eee3          	bltu	a5,a4,800018f4 <_Z11workerBodyBPv+0x20>
    8000191c:	00170713          	addi	a4,a4,1
    80001920:	ff1ff06f          	j	80001910 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001924:	00190913          	addi	s2,s2,1
    80001928:	00f00793          	li	a5,15
    8000192c:	0327ec63          	bltu	a5,s2,80001964 <_Z11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001930:	00003517          	auipc	a0,0x3
    80001934:	6e850513          	addi	a0,a0,1768 # 80005018 <kvmincrease+0x5f8>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	bb0080e7          	jalr	-1104(ra) # 800024e8 <_Z11printStringPKc>
    80001940:	00090513          	mv	a0,s2
    80001944:	00001097          	auipc	ra,0x1
    80001948:	c14080e7          	jalr	-1004(ra) # 80002558 <_Z12printIntegerm>
    8000194c:	00004517          	auipc	a0,0x4
    80001950:	8cc50513          	addi	a0,a0,-1844 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	b94080e7          	jalr	-1132(ra) # 800024e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000195c:	00000493          	li	s1,0
    80001960:	fa1ff06f          	j	80001900 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6bc50513          	addi	a0,a0,1724 # 80005020 <kvmincrease+0x600>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	b7c080e7          	jalr	-1156(ra) # 800024e8 <_Z11printStringPKc>
    finishedB = true;
    80001974:	00100793          	li	a5,1
    80001978:	00004717          	auipc	a4,0x4
    8000197c:	2cf708a3          	sb	a5,721(a4) # 80005c49 <finishedB>
    thread_dispatch();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	e5c080e7          	jalr	-420(ra) # 800017dc <_Z15thread_dispatchv>
}
    80001988:	01813083          	ld	ra,24(sp)
    8000198c:	01013403          	ld	s0,16(sp)
    80001990:	00813483          	ld	s1,8(sp)
    80001994:	00013903          	ld	s2,0(sp)
    80001998:	02010113          	addi	sp,sp,32
    8000199c:	00008067          	ret

00000000800019a0 <_Z8sem_openPP9Semaphorej>:
class Semaphore;
typedef Semaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
){
    800019a0:	fc010113          	addi	sp,sp,-64
    800019a4:	02113c23          	sd	ra,56(sp)
    800019a8:	02813823          	sd	s0,48(sp)
    800019ac:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x21;
    800019b0:	02100793          	li	a5,33
    800019b4:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)handle;
    800019b8:	fca43823          	sd	a0,-48(s0)
    myArgs.a2 = (uint64)init;
    800019bc:	02059593          	slli	a1,a1,0x20
    800019c0:	0205d593          	srli	a1,a1,0x20
    800019c4:	fcb43c23          	sd	a1,-40(s0)

    syscall(&myArgs);
    800019c8:	fc840513          	addi	a0,s0,-56
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	c8c080e7          	jalr	-884(ra) # 80001658 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800019d4:	00050513          	mv	a0,a0
    return ret;

}
    800019d8:	0005051b          	sext.w	a0,a0
    800019dc:	03813083          	ld	ra,56(sp)
    800019e0:	03013403          	ld	s0,48(sp)
    800019e4:	04010113          	addi	sp,sp,64
    800019e8:	00008067          	ret

00000000800019ec <_Z9sem_closeP9Semaphore>:

int sem_close (sem_t handle){
    800019ec:	fc010113          	addi	sp,sp,-64
    800019f0:	02113c23          	sd	ra,56(sp)
    800019f4:	02813823          	sd	s0,48(sp)
    800019f8:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x22;
    800019fc:	02200793          	li	a5,34
    80001a00:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)handle;
    80001a04:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    80001a08:	fc840513          	addi	a0,s0,-56
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	c4c080e7          	jalr	-948(ra) # 80001658 <_Z7syscallP4args>

    return 0;
}
    80001a14:	00000513          	li	a0,0
    80001a18:	03813083          	ld	ra,56(sp)
    80001a1c:	03013403          	ld	s0,48(sp)
    80001a20:	04010113          	addi	sp,sp,64
    80001a24:	00008067          	ret

0000000080001a28 <_Z8sem_waitP9Semaphore>:

int sem_wait (sem_t id){
    80001a28:	fc010113          	addi	sp,sp,-64
    80001a2c:	02113c23          	sd	ra,56(sp)
    80001a30:	02813823          	sd	s0,48(sp)
    80001a34:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x23;
    80001a38:	02300793          	li	a5,35
    80001a3c:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)id;
    80001a40:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    80001a44:	fc840513          	addi	a0,s0,-56
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	c10080e7          	jalr	-1008(ra) # 80001658 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001a50:	00050513          	mv	a0,a0
    return ret;

}
    80001a54:	0005051b          	sext.w	a0,a0
    80001a58:	03813083          	ld	ra,56(sp)
    80001a5c:	03013403          	ld	s0,48(sp)
    80001a60:	04010113          	addi	sp,sp,64
    80001a64:	00008067          	ret

0000000080001a68 <_Z10sem_signalP9Semaphore>:

int sem_signal (sem_t id){
    80001a68:	fc010113          	addi	sp,sp,-64
    80001a6c:	02113c23          	sd	ra,56(sp)
    80001a70:	02813823          	sd	s0,48(sp)
    80001a74:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x24;
    80001a78:	02400793          	li	a5,36
    80001a7c:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)id;
    80001a80:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    80001a84:	fc840513          	addi	a0,s0,-56
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	bd0080e7          	jalr	-1072(ra) # 80001658 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001a90:	00050513          	mv	a0,a0
    return ret;
}
    80001a94:	0005051b          	sext.w	a0,a0
    80001a98:	03813083          	ld	ra,56(sp)
    80001a9c:	03013403          	ld	s0,48(sp)
    80001aa0:	04010113          	addi	sp,sp,64
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80001aa8:	fe010113          	addi	sp,sp,-32
    80001aac:	00113c23          	sd	ra,24(sp)
    80001ab0:	00813823          	sd	s0,16(sp)
    80001ab4:	00913423          	sd	s1,8(sp)
    80001ab8:	01213023          	sd	s2,0(sp)
    80001abc:	02010413          	addi	s0,sp,32
    80001ac0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001ac4:	00100793          	li	a5,1
    80001ac8:	02a7f863          	bgeu	a5,a0,80001af8 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001acc:	00a00793          	li	a5,10
    80001ad0:	02f577b3          	remu	a5,a0,a5
    80001ad4:	02078e63          	beqz	a5,80001b10 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001ad8:	fff48513          	addi	a0,s1,-1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	fcc080e7          	jalr	-52(ra) # 80001aa8 <_Z9fibonaccim>
    80001ae4:	00050913          	mv	s2,a0
    80001ae8:	ffe48513          	addi	a0,s1,-2
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	fbc080e7          	jalr	-68(ra) # 80001aa8 <_Z9fibonaccim>
    80001af4:	00a90533          	add	a0,s2,a0
}
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	00013903          	ld	s2,0(sp)
    80001b08:	02010113          	addi	sp,sp,32
    80001b0c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	ccc080e7          	jalr	-820(ra) # 800017dc <_Z15thread_dispatchv>
    80001b18:	fc1ff06f          	j	80001ad8 <_Z9fibonaccim+0x30>

0000000080001b1c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80001b1c:	fe010113          	addi	sp,sp,-32
    80001b20:	00113c23          	sd	ra,24(sp)
    80001b24:	00813823          	sd	s0,16(sp)
    80001b28:	00913423          	sd	s1,8(sp)
    80001b2c:	01213023          	sd	s2,0(sp)
    80001b30:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001b34:	00000493          	li	s1,0
    80001b38:	0380006f          	j	80001b70 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	4f450513          	addi	a0,a0,1268 # 80005030 <kvmincrease+0x610>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	9a4080e7          	jalr	-1628(ra) # 800024e8 <_Z11printStringPKc>
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	a08080e7          	jalr	-1528(ra) # 80002558 <_Z12printIntegerm>
    80001b58:	00003517          	auipc	a0,0x3
    80001b5c:	6c050513          	addi	a0,a0,1728 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	988080e7          	jalr	-1656(ra) # 800024e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001b68:	0014849b          	addiw	s1,s1,1
    80001b6c:	0ff4f493          	andi	s1,s1,255
    80001b70:	00200793          	li	a5,2
    80001b74:	fc97f4e3          	bgeu	a5,s1,80001b3c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80001b78:	00003517          	auipc	a0,0x3
    80001b7c:	4c050513          	addi	a0,a0,1216 # 80005038 <kvmincrease+0x618>
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	968080e7          	jalr	-1688(ra) # 800024e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001b88:	00700313          	li	t1,7
    thread_dispatch();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	c50080e7          	jalr	-944(ra) # 800017dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001b94:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80001b98:	00003517          	auipc	a0,0x3
    80001b9c:	4b050513          	addi	a0,a0,1200 # 80005048 <kvmincrease+0x628>
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	948080e7          	jalr	-1720(ra) # 800024e8 <_Z11printStringPKc>
    80001ba8:	00090513          	mv	a0,s2
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	9ac080e7          	jalr	-1620(ra) # 80002558 <_Z12printIntegerm>
    80001bb4:	00003517          	auipc	a0,0x3
    80001bb8:	66450513          	addi	a0,a0,1636 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	92c080e7          	jalr	-1748(ra) # 800024e8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001bc4:	00c00513          	li	a0,12
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	ee0080e7          	jalr	-288(ra) # 80001aa8 <_Z9fibonaccim>
    80001bd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80001bd4:	00003517          	auipc	a0,0x3
    80001bd8:	47c50513          	addi	a0,a0,1148 # 80005050 <kvmincrease+0x630>
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	90c080e7          	jalr	-1780(ra) # 800024e8 <_Z11printStringPKc>
    80001be4:	00090513          	mv	a0,s2
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	970080e7          	jalr	-1680(ra) # 80002558 <_Z12printIntegerm>
    80001bf0:	00003517          	auipc	a0,0x3
    80001bf4:	62850513          	addi	a0,a0,1576 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001bf8:	00001097          	auipc	ra,0x1
    80001bfc:	8f0080e7          	jalr	-1808(ra) # 800024e8 <_Z11printStringPKc>
    80001c00:	0380006f          	j	80001c38 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001c04:	00003517          	auipc	a0,0x3
    80001c08:	42c50513          	addi	a0,a0,1068 # 80005030 <kvmincrease+0x610>
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	8dc080e7          	jalr	-1828(ra) # 800024e8 <_Z11printStringPKc>
    80001c14:	00048513          	mv	a0,s1
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	940080e7          	jalr	-1728(ra) # 80002558 <_Z12printIntegerm>
    80001c20:	00003517          	auipc	a0,0x3
    80001c24:	5f850513          	addi	a0,a0,1528 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	8c0080e7          	jalr	-1856(ra) # 800024e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001c30:	0014849b          	addiw	s1,s1,1
    80001c34:	0ff4f493          	andi	s1,s1,255
    80001c38:	00500793          	li	a5,5
    80001c3c:	fc97f4e3          	bgeu	a5,s1,80001c04 <_Z11workerBodyCPv+0xe8>
    }

    printString("A finished!\n");
    80001c40:	00003517          	auipc	a0,0x3
    80001c44:	3c850513          	addi	a0,a0,968 # 80005008 <kvmincrease+0x5e8>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	8a0080e7          	jalr	-1888(ra) # 800024e8 <_Z11printStringPKc>
    finishedC = true;
    80001c50:	00100793          	li	a5,1
    80001c54:	00004717          	auipc	a4,0x4
    80001c58:	fef70b23          	sb	a5,-10(a4) # 80005c4a <finishedC>
    thread_dispatch();
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	b80080e7          	jalr	-1152(ra) # 800017dc <_Z15thread_dispatchv>
}
    80001c64:	01813083          	ld	ra,24(sp)
    80001c68:	01013403          	ld	s0,16(sp)
    80001c6c:	00813483          	ld	s1,8(sp)
    80001c70:	00013903          	ld	s2,0(sp)
    80001c74:	02010113          	addi	sp,sp,32
    80001c78:	00008067          	ret

0000000080001c7c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80001c7c:	fe010113          	addi	sp,sp,-32
    80001c80:	00113c23          	sd	ra,24(sp)
    80001c84:	00813823          	sd	s0,16(sp)
    80001c88:	00913423          	sd	s1,8(sp)
    80001c8c:	01213023          	sd	s2,0(sp)
    80001c90:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001c94:	00a00493          	li	s1,10
    80001c98:	0380006f          	j	80001cd0 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001c9c:	00003517          	auipc	a0,0x3
    80001ca0:	3c450513          	addi	a0,a0,964 # 80005060 <kvmincrease+0x640>
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	844080e7          	jalr	-1980(ra) # 800024e8 <_Z11printStringPKc>
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	8a8080e7          	jalr	-1880(ra) # 80002558 <_Z12printIntegerm>
    80001cb8:	00003517          	auipc	a0,0x3
    80001cbc:	56050513          	addi	a0,a0,1376 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	828080e7          	jalr	-2008(ra) # 800024e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001cc8:	0014849b          	addiw	s1,s1,1
    80001ccc:	0ff4f493          	andi	s1,s1,255
    80001cd0:	00c00793          	li	a5,12
    80001cd4:	fc97f4e3          	bgeu	a5,s1,80001c9c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001cd8:	00003517          	auipc	a0,0x3
    80001cdc:	39050513          	addi	a0,a0,912 # 80005068 <kvmincrease+0x648>
    80001ce0:	00001097          	auipc	ra,0x1
    80001ce4:	808080e7          	jalr	-2040(ra) # 800024e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001ce8:	00500313          	li	t1,5
    thread_dispatch();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	af0080e7          	jalr	-1296(ra) # 800017dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001cf4:	01000513          	li	a0,16
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	db0080e7          	jalr	-592(ra) # 80001aa8 <_Z9fibonaccim>
    80001d00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80001d04:	00003517          	auipc	a0,0x3
    80001d08:	37450513          	addi	a0,a0,884 # 80005078 <kvmincrease+0x658>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	7dc080e7          	jalr	2012(ra) # 800024e8 <_Z11printStringPKc>
    80001d14:	00090513          	mv	a0,s2
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	840080e7          	jalr	-1984(ra) # 80002558 <_Z12printIntegerm>
    80001d20:	00003517          	auipc	a0,0x3
    80001d24:	4f850513          	addi	a0,a0,1272 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	7c0080e7          	jalr	1984(ra) # 800024e8 <_Z11printStringPKc>
    80001d30:	0380006f          	j	80001d68 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001d34:	00003517          	auipc	a0,0x3
    80001d38:	32c50513          	addi	a0,a0,812 # 80005060 <kvmincrease+0x640>
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	7ac080e7          	jalr	1964(ra) # 800024e8 <_Z11printStringPKc>
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	810080e7          	jalr	-2032(ra) # 80002558 <_Z12printIntegerm>
    80001d50:	00003517          	auipc	a0,0x3
    80001d54:	4c850513          	addi	a0,a0,1224 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	790080e7          	jalr	1936(ra) # 800024e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001d60:	0014849b          	addiw	s1,s1,1
    80001d64:	0ff4f493          	andi	s1,s1,255
    80001d68:	00f00793          	li	a5,15
    80001d6c:	fc97f4e3          	bgeu	a5,s1,80001d34 <_Z11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80001d70:	00003517          	auipc	a0,0x3
    80001d74:	31850513          	addi	a0,a0,792 # 80005088 <kvmincrease+0x668>
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	770080e7          	jalr	1904(ra) # 800024e8 <_Z11printStringPKc>
    finishedD = true;
    80001d80:	00100793          	li	a5,1
    80001d84:	00004717          	auipc	a4,0x4
    80001d88:	ecf703a3          	sb	a5,-313(a4) # 80005c4b <finishedD>
    thread_dispatch();
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	a50080e7          	jalr	-1456(ra) # 800017dc <_Z15thread_dispatchv>
}
    80001d94:	01813083          	ld	ra,24(sp)
    80001d98:	01013403          	ld	s0,16(sp)
    80001d9c:	00813483          	ld	s1,8(sp)
    80001da0:	00013903          	ld	s2,0(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret

0000000080001dac <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80001dac:	fd010113          	addi	sp,sp,-48
    80001db0:	02113423          	sd	ra,40(sp)
    80001db4:	02813023          	sd	s0,32(sp)
    80001db8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80001dbc:	00000613          	li	a2,0
    80001dc0:	00000597          	auipc	a1,0x0
    80001dc4:	a5058593          	addi	a1,a1,-1456 # 80001810 <_Z11workerBodyAPv>
    80001dc8:	fd040513          	addi	a0,s0,-48
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	95c080e7          	jalr	-1700(ra) # 80001728 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80001dd4:	00003517          	auipc	a0,0x3
    80001dd8:	2c450513          	addi	a0,a0,708 # 80005098 <kvmincrease+0x678>
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	70c080e7          	jalr	1804(ra) # 800024e8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80001de4:	00000613          	li	a2,0
    80001de8:	00000597          	auipc	a1,0x0
    80001dec:	aec58593          	addi	a1,a1,-1300 # 800018d4 <_Z11workerBodyBPv>
    80001df0:	fd840513          	addi	a0,s0,-40
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	934080e7          	jalr	-1740(ra) # 80001728 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80001dfc:	00003517          	auipc	a0,0x3
    80001e00:	2b450513          	addi	a0,a0,692 # 800050b0 <kvmincrease+0x690>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	6e4080e7          	jalr	1764(ra) # 800024e8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80001e0c:	00000613          	li	a2,0
    80001e10:	00000597          	auipc	a1,0x0
    80001e14:	d0c58593          	addi	a1,a1,-756 # 80001b1c <_Z11workerBodyCPv>
    80001e18:	fe040513          	addi	a0,s0,-32
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	90c080e7          	jalr	-1780(ra) # 80001728 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80001e24:	00003517          	auipc	a0,0x3
    80001e28:	2a450513          	addi	a0,a0,676 # 800050c8 <kvmincrease+0x6a8>
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	6bc080e7          	jalr	1724(ra) # 800024e8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80001e34:	00000613          	li	a2,0
    80001e38:	00000597          	auipc	a1,0x0
    80001e3c:	e4458593          	addi	a1,a1,-444 # 80001c7c <_Z11workerBodyDPv>
    80001e40:	fe840513          	addi	a0,s0,-24
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	8e4080e7          	jalr	-1820(ra) # 80001728 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80001e4c:	00003517          	auipc	a0,0x3
    80001e50:	29450513          	addi	a0,a0,660 # 800050e0 <kvmincrease+0x6c0>
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	694080e7          	jalr	1684(ra) # 800024e8 <_Z11printStringPKc>
    80001e5c:	00c0006f          	j	80001e68 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	97c080e7          	jalr	-1668(ra) # 800017dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001e68:	00004797          	auipc	a5,0x4
    80001e6c:	de07c783          	lbu	a5,-544(a5) # 80005c48 <finishedA>
    80001e70:	fe0788e3          	beqz	a5,80001e60 <_Z18Threads_C_API_testv+0xb4>
    80001e74:	00004797          	auipc	a5,0x4
    80001e78:	dd57c783          	lbu	a5,-555(a5) # 80005c49 <finishedB>
    80001e7c:	fe0782e3          	beqz	a5,80001e60 <_Z18Threads_C_API_testv+0xb4>
    80001e80:	00004797          	auipc	a5,0x4
    80001e84:	dca7c783          	lbu	a5,-566(a5) # 80005c4a <finishedC>
    80001e88:	fc078ce3          	beqz	a5,80001e60 <_Z18Threads_C_API_testv+0xb4>
    80001e8c:	00004797          	auipc	a5,0x4
    80001e90:	dbf7c783          	lbu	a5,-577(a5) # 80005c4b <finishedD>
    80001e94:	fc0786e3          	beqz	a5,80001e60 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80001e98:	02813083          	ld	ra,40(sp)
    80001e9c:	02013403          	ld	s0,32(sp)
    80001ea0:	03010113          	addi	sp,sp,48
    80001ea4:	00008067          	ret

0000000080001ea8 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	ef4080e7          	jalr	-268(ra) # 80001dac <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00100793          	li	a5,1
    80001ee0:	00f50863          	beq	a0,a5,80001ef0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ee4:	00813403          	ld	s0,8(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret
    80001ef0:	000107b7          	lui	a5,0x10
    80001ef4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ef8:	fef596e3          	bne	a1,a5,80001ee4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001efc:	00004797          	auipc	a5,0x4
    80001f00:	d5478793          	addi	a5,a5,-684 # 80005c50 <_ZN9Scheduler16readyThreadQueueE>
    80001f04:	0007b023          	sd	zero,0(a5)
    80001f08:	0007b423          	sd	zero,8(a5)
    80001f0c:	fd9ff06f          	j	80001ee4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f10 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001f10:	fe010113          	addi	sp,sp,-32
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001f24:	00004517          	auipc	a0,0x4
    80001f28:	d2c53503          	ld	a0,-724(a0) # 80005c50 <_ZN9Scheduler16readyThreadQueueE>
    80001f2c:	04050263          	beqz	a0,80001f70 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001f30:	00853783          	ld	a5,8(a0)
    80001f34:	00004717          	auipc	a4,0x4
    80001f38:	d0f73e23          	sd	a5,-740(a4) # 80005c50 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001f3c:	02078463          	beqz	a5,80001f64 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001f40:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	57c080e7          	jalr	1404(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	00813483          	ld	s1,8(sp)
    80001f5c:	02010113          	addi	sp,sp,32
    80001f60:	00008067          	ret
        if (!head) { tail = 0; }
    80001f64:	00004797          	auipc	a5,0x4
    80001f68:	ce07ba23          	sd	zero,-780(a5) # 80005c58 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f6c:	fd5ff06f          	j	80001f40 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001f70:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001f74:	fd9ff06f          	j	80001f4c <_ZN9Scheduler3getEv+0x3c>

0000000080001f78 <_ZN9Scheduler3putEP7_thread>:
{
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001f90:	01000513          	li	a0,16
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	504080e7          	jalr	1284(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001f9c:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001fa0:	00053423          	sd	zero,8(a0)
        if (tail)
    80001fa4:	00004797          	auipc	a5,0x4
    80001fa8:	cb47b783          	ld	a5,-844(a5) # 80005c58 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fac:	02078263          	beqz	a5,80001fd0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001fb0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001fb4:	00004797          	auipc	a5,0x4
    80001fb8:	caa7b223          	sd	a0,-860(a5) # 80005c58 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret
            head = tail = elem;
    80001fd0:	00004797          	auipc	a5,0x4
    80001fd4:	c8078793          	addi	a5,a5,-896 # 80005c50 <_ZN9Scheduler16readyThreadQueueE>
    80001fd8:	00a7b423          	sd	a0,8(a5)
    80001fdc:	00a7b023          	sd	a0,0(a5)
    80001fe0:	fddff06f          	j	80001fbc <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001fe4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	000105b7          	lui	a1,0x10
    80001ff8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ffc:	00100513          	li	a0,1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	ed0080e7          	jalr	-304(ra) # 80001ed0 <_Z41__static_initialization_and_destruction_0ii>
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	674080e7          	jalr	1652(ra) # 8000169c <_Z9mem_allocm>
}
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_Znam>:

void* operator new[](size_t n){
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00113423          	sd	ra,8(sp)
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002050:	fffff097          	auipc	ra,0xfffff
    80002054:	64c080e7          	jalr	1612(ra) # 8000169c <_Z9mem_allocm>
}
    80002058:	00813083          	ld	ra,8(sp)
    8000205c:	00013403          	ld	s0,0(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	670080e7          	jalr	1648(ra) # 800016e8 <_Z8mem_freePv>
}
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    mem_free(p);
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	648080e7          	jalr	1608(ra) # 800016e8 <_Z8mem_freePv>

}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN5Riscv10popSppSpieEv>:




void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800020c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    800020c8:	10200073          	sret
}
    800020cc:	00813403          	ld	s0,8(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800020d8:	f2010113          	addi	sp,sp,-224
    800020dc:	0c113c23          	sd	ra,216(sp)
    800020e0:	0c813823          	sd	s0,208(sp)
    800020e4:	0c913423          	sd	s1,200(sp)
    800020e8:	0d213023          	sd	s2,192(sp)
    800020ec:	0b313c23          	sd	s3,184(sp)
    800020f0:	0b413823          	sd	s4,176(sp)
    800020f4:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800020f8:	142027f3          	csrr	a5,scause
    800020fc:	f2f43423          	sd	a5,-216(s0)
    return scause;
    80002100:	f2843783          	ld	a5,-216(s0)
    uint scause = r_scause();
    80002104:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
//    uint64 arg0;
    uint64 arg1;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80002108:	00050493          	mv	s1,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    8000210c:	ff87879b          	addiw	a5,a5,-8
    80002110:	00100713          	li	a4,1
    80002114:	02f77263          	bgeu	a4,a5,80002138 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80002118:	0d813083          	ld	ra,216(sp)
    8000211c:	0d013403          	ld	s0,208(sp)
    80002120:	0c813483          	ld	s1,200(sp)
    80002124:	0c013903          	ld	s2,192(sp)
    80002128:	0b813983          	ld	s3,184(sp)
    8000212c:	0b013a03          	ld	s4,176(sp)
    80002130:	0e010113          	addi	sp,sp,224
    80002134:	00008067          	ret
        if(a0reg==0x11){
    80002138:	01100793          	li	a5,17
    8000213c:	08f48863          	beq	s1,a5,800021cc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        if(a0reg== 0x01 ){
    80002140:	00100793          	li	a5,1
    80002144:	0ef48863          	beq	s1,a5,80002234 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
        else if(a0reg==0x02){
    80002148:	00200793          	li	a5,2
    8000214c:	12f48263          	beq	s1,a5,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if(a0reg==0x12){
    80002150:	01200793          	li	a5,18
    80002154:	14f48a63          	beq	s1,a5,800022a8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
        else if(a0reg == 0x13){
    80002158:	01300793          	li	a5,19
    8000215c:	18f48863          	beq	s1,a5,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if(a0reg==0x04){
    80002160:	00400793          	li	a5,4
    80002164:	1af48c63          	beq	s1,a5,8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        else if(a0reg==0x21){
    80002168:	02100793          	li	a5,33
    8000216c:	1ef48663          	beq	s1,a5,80002358 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
        else if(a0reg==0x22){
    80002170:	02200793          	li	a5,34
    80002174:	24f48663          	beq	s1,a5,800023c0 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
        else if(a0reg==0x23){
    80002178:	02300793          	li	a5,35
    8000217c:	2cf48e63          	beq	s1,a5,80002458 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
        else if(a0reg==0x24){
    80002180:	02400793          	li	a5,36
    80002184:	f8f49ae3          	bne	s1,a5,80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002188:	141027f3          	csrr	a5,sepc
    8000218c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002190:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80002194:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002198:	100027f3          	csrr	a5,sstatus
    8000219c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800021a0:	fc043903          	ld	s2,-64(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800021a4:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800021a8:	00058793          	mv	a5,a1
            sem->signal();
    800021ac:	0007b503          	ld	a0,0(a5)
    800021b0:	fffff097          	auipc	ra,0xfffff
    800021b4:	32c080e7          	jalr	812(ra) # 800014dc <_ZN9Semaphore6signalEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    800021b8:	00000793          	li	a5,0
    800021bc:	00078513          	mv	a0,a5
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021c0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021c4:	14149073          	csrw	sepc,s1
}
    800021c8:	f51ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021cc:	141027f3          	csrr	a5,sepc
    800021d0:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    800021d4:	f3843903          	ld	s2,-200(s0)
            uint64 sepc = r_sepc() + 4;
    800021d8:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021dc:	100027f3          	csrr	a5,sstatus
    800021e0:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    800021e4:	f3043983          	ld	s3,-208(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800021e8:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    800021ec:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    800021f0:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    800021f4:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    800021f8:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    800021fc:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80002200:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80002204:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	140080e7          	jalr	320(ra) # 80001348 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80002210:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80002214:	00050c63          	beqz	a0,8000222c <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002218:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    8000221c:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002220:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002224:	14191073          	csrw	sepc,s2
}
    80002228:	f19ff06f          	j	80002140 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
            else ret =-1;
    8000222c:	fff00793          	li	a5,-1
    80002230:	fedff06f          	j	8000221c <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002234:	141027f3          	csrr	a5,sepc
    80002238:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    8000223c:	f4843483          	ld	s1,-184(s0)
            uint64 sepc = r_sepc() + 4;
    80002240:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002244:	100027f3          	csrr	a5,sstatus
    80002248:	f4f43023          	sd	a5,-192(s0)
    return sstatus;
    8000224c:	f4043903          	ld	s2,-192(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80002250:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    80002254:	00651513          	slli	a0,a0,0x6
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	240080e7          	jalr	576(ra) # 80002498 <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80002260:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002264:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002268:	14149073          	csrw	sepc,s1
}
    8000226c:	eadff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002270:	141027f3          	csrr	a5,sepc
    80002274:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    80002278:	f5843483          	ld	s1,-168(s0)
            uint64 sepc = r_sepc() + 4;
    8000227c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002280:	100027f3          	csrr	a5,sstatus
    80002284:	f4f43823          	sd	a5,-176(s0)
    return sstatus;
    80002288:	f5043903          	ld	s2,-176(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    8000228c:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80002290:	00000097          	auipc	ra,0x0
    80002294:	230080e7          	jalr	560(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002298:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000229c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022a0:	14149073          	csrw	sepc,s1
}
    800022a4:	e75ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022a8:	141027f3          	csrr	a5,sepc
    800022ac:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    800022b0:	f6843483          	ld	s1,-152(s0)
            uint64 sepc = r_sepc() + 4;
    800022b4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022b8:	100027f3          	csrr	a5,sstatus
    800022bc:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    800022c0:	f6043903          	ld	s2,-160(s0)
            _thread::running->finished=true;
    800022c4:	00004797          	auipc	a5,0x4
    800022c8:	8fc7b783          	ld	a5,-1796(a5) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	00100713          	li	a4,1
    800022d4:	02e78423          	sb	a4,40(a5)
            _thread::dispatch();
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	f90080e7          	jalr	-112(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022e0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022e4:	14149073          	csrw	sepc,s1
}
    800022e8:	e31ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022ec:	141027f3          	csrr	a5,sepc
    800022f0:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    800022f4:	f7843483          	ld	s1,-136(s0)
            uint64 sepc = r_sepc() + 4;
    800022f8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022fc:	100027f3          	csrr	a5,sstatus
    80002300:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80002304:	f7043903          	ld	s2,-144(s0)
            _thread::dispatch();
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	f60080e7          	jalr	-160(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002310:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002314:	14149073          	csrw	sepc,s1
}
    80002318:	e01ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000231c:	141027f3          	csrr	a5,sepc
    80002320:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002324:	f8843483          	ld	s1,-120(s0)
            uint64 sepc = r_sepc() + 4;
    80002328:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000232c:	100027f3          	csrr	a5,sstatus
    80002330:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80002334:	f8043903          	ld	s2,-128(s0)
            _thread::timeSliceCounter = 0;
    80002338:	00004797          	auipc	a5,0x4
    8000233c:	8a07b783          	ld	a5,-1888(a5) # 80005bd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002340:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	f24080e7          	jalr	-220(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000234c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002350:	14149073          	csrw	sepc,s1
}
    80002354:	dc5ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002358:	141027f3          	csrr	a5,sepc
    8000235c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002360:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    80002364:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002368:	100027f3          	csrr	a5,sstatus
    8000236c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002370:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80002374:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80002378:	06043603          	ld	a2,96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    8000237c:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //init val
    80002380:	00060a13          	mv	s4,a2
            Semaphore* sem = new Semaphore(arg2);
    80002384:	01800513          	li	a0,24
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	1d4080e7          	jalr	468(ra) # 8000155c <_ZN9SemaphorenwEm>
#include "_thread.hpp"
#include "List.hpp"

class Semaphore {
public:
    Semaphore(uint64 init=1):val(init){}
    80002390:	01452023          	sw	s4,0(a0)
    List() : head(0), tail(0) {}
    80002394:	00053423          	sd	zero,8(a0)
    80002398:	00053823          	sd	zero,16(a0)
            *arg1=sem;
    8000239c:	00a9b023          	sd	a0,0(s3)
            if(sem!= nullptr)ret=0;
    800023a0:	00050c63          	beqz	a0,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
    800023a4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    800023a8:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023ac:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023b0:	14149073          	csrw	sepc,s1
}
    800023b4:	d65ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
            else ret=-1;
    800023b8:	fff00793          	li	a5,-1
    800023bc:	fedff06f          	j	800023a8 <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023c0:	141027f3          	csrr	a5,sepc
    800023c4:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800023c8:	fa843983          	ld	s3,-88(s0)
            uint64 sepc = r_sepc() + 4;
    800023cc:	00498993          	addi	s3,s3,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023d0:	100027f3          	csrr	a5,sstatus
    800023d4:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    800023d8:	fa043a03          	ld	s4,-96(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800023dc:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800023e0:	00058793          	mv	a5,a1
            Semaphore* sem = *arg1;
    800023e4:	0007b483          	ld	s1,0(a5)
    800023e8:	0300006f          	j	80002418 <_ZN5Riscv20handleSupervisorTrapEv+0x340>
        T *ret = elem->data;
    800023ec:	00053903          	ld	s2,0(a0)
        MemoryAllocator::kmem_free(elem);
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	0d0080e7          	jalr	208(ra) # 800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>
                t->deblocked=true;
    800023f8:	00100793          	li	a5,1
    800023fc:	02f90c23          	sb	a5,56(s2)
                sem->val++;
    80002400:	0004a783          	lw	a5,0(s1)
    80002404:	0017879b          	addiw	a5,a5,1
    80002408:	00f4a023          	sw	a5,0(s1)
                Scheduler::put(t);
    8000240c:	00090513          	mv	a0,s2
    80002410:	00000097          	auipc	ra,0x0
    80002414:	b68080e7          	jalr	-1176(ra) # 80001f78 <_ZN9Scheduler3putEP7_thread>
        if (!head) { return 0; }
    80002418:	0084b503          	ld	a0,8(s1)
    8000241c:	02050063          	beqz	a0,8000243c <_ZN5Riscv20handleSupervisorTrapEv+0x364>
        return head->data;
    80002420:	00053783          	ld	a5,0(a0)
            while(sem->blocked.peekFirst()!=0){
    80002424:	00078c63          	beqz	a5,8000243c <_ZN5Riscv20handleSupervisorTrapEv+0x364>
        head = head->next;
    80002428:	00853783          	ld	a5,8(a0)
    8000242c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80002430:	fa079ee3          	bnez	a5,800023ec <_ZN5Riscv20handleSupervisorTrapEv+0x314>
    80002434:	0004b823          	sd	zero,16(s1)
    80002438:	fb5ff06f          	j	800023ec <_ZN5Riscv20handleSupervisorTrapEv+0x314>
            delete sem;
    8000243c:	00048863          	beqz	s1,8000244c <_ZN5Riscv20handleSupervisorTrapEv+0x374>
    80002440:	00048513          	mv	a0,s1
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	168080e7          	jalr	360(ra) # 800015ac <_ZN9SemaphoredlEPv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000244c:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002450:	14199073          	csrw	sepc,s3
}
    80002454:	cc5ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002458:	141027f3          	csrr	a5,sepc
    8000245c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002460:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80002464:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002468:	100027f3          	csrr	a5,sstatus
    8000246c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002470:	fb043903          	ld	s2,-80(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80002474:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    80002478:	00058793          	mv	a5,a1
            uint64 ret = sem->wait();
    8000247c:	0007b503          	ld	a0,0(a5)
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	f88080e7          	jalr	-120(ra) # 80001408 <_ZN9Semaphore4waitEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002488:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000248c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002490:	14149073          	csrw	sepc,s1
}
    80002494:	c85ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x40>

0000000080002498 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800024a8:	00002097          	auipc	ra,0x2
    800024ac:	300080e7          	jalr	768(ra) # 800047a8 <__mem_alloc>
}
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret

00000000800024c0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00113423          	sd	ra,8(sp)
    800024c8:	00813023          	sd	s0,0(sp)
    800024cc:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    800024d0:	00002097          	auipc	ra,0x2
    800024d4:	20c080e7          	jalr	524(ra) # 800046dc <__mem_free>
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800024e8:	fd010113          	addi	sp,sp,-48
    800024ec:	02113423          	sd	ra,40(sp)
    800024f0:	02813023          	sd	s0,32(sp)
    800024f4:	00913c23          	sd	s1,24(sp)
    800024f8:	01213823          	sd	s2,16(sp)
    800024fc:	03010413          	addi	s0,sp,48
    80002500:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002504:	100027f3          	csrr	a5,sstatus
    80002508:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000250c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002510:	00200793          	li	a5,2
    80002514:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80002518:	0004c503          	lbu	a0,0(s1)
    8000251c:	00050a63          	beqz	a0,80002530 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002520:	00002097          	auipc	ra,0x2
    80002524:	3e0080e7          	jalr	992(ra) # 80004900 <__putc>
        string++;
    80002528:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000252c:	fedff06f          	j	80002518 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80002530:	0009091b          	sext.w	s2,s2
    80002534:	00297913          	andi	s2,s2,2
    80002538:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000253c:	10092073          	csrs	sstatus,s2
}
    80002540:	02813083          	ld	ra,40(sp)
    80002544:	02013403          	ld	s0,32(sp)
    80002548:	01813483          	ld	s1,24(sp)
    8000254c:	01013903          	ld	s2,16(sp)
    80002550:	03010113          	addi	sp,sp,48
    80002554:	00008067          	ret

0000000080002558 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002558:	fc010113          	addi	sp,sp,-64
    8000255c:	02113c23          	sd	ra,56(sp)
    80002560:	02813823          	sd	s0,48(sp)
    80002564:	02913423          	sd	s1,40(sp)
    80002568:	03213023          	sd	s2,32(sp)
    8000256c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002570:	100027f3          	csrr	a5,sstatus
    80002574:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002578:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000257c:	00200793          	li	a5,2
    80002580:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002584:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002588:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000258c:	00a00613          	li	a2,10
    80002590:	02c5773b          	remuw	a4,a0,a2
    80002594:	02071693          	slli	a3,a4,0x20
    80002598:	0206d693          	srli	a3,a3,0x20
    8000259c:	00003717          	auipc	a4,0x3
    800025a0:	b5c70713          	addi	a4,a4,-1188 # 800050f8 <_ZZ12printIntegermE6digits>
    800025a4:	00d70733          	add	a4,a4,a3
    800025a8:	00074703          	lbu	a4,0(a4)
    800025ac:	fe040693          	addi	a3,s0,-32
    800025b0:	009687b3          	add	a5,a3,s1
    800025b4:	0014849b          	addiw	s1,s1,1
    800025b8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800025bc:	0005071b          	sext.w	a4,a0
    800025c0:	02c5553b          	divuw	a0,a0,a2
    800025c4:	00900793          	li	a5,9
    800025c8:	fce7e2e3          	bltu	a5,a4,8000258c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800025cc:	fff4849b          	addiw	s1,s1,-1
    800025d0:	0004ce63          	bltz	s1,800025ec <_Z12printIntegerm+0x94>
    800025d4:	fe040793          	addi	a5,s0,-32
    800025d8:	009787b3          	add	a5,a5,s1
    800025dc:	ff07c503          	lbu	a0,-16(a5)
    800025e0:	00002097          	auipc	ra,0x2
    800025e4:	320080e7          	jalr	800(ra) # 80004900 <__putc>
    800025e8:	fe5ff06f          	j	800025cc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800025ec:	0009091b          	sext.w	s2,s2
    800025f0:	00297913          	andi	s2,s2,2
    800025f4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800025f8:	10092073          	csrs	sstatus,s2
}
    800025fc:	03813083          	ld	ra,56(sp)
    80002600:	03013403          	ld	s0,48(sp)
    80002604:	02813483          	ld	s1,40(sp)
    80002608:	02013903          	ld	s2,32(sp)
    8000260c:	04010113          	addi	sp,sp,64
    80002610:	00008067          	ret

0000000080002614 <start>:
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	300027f3          	csrr	a5,mstatus
    80002624:	ffffe737          	lui	a4,0xffffe
    80002628:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff792f>
    8000262c:	00e7f7b3          	and	a5,a5,a4
    80002630:	00001737          	lui	a4,0x1
    80002634:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002638:	00e7e7b3          	or	a5,a5,a4
    8000263c:	30079073          	csrw	mstatus,a5
    80002640:	00000797          	auipc	a5,0x0
    80002644:	16078793          	addi	a5,a5,352 # 800027a0 <system_main>
    80002648:	34179073          	csrw	mepc,a5
    8000264c:	00000793          	li	a5,0
    80002650:	18079073          	csrw	satp,a5
    80002654:	000107b7          	lui	a5,0x10
    80002658:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000265c:	30279073          	csrw	medeleg,a5
    80002660:	30379073          	csrw	mideleg,a5
    80002664:	104027f3          	csrr	a5,sie
    80002668:	2227e793          	ori	a5,a5,546
    8000266c:	10479073          	csrw	sie,a5
    80002670:	fff00793          	li	a5,-1
    80002674:	00a7d793          	srli	a5,a5,0xa
    80002678:	3b079073          	csrw	pmpaddr0,a5
    8000267c:	00f00793          	li	a5,15
    80002680:	3a079073          	csrw	pmpcfg0,a5
    80002684:	f14027f3          	csrr	a5,mhartid
    80002688:	0200c737          	lui	a4,0x200c
    8000268c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002690:	0007869b          	sext.w	a3,a5
    80002694:	00269713          	slli	a4,a3,0x2
    80002698:	000f4637          	lui	a2,0xf4
    8000269c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800026a0:	00d70733          	add	a4,a4,a3
    800026a4:	0037979b          	slliw	a5,a5,0x3
    800026a8:	020046b7          	lui	a3,0x2004
    800026ac:	00d787b3          	add	a5,a5,a3
    800026b0:	00c585b3          	add	a1,a1,a2
    800026b4:	00371693          	slli	a3,a4,0x3
    800026b8:	00003717          	auipc	a4,0x3
    800026bc:	5a870713          	addi	a4,a4,1448 # 80005c60 <timer_scratch>
    800026c0:	00b7b023          	sd	a1,0(a5)
    800026c4:	00d70733          	add	a4,a4,a3
    800026c8:	00f73c23          	sd	a5,24(a4)
    800026cc:	02c73023          	sd	a2,32(a4)
    800026d0:	34071073          	csrw	mscratch,a4
    800026d4:	00000797          	auipc	a5,0x0
    800026d8:	6ec78793          	addi	a5,a5,1772 # 80002dc0 <timervec>
    800026dc:	30579073          	csrw	mtvec,a5
    800026e0:	300027f3          	csrr	a5,mstatus
    800026e4:	0087e793          	ori	a5,a5,8
    800026e8:	30079073          	csrw	mstatus,a5
    800026ec:	304027f3          	csrr	a5,mie
    800026f0:	0807e793          	ori	a5,a5,128
    800026f4:	30479073          	csrw	mie,a5
    800026f8:	f14027f3          	csrr	a5,mhartid
    800026fc:	0007879b          	sext.w	a5,a5
    80002700:	00078213          	mv	tp,a5
    80002704:	30200073          	mret
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <timerinit>:
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813423          	sd	s0,8(sp)
    8000271c:	01010413          	addi	s0,sp,16
    80002720:	f14027f3          	csrr	a5,mhartid
    80002724:	0200c737          	lui	a4,0x200c
    80002728:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000272c:	0007869b          	sext.w	a3,a5
    80002730:	00269713          	slli	a4,a3,0x2
    80002734:	000f4637          	lui	a2,0xf4
    80002738:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000273c:	00d70733          	add	a4,a4,a3
    80002740:	0037979b          	slliw	a5,a5,0x3
    80002744:	020046b7          	lui	a3,0x2004
    80002748:	00d787b3          	add	a5,a5,a3
    8000274c:	00c585b3          	add	a1,a1,a2
    80002750:	00371693          	slli	a3,a4,0x3
    80002754:	00003717          	auipc	a4,0x3
    80002758:	50c70713          	addi	a4,a4,1292 # 80005c60 <timer_scratch>
    8000275c:	00b7b023          	sd	a1,0(a5)
    80002760:	00d70733          	add	a4,a4,a3
    80002764:	00f73c23          	sd	a5,24(a4)
    80002768:	02c73023          	sd	a2,32(a4)
    8000276c:	34071073          	csrw	mscratch,a4
    80002770:	00000797          	auipc	a5,0x0
    80002774:	65078793          	addi	a5,a5,1616 # 80002dc0 <timervec>
    80002778:	30579073          	csrw	mtvec,a5
    8000277c:	300027f3          	csrr	a5,mstatus
    80002780:	0087e793          	ori	a5,a5,8
    80002784:	30079073          	csrw	mstatus,a5
    80002788:	304027f3          	csrr	a5,mie
    8000278c:	0807e793          	ori	a5,a5,128
    80002790:	30479073          	csrw	mie,a5
    80002794:	00813403          	ld	s0,8(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <system_main>:
    800027a0:	fe010113          	addi	sp,sp,-32
    800027a4:	00813823          	sd	s0,16(sp)
    800027a8:	00913423          	sd	s1,8(sp)
    800027ac:	00113c23          	sd	ra,24(sp)
    800027b0:	02010413          	addi	s0,sp,32
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	0c4080e7          	jalr	196(ra) # 80002878 <cpuid>
    800027bc:	00003497          	auipc	s1,0x3
    800027c0:	44448493          	addi	s1,s1,1092 # 80005c00 <started>
    800027c4:	02050263          	beqz	a0,800027e8 <system_main+0x48>
    800027c8:	0004a783          	lw	a5,0(s1)
    800027cc:	0007879b          	sext.w	a5,a5
    800027d0:	fe078ce3          	beqz	a5,800027c8 <system_main+0x28>
    800027d4:	0ff0000f          	fence
    800027d8:	00003517          	auipc	a0,0x3
    800027dc:	96050513          	addi	a0,a0,-1696 # 80005138 <_ZZ12printIntegermE6digits+0x40>
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	a7c080e7          	jalr	-1412(ra) # 8000325c <panic>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	9d0080e7          	jalr	-1584(ra) # 800031b8 <consoleinit>
    800027f0:	00001097          	auipc	ra,0x1
    800027f4:	15c080e7          	jalr	348(ra) # 8000394c <printfinit>
    800027f8:	00003517          	auipc	a0,0x3
    800027fc:	a2050513          	addi	a0,a0,-1504 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	ab8080e7          	jalr	-1352(ra) # 800032b8 <__printf>
    80002808:	00003517          	auipc	a0,0x3
    8000280c:	90050513          	addi	a0,a0,-1792 # 80005108 <_ZZ12printIntegermE6digits+0x10>
    80002810:	00001097          	auipc	ra,0x1
    80002814:	aa8080e7          	jalr	-1368(ra) # 800032b8 <__printf>
    80002818:	00003517          	auipc	a0,0x3
    8000281c:	a0050513          	addi	a0,a0,-1536 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    80002820:	00001097          	auipc	ra,0x1
    80002824:	a98080e7          	jalr	-1384(ra) # 800032b8 <__printf>
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	4b0080e7          	jalr	1200(ra) # 80003cd8 <kinit>
    80002830:	00000097          	auipc	ra,0x0
    80002834:	148080e7          	jalr	328(ra) # 80002978 <trapinit>
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	16c080e7          	jalr	364(ra) # 800029a4 <trapinithart>
    80002840:	00000097          	auipc	ra,0x0
    80002844:	5c0080e7          	jalr	1472(ra) # 80002e00 <plicinit>
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	5e0080e7          	jalr	1504(ra) # 80002e28 <plicinithart>
    80002850:	00000097          	auipc	ra,0x0
    80002854:	078080e7          	jalr	120(ra) # 800028c8 <userinit>
    80002858:	0ff0000f          	fence
    8000285c:	00100793          	li	a5,1
    80002860:	00003517          	auipc	a0,0x3
    80002864:	8c050513          	addi	a0,a0,-1856 # 80005120 <_ZZ12printIntegermE6digits+0x28>
    80002868:	00f4a023          	sw	a5,0(s1)
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	a4c080e7          	jalr	-1460(ra) # 800032b8 <__printf>
    80002874:	0000006f          	j	80002874 <system_main+0xd4>

0000000080002878 <cpuid>:
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00813423          	sd	s0,8(sp)
    80002880:	01010413          	addi	s0,sp,16
    80002884:	00020513          	mv	a0,tp
    80002888:	00813403          	ld	s0,8(sp)
    8000288c:	0005051b          	sext.w	a0,a0
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <mycpu>:
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00813423          	sd	s0,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00020793          	mv	a5,tp
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	0007879b          	sext.w	a5,a5
    800028b0:	00779793          	slli	a5,a5,0x7
    800028b4:	00004517          	auipc	a0,0x4
    800028b8:	3dc50513          	addi	a0,a0,988 # 80006c90 <cpus>
    800028bc:	00f50533          	add	a0,a0,a5
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <userinit>:
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00813423          	sd	s0,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    800028d4:	00813403          	ld	s0,8(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	fffff317          	auipc	t1,0xfffff
    800028e0:	d2030067          	jr	-736(t1) # 800015fc <main>

00000000800028e4 <either_copyout>:
    800028e4:	ff010113          	addi	sp,sp,-16
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	00113423          	sd	ra,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    800028f4:	02051663          	bnez	a0,80002920 <either_copyout+0x3c>
    800028f8:	00058513          	mv	a0,a1
    800028fc:	00060593          	mv	a1,a2
    80002900:	0006861b          	sext.w	a2,a3
    80002904:	00002097          	auipc	ra,0x2
    80002908:	c60080e7          	jalr	-928(ra) # 80004564 <__memmove>
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	00000513          	li	a0,0
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret
    80002920:	00003517          	auipc	a0,0x3
    80002924:	84050513          	addi	a0,a0,-1984 # 80005160 <_ZZ12printIntegermE6digits+0x68>
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	934080e7          	jalr	-1740(ra) # 8000325c <panic>

0000000080002930 <either_copyin>:
    80002930:	ff010113          	addi	sp,sp,-16
    80002934:	00813023          	sd	s0,0(sp)
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    80002940:	02059463          	bnez	a1,80002968 <either_copyin+0x38>
    80002944:	00060593          	mv	a1,a2
    80002948:	0006861b          	sext.w	a2,a3
    8000294c:	00002097          	auipc	ra,0x2
    80002950:	c18080e7          	jalr	-1000(ra) # 80004564 <__memmove>
    80002954:	00813083          	ld	ra,8(sp)
    80002958:	00013403          	ld	s0,0(sp)
    8000295c:	00000513          	li	a0,0
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret
    80002968:	00003517          	auipc	a0,0x3
    8000296c:	82050513          	addi	a0,a0,-2016 # 80005188 <_ZZ12printIntegermE6digits+0x90>
    80002970:	00001097          	auipc	ra,0x1
    80002974:	8ec080e7          	jalr	-1812(ra) # 8000325c <panic>

0000000080002978 <trapinit>:
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    80002984:	00813403          	ld	s0,8(sp)
    80002988:	00003597          	auipc	a1,0x3
    8000298c:	82858593          	addi	a1,a1,-2008 # 800051b0 <_ZZ12printIntegermE6digits+0xb8>
    80002990:	00004517          	auipc	a0,0x4
    80002994:	38050513          	addi	a0,a0,896 # 80006d10 <tickslock>
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00001317          	auipc	t1,0x1
    800029a0:	5cc30067          	jr	1484(t1) # 80003f68 <initlock>

00000000800029a4 <trapinithart>:
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00813423          	sd	s0,8(sp)
    800029ac:	01010413          	addi	s0,sp,16
    800029b0:	00000797          	auipc	a5,0x0
    800029b4:	30078793          	addi	a5,a5,768 # 80002cb0 <kernelvec>
    800029b8:	10579073          	csrw	stvec,a5
    800029bc:	00813403          	ld	s0,8(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <usertrap>:
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00813423          	sd	s0,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	00813403          	ld	s0,8(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <usertrapret>:
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00813423          	sd	s0,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <kerneltrap>:
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	02010413          	addi	s0,sp,32
    80002a0c:	142025f3          	csrr	a1,scause
    80002a10:	100027f3          	csrr	a5,sstatus
    80002a14:	0027f793          	andi	a5,a5,2
    80002a18:	10079c63          	bnez	a5,80002b30 <kerneltrap+0x138>
    80002a1c:	142027f3          	csrr	a5,scause
    80002a20:	0207ce63          	bltz	a5,80002a5c <kerneltrap+0x64>
    80002a24:	00002517          	auipc	a0,0x2
    80002a28:	7d450513          	addi	a0,a0,2004 # 800051f8 <_ZZ12printIntegermE6digits+0x100>
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	88c080e7          	jalr	-1908(ra) # 800032b8 <__printf>
    80002a34:	141025f3          	csrr	a1,sepc
    80002a38:	14302673          	csrr	a2,stval
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	7cc50513          	addi	a0,a0,1996 # 80005208 <_ZZ12printIntegermE6digits+0x110>
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	874080e7          	jalr	-1932(ra) # 800032b8 <__printf>
    80002a4c:	00002517          	auipc	a0,0x2
    80002a50:	7d450513          	addi	a0,a0,2004 # 80005220 <_ZZ12printIntegermE6digits+0x128>
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	808080e7          	jalr	-2040(ra) # 8000325c <panic>
    80002a5c:	0ff7f713          	andi	a4,a5,255
    80002a60:	00900693          	li	a3,9
    80002a64:	04d70063          	beq	a4,a3,80002aa4 <kerneltrap+0xac>
    80002a68:	fff00713          	li	a4,-1
    80002a6c:	03f71713          	slli	a4,a4,0x3f
    80002a70:	00170713          	addi	a4,a4,1
    80002a74:	fae798e3          	bne	a5,a4,80002a24 <kerneltrap+0x2c>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	e00080e7          	jalr	-512(ra) # 80002878 <cpuid>
    80002a80:	06050663          	beqz	a0,80002aec <kerneltrap+0xf4>
    80002a84:	144027f3          	csrr	a5,sip
    80002a88:	ffd7f793          	andi	a5,a5,-3
    80002a8c:	14479073          	csrw	sip,a5
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	00813483          	ld	s1,8(sp)
    80002a9c:	02010113          	addi	sp,sp,32
    80002aa0:	00008067          	ret
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	3d0080e7          	jalr	976(ra) # 80002e74 <plic_claim>
    80002aac:	00a00793          	li	a5,10
    80002ab0:	00050493          	mv	s1,a0
    80002ab4:	06f50863          	beq	a0,a5,80002b24 <kerneltrap+0x12c>
    80002ab8:	fc050ce3          	beqz	a0,80002a90 <kerneltrap+0x98>
    80002abc:	00050593          	mv	a1,a0
    80002ac0:	00002517          	auipc	a0,0x2
    80002ac4:	71850513          	addi	a0,a0,1816 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	7f0080e7          	jalr	2032(ra) # 800032b8 <__printf>
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	02010113          	addi	sp,sp,32
    80002ae4:	00000317          	auipc	t1,0x0
    80002ae8:	3c830067          	jr	968(t1) # 80002eac <plic_complete>
    80002aec:	00004517          	auipc	a0,0x4
    80002af0:	22450513          	addi	a0,a0,548 # 80006d10 <tickslock>
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	498080e7          	jalr	1176(ra) # 80003f8c <acquire>
    80002afc:	00003717          	auipc	a4,0x3
    80002b00:	10870713          	addi	a4,a4,264 # 80005c04 <ticks>
    80002b04:	00072783          	lw	a5,0(a4)
    80002b08:	00004517          	auipc	a0,0x4
    80002b0c:	20850513          	addi	a0,a0,520 # 80006d10 <tickslock>
    80002b10:	0017879b          	addiw	a5,a5,1
    80002b14:	00f72023          	sw	a5,0(a4)
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	540080e7          	jalr	1344(ra) # 80004058 <release>
    80002b20:	f65ff06f          	j	80002a84 <kerneltrap+0x8c>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	09c080e7          	jalr	156(ra) # 80003bc0 <uartintr>
    80002b2c:	fa5ff06f          	j	80002ad0 <kerneltrap+0xd8>
    80002b30:	00002517          	auipc	a0,0x2
    80002b34:	68850513          	addi	a0,a0,1672 # 800051b8 <_ZZ12printIntegermE6digits+0xc0>
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	724080e7          	jalr	1828(ra) # 8000325c <panic>

0000000080002b40 <clockintr>:
    80002b40:	fe010113          	addi	sp,sp,-32
    80002b44:	00813823          	sd	s0,16(sp)
    80002b48:	00913423          	sd	s1,8(sp)
    80002b4c:	00113c23          	sd	ra,24(sp)
    80002b50:	02010413          	addi	s0,sp,32
    80002b54:	00004497          	auipc	s1,0x4
    80002b58:	1bc48493          	addi	s1,s1,444 # 80006d10 <tickslock>
    80002b5c:	00048513          	mv	a0,s1
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	42c080e7          	jalr	1068(ra) # 80003f8c <acquire>
    80002b68:	00003717          	auipc	a4,0x3
    80002b6c:	09c70713          	addi	a4,a4,156 # 80005c04 <ticks>
    80002b70:	00072783          	lw	a5,0(a4)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	01813083          	ld	ra,24(sp)
    80002b7c:	00048513          	mv	a0,s1
    80002b80:	0017879b          	addiw	a5,a5,1
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	00f72023          	sw	a5,0(a4)
    80002b8c:	02010113          	addi	sp,sp,32
    80002b90:	00001317          	auipc	t1,0x1
    80002b94:	4c830067          	jr	1224(t1) # 80004058 <release>

0000000080002b98 <devintr>:
    80002b98:	142027f3          	csrr	a5,scause
    80002b9c:	00000513          	li	a0,0
    80002ba0:	0007c463          	bltz	a5,80002ba8 <devintr+0x10>
    80002ba4:	00008067          	ret
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00813823          	sd	s0,16(sp)
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    80002bbc:	0ff7f713          	andi	a4,a5,255
    80002bc0:	00900693          	li	a3,9
    80002bc4:	04d70c63          	beq	a4,a3,80002c1c <devintr+0x84>
    80002bc8:	fff00713          	li	a4,-1
    80002bcc:	03f71713          	slli	a4,a4,0x3f
    80002bd0:	00170713          	addi	a4,a4,1
    80002bd4:	00e78c63          	beq	a5,a4,80002bec <devintr+0x54>
    80002bd8:	01813083          	ld	ra,24(sp)
    80002bdc:	01013403          	ld	s0,16(sp)
    80002be0:	00813483          	ld	s1,8(sp)
    80002be4:	02010113          	addi	sp,sp,32
    80002be8:	00008067          	ret
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	c8c080e7          	jalr	-884(ra) # 80002878 <cpuid>
    80002bf4:	06050663          	beqz	a0,80002c60 <devintr+0xc8>
    80002bf8:	144027f3          	csrr	a5,sip
    80002bfc:	ffd7f793          	andi	a5,a5,-3
    80002c00:	14479073          	csrw	sip,a5
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00200513          	li	a0,2
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	258080e7          	jalr	600(ra) # 80002e74 <plic_claim>
    80002c24:	00a00793          	li	a5,10
    80002c28:	00050493          	mv	s1,a0
    80002c2c:	06f50663          	beq	a0,a5,80002c98 <devintr+0x100>
    80002c30:	00100513          	li	a0,1
    80002c34:	fa0482e3          	beqz	s1,80002bd8 <devintr+0x40>
    80002c38:	00048593          	mv	a1,s1
    80002c3c:	00002517          	auipc	a0,0x2
    80002c40:	59c50513          	addi	a0,a0,1436 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	674080e7          	jalr	1652(ra) # 800032b8 <__printf>
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	25c080e7          	jalr	604(ra) # 80002eac <plic_complete>
    80002c58:	00100513          	li	a0,1
    80002c5c:	f7dff06f          	j	80002bd8 <devintr+0x40>
    80002c60:	00004517          	auipc	a0,0x4
    80002c64:	0b050513          	addi	a0,a0,176 # 80006d10 <tickslock>
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	324080e7          	jalr	804(ra) # 80003f8c <acquire>
    80002c70:	00003717          	auipc	a4,0x3
    80002c74:	f9470713          	addi	a4,a4,-108 # 80005c04 <ticks>
    80002c78:	00072783          	lw	a5,0(a4)
    80002c7c:	00004517          	auipc	a0,0x4
    80002c80:	09450513          	addi	a0,a0,148 # 80006d10 <tickslock>
    80002c84:	0017879b          	addiw	a5,a5,1
    80002c88:	00f72023          	sw	a5,0(a4)
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	3cc080e7          	jalr	972(ra) # 80004058 <release>
    80002c94:	f65ff06f          	j	80002bf8 <devintr+0x60>
    80002c98:	00001097          	auipc	ra,0x1
    80002c9c:	f28080e7          	jalr	-216(ra) # 80003bc0 <uartintr>
    80002ca0:	fadff06f          	j	80002c4c <devintr+0xb4>
	...

0000000080002cb0 <kernelvec>:
    80002cb0:	f0010113          	addi	sp,sp,-256
    80002cb4:	00113023          	sd	ra,0(sp)
    80002cb8:	00213423          	sd	sp,8(sp)
    80002cbc:	00313823          	sd	gp,16(sp)
    80002cc0:	00413c23          	sd	tp,24(sp)
    80002cc4:	02513023          	sd	t0,32(sp)
    80002cc8:	02613423          	sd	t1,40(sp)
    80002ccc:	02713823          	sd	t2,48(sp)
    80002cd0:	02813c23          	sd	s0,56(sp)
    80002cd4:	04913023          	sd	s1,64(sp)
    80002cd8:	04a13423          	sd	a0,72(sp)
    80002cdc:	04b13823          	sd	a1,80(sp)
    80002ce0:	04c13c23          	sd	a2,88(sp)
    80002ce4:	06d13023          	sd	a3,96(sp)
    80002ce8:	06e13423          	sd	a4,104(sp)
    80002cec:	06f13823          	sd	a5,112(sp)
    80002cf0:	07013c23          	sd	a6,120(sp)
    80002cf4:	09113023          	sd	a7,128(sp)
    80002cf8:	09213423          	sd	s2,136(sp)
    80002cfc:	09313823          	sd	s3,144(sp)
    80002d00:	09413c23          	sd	s4,152(sp)
    80002d04:	0b513023          	sd	s5,160(sp)
    80002d08:	0b613423          	sd	s6,168(sp)
    80002d0c:	0b713823          	sd	s7,176(sp)
    80002d10:	0b813c23          	sd	s8,184(sp)
    80002d14:	0d913023          	sd	s9,192(sp)
    80002d18:	0da13423          	sd	s10,200(sp)
    80002d1c:	0db13823          	sd	s11,208(sp)
    80002d20:	0dc13c23          	sd	t3,216(sp)
    80002d24:	0fd13023          	sd	t4,224(sp)
    80002d28:	0fe13423          	sd	t5,232(sp)
    80002d2c:	0ff13823          	sd	t6,240(sp)
    80002d30:	cc9ff0ef          	jal	ra,800029f8 <kerneltrap>
    80002d34:	00013083          	ld	ra,0(sp)
    80002d38:	00813103          	ld	sp,8(sp)
    80002d3c:	01013183          	ld	gp,16(sp)
    80002d40:	02013283          	ld	t0,32(sp)
    80002d44:	02813303          	ld	t1,40(sp)
    80002d48:	03013383          	ld	t2,48(sp)
    80002d4c:	03813403          	ld	s0,56(sp)
    80002d50:	04013483          	ld	s1,64(sp)
    80002d54:	04813503          	ld	a0,72(sp)
    80002d58:	05013583          	ld	a1,80(sp)
    80002d5c:	05813603          	ld	a2,88(sp)
    80002d60:	06013683          	ld	a3,96(sp)
    80002d64:	06813703          	ld	a4,104(sp)
    80002d68:	07013783          	ld	a5,112(sp)
    80002d6c:	07813803          	ld	a6,120(sp)
    80002d70:	08013883          	ld	a7,128(sp)
    80002d74:	08813903          	ld	s2,136(sp)
    80002d78:	09013983          	ld	s3,144(sp)
    80002d7c:	09813a03          	ld	s4,152(sp)
    80002d80:	0a013a83          	ld	s5,160(sp)
    80002d84:	0a813b03          	ld	s6,168(sp)
    80002d88:	0b013b83          	ld	s7,176(sp)
    80002d8c:	0b813c03          	ld	s8,184(sp)
    80002d90:	0c013c83          	ld	s9,192(sp)
    80002d94:	0c813d03          	ld	s10,200(sp)
    80002d98:	0d013d83          	ld	s11,208(sp)
    80002d9c:	0d813e03          	ld	t3,216(sp)
    80002da0:	0e013e83          	ld	t4,224(sp)
    80002da4:	0e813f03          	ld	t5,232(sp)
    80002da8:	0f013f83          	ld	t6,240(sp)
    80002dac:	10010113          	addi	sp,sp,256
    80002db0:	10200073          	sret
    80002db4:	00000013          	nop
    80002db8:	00000013          	nop
    80002dbc:	00000013          	nop

0000000080002dc0 <timervec>:
    80002dc0:	34051573          	csrrw	a0,mscratch,a0
    80002dc4:	00b53023          	sd	a1,0(a0)
    80002dc8:	00c53423          	sd	a2,8(a0)
    80002dcc:	00d53823          	sd	a3,16(a0)
    80002dd0:	01853583          	ld	a1,24(a0)
    80002dd4:	02053603          	ld	a2,32(a0)
    80002dd8:	0005b683          	ld	a3,0(a1)
    80002ddc:	00c686b3          	add	a3,a3,a2
    80002de0:	00d5b023          	sd	a3,0(a1)
    80002de4:	00200593          	li	a1,2
    80002de8:	14459073          	csrw	sip,a1
    80002dec:	01053683          	ld	a3,16(a0)
    80002df0:	00853603          	ld	a2,8(a0)
    80002df4:	00053583          	ld	a1,0(a0)
    80002df8:	34051573          	csrrw	a0,mscratch,a0
    80002dfc:	30200073          	mret

0000000080002e00 <plicinit>:
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00813423          	sd	s0,8(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	00813403          	ld	s0,8(sp)
    80002e10:	0c0007b7          	lui	a5,0xc000
    80002e14:	00100713          	li	a4,1
    80002e18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002e1c:	00e7a223          	sw	a4,4(a5)
    80002e20:	01010113          	addi	sp,sp,16
    80002e24:	00008067          	ret

0000000080002e28 <plicinithart>:
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00813023          	sd	s0,0(sp)
    80002e30:	00113423          	sd	ra,8(sp)
    80002e34:	01010413          	addi	s0,sp,16
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	a40080e7          	jalr	-1472(ra) # 80002878 <cpuid>
    80002e40:	0085171b          	slliw	a4,a0,0x8
    80002e44:	0c0027b7          	lui	a5,0xc002
    80002e48:	00e787b3          	add	a5,a5,a4
    80002e4c:	40200713          	li	a4,1026
    80002e50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002e54:	00813083          	ld	ra,8(sp)
    80002e58:	00013403          	ld	s0,0(sp)
    80002e5c:	00d5151b          	slliw	a0,a0,0xd
    80002e60:	0c2017b7          	lui	a5,0xc201
    80002e64:	00a78533          	add	a0,a5,a0
    80002e68:	00052023          	sw	zero,0(a0)
    80002e6c:	01010113          	addi	sp,sp,16
    80002e70:	00008067          	ret

0000000080002e74 <plic_claim>:
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00813023          	sd	s0,0(sp)
    80002e7c:	00113423          	sd	ra,8(sp)
    80002e80:	01010413          	addi	s0,sp,16
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	9f4080e7          	jalr	-1548(ra) # 80002878 <cpuid>
    80002e8c:	00813083          	ld	ra,8(sp)
    80002e90:	00013403          	ld	s0,0(sp)
    80002e94:	00d5151b          	slliw	a0,a0,0xd
    80002e98:	0c2017b7          	lui	a5,0xc201
    80002e9c:	00a78533          	add	a0,a5,a0
    80002ea0:	00452503          	lw	a0,4(a0)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret

0000000080002eac <plic_complete>:
    80002eac:	fe010113          	addi	sp,sp,-32
    80002eb0:	00813823          	sd	s0,16(sp)
    80002eb4:	00913423          	sd	s1,8(sp)
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	02010413          	addi	s0,sp,32
    80002ec0:	00050493          	mv	s1,a0
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	9b4080e7          	jalr	-1612(ra) # 80002878 <cpuid>
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00d5179b          	slliw	a5,a0,0xd
    80002ed8:	0c201737          	lui	a4,0xc201
    80002edc:	00f707b3          	add	a5,a4,a5
    80002ee0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	02010113          	addi	sp,sp,32
    80002eec:	00008067          	ret

0000000080002ef0 <consolewrite>:
    80002ef0:	fb010113          	addi	sp,sp,-80
    80002ef4:	04813023          	sd	s0,64(sp)
    80002ef8:	04113423          	sd	ra,72(sp)
    80002efc:	02913c23          	sd	s1,56(sp)
    80002f00:	03213823          	sd	s2,48(sp)
    80002f04:	03313423          	sd	s3,40(sp)
    80002f08:	03413023          	sd	s4,32(sp)
    80002f0c:	01513c23          	sd	s5,24(sp)
    80002f10:	05010413          	addi	s0,sp,80
    80002f14:	06c05c63          	blez	a2,80002f8c <consolewrite+0x9c>
    80002f18:	00060993          	mv	s3,a2
    80002f1c:	00050a13          	mv	s4,a0
    80002f20:	00058493          	mv	s1,a1
    80002f24:	00000913          	li	s2,0
    80002f28:	fff00a93          	li	s5,-1
    80002f2c:	01c0006f          	j	80002f48 <consolewrite+0x58>
    80002f30:	fbf44503          	lbu	a0,-65(s0)
    80002f34:	0019091b          	addiw	s2,s2,1
    80002f38:	00148493          	addi	s1,s1,1
    80002f3c:	00001097          	auipc	ra,0x1
    80002f40:	a9c080e7          	jalr	-1380(ra) # 800039d8 <uartputc>
    80002f44:	03298063          	beq	s3,s2,80002f64 <consolewrite+0x74>
    80002f48:	00048613          	mv	a2,s1
    80002f4c:	00100693          	li	a3,1
    80002f50:	000a0593          	mv	a1,s4
    80002f54:	fbf40513          	addi	a0,s0,-65
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	9d8080e7          	jalr	-1576(ra) # 80002930 <either_copyin>
    80002f60:	fd5518e3          	bne	a0,s5,80002f30 <consolewrite+0x40>
    80002f64:	04813083          	ld	ra,72(sp)
    80002f68:	04013403          	ld	s0,64(sp)
    80002f6c:	03813483          	ld	s1,56(sp)
    80002f70:	02813983          	ld	s3,40(sp)
    80002f74:	02013a03          	ld	s4,32(sp)
    80002f78:	01813a83          	ld	s5,24(sp)
    80002f7c:	00090513          	mv	a0,s2
    80002f80:	03013903          	ld	s2,48(sp)
    80002f84:	05010113          	addi	sp,sp,80
    80002f88:	00008067          	ret
    80002f8c:	00000913          	li	s2,0
    80002f90:	fd5ff06f          	j	80002f64 <consolewrite+0x74>

0000000080002f94 <consoleread>:
    80002f94:	f9010113          	addi	sp,sp,-112
    80002f98:	06813023          	sd	s0,96(sp)
    80002f9c:	04913c23          	sd	s1,88(sp)
    80002fa0:	05213823          	sd	s2,80(sp)
    80002fa4:	05313423          	sd	s3,72(sp)
    80002fa8:	05413023          	sd	s4,64(sp)
    80002fac:	03513c23          	sd	s5,56(sp)
    80002fb0:	03613823          	sd	s6,48(sp)
    80002fb4:	03713423          	sd	s7,40(sp)
    80002fb8:	03813023          	sd	s8,32(sp)
    80002fbc:	06113423          	sd	ra,104(sp)
    80002fc0:	01913c23          	sd	s9,24(sp)
    80002fc4:	07010413          	addi	s0,sp,112
    80002fc8:	00060b93          	mv	s7,a2
    80002fcc:	00050913          	mv	s2,a0
    80002fd0:	00058c13          	mv	s8,a1
    80002fd4:	00060b1b          	sext.w	s6,a2
    80002fd8:	00004497          	auipc	s1,0x4
    80002fdc:	d6048493          	addi	s1,s1,-672 # 80006d38 <cons>
    80002fe0:	00400993          	li	s3,4
    80002fe4:	fff00a13          	li	s4,-1
    80002fe8:	00a00a93          	li	s5,10
    80002fec:	05705e63          	blez	s7,80003048 <consoleread+0xb4>
    80002ff0:	09c4a703          	lw	a4,156(s1)
    80002ff4:	0984a783          	lw	a5,152(s1)
    80002ff8:	0007071b          	sext.w	a4,a4
    80002ffc:	08e78463          	beq	a5,a4,80003084 <consoleread+0xf0>
    80003000:	07f7f713          	andi	a4,a5,127
    80003004:	00e48733          	add	a4,s1,a4
    80003008:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000300c:	0017869b          	addiw	a3,a5,1
    80003010:	08d4ac23          	sw	a3,152(s1)
    80003014:	00070c9b          	sext.w	s9,a4
    80003018:	0b370663          	beq	a4,s3,800030c4 <consoleread+0x130>
    8000301c:	00100693          	li	a3,1
    80003020:	f9f40613          	addi	a2,s0,-97
    80003024:	000c0593          	mv	a1,s8
    80003028:	00090513          	mv	a0,s2
    8000302c:	f8e40fa3          	sb	a4,-97(s0)
    80003030:	00000097          	auipc	ra,0x0
    80003034:	8b4080e7          	jalr	-1868(ra) # 800028e4 <either_copyout>
    80003038:	01450863          	beq	a0,s4,80003048 <consoleread+0xb4>
    8000303c:	001c0c13          	addi	s8,s8,1
    80003040:	fffb8b9b          	addiw	s7,s7,-1
    80003044:	fb5c94e3          	bne	s9,s5,80002fec <consoleread+0x58>
    80003048:	000b851b          	sext.w	a0,s7
    8000304c:	06813083          	ld	ra,104(sp)
    80003050:	06013403          	ld	s0,96(sp)
    80003054:	05813483          	ld	s1,88(sp)
    80003058:	05013903          	ld	s2,80(sp)
    8000305c:	04813983          	ld	s3,72(sp)
    80003060:	04013a03          	ld	s4,64(sp)
    80003064:	03813a83          	ld	s5,56(sp)
    80003068:	02813b83          	ld	s7,40(sp)
    8000306c:	02013c03          	ld	s8,32(sp)
    80003070:	01813c83          	ld	s9,24(sp)
    80003074:	40ab053b          	subw	a0,s6,a0
    80003078:	03013b03          	ld	s6,48(sp)
    8000307c:	07010113          	addi	sp,sp,112
    80003080:	00008067          	ret
    80003084:	00001097          	auipc	ra,0x1
    80003088:	1d8080e7          	jalr	472(ra) # 8000425c <push_on>
    8000308c:	0984a703          	lw	a4,152(s1)
    80003090:	09c4a783          	lw	a5,156(s1)
    80003094:	0007879b          	sext.w	a5,a5
    80003098:	fef70ce3          	beq	a4,a5,80003090 <consoleread+0xfc>
    8000309c:	00001097          	auipc	ra,0x1
    800030a0:	234080e7          	jalr	564(ra) # 800042d0 <pop_on>
    800030a4:	0984a783          	lw	a5,152(s1)
    800030a8:	07f7f713          	andi	a4,a5,127
    800030ac:	00e48733          	add	a4,s1,a4
    800030b0:	01874703          	lbu	a4,24(a4)
    800030b4:	0017869b          	addiw	a3,a5,1
    800030b8:	08d4ac23          	sw	a3,152(s1)
    800030bc:	00070c9b          	sext.w	s9,a4
    800030c0:	f5371ee3          	bne	a4,s3,8000301c <consoleread+0x88>
    800030c4:	000b851b          	sext.w	a0,s7
    800030c8:	f96bf2e3          	bgeu	s7,s6,8000304c <consoleread+0xb8>
    800030cc:	08f4ac23          	sw	a5,152(s1)
    800030d0:	f7dff06f          	j	8000304c <consoleread+0xb8>

00000000800030d4 <consputc>:
    800030d4:	10000793          	li	a5,256
    800030d8:	00f50663          	beq	a0,a5,800030e4 <consputc+0x10>
    800030dc:	00001317          	auipc	t1,0x1
    800030e0:	9f430067          	jr	-1548(t1) # 80003ad0 <uartputc_sync>
    800030e4:	ff010113          	addi	sp,sp,-16
    800030e8:	00113423          	sd	ra,8(sp)
    800030ec:	00813023          	sd	s0,0(sp)
    800030f0:	01010413          	addi	s0,sp,16
    800030f4:	00800513          	li	a0,8
    800030f8:	00001097          	auipc	ra,0x1
    800030fc:	9d8080e7          	jalr	-1576(ra) # 80003ad0 <uartputc_sync>
    80003100:	02000513          	li	a0,32
    80003104:	00001097          	auipc	ra,0x1
    80003108:	9cc080e7          	jalr	-1588(ra) # 80003ad0 <uartputc_sync>
    8000310c:	00013403          	ld	s0,0(sp)
    80003110:	00813083          	ld	ra,8(sp)
    80003114:	00800513          	li	a0,8
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00001317          	auipc	t1,0x1
    80003120:	9b430067          	jr	-1612(t1) # 80003ad0 <uartputc_sync>

0000000080003124 <consoleintr>:
    80003124:	fe010113          	addi	sp,sp,-32
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00913423          	sd	s1,8(sp)
    80003130:	01213023          	sd	s2,0(sp)
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	02010413          	addi	s0,sp,32
    8000313c:	00004917          	auipc	s2,0x4
    80003140:	bfc90913          	addi	s2,s2,-1028 # 80006d38 <cons>
    80003144:	00050493          	mv	s1,a0
    80003148:	00090513          	mv	a0,s2
    8000314c:	00001097          	auipc	ra,0x1
    80003150:	e40080e7          	jalr	-448(ra) # 80003f8c <acquire>
    80003154:	02048c63          	beqz	s1,8000318c <consoleintr+0x68>
    80003158:	0a092783          	lw	a5,160(s2)
    8000315c:	09892703          	lw	a4,152(s2)
    80003160:	07f00693          	li	a3,127
    80003164:	40e7873b          	subw	a4,a5,a4
    80003168:	02e6e263          	bltu	a3,a4,8000318c <consoleintr+0x68>
    8000316c:	00d00713          	li	a4,13
    80003170:	04e48063          	beq	s1,a4,800031b0 <consoleintr+0x8c>
    80003174:	07f7f713          	andi	a4,a5,127
    80003178:	00e90733          	add	a4,s2,a4
    8000317c:	0017879b          	addiw	a5,a5,1
    80003180:	0af92023          	sw	a5,160(s2)
    80003184:	00970c23          	sb	s1,24(a4)
    80003188:	08f92e23          	sw	a5,156(s2)
    8000318c:	01013403          	ld	s0,16(sp)
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	00813483          	ld	s1,8(sp)
    80003198:	00013903          	ld	s2,0(sp)
    8000319c:	00004517          	auipc	a0,0x4
    800031a0:	b9c50513          	addi	a0,a0,-1124 # 80006d38 <cons>
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00001317          	auipc	t1,0x1
    800031ac:	eb030067          	jr	-336(t1) # 80004058 <release>
    800031b0:	00a00493          	li	s1,10
    800031b4:	fc1ff06f          	j	80003174 <consoleintr+0x50>

00000000800031b8 <consoleinit>:
    800031b8:	fe010113          	addi	sp,sp,-32
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	02010413          	addi	s0,sp,32
    800031cc:	00004497          	auipc	s1,0x4
    800031d0:	b6c48493          	addi	s1,s1,-1172 # 80006d38 <cons>
    800031d4:	00048513          	mv	a0,s1
    800031d8:	00002597          	auipc	a1,0x2
    800031dc:	05858593          	addi	a1,a1,88 # 80005230 <_ZZ12printIntegermE6digits+0x138>
    800031e0:	00001097          	auipc	ra,0x1
    800031e4:	d88080e7          	jalr	-632(ra) # 80003f68 <initlock>
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	7ac080e7          	jalr	1964(ra) # 80003994 <uartinit>
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00000797          	auipc	a5,0x0
    800031fc:	d9c78793          	addi	a5,a5,-612 # 80002f94 <consoleread>
    80003200:	0af4bc23          	sd	a5,184(s1)
    80003204:	00000797          	auipc	a5,0x0
    80003208:	cec78793          	addi	a5,a5,-788 # 80002ef0 <consolewrite>
    8000320c:	0cf4b023          	sd	a5,192(s1)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret

000000008000321c <console_read>:
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00813423          	sd	s0,8(sp)
    80003224:	01010413          	addi	s0,sp,16
    80003228:	00813403          	ld	s0,8(sp)
    8000322c:	00004317          	auipc	t1,0x4
    80003230:	bc433303          	ld	t1,-1084(t1) # 80006df0 <devsw+0x10>
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00030067          	jr	t1

000000008000323c <console_write>:
    8000323c:	ff010113          	addi	sp,sp,-16
    80003240:	00813423          	sd	s0,8(sp)
    80003244:	01010413          	addi	s0,sp,16
    80003248:	00813403          	ld	s0,8(sp)
    8000324c:	00004317          	auipc	t1,0x4
    80003250:	bac33303          	ld	t1,-1108(t1) # 80006df8 <devsw+0x18>
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00030067          	jr	t1

000000008000325c <panic>:
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00113c23          	sd	ra,24(sp)
    80003264:	00813823          	sd	s0,16(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	00050493          	mv	s1,a0
    80003274:	00002517          	auipc	a0,0x2
    80003278:	fc450513          	addi	a0,a0,-60 # 80005238 <_ZZ12printIntegermE6digits+0x140>
    8000327c:	00004797          	auipc	a5,0x4
    80003280:	c007ae23          	sw	zero,-996(a5) # 80006e98 <pr+0x18>
    80003284:	00000097          	auipc	ra,0x0
    80003288:	034080e7          	jalr	52(ra) # 800032b8 <__printf>
    8000328c:	00048513          	mv	a0,s1
    80003290:	00000097          	auipc	ra,0x0
    80003294:	028080e7          	jalr	40(ra) # 800032b8 <__printf>
    80003298:	00002517          	auipc	a0,0x2
    8000329c:	f8050513          	addi	a0,a0,-128 # 80005218 <_ZZ12printIntegermE6digits+0x120>
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	018080e7          	jalr	24(ra) # 800032b8 <__printf>
    800032a8:	00100793          	li	a5,1
    800032ac:	00003717          	auipc	a4,0x3
    800032b0:	94f72e23          	sw	a5,-1700(a4) # 80005c08 <panicked>
    800032b4:	0000006f          	j	800032b4 <panic+0x58>

00000000800032b8 <__printf>:
    800032b8:	f3010113          	addi	sp,sp,-208
    800032bc:	08813023          	sd	s0,128(sp)
    800032c0:	07313423          	sd	s3,104(sp)
    800032c4:	09010413          	addi	s0,sp,144
    800032c8:	05813023          	sd	s8,64(sp)
    800032cc:	08113423          	sd	ra,136(sp)
    800032d0:	06913c23          	sd	s1,120(sp)
    800032d4:	07213823          	sd	s2,112(sp)
    800032d8:	07413023          	sd	s4,96(sp)
    800032dc:	05513c23          	sd	s5,88(sp)
    800032e0:	05613823          	sd	s6,80(sp)
    800032e4:	05713423          	sd	s7,72(sp)
    800032e8:	03913c23          	sd	s9,56(sp)
    800032ec:	03a13823          	sd	s10,48(sp)
    800032f0:	03b13423          	sd	s11,40(sp)
    800032f4:	00004317          	auipc	t1,0x4
    800032f8:	b8c30313          	addi	t1,t1,-1140 # 80006e80 <pr>
    800032fc:	01832c03          	lw	s8,24(t1)
    80003300:	00b43423          	sd	a1,8(s0)
    80003304:	00c43823          	sd	a2,16(s0)
    80003308:	00d43c23          	sd	a3,24(s0)
    8000330c:	02e43023          	sd	a4,32(s0)
    80003310:	02f43423          	sd	a5,40(s0)
    80003314:	03043823          	sd	a6,48(s0)
    80003318:	03143c23          	sd	a7,56(s0)
    8000331c:	00050993          	mv	s3,a0
    80003320:	4a0c1663          	bnez	s8,800037cc <__printf+0x514>
    80003324:	60098c63          	beqz	s3,8000393c <__printf+0x684>
    80003328:	0009c503          	lbu	a0,0(s3)
    8000332c:	00840793          	addi	a5,s0,8
    80003330:	f6f43c23          	sd	a5,-136(s0)
    80003334:	00000493          	li	s1,0
    80003338:	22050063          	beqz	a0,80003558 <__printf+0x2a0>
    8000333c:	00002a37          	lui	s4,0x2
    80003340:	00018ab7          	lui	s5,0x18
    80003344:	000f4b37          	lui	s6,0xf4
    80003348:	00989bb7          	lui	s7,0x989
    8000334c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003350:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003354:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003358:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000335c:	00148c9b          	addiw	s9,s1,1
    80003360:	02500793          	li	a5,37
    80003364:	01998933          	add	s2,s3,s9
    80003368:	38f51263          	bne	a0,a5,800036ec <__printf+0x434>
    8000336c:	00094783          	lbu	a5,0(s2)
    80003370:	00078c9b          	sext.w	s9,a5
    80003374:	1e078263          	beqz	a5,80003558 <__printf+0x2a0>
    80003378:	0024849b          	addiw	s1,s1,2
    8000337c:	07000713          	li	a4,112
    80003380:	00998933          	add	s2,s3,s1
    80003384:	38e78a63          	beq	a5,a4,80003718 <__printf+0x460>
    80003388:	20f76863          	bltu	a4,a5,80003598 <__printf+0x2e0>
    8000338c:	42a78863          	beq	a5,a0,800037bc <__printf+0x504>
    80003390:	06400713          	li	a4,100
    80003394:	40e79663          	bne	a5,a4,800037a0 <__printf+0x4e8>
    80003398:	f7843783          	ld	a5,-136(s0)
    8000339c:	0007a603          	lw	a2,0(a5)
    800033a0:	00878793          	addi	a5,a5,8
    800033a4:	f6f43c23          	sd	a5,-136(s0)
    800033a8:	42064a63          	bltz	a2,800037dc <__printf+0x524>
    800033ac:	00a00713          	li	a4,10
    800033b0:	02e677bb          	remuw	a5,a2,a4
    800033b4:	00002d97          	auipc	s11,0x2
    800033b8:	eacd8d93          	addi	s11,s11,-340 # 80005260 <digits>
    800033bc:	00900593          	li	a1,9
    800033c0:	0006051b          	sext.w	a0,a2
    800033c4:	00000c93          	li	s9,0
    800033c8:	02079793          	slli	a5,a5,0x20
    800033cc:	0207d793          	srli	a5,a5,0x20
    800033d0:	00fd87b3          	add	a5,s11,a5
    800033d4:	0007c783          	lbu	a5,0(a5)
    800033d8:	02e656bb          	divuw	a3,a2,a4
    800033dc:	f8f40023          	sb	a5,-128(s0)
    800033e0:	14c5d863          	bge	a1,a2,80003530 <__printf+0x278>
    800033e4:	06300593          	li	a1,99
    800033e8:	00100c93          	li	s9,1
    800033ec:	02e6f7bb          	remuw	a5,a3,a4
    800033f0:	02079793          	slli	a5,a5,0x20
    800033f4:	0207d793          	srli	a5,a5,0x20
    800033f8:	00fd87b3          	add	a5,s11,a5
    800033fc:	0007c783          	lbu	a5,0(a5)
    80003400:	02e6d73b          	divuw	a4,a3,a4
    80003404:	f8f400a3          	sb	a5,-127(s0)
    80003408:	12a5f463          	bgeu	a1,a0,80003530 <__printf+0x278>
    8000340c:	00a00693          	li	a3,10
    80003410:	00900593          	li	a1,9
    80003414:	02d777bb          	remuw	a5,a4,a3
    80003418:	02079793          	slli	a5,a5,0x20
    8000341c:	0207d793          	srli	a5,a5,0x20
    80003420:	00fd87b3          	add	a5,s11,a5
    80003424:	0007c503          	lbu	a0,0(a5)
    80003428:	02d757bb          	divuw	a5,a4,a3
    8000342c:	f8a40123          	sb	a0,-126(s0)
    80003430:	48e5f263          	bgeu	a1,a4,800038b4 <__printf+0x5fc>
    80003434:	06300513          	li	a0,99
    80003438:	02d7f5bb          	remuw	a1,a5,a3
    8000343c:	02059593          	slli	a1,a1,0x20
    80003440:	0205d593          	srli	a1,a1,0x20
    80003444:	00bd85b3          	add	a1,s11,a1
    80003448:	0005c583          	lbu	a1,0(a1)
    8000344c:	02d7d7bb          	divuw	a5,a5,a3
    80003450:	f8b401a3          	sb	a1,-125(s0)
    80003454:	48e57263          	bgeu	a0,a4,800038d8 <__printf+0x620>
    80003458:	3e700513          	li	a0,999
    8000345c:	02d7f5bb          	remuw	a1,a5,a3
    80003460:	02059593          	slli	a1,a1,0x20
    80003464:	0205d593          	srli	a1,a1,0x20
    80003468:	00bd85b3          	add	a1,s11,a1
    8000346c:	0005c583          	lbu	a1,0(a1)
    80003470:	02d7d7bb          	divuw	a5,a5,a3
    80003474:	f8b40223          	sb	a1,-124(s0)
    80003478:	46e57663          	bgeu	a0,a4,800038e4 <__printf+0x62c>
    8000347c:	02d7f5bb          	remuw	a1,a5,a3
    80003480:	02059593          	slli	a1,a1,0x20
    80003484:	0205d593          	srli	a1,a1,0x20
    80003488:	00bd85b3          	add	a1,s11,a1
    8000348c:	0005c583          	lbu	a1,0(a1)
    80003490:	02d7d7bb          	divuw	a5,a5,a3
    80003494:	f8b402a3          	sb	a1,-123(s0)
    80003498:	46ea7863          	bgeu	s4,a4,80003908 <__printf+0x650>
    8000349c:	02d7f5bb          	remuw	a1,a5,a3
    800034a0:	02059593          	slli	a1,a1,0x20
    800034a4:	0205d593          	srli	a1,a1,0x20
    800034a8:	00bd85b3          	add	a1,s11,a1
    800034ac:	0005c583          	lbu	a1,0(a1)
    800034b0:	02d7d7bb          	divuw	a5,a5,a3
    800034b4:	f8b40323          	sb	a1,-122(s0)
    800034b8:	3eeaf863          	bgeu	s5,a4,800038a8 <__printf+0x5f0>
    800034bc:	02d7f5bb          	remuw	a1,a5,a3
    800034c0:	02059593          	slli	a1,a1,0x20
    800034c4:	0205d593          	srli	a1,a1,0x20
    800034c8:	00bd85b3          	add	a1,s11,a1
    800034cc:	0005c583          	lbu	a1,0(a1)
    800034d0:	02d7d7bb          	divuw	a5,a5,a3
    800034d4:	f8b403a3          	sb	a1,-121(s0)
    800034d8:	42eb7e63          	bgeu	s6,a4,80003914 <__printf+0x65c>
    800034dc:	02d7f5bb          	remuw	a1,a5,a3
    800034e0:	02059593          	slli	a1,a1,0x20
    800034e4:	0205d593          	srli	a1,a1,0x20
    800034e8:	00bd85b3          	add	a1,s11,a1
    800034ec:	0005c583          	lbu	a1,0(a1)
    800034f0:	02d7d7bb          	divuw	a5,a5,a3
    800034f4:	f8b40423          	sb	a1,-120(s0)
    800034f8:	42ebfc63          	bgeu	s7,a4,80003930 <__printf+0x678>
    800034fc:	02079793          	slli	a5,a5,0x20
    80003500:	0207d793          	srli	a5,a5,0x20
    80003504:	00fd8db3          	add	s11,s11,a5
    80003508:	000dc703          	lbu	a4,0(s11)
    8000350c:	00a00793          	li	a5,10
    80003510:	00900c93          	li	s9,9
    80003514:	f8e404a3          	sb	a4,-119(s0)
    80003518:	00065c63          	bgez	a2,80003530 <__printf+0x278>
    8000351c:	f9040713          	addi	a4,s0,-112
    80003520:	00f70733          	add	a4,a4,a5
    80003524:	02d00693          	li	a3,45
    80003528:	fed70823          	sb	a3,-16(a4)
    8000352c:	00078c93          	mv	s9,a5
    80003530:	f8040793          	addi	a5,s0,-128
    80003534:	01978cb3          	add	s9,a5,s9
    80003538:	f7f40d13          	addi	s10,s0,-129
    8000353c:	000cc503          	lbu	a0,0(s9)
    80003540:	fffc8c93          	addi	s9,s9,-1
    80003544:	00000097          	auipc	ra,0x0
    80003548:	b90080e7          	jalr	-1136(ra) # 800030d4 <consputc>
    8000354c:	ffac98e3          	bne	s9,s10,8000353c <__printf+0x284>
    80003550:	00094503          	lbu	a0,0(s2)
    80003554:	e00514e3          	bnez	a0,8000335c <__printf+0xa4>
    80003558:	1a0c1663          	bnez	s8,80003704 <__printf+0x44c>
    8000355c:	08813083          	ld	ra,136(sp)
    80003560:	08013403          	ld	s0,128(sp)
    80003564:	07813483          	ld	s1,120(sp)
    80003568:	07013903          	ld	s2,112(sp)
    8000356c:	06813983          	ld	s3,104(sp)
    80003570:	06013a03          	ld	s4,96(sp)
    80003574:	05813a83          	ld	s5,88(sp)
    80003578:	05013b03          	ld	s6,80(sp)
    8000357c:	04813b83          	ld	s7,72(sp)
    80003580:	04013c03          	ld	s8,64(sp)
    80003584:	03813c83          	ld	s9,56(sp)
    80003588:	03013d03          	ld	s10,48(sp)
    8000358c:	02813d83          	ld	s11,40(sp)
    80003590:	0d010113          	addi	sp,sp,208
    80003594:	00008067          	ret
    80003598:	07300713          	li	a4,115
    8000359c:	1ce78a63          	beq	a5,a4,80003770 <__printf+0x4b8>
    800035a0:	07800713          	li	a4,120
    800035a4:	1ee79e63          	bne	a5,a4,800037a0 <__printf+0x4e8>
    800035a8:	f7843783          	ld	a5,-136(s0)
    800035ac:	0007a703          	lw	a4,0(a5)
    800035b0:	00878793          	addi	a5,a5,8
    800035b4:	f6f43c23          	sd	a5,-136(s0)
    800035b8:	28074263          	bltz	a4,8000383c <__printf+0x584>
    800035bc:	00002d97          	auipc	s11,0x2
    800035c0:	ca4d8d93          	addi	s11,s11,-860 # 80005260 <digits>
    800035c4:	00f77793          	andi	a5,a4,15
    800035c8:	00fd87b3          	add	a5,s11,a5
    800035cc:	0007c683          	lbu	a3,0(a5)
    800035d0:	00f00613          	li	a2,15
    800035d4:	0007079b          	sext.w	a5,a4
    800035d8:	f8d40023          	sb	a3,-128(s0)
    800035dc:	0047559b          	srliw	a1,a4,0x4
    800035e0:	0047569b          	srliw	a3,a4,0x4
    800035e4:	00000c93          	li	s9,0
    800035e8:	0ee65063          	bge	a2,a4,800036c8 <__printf+0x410>
    800035ec:	00f6f693          	andi	a3,a3,15
    800035f0:	00dd86b3          	add	a3,s11,a3
    800035f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800035f8:	0087d79b          	srliw	a5,a5,0x8
    800035fc:	00100c93          	li	s9,1
    80003600:	f8d400a3          	sb	a3,-127(s0)
    80003604:	0cb67263          	bgeu	a2,a1,800036c8 <__printf+0x410>
    80003608:	00f7f693          	andi	a3,a5,15
    8000360c:	00dd86b3          	add	a3,s11,a3
    80003610:	0006c583          	lbu	a1,0(a3)
    80003614:	00f00613          	li	a2,15
    80003618:	0047d69b          	srliw	a3,a5,0x4
    8000361c:	f8b40123          	sb	a1,-126(s0)
    80003620:	0047d593          	srli	a1,a5,0x4
    80003624:	28f67e63          	bgeu	a2,a5,800038c0 <__printf+0x608>
    80003628:	00f6f693          	andi	a3,a3,15
    8000362c:	00dd86b3          	add	a3,s11,a3
    80003630:	0006c503          	lbu	a0,0(a3)
    80003634:	0087d813          	srli	a6,a5,0x8
    80003638:	0087d69b          	srliw	a3,a5,0x8
    8000363c:	f8a401a3          	sb	a0,-125(s0)
    80003640:	28b67663          	bgeu	a2,a1,800038cc <__printf+0x614>
    80003644:	00f6f693          	andi	a3,a3,15
    80003648:	00dd86b3          	add	a3,s11,a3
    8000364c:	0006c583          	lbu	a1,0(a3)
    80003650:	00c7d513          	srli	a0,a5,0xc
    80003654:	00c7d69b          	srliw	a3,a5,0xc
    80003658:	f8b40223          	sb	a1,-124(s0)
    8000365c:	29067a63          	bgeu	a2,a6,800038f0 <__printf+0x638>
    80003660:	00f6f693          	andi	a3,a3,15
    80003664:	00dd86b3          	add	a3,s11,a3
    80003668:	0006c583          	lbu	a1,0(a3)
    8000366c:	0107d813          	srli	a6,a5,0x10
    80003670:	0107d69b          	srliw	a3,a5,0x10
    80003674:	f8b402a3          	sb	a1,-123(s0)
    80003678:	28a67263          	bgeu	a2,a0,800038fc <__printf+0x644>
    8000367c:	00f6f693          	andi	a3,a3,15
    80003680:	00dd86b3          	add	a3,s11,a3
    80003684:	0006c683          	lbu	a3,0(a3)
    80003688:	0147d79b          	srliw	a5,a5,0x14
    8000368c:	f8d40323          	sb	a3,-122(s0)
    80003690:	21067663          	bgeu	a2,a6,8000389c <__printf+0x5e4>
    80003694:	02079793          	slli	a5,a5,0x20
    80003698:	0207d793          	srli	a5,a5,0x20
    8000369c:	00fd8db3          	add	s11,s11,a5
    800036a0:	000dc683          	lbu	a3,0(s11)
    800036a4:	00800793          	li	a5,8
    800036a8:	00700c93          	li	s9,7
    800036ac:	f8d403a3          	sb	a3,-121(s0)
    800036b0:	00075c63          	bgez	a4,800036c8 <__printf+0x410>
    800036b4:	f9040713          	addi	a4,s0,-112
    800036b8:	00f70733          	add	a4,a4,a5
    800036bc:	02d00693          	li	a3,45
    800036c0:	fed70823          	sb	a3,-16(a4)
    800036c4:	00078c93          	mv	s9,a5
    800036c8:	f8040793          	addi	a5,s0,-128
    800036cc:	01978cb3          	add	s9,a5,s9
    800036d0:	f7f40d13          	addi	s10,s0,-129
    800036d4:	000cc503          	lbu	a0,0(s9)
    800036d8:	fffc8c93          	addi	s9,s9,-1
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	9f8080e7          	jalr	-1544(ra) # 800030d4 <consputc>
    800036e4:	ff9d18e3          	bne	s10,s9,800036d4 <__printf+0x41c>
    800036e8:	0100006f          	j	800036f8 <__printf+0x440>
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	9e8080e7          	jalr	-1560(ra) # 800030d4 <consputc>
    800036f4:	000c8493          	mv	s1,s9
    800036f8:	00094503          	lbu	a0,0(s2)
    800036fc:	c60510e3          	bnez	a0,8000335c <__printf+0xa4>
    80003700:	e40c0ee3          	beqz	s8,8000355c <__printf+0x2a4>
    80003704:	00003517          	auipc	a0,0x3
    80003708:	77c50513          	addi	a0,a0,1916 # 80006e80 <pr>
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	94c080e7          	jalr	-1716(ra) # 80004058 <release>
    80003714:	e49ff06f          	j	8000355c <__printf+0x2a4>
    80003718:	f7843783          	ld	a5,-136(s0)
    8000371c:	03000513          	li	a0,48
    80003720:	01000d13          	li	s10,16
    80003724:	00878713          	addi	a4,a5,8
    80003728:	0007bc83          	ld	s9,0(a5)
    8000372c:	f6e43c23          	sd	a4,-136(s0)
    80003730:	00000097          	auipc	ra,0x0
    80003734:	9a4080e7          	jalr	-1628(ra) # 800030d4 <consputc>
    80003738:	07800513          	li	a0,120
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	998080e7          	jalr	-1640(ra) # 800030d4 <consputc>
    80003744:	00002d97          	auipc	s11,0x2
    80003748:	b1cd8d93          	addi	s11,s11,-1252 # 80005260 <digits>
    8000374c:	03ccd793          	srli	a5,s9,0x3c
    80003750:	00fd87b3          	add	a5,s11,a5
    80003754:	0007c503          	lbu	a0,0(a5)
    80003758:	fffd0d1b          	addiw	s10,s10,-1
    8000375c:	004c9c93          	slli	s9,s9,0x4
    80003760:	00000097          	auipc	ra,0x0
    80003764:	974080e7          	jalr	-1676(ra) # 800030d4 <consputc>
    80003768:	fe0d12e3          	bnez	s10,8000374c <__printf+0x494>
    8000376c:	f8dff06f          	j	800036f8 <__printf+0x440>
    80003770:	f7843783          	ld	a5,-136(s0)
    80003774:	0007bc83          	ld	s9,0(a5)
    80003778:	00878793          	addi	a5,a5,8
    8000377c:	f6f43c23          	sd	a5,-136(s0)
    80003780:	000c9a63          	bnez	s9,80003794 <__printf+0x4dc>
    80003784:	1080006f          	j	8000388c <__printf+0x5d4>
    80003788:	001c8c93          	addi	s9,s9,1
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	948080e7          	jalr	-1720(ra) # 800030d4 <consputc>
    80003794:	000cc503          	lbu	a0,0(s9)
    80003798:	fe0518e3          	bnez	a0,80003788 <__printf+0x4d0>
    8000379c:	f5dff06f          	j	800036f8 <__printf+0x440>
    800037a0:	02500513          	li	a0,37
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	930080e7          	jalr	-1744(ra) # 800030d4 <consputc>
    800037ac:	000c8513          	mv	a0,s9
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	924080e7          	jalr	-1756(ra) # 800030d4 <consputc>
    800037b8:	f41ff06f          	j	800036f8 <__printf+0x440>
    800037bc:	02500513          	li	a0,37
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	914080e7          	jalr	-1772(ra) # 800030d4 <consputc>
    800037c8:	f31ff06f          	j	800036f8 <__printf+0x440>
    800037cc:	00030513          	mv	a0,t1
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	7bc080e7          	jalr	1980(ra) # 80003f8c <acquire>
    800037d8:	b4dff06f          	j	80003324 <__printf+0x6c>
    800037dc:	40c0053b          	negw	a0,a2
    800037e0:	00a00713          	li	a4,10
    800037e4:	02e576bb          	remuw	a3,a0,a4
    800037e8:	00002d97          	auipc	s11,0x2
    800037ec:	a78d8d93          	addi	s11,s11,-1416 # 80005260 <digits>
    800037f0:	ff700593          	li	a1,-9
    800037f4:	02069693          	slli	a3,a3,0x20
    800037f8:	0206d693          	srli	a3,a3,0x20
    800037fc:	00dd86b3          	add	a3,s11,a3
    80003800:	0006c683          	lbu	a3,0(a3)
    80003804:	02e557bb          	divuw	a5,a0,a4
    80003808:	f8d40023          	sb	a3,-128(s0)
    8000380c:	10b65e63          	bge	a2,a1,80003928 <__printf+0x670>
    80003810:	06300593          	li	a1,99
    80003814:	02e7f6bb          	remuw	a3,a5,a4
    80003818:	02069693          	slli	a3,a3,0x20
    8000381c:	0206d693          	srli	a3,a3,0x20
    80003820:	00dd86b3          	add	a3,s11,a3
    80003824:	0006c683          	lbu	a3,0(a3)
    80003828:	02e7d73b          	divuw	a4,a5,a4
    8000382c:	00200793          	li	a5,2
    80003830:	f8d400a3          	sb	a3,-127(s0)
    80003834:	bca5ece3          	bltu	a1,a0,8000340c <__printf+0x154>
    80003838:	ce5ff06f          	j	8000351c <__printf+0x264>
    8000383c:	40e007bb          	negw	a5,a4
    80003840:	00002d97          	auipc	s11,0x2
    80003844:	a20d8d93          	addi	s11,s11,-1504 # 80005260 <digits>
    80003848:	00f7f693          	andi	a3,a5,15
    8000384c:	00dd86b3          	add	a3,s11,a3
    80003850:	0006c583          	lbu	a1,0(a3)
    80003854:	ff100613          	li	a2,-15
    80003858:	0047d69b          	srliw	a3,a5,0x4
    8000385c:	f8b40023          	sb	a1,-128(s0)
    80003860:	0047d59b          	srliw	a1,a5,0x4
    80003864:	0ac75e63          	bge	a4,a2,80003920 <__printf+0x668>
    80003868:	00f6f693          	andi	a3,a3,15
    8000386c:	00dd86b3          	add	a3,s11,a3
    80003870:	0006c603          	lbu	a2,0(a3)
    80003874:	00f00693          	li	a3,15
    80003878:	0087d79b          	srliw	a5,a5,0x8
    8000387c:	f8c400a3          	sb	a2,-127(s0)
    80003880:	d8b6e4e3          	bltu	a3,a1,80003608 <__printf+0x350>
    80003884:	00200793          	li	a5,2
    80003888:	e2dff06f          	j	800036b4 <__printf+0x3fc>
    8000388c:	00002c97          	auipc	s9,0x2
    80003890:	9b4c8c93          	addi	s9,s9,-1612 # 80005240 <_ZZ12printIntegermE6digits+0x148>
    80003894:	02800513          	li	a0,40
    80003898:	ef1ff06f          	j	80003788 <__printf+0x4d0>
    8000389c:	00700793          	li	a5,7
    800038a0:	00600c93          	li	s9,6
    800038a4:	e0dff06f          	j	800036b0 <__printf+0x3f8>
    800038a8:	00700793          	li	a5,7
    800038ac:	00600c93          	li	s9,6
    800038b0:	c69ff06f          	j	80003518 <__printf+0x260>
    800038b4:	00300793          	li	a5,3
    800038b8:	00200c93          	li	s9,2
    800038bc:	c5dff06f          	j	80003518 <__printf+0x260>
    800038c0:	00300793          	li	a5,3
    800038c4:	00200c93          	li	s9,2
    800038c8:	de9ff06f          	j	800036b0 <__printf+0x3f8>
    800038cc:	00400793          	li	a5,4
    800038d0:	00300c93          	li	s9,3
    800038d4:	dddff06f          	j	800036b0 <__printf+0x3f8>
    800038d8:	00400793          	li	a5,4
    800038dc:	00300c93          	li	s9,3
    800038e0:	c39ff06f          	j	80003518 <__printf+0x260>
    800038e4:	00500793          	li	a5,5
    800038e8:	00400c93          	li	s9,4
    800038ec:	c2dff06f          	j	80003518 <__printf+0x260>
    800038f0:	00500793          	li	a5,5
    800038f4:	00400c93          	li	s9,4
    800038f8:	db9ff06f          	j	800036b0 <__printf+0x3f8>
    800038fc:	00600793          	li	a5,6
    80003900:	00500c93          	li	s9,5
    80003904:	dadff06f          	j	800036b0 <__printf+0x3f8>
    80003908:	00600793          	li	a5,6
    8000390c:	00500c93          	li	s9,5
    80003910:	c09ff06f          	j	80003518 <__printf+0x260>
    80003914:	00800793          	li	a5,8
    80003918:	00700c93          	li	s9,7
    8000391c:	bfdff06f          	j	80003518 <__printf+0x260>
    80003920:	00100793          	li	a5,1
    80003924:	d91ff06f          	j	800036b4 <__printf+0x3fc>
    80003928:	00100793          	li	a5,1
    8000392c:	bf1ff06f          	j	8000351c <__printf+0x264>
    80003930:	00900793          	li	a5,9
    80003934:	00800c93          	li	s9,8
    80003938:	be1ff06f          	j	80003518 <__printf+0x260>
    8000393c:	00002517          	auipc	a0,0x2
    80003940:	90c50513          	addi	a0,a0,-1780 # 80005248 <_ZZ12printIntegermE6digits+0x150>
    80003944:	00000097          	auipc	ra,0x0
    80003948:	918080e7          	jalr	-1768(ra) # 8000325c <panic>

000000008000394c <printfinit>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00003497          	auipc	s1,0x3
    80003964:	52048493          	addi	s1,s1,1312 # 80006e80 <pr>
    80003968:	00048513          	mv	a0,s1
    8000396c:	00002597          	auipc	a1,0x2
    80003970:	8ec58593          	addi	a1,a1,-1812 # 80005258 <_ZZ12printIntegermE6digits+0x160>
    80003974:	00000097          	auipc	ra,0x0
    80003978:	5f4080e7          	jalr	1524(ra) # 80003f68 <initlock>
    8000397c:	01813083          	ld	ra,24(sp)
    80003980:	01013403          	ld	s0,16(sp)
    80003984:	0004ac23          	sw	zero,24(s1)
    80003988:	00813483          	ld	s1,8(sp)
    8000398c:	02010113          	addi	sp,sp,32
    80003990:	00008067          	ret

0000000080003994 <uartinit>:
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00813423          	sd	s0,8(sp)
    8000399c:	01010413          	addi	s0,sp,16
    800039a0:	100007b7          	lui	a5,0x10000
    800039a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800039a8:	f8000713          	li	a4,-128
    800039ac:	00e781a3          	sb	a4,3(a5)
    800039b0:	00300713          	li	a4,3
    800039b4:	00e78023          	sb	a4,0(a5)
    800039b8:	000780a3          	sb	zero,1(a5)
    800039bc:	00e781a3          	sb	a4,3(a5)
    800039c0:	00700693          	li	a3,7
    800039c4:	00d78123          	sb	a3,2(a5)
    800039c8:	00e780a3          	sb	a4,1(a5)
    800039cc:	00813403          	ld	s0,8(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret

00000000800039d8 <uartputc>:
    800039d8:	00002797          	auipc	a5,0x2
    800039dc:	2307a783          	lw	a5,560(a5) # 80005c08 <panicked>
    800039e0:	00078463          	beqz	a5,800039e8 <uartputc+0x10>
    800039e4:	0000006f          	j	800039e4 <uartputc+0xc>
    800039e8:	fd010113          	addi	sp,sp,-48
    800039ec:	02813023          	sd	s0,32(sp)
    800039f0:	00913c23          	sd	s1,24(sp)
    800039f4:	01213823          	sd	s2,16(sp)
    800039f8:	01313423          	sd	s3,8(sp)
    800039fc:	02113423          	sd	ra,40(sp)
    80003a00:	03010413          	addi	s0,sp,48
    80003a04:	00002917          	auipc	s2,0x2
    80003a08:	20c90913          	addi	s2,s2,524 # 80005c10 <uart_tx_r>
    80003a0c:	00093783          	ld	a5,0(s2)
    80003a10:	00002497          	auipc	s1,0x2
    80003a14:	20848493          	addi	s1,s1,520 # 80005c18 <uart_tx_w>
    80003a18:	0004b703          	ld	a4,0(s1)
    80003a1c:	02078693          	addi	a3,a5,32
    80003a20:	00050993          	mv	s3,a0
    80003a24:	02e69c63          	bne	a3,a4,80003a5c <uartputc+0x84>
    80003a28:	00001097          	auipc	ra,0x1
    80003a2c:	834080e7          	jalr	-1996(ra) # 8000425c <push_on>
    80003a30:	00093783          	ld	a5,0(s2)
    80003a34:	0004b703          	ld	a4,0(s1)
    80003a38:	02078793          	addi	a5,a5,32
    80003a3c:	00e79463          	bne	a5,a4,80003a44 <uartputc+0x6c>
    80003a40:	0000006f          	j	80003a40 <uartputc+0x68>
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	88c080e7          	jalr	-1908(ra) # 800042d0 <pop_on>
    80003a4c:	00093783          	ld	a5,0(s2)
    80003a50:	0004b703          	ld	a4,0(s1)
    80003a54:	02078693          	addi	a3,a5,32
    80003a58:	fce688e3          	beq	a3,a4,80003a28 <uartputc+0x50>
    80003a5c:	01f77693          	andi	a3,a4,31
    80003a60:	00003597          	auipc	a1,0x3
    80003a64:	44058593          	addi	a1,a1,1088 # 80006ea0 <uart_tx_buf>
    80003a68:	00d586b3          	add	a3,a1,a3
    80003a6c:	00170713          	addi	a4,a4,1
    80003a70:	01368023          	sb	s3,0(a3)
    80003a74:	00e4b023          	sd	a4,0(s1)
    80003a78:	10000637          	lui	a2,0x10000
    80003a7c:	02f71063          	bne	a4,a5,80003a9c <uartputc+0xc4>
    80003a80:	0340006f          	j	80003ab4 <uartputc+0xdc>
    80003a84:	00074703          	lbu	a4,0(a4)
    80003a88:	00f93023          	sd	a5,0(s2)
    80003a8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003a90:	00093783          	ld	a5,0(s2)
    80003a94:	0004b703          	ld	a4,0(s1)
    80003a98:	00f70e63          	beq	a4,a5,80003ab4 <uartputc+0xdc>
    80003a9c:	00564683          	lbu	a3,5(a2)
    80003aa0:	01f7f713          	andi	a4,a5,31
    80003aa4:	00e58733          	add	a4,a1,a4
    80003aa8:	0206f693          	andi	a3,a3,32
    80003aac:	00178793          	addi	a5,a5,1
    80003ab0:	fc069ae3          	bnez	a3,80003a84 <uartputc+0xac>
    80003ab4:	02813083          	ld	ra,40(sp)
    80003ab8:	02013403          	ld	s0,32(sp)
    80003abc:	01813483          	ld	s1,24(sp)
    80003ac0:	01013903          	ld	s2,16(sp)
    80003ac4:	00813983          	ld	s3,8(sp)
    80003ac8:	03010113          	addi	sp,sp,48
    80003acc:	00008067          	ret

0000000080003ad0 <uartputc_sync>:
    80003ad0:	ff010113          	addi	sp,sp,-16
    80003ad4:	00813423          	sd	s0,8(sp)
    80003ad8:	01010413          	addi	s0,sp,16
    80003adc:	00002717          	auipc	a4,0x2
    80003ae0:	12c72703          	lw	a4,300(a4) # 80005c08 <panicked>
    80003ae4:	02071663          	bnez	a4,80003b10 <uartputc_sync+0x40>
    80003ae8:	00050793          	mv	a5,a0
    80003aec:	100006b7          	lui	a3,0x10000
    80003af0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003af4:	02077713          	andi	a4,a4,32
    80003af8:	fe070ce3          	beqz	a4,80003af0 <uartputc_sync+0x20>
    80003afc:	0ff7f793          	andi	a5,a5,255
    80003b00:	00f68023          	sb	a5,0(a3)
    80003b04:	00813403          	ld	s0,8(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret
    80003b10:	0000006f          	j	80003b10 <uartputc_sync+0x40>

0000000080003b14 <uartstart>:
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00813423          	sd	s0,8(sp)
    80003b1c:	01010413          	addi	s0,sp,16
    80003b20:	00002617          	auipc	a2,0x2
    80003b24:	0f060613          	addi	a2,a2,240 # 80005c10 <uart_tx_r>
    80003b28:	00002517          	auipc	a0,0x2
    80003b2c:	0f050513          	addi	a0,a0,240 # 80005c18 <uart_tx_w>
    80003b30:	00063783          	ld	a5,0(a2)
    80003b34:	00053703          	ld	a4,0(a0)
    80003b38:	04f70263          	beq	a4,a5,80003b7c <uartstart+0x68>
    80003b3c:	100005b7          	lui	a1,0x10000
    80003b40:	00003817          	auipc	a6,0x3
    80003b44:	36080813          	addi	a6,a6,864 # 80006ea0 <uart_tx_buf>
    80003b48:	01c0006f          	j	80003b64 <uartstart+0x50>
    80003b4c:	0006c703          	lbu	a4,0(a3)
    80003b50:	00f63023          	sd	a5,0(a2)
    80003b54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b58:	00063783          	ld	a5,0(a2)
    80003b5c:	00053703          	ld	a4,0(a0)
    80003b60:	00f70e63          	beq	a4,a5,80003b7c <uartstart+0x68>
    80003b64:	01f7f713          	andi	a4,a5,31
    80003b68:	00e806b3          	add	a3,a6,a4
    80003b6c:	0055c703          	lbu	a4,5(a1)
    80003b70:	00178793          	addi	a5,a5,1
    80003b74:	02077713          	andi	a4,a4,32
    80003b78:	fc071ae3          	bnez	a4,80003b4c <uartstart+0x38>
    80003b7c:	00813403          	ld	s0,8(sp)
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret

0000000080003b88 <uartgetc>:
    80003b88:	ff010113          	addi	sp,sp,-16
    80003b8c:	00813423          	sd	s0,8(sp)
    80003b90:	01010413          	addi	s0,sp,16
    80003b94:	10000737          	lui	a4,0x10000
    80003b98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003b9c:	0017f793          	andi	a5,a5,1
    80003ba0:	00078c63          	beqz	a5,80003bb8 <uartgetc+0x30>
    80003ba4:	00074503          	lbu	a0,0(a4)
    80003ba8:	0ff57513          	andi	a0,a0,255
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret
    80003bb8:	fff00513          	li	a0,-1
    80003bbc:	ff1ff06f          	j	80003bac <uartgetc+0x24>

0000000080003bc0 <uartintr>:
    80003bc0:	100007b7          	lui	a5,0x10000
    80003bc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003bc8:	0017f793          	andi	a5,a5,1
    80003bcc:	0a078463          	beqz	a5,80003c74 <uartintr+0xb4>
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	02010413          	addi	s0,sp,32
    80003be4:	100004b7          	lui	s1,0x10000
    80003be8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003bec:	0ff57513          	andi	a0,a0,255
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	534080e7          	jalr	1332(ra) # 80003124 <consoleintr>
    80003bf8:	0054c783          	lbu	a5,5(s1)
    80003bfc:	0017f793          	andi	a5,a5,1
    80003c00:	fe0794e3          	bnez	a5,80003be8 <uartintr+0x28>
    80003c04:	00002617          	auipc	a2,0x2
    80003c08:	00c60613          	addi	a2,a2,12 # 80005c10 <uart_tx_r>
    80003c0c:	00002517          	auipc	a0,0x2
    80003c10:	00c50513          	addi	a0,a0,12 # 80005c18 <uart_tx_w>
    80003c14:	00063783          	ld	a5,0(a2)
    80003c18:	00053703          	ld	a4,0(a0)
    80003c1c:	04f70263          	beq	a4,a5,80003c60 <uartintr+0xa0>
    80003c20:	100005b7          	lui	a1,0x10000
    80003c24:	00003817          	auipc	a6,0x3
    80003c28:	27c80813          	addi	a6,a6,636 # 80006ea0 <uart_tx_buf>
    80003c2c:	01c0006f          	j	80003c48 <uartintr+0x88>
    80003c30:	0006c703          	lbu	a4,0(a3)
    80003c34:	00f63023          	sd	a5,0(a2)
    80003c38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c3c:	00063783          	ld	a5,0(a2)
    80003c40:	00053703          	ld	a4,0(a0)
    80003c44:	00f70e63          	beq	a4,a5,80003c60 <uartintr+0xa0>
    80003c48:	01f7f713          	andi	a4,a5,31
    80003c4c:	00e806b3          	add	a3,a6,a4
    80003c50:	0055c703          	lbu	a4,5(a1)
    80003c54:	00178793          	addi	a5,a5,1
    80003c58:	02077713          	andi	a4,a4,32
    80003c5c:	fc071ae3          	bnez	a4,80003c30 <uartintr+0x70>
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	00813483          	ld	s1,8(sp)
    80003c6c:	02010113          	addi	sp,sp,32
    80003c70:	00008067          	ret
    80003c74:	00002617          	auipc	a2,0x2
    80003c78:	f9c60613          	addi	a2,a2,-100 # 80005c10 <uart_tx_r>
    80003c7c:	00002517          	auipc	a0,0x2
    80003c80:	f9c50513          	addi	a0,a0,-100 # 80005c18 <uart_tx_w>
    80003c84:	00063783          	ld	a5,0(a2)
    80003c88:	00053703          	ld	a4,0(a0)
    80003c8c:	04f70263          	beq	a4,a5,80003cd0 <uartintr+0x110>
    80003c90:	100005b7          	lui	a1,0x10000
    80003c94:	00003817          	auipc	a6,0x3
    80003c98:	20c80813          	addi	a6,a6,524 # 80006ea0 <uart_tx_buf>
    80003c9c:	01c0006f          	j	80003cb8 <uartintr+0xf8>
    80003ca0:	0006c703          	lbu	a4,0(a3)
    80003ca4:	00f63023          	sd	a5,0(a2)
    80003ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003cac:	00063783          	ld	a5,0(a2)
    80003cb0:	00053703          	ld	a4,0(a0)
    80003cb4:	02f70063          	beq	a4,a5,80003cd4 <uartintr+0x114>
    80003cb8:	01f7f713          	andi	a4,a5,31
    80003cbc:	00e806b3          	add	a3,a6,a4
    80003cc0:	0055c703          	lbu	a4,5(a1)
    80003cc4:	00178793          	addi	a5,a5,1
    80003cc8:	02077713          	andi	a4,a4,32
    80003ccc:	fc071ae3          	bnez	a4,80003ca0 <uartintr+0xe0>
    80003cd0:	00008067          	ret
    80003cd4:	00008067          	ret

0000000080003cd8 <kinit>:
    80003cd8:	fc010113          	addi	sp,sp,-64
    80003cdc:	02913423          	sd	s1,40(sp)
    80003ce0:	fffff7b7          	lui	a5,0xfffff
    80003ce4:	00004497          	auipc	s1,0x4
    80003ce8:	1eb48493          	addi	s1,s1,491 # 80007ecf <end+0xfff>
    80003cec:	02813823          	sd	s0,48(sp)
    80003cf0:	01313c23          	sd	s3,24(sp)
    80003cf4:	00f4f4b3          	and	s1,s1,a5
    80003cf8:	02113c23          	sd	ra,56(sp)
    80003cfc:	03213023          	sd	s2,32(sp)
    80003d00:	01413823          	sd	s4,16(sp)
    80003d04:	01513423          	sd	s5,8(sp)
    80003d08:	04010413          	addi	s0,sp,64
    80003d0c:	000017b7          	lui	a5,0x1
    80003d10:	01100993          	li	s3,17
    80003d14:	00f487b3          	add	a5,s1,a5
    80003d18:	01b99993          	slli	s3,s3,0x1b
    80003d1c:	06f9e063          	bltu	s3,a5,80003d7c <kinit+0xa4>
    80003d20:	00003a97          	auipc	s5,0x3
    80003d24:	1b0a8a93          	addi	s5,s5,432 # 80006ed0 <end>
    80003d28:	0754ec63          	bltu	s1,s5,80003da0 <kinit+0xc8>
    80003d2c:	0734fa63          	bgeu	s1,s3,80003da0 <kinit+0xc8>
    80003d30:	00088a37          	lui	s4,0x88
    80003d34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003d38:	00002917          	auipc	s2,0x2
    80003d3c:	ee890913          	addi	s2,s2,-280 # 80005c20 <kmem>
    80003d40:	00ca1a13          	slli	s4,s4,0xc
    80003d44:	0140006f          	j	80003d58 <kinit+0x80>
    80003d48:	000017b7          	lui	a5,0x1
    80003d4c:	00f484b3          	add	s1,s1,a5
    80003d50:	0554e863          	bltu	s1,s5,80003da0 <kinit+0xc8>
    80003d54:	0534f663          	bgeu	s1,s3,80003da0 <kinit+0xc8>
    80003d58:	00001637          	lui	a2,0x1
    80003d5c:	00100593          	li	a1,1
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	5e4080e7          	jalr	1508(ra) # 80004348 <__memset>
    80003d6c:	00093783          	ld	a5,0(s2)
    80003d70:	00f4b023          	sd	a5,0(s1)
    80003d74:	00993023          	sd	s1,0(s2)
    80003d78:	fd4498e3          	bne	s1,s4,80003d48 <kinit+0x70>
    80003d7c:	03813083          	ld	ra,56(sp)
    80003d80:	03013403          	ld	s0,48(sp)
    80003d84:	02813483          	ld	s1,40(sp)
    80003d88:	02013903          	ld	s2,32(sp)
    80003d8c:	01813983          	ld	s3,24(sp)
    80003d90:	01013a03          	ld	s4,16(sp)
    80003d94:	00813a83          	ld	s5,8(sp)
    80003d98:	04010113          	addi	sp,sp,64
    80003d9c:	00008067          	ret
    80003da0:	00001517          	auipc	a0,0x1
    80003da4:	4d850513          	addi	a0,a0,1240 # 80005278 <digits+0x18>
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	4b4080e7          	jalr	1204(ra) # 8000325c <panic>

0000000080003db0 <freerange>:
    80003db0:	fc010113          	addi	sp,sp,-64
    80003db4:	000017b7          	lui	a5,0x1
    80003db8:	02913423          	sd	s1,40(sp)
    80003dbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003dc0:	009504b3          	add	s1,a0,s1
    80003dc4:	fffff537          	lui	a0,0xfffff
    80003dc8:	02813823          	sd	s0,48(sp)
    80003dcc:	02113c23          	sd	ra,56(sp)
    80003dd0:	03213023          	sd	s2,32(sp)
    80003dd4:	01313c23          	sd	s3,24(sp)
    80003dd8:	01413823          	sd	s4,16(sp)
    80003ddc:	01513423          	sd	s5,8(sp)
    80003de0:	01613023          	sd	s6,0(sp)
    80003de4:	04010413          	addi	s0,sp,64
    80003de8:	00a4f4b3          	and	s1,s1,a0
    80003dec:	00f487b3          	add	a5,s1,a5
    80003df0:	06f5e463          	bltu	a1,a5,80003e58 <freerange+0xa8>
    80003df4:	00003a97          	auipc	s5,0x3
    80003df8:	0dca8a93          	addi	s5,s5,220 # 80006ed0 <end>
    80003dfc:	0954e263          	bltu	s1,s5,80003e80 <freerange+0xd0>
    80003e00:	01100993          	li	s3,17
    80003e04:	01b99993          	slli	s3,s3,0x1b
    80003e08:	0734fc63          	bgeu	s1,s3,80003e80 <freerange+0xd0>
    80003e0c:	00058a13          	mv	s4,a1
    80003e10:	00002917          	auipc	s2,0x2
    80003e14:	e1090913          	addi	s2,s2,-496 # 80005c20 <kmem>
    80003e18:	00002b37          	lui	s6,0x2
    80003e1c:	0140006f          	j	80003e30 <freerange+0x80>
    80003e20:	000017b7          	lui	a5,0x1
    80003e24:	00f484b3          	add	s1,s1,a5
    80003e28:	0554ec63          	bltu	s1,s5,80003e80 <freerange+0xd0>
    80003e2c:	0534fa63          	bgeu	s1,s3,80003e80 <freerange+0xd0>
    80003e30:	00001637          	lui	a2,0x1
    80003e34:	00100593          	li	a1,1
    80003e38:	00048513          	mv	a0,s1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	50c080e7          	jalr	1292(ra) # 80004348 <__memset>
    80003e44:	00093703          	ld	a4,0(s2)
    80003e48:	016487b3          	add	a5,s1,s6
    80003e4c:	00e4b023          	sd	a4,0(s1)
    80003e50:	00993023          	sd	s1,0(s2)
    80003e54:	fcfa76e3          	bgeu	s4,a5,80003e20 <freerange+0x70>
    80003e58:	03813083          	ld	ra,56(sp)
    80003e5c:	03013403          	ld	s0,48(sp)
    80003e60:	02813483          	ld	s1,40(sp)
    80003e64:	02013903          	ld	s2,32(sp)
    80003e68:	01813983          	ld	s3,24(sp)
    80003e6c:	01013a03          	ld	s4,16(sp)
    80003e70:	00813a83          	ld	s5,8(sp)
    80003e74:	00013b03          	ld	s6,0(sp)
    80003e78:	04010113          	addi	sp,sp,64
    80003e7c:	00008067          	ret
    80003e80:	00001517          	auipc	a0,0x1
    80003e84:	3f850513          	addi	a0,a0,1016 # 80005278 <digits+0x18>
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	3d4080e7          	jalr	980(ra) # 8000325c <panic>

0000000080003e90 <kfree>:
    80003e90:	fe010113          	addi	sp,sp,-32
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00113c23          	sd	ra,24(sp)
    80003e9c:	00913423          	sd	s1,8(sp)
    80003ea0:	02010413          	addi	s0,sp,32
    80003ea4:	03451793          	slli	a5,a0,0x34
    80003ea8:	04079c63          	bnez	a5,80003f00 <kfree+0x70>
    80003eac:	00003797          	auipc	a5,0x3
    80003eb0:	02478793          	addi	a5,a5,36 # 80006ed0 <end>
    80003eb4:	00050493          	mv	s1,a0
    80003eb8:	04f56463          	bltu	a0,a5,80003f00 <kfree+0x70>
    80003ebc:	01100793          	li	a5,17
    80003ec0:	01b79793          	slli	a5,a5,0x1b
    80003ec4:	02f57e63          	bgeu	a0,a5,80003f00 <kfree+0x70>
    80003ec8:	00001637          	lui	a2,0x1
    80003ecc:	00100593          	li	a1,1
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	478080e7          	jalr	1144(ra) # 80004348 <__memset>
    80003ed8:	00002797          	auipc	a5,0x2
    80003edc:	d4878793          	addi	a5,a5,-696 # 80005c20 <kmem>
    80003ee0:	0007b703          	ld	a4,0(a5)
    80003ee4:	01813083          	ld	ra,24(sp)
    80003ee8:	01013403          	ld	s0,16(sp)
    80003eec:	00e4b023          	sd	a4,0(s1)
    80003ef0:	0097b023          	sd	s1,0(a5)
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret
    80003f00:	00001517          	auipc	a0,0x1
    80003f04:	37850513          	addi	a0,a0,888 # 80005278 <digits+0x18>
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	354080e7          	jalr	852(ra) # 8000325c <panic>

0000000080003f10 <kalloc>:
    80003f10:	fe010113          	addi	sp,sp,-32
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	02010413          	addi	s0,sp,32
    80003f24:	00002797          	auipc	a5,0x2
    80003f28:	cfc78793          	addi	a5,a5,-772 # 80005c20 <kmem>
    80003f2c:	0007b483          	ld	s1,0(a5)
    80003f30:	02048063          	beqz	s1,80003f50 <kalloc+0x40>
    80003f34:	0004b703          	ld	a4,0(s1)
    80003f38:	00001637          	lui	a2,0x1
    80003f3c:	00500593          	li	a1,5
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00e7b023          	sd	a4,0(a5)
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	400080e7          	jalr	1024(ra) # 80004348 <__memset>
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00813483          	ld	s1,8(sp)
    80003f60:	02010113          	addi	sp,sp,32
    80003f64:	00008067          	ret

0000000080003f68 <initlock>:
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00813423          	sd	s0,8(sp)
    80003f70:	01010413          	addi	s0,sp,16
    80003f74:	00813403          	ld	s0,8(sp)
    80003f78:	00b53423          	sd	a1,8(a0)
    80003f7c:	00052023          	sw	zero,0(a0)
    80003f80:	00053823          	sd	zero,16(a0)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret

0000000080003f8c <acquire>:
    80003f8c:	fe010113          	addi	sp,sp,-32
    80003f90:	00813823          	sd	s0,16(sp)
    80003f94:	00913423          	sd	s1,8(sp)
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	01213023          	sd	s2,0(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	00050493          	mv	s1,a0
    80003fa8:	10002973          	csrr	s2,sstatus
    80003fac:	100027f3          	csrr	a5,sstatus
    80003fb0:	ffd7f793          	andi	a5,a5,-3
    80003fb4:	10079073          	csrw	sstatus,a5
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	8e0080e7          	jalr	-1824(ra) # 80002898 <mycpu>
    80003fc0:	07852783          	lw	a5,120(a0)
    80003fc4:	06078e63          	beqz	a5,80004040 <acquire+0xb4>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	8d0080e7          	jalr	-1840(ra) # 80002898 <mycpu>
    80003fd0:	07852783          	lw	a5,120(a0)
    80003fd4:	0004a703          	lw	a4,0(s1)
    80003fd8:	0017879b          	addiw	a5,a5,1
    80003fdc:	06f52c23          	sw	a5,120(a0)
    80003fe0:	04071063          	bnez	a4,80004020 <acquire+0x94>
    80003fe4:	00100713          	li	a4,1
    80003fe8:	00070793          	mv	a5,a4
    80003fec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003ff0:	0007879b          	sext.w	a5,a5
    80003ff4:	fe079ae3          	bnez	a5,80003fe8 <acquire+0x5c>
    80003ff8:	0ff0000f          	fence
    80003ffc:	fffff097          	auipc	ra,0xfffff
    80004000:	89c080e7          	jalr	-1892(ra) # 80002898 <mycpu>
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00a4b823          	sd	a0,16(s1)
    80004010:	00013903          	ld	s2,0(sp)
    80004014:	00813483          	ld	s1,8(sp)
    80004018:	02010113          	addi	sp,sp,32
    8000401c:	00008067          	ret
    80004020:	0104b903          	ld	s2,16(s1)
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	874080e7          	jalr	-1932(ra) # 80002898 <mycpu>
    8000402c:	faa91ce3          	bne	s2,a0,80003fe4 <acquire+0x58>
    80004030:	00001517          	auipc	a0,0x1
    80004034:	25050513          	addi	a0,a0,592 # 80005280 <digits+0x20>
    80004038:	fffff097          	auipc	ra,0xfffff
    8000403c:	224080e7          	jalr	548(ra) # 8000325c <panic>
    80004040:	00195913          	srli	s2,s2,0x1
    80004044:	fffff097          	auipc	ra,0xfffff
    80004048:	854080e7          	jalr	-1964(ra) # 80002898 <mycpu>
    8000404c:	00197913          	andi	s2,s2,1
    80004050:	07252e23          	sw	s2,124(a0)
    80004054:	f75ff06f          	j	80003fc8 <acquire+0x3c>

0000000080004058 <release>:
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00813823          	sd	s0,16(sp)
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	01213023          	sd	s2,0(sp)
    8000406c:	02010413          	addi	s0,sp,32
    80004070:	00052783          	lw	a5,0(a0)
    80004074:	00079a63          	bnez	a5,80004088 <release+0x30>
    80004078:	00001517          	auipc	a0,0x1
    8000407c:	21050513          	addi	a0,a0,528 # 80005288 <digits+0x28>
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	1dc080e7          	jalr	476(ra) # 8000325c <panic>
    80004088:	01053903          	ld	s2,16(a0)
    8000408c:	00050493          	mv	s1,a0
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	808080e7          	jalr	-2040(ra) # 80002898 <mycpu>
    80004098:	fea910e3          	bne	s2,a0,80004078 <release+0x20>
    8000409c:	0004b823          	sd	zero,16(s1)
    800040a0:	0ff0000f          	fence
    800040a4:	0f50000f          	fence	iorw,ow
    800040a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	7ec080e7          	jalr	2028(ra) # 80002898 <mycpu>
    800040b4:	100027f3          	csrr	a5,sstatus
    800040b8:	0027f793          	andi	a5,a5,2
    800040bc:	04079a63          	bnez	a5,80004110 <release+0xb8>
    800040c0:	07852783          	lw	a5,120(a0)
    800040c4:	02f05e63          	blez	a5,80004100 <release+0xa8>
    800040c8:	fff7871b          	addiw	a4,a5,-1
    800040cc:	06e52c23          	sw	a4,120(a0)
    800040d0:	00071c63          	bnez	a4,800040e8 <release+0x90>
    800040d4:	07c52783          	lw	a5,124(a0)
    800040d8:	00078863          	beqz	a5,800040e8 <release+0x90>
    800040dc:	100027f3          	csrr	a5,sstatus
    800040e0:	0027e793          	ori	a5,a5,2
    800040e4:	10079073          	csrw	sstatus,a5
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	01013403          	ld	s0,16(sp)
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	00013903          	ld	s2,0(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret
    80004100:	00001517          	auipc	a0,0x1
    80004104:	1a850513          	addi	a0,a0,424 # 800052a8 <digits+0x48>
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	154080e7          	jalr	340(ra) # 8000325c <panic>
    80004110:	00001517          	auipc	a0,0x1
    80004114:	18050513          	addi	a0,a0,384 # 80005290 <digits+0x30>
    80004118:	fffff097          	auipc	ra,0xfffff
    8000411c:	144080e7          	jalr	324(ra) # 8000325c <panic>

0000000080004120 <holding>:
    80004120:	00052783          	lw	a5,0(a0)
    80004124:	00079663          	bnez	a5,80004130 <holding+0x10>
    80004128:	00000513          	li	a0,0
    8000412c:	00008067          	ret
    80004130:	fe010113          	addi	sp,sp,-32
    80004134:	00813823          	sd	s0,16(sp)
    80004138:	00913423          	sd	s1,8(sp)
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	02010413          	addi	s0,sp,32
    80004144:	01053483          	ld	s1,16(a0)
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	750080e7          	jalr	1872(ra) # 80002898 <mycpu>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	40a48533          	sub	a0,s1,a0
    8000415c:	00153513          	seqz	a0,a0
    80004160:	00813483          	ld	s1,8(sp)
    80004164:	02010113          	addi	sp,sp,32
    80004168:	00008067          	ret

000000008000416c <push_off>:
    8000416c:	fe010113          	addi	sp,sp,-32
    80004170:	00813823          	sd	s0,16(sp)
    80004174:	00113c23          	sd	ra,24(sp)
    80004178:	00913423          	sd	s1,8(sp)
    8000417c:	02010413          	addi	s0,sp,32
    80004180:	100024f3          	csrr	s1,sstatus
    80004184:	100027f3          	csrr	a5,sstatus
    80004188:	ffd7f793          	andi	a5,a5,-3
    8000418c:	10079073          	csrw	sstatus,a5
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	708080e7          	jalr	1800(ra) # 80002898 <mycpu>
    80004198:	07852783          	lw	a5,120(a0)
    8000419c:	02078663          	beqz	a5,800041c8 <push_off+0x5c>
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	6f8080e7          	jalr	1784(ra) # 80002898 <mycpu>
    800041a8:	07852783          	lw	a5,120(a0)
    800041ac:	01813083          	ld	ra,24(sp)
    800041b0:	01013403          	ld	s0,16(sp)
    800041b4:	0017879b          	addiw	a5,a5,1
    800041b8:	06f52c23          	sw	a5,120(a0)
    800041bc:	00813483          	ld	s1,8(sp)
    800041c0:	02010113          	addi	sp,sp,32
    800041c4:	00008067          	ret
    800041c8:	0014d493          	srli	s1,s1,0x1
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	6cc080e7          	jalr	1740(ra) # 80002898 <mycpu>
    800041d4:	0014f493          	andi	s1,s1,1
    800041d8:	06952e23          	sw	s1,124(a0)
    800041dc:	fc5ff06f          	j	800041a0 <push_off+0x34>

00000000800041e0 <pop_off>:
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00813023          	sd	s0,0(sp)
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	6a8080e7          	jalr	1704(ra) # 80002898 <mycpu>
    800041f8:	100027f3          	csrr	a5,sstatus
    800041fc:	0027f793          	andi	a5,a5,2
    80004200:	04079663          	bnez	a5,8000424c <pop_off+0x6c>
    80004204:	07852783          	lw	a5,120(a0)
    80004208:	02f05a63          	blez	a5,8000423c <pop_off+0x5c>
    8000420c:	fff7871b          	addiw	a4,a5,-1
    80004210:	06e52c23          	sw	a4,120(a0)
    80004214:	00071c63          	bnez	a4,8000422c <pop_off+0x4c>
    80004218:	07c52783          	lw	a5,124(a0)
    8000421c:	00078863          	beqz	a5,8000422c <pop_off+0x4c>
    80004220:	100027f3          	csrr	a5,sstatus
    80004224:	0027e793          	ori	a5,a5,2
    80004228:	10079073          	csrw	sstatus,a5
    8000422c:	00813083          	ld	ra,8(sp)
    80004230:	00013403          	ld	s0,0(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret
    8000423c:	00001517          	auipc	a0,0x1
    80004240:	06c50513          	addi	a0,a0,108 # 800052a8 <digits+0x48>
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	018080e7          	jalr	24(ra) # 8000325c <panic>
    8000424c:	00001517          	auipc	a0,0x1
    80004250:	04450513          	addi	a0,a0,68 # 80005290 <digits+0x30>
    80004254:	fffff097          	auipc	ra,0xfffff
    80004258:	008080e7          	jalr	8(ra) # 8000325c <panic>

000000008000425c <push_on>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	100024f3          	csrr	s1,sstatus
    80004274:	100027f3          	csrr	a5,sstatus
    80004278:	0027e793          	ori	a5,a5,2
    8000427c:	10079073          	csrw	sstatus,a5
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	618080e7          	jalr	1560(ra) # 80002898 <mycpu>
    80004288:	07852783          	lw	a5,120(a0)
    8000428c:	02078663          	beqz	a5,800042b8 <push_on+0x5c>
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	608080e7          	jalr	1544(ra) # 80002898 <mycpu>
    80004298:	07852783          	lw	a5,120(a0)
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	0017879b          	addiw	a5,a5,1
    800042a8:	06f52c23          	sw	a5,120(a0)
    800042ac:	00813483          	ld	s1,8(sp)
    800042b0:	02010113          	addi	sp,sp,32
    800042b4:	00008067          	ret
    800042b8:	0014d493          	srli	s1,s1,0x1
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	5dc080e7          	jalr	1500(ra) # 80002898 <mycpu>
    800042c4:	0014f493          	andi	s1,s1,1
    800042c8:	06952e23          	sw	s1,124(a0)
    800042cc:	fc5ff06f          	j	80004290 <push_on+0x34>

00000000800042d0 <pop_on>:
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00813023          	sd	s0,0(sp)
    800042d8:	00113423          	sd	ra,8(sp)
    800042dc:	01010413          	addi	s0,sp,16
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	5b8080e7          	jalr	1464(ra) # 80002898 <mycpu>
    800042e8:	100027f3          	csrr	a5,sstatus
    800042ec:	0027f793          	andi	a5,a5,2
    800042f0:	04078463          	beqz	a5,80004338 <pop_on+0x68>
    800042f4:	07852783          	lw	a5,120(a0)
    800042f8:	02f05863          	blez	a5,80004328 <pop_on+0x58>
    800042fc:	fff7879b          	addiw	a5,a5,-1
    80004300:	06f52c23          	sw	a5,120(a0)
    80004304:	07853783          	ld	a5,120(a0)
    80004308:	00079863          	bnez	a5,80004318 <pop_on+0x48>
    8000430c:	100027f3          	csrr	a5,sstatus
    80004310:	ffd7f793          	andi	a5,a5,-3
    80004314:	10079073          	csrw	sstatus,a5
    80004318:	00813083          	ld	ra,8(sp)
    8000431c:	00013403          	ld	s0,0(sp)
    80004320:	01010113          	addi	sp,sp,16
    80004324:	00008067          	ret
    80004328:	00001517          	auipc	a0,0x1
    8000432c:	fa850513          	addi	a0,a0,-88 # 800052d0 <digits+0x70>
    80004330:	fffff097          	auipc	ra,0xfffff
    80004334:	f2c080e7          	jalr	-212(ra) # 8000325c <panic>
    80004338:	00001517          	auipc	a0,0x1
    8000433c:	f7850513          	addi	a0,a0,-136 # 800052b0 <digits+0x50>
    80004340:	fffff097          	auipc	ra,0xfffff
    80004344:	f1c080e7          	jalr	-228(ra) # 8000325c <panic>

0000000080004348 <__memset>:
    80004348:	ff010113          	addi	sp,sp,-16
    8000434c:	00813423          	sd	s0,8(sp)
    80004350:	01010413          	addi	s0,sp,16
    80004354:	1a060e63          	beqz	a2,80004510 <__memset+0x1c8>
    80004358:	40a007b3          	neg	a5,a0
    8000435c:	0077f793          	andi	a5,a5,7
    80004360:	00778693          	addi	a3,a5,7
    80004364:	00b00813          	li	a6,11
    80004368:	0ff5f593          	andi	a1,a1,255
    8000436c:	fff6071b          	addiw	a4,a2,-1
    80004370:	1b06e663          	bltu	a3,a6,8000451c <__memset+0x1d4>
    80004374:	1cd76463          	bltu	a4,a3,8000453c <__memset+0x1f4>
    80004378:	1a078e63          	beqz	a5,80004534 <__memset+0x1ec>
    8000437c:	00b50023          	sb	a1,0(a0)
    80004380:	00100713          	li	a4,1
    80004384:	1ae78463          	beq	a5,a4,8000452c <__memset+0x1e4>
    80004388:	00b500a3          	sb	a1,1(a0)
    8000438c:	00200713          	li	a4,2
    80004390:	1ae78a63          	beq	a5,a4,80004544 <__memset+0x1fc>
    80004394:	00b50123          	sb	a1,2(a0)
    80004398:	00300713          	li	a4,3
    8000439c:	18e78463          	beq	a5,a4,80004524 <__memset+0x1dc>
    800043a0:	00b501a3          	sb	a1,3(a0)
    800043a4:	00400713          	li	a4,4
    800043a8:	1ae78263          	beq	a5,a4,8000454c <__memset+0x204>
    800043ac:	00b50223          	sb	a1,4(a0)
    800043b0:	00500713          	li	a4,5
    800043b4:	1ae78063          	beq	a5,a4,80004554 <__memset+0x20c>
    800043b8:	00b502a3          	sb	a1,5(a0)
    800043bc:	00700713          	li	a4,7
    800043c0:	18e79e63          	bne	a5,a4,8000455c <__memset+0x214>
    800043c4:	00b50323          	sb	a1,6(a0)
    800043c8:	00700e93          	li	t4,7
    800043cc:	00859713          	slli	a4,a1,0x8
    800043d0:	00e5e733          	or	a4,a1,a4
    800043d4:	01059e13          	slli	t3,a1,0x10
    800043d8:	01c76e33          	or	t3,a4,t3
    800043dc:	01859313          	slli	t1,a1,0x18
    800043e0:	006e6333          	or	t1,t3,t1
    800043e4:	02059893          	slli	a7,a1,0x20
    800043e8:	40f60e3b          	subw	t3,a2,a5
    800043ec:	011368b3          	or	a7,t1,a7
    800043f0:	02859813          	slli	a6,a1,0x28
    800043f4:	0108e833          	or	a6,a7,a6
    800043f8:	03059693          	slli	a3,a1,0x30
    800043fc:	003e589b          	srliw	a7,t3,0x3
    80004400:	00d866b3          	or	a3,a6,a3
    80004404:	03859713          	slli	a4,a1,0x38
    80004408:	00389813          	slli	a6,a7,0x3
    8000440c:	00f507b3          	add	a5,a0,a5
    80004410:	00e6e733          	or	a4,a3,a4
    80004414:	000e089b          	sext.w	a7,t3
    80004418:	00f806b3          	add	a3,a6,a5
    8000441c:	00e7b023          	sd	a4,0(a5)
    80004420:	00878793          	addi	a5,a5,8
    80004424:	fed79ce3          	bne	a5,a3,8000441c <__memset+0xd4>
    80004428:	ff8e7793          	andi	a5,t3,-8
    8000442c:	0007871b          	sext.w	a4,a5
    80004430:	01d787bb          	addw	a5,a5,t4
    80004434:	0ce88e63          	beq	a7,a4,80004510 <__memset+0x1c8>
    80004438:	00f50733          	add	a4,a0,a5
    8000443c:	00b70023          	sb	a1,0(a4)
    80004440:	0017871b          	addiw	a4,a5,1
    80004444:	0cc77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004448:	00e50733          	add	a4,a0,a4
    8000444c:	00b70023          	sb	a1,0(a4)
    80004450:	0027871b          	addiw	a4,a5,2
    80004454:	0ac77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004458:	00e50733          	add	a4,a0,a4
    8000445c:	00b70023          	sb	a1,0(a4)
    80004460:	0037871b          	addiw	a4,a5,3
    80004464:	0ac77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004468:	00e50733          	add	a4,a0,a4
    8000446c:	00b70023          	sb	a1,0(a4)
    80004470:	0047871b          	addiw	a4,a5,4
    80004474:	08c77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004478:	00e50733          	add	a4,a0,a4
    8000447c:	00b70023          	sb	a1,0(a4)
    80004480:	0057871b          	addiw	a4,a5,5
    80004484:	08c77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004488:	00e50733          	add	a4,a0,a4
    8000448c:	00b70023          	sb	a1,0(a4)
    80004490:	0067871b          	addiw	a4,a5,6
    80004494:	06c77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    80004498:	00e50733          	add	a4,a0,a4
    8000449c:	00b70023          	sb	a1,0(a4)
    800044a0:	0077871b          	addiw	a4,a5,7
    800044a4:	06c77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044a8:	00e50733          	add	a4,a0,a4
    800044ac:	00b70023          	sb	a1,0(a4)
    800044b0:	0087871b          	addiw	a4,a5,8
    800044b4:	04c77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044b8:	00e50733          	add	a4,a0,a4
    800044bc:	00b70023          	sb	a1,0(a4)
    800044c0:	0097871b          	addiw	a4,a5,9
    800044c4:	04c77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044c8:	00e50733          	add	a4,a0,a4
    800044cc:	00b70023          	sb	a1,0(a4)
    800044d0:	00a7871b          	addiw	a4,a5,10
    800044d4:	02c77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044d8:	00e50733          	add	a4,a0,a4
    800044dc:	00b70023          	sb	a1,0(a4)
    800044e0:	00b7871b          	addiw	a4,a5,11
    800044e4:	02c77663          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044e8:	00e50733          	add	a4,a0,a4
    800044ec:	00b70023          	sb	a1,0(a4)
    800044f0:	00c7871b          	addiw	a4,a5,12
    800044f4:	00c77e63          	bgeu	a4,a2,80004510 <__memset+0x1c8>
    800044f8:	00e50733          	add	a4,a0,a4
    800044fc:	00b70023          	sb	a1,0(a4)
    80004500:	00d7879b          	addiw	a5,a5,13
    80004504:	00c7f663          	bgeu	a5,a2,80004510 <__memset+0x1c8>
    80004508:	00f507b3          	add	a5,a0,a5
    8000450c:	00b78023          	sb	a1,0(a5)
    80004510:	00813403          	ld	s0,8(sp)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret
    8000451c:	00b00693          	li	a3,11
    80004520:	e55ff06f          	j	80004374 <__memset+0x2c>
    80004524:	00300e93          	li	t4,3
    80004528:	ea5ff06f          	j	800043cc <__memset+0x84>
    8000452c:	00100e93          	li	t4,1
    80004530:	e9dff06f          	j	800043cc <__memset+0x84>
    80004534:	00000e93          	li	t4,0
    80004538:	e95ff06f          	j	800043cc <__memset+0x84>
    8000453c:	00000793          	li	a5,0
    80004540:	ef9ff06f          	j	80004438 <__memset+0xf0>
    80004544:	00200e93          	li	t4,2
    80004548:	e85ff06f          	j	800043cc <__memset+0x84>
    8000454c:	00400e93          	li	t4,4
    80004550:	e7dff06f          	j	800043cc <__memset+0x84>
    80004554:	00500e93          	li	t4,5
    80004558:	e75ff06f          	j	800043cc <__memset+0x84>
    8000455c:	00600e93          	li	t4,6
    80004560:	e6dff06f          	j	800043cc <__memset+0x84>

0000000080004564 <__memmove>:
    80004564:	ff010113          	addi	sp,sp,-16
    80004568:	00813423          	sd	s0,8(sp)
    8000456c:	01010413          	addi	s0,sp,16
    80004570:	0e060863          	beqz	a2,80004660 <__memmove+0xfc>
    80004574:	fff6069b          	addiw	a3,a2,-1
    80004578:	0006881b          	sext.w	a6,a3
    8000457c:	0ea5e863          	bltu	a1,a0,8000466c <__memmove+0x108>
    80004580:	00758713          	addi	a4,a1,7
    80004584:	00a5e7b3          	or	a5,a1,a0
    80004588:	40a70733          	sub	a4,a4,a0
    8000458c:	0077f793          	andi	a5,a5,7
    80004590:	00f73713          	sltiu	a4,a4,15
    80004594:	00174713          	xori	a4,a4,1
    80004598:	0017b793          	seqz	a5,a5
    8000459c:	00e7f7b3          	and	a5,a5,a4
    800045a0:	10078863          	beqz	a5,800046b0 <__memmove+0x14c>
    800045a4:	00900793          	li	a5,9
    800045a8:	1107f463          	bgeu	a5,a6,800046b0 <__memmove+0x14c>
    800045ac:	0036581b          	srliw	a6,a2,0x3
    800045b0:	fff8081b          	addiw	a6,a6,-1
    800045b4:	02081813          	slli	a6,a6,0x20
    800045b8:	01d85893          	srli	a7,a6,0x1d
    800045bc:	00858813          	addi	a6,a1,8
    800045c0:	00058793          	mv	a5,a1
    800045c4:	00050713          	mv	a4,a0
    800045c8:	01088833          	add	a6,a7,a6
    800045cc:	0007b883          	ld	a7,0(a5)
    800045d0:	00878793          	addi	a5,a5,8
    800045d4:	00870713          	addi	a4,a4,8
    800045d8:	ff173c23          	sd	a7,-8(a4)
    800045dc:	ff0798e3          	bne	a5,a6,800045cc <__memmove+0x68>
    800045e0:	ff867713          	andi	a4,a2,-8
    800045e4:	02071793          	slli	a5,a4,0x20
    800045e8:	0207d793          	srli	a5,a5,0x20
    800045ec:	00f585b3          	add	a1,a1,a5
    800045f0:	40e686bb          	subw	a3,a3,a4
    800045f4:	00f507b3          	add	a5,a0,a5
    800045f8:	06e60463          	beq	a2,a4,80004660 <__memmove+0xfc>
    800045fc:	0005c703          	lbu	a4,0(a1)
    80004600:	00e78023          	sb	a4,0(a5)
    80004604:	04068e63          	beqz	a3,80004660 <__memmove+0xfc>
    80004608:	0015c603          	lbu	a2,1(a1)
    8000460c:	00100713          	li	a4,1
    80004610:	00c780a3          	sb	a2,1(a5)
    80004614:	04e68663          	beq	a3,a4,80004660 <__memmove+0xfc>
    80004618:	0025c603          	lbu	a2,2(a1)
    8000461c:	00200713          	li	a4,2
    80004620:	00c78123          	sb	a2,2(a5)
    80004624:	02e68e63          	beq	a3,a4,80004660 <__memmove+0xfc>
    80004628:	0035c603          	lbu	a2,3(a1)
    8000462c:	00300713          	li	a4,3
    80004630:	00c781a3          	sb	a2,3(a5)
    80004634:	02e68663          	beq	a3,a4,80004660 <__memmove+0xfc>
    80004638:	0045c603          	lbu	a2,4(a1)
    8000463c:	00400713          	li	a4,4
    80004640:	00c78223          	sb	a2,4(a5)
    80004644:	00e68e63          	beq	a3,a4,80004660 <__memmove+0xfc>
    80004648:	0055c603          	lbu	a2,5(a1)
    8000464c:	00500713          	li	a4,5
    80004650:	00c782a3          	sb	a2,5(a5)
    80004654:	00e68663          	beq	a3,a4,80004660 <__memmove+0xfc>
    80004658:	0065c703          	lbu	a4,6(a1)
    8000465c:	00e78323          	sb	a4,6(a5)
    80004660:	00813403          	ld	s0,8(sp)
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00008067          	ret
    8000466c:	02061713          	slli	a4,a2,0x20
    80004670:	02075713          	srli	a4,a4,0x20
    80004674:	00e587b3          	add	a5,a1,a4
    80004678:	f0f574e3          	bgeu	a0,a5,80004580 <__memmove+0x1c>
    8000467c:	02069613          	slli	a2,a3,0x20
    80004680:	02065613          	srli	a2,a2,0x20
    80004684:	fff64613          	not	a2,a2
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00c78633          	add	a2,a5,a2
    80004690:	fff7c683          	lbu	a3,-1(a5)
    80004694:	fff78793          	addi	a5,a5,-1
    80004698:	fff70713          	addi	a4,a4,-1
    8000469c:	00d70023          	sb	a3,0(a4)
    800046a0:	fec798e3          	bne	a5,a2,80004690 <__memmove+0x12c>
    800046a4:	00813403          	ld	s0,8(sp)
    800046a8:	01010113          	addi	sp,sp,16
    800046ac:	00008067          	ret
    800046b0:	02069713          	slli	a4,a3,0x20
    800046b4:	02075713          	srli	a4,a4,0x20
    800046b8:	00170713          	addi	a4,a4,1
    800046bc:	00e50733          	add	a4,a0,a4
    800046c0:	00050793          	mv	a5,a0
    800046c4:	0005c683          	lbu	a3,0(a1)
    800046c8:	00178793          	addi	a5,a5,1
    800046cc:	00158593          	addi	a1,a1,1
    800046d0:	fed78fa3          	sb	a3,-1(a5)
    800046d4:	fee798e3          	bne	a5,a4,800046c4 <__memmove+0x160>
    800046d8:	f89ff06f          	j	80004660 <__memmove+0xfc>

00000000800046dc <__mem_free>:
    800046dc:	ff010113          	addi	sp,sp,-16
    800046e0:	00813423          	sd	s0,8(sp)
    800046e4:	01010413          	addi	s0,sp,16
    800046e8:	00001597          	auipc	a1,0x1
    800046ec:	54058593          	addi	a1,a1,1344 # 80005c28 <freep>
    800046f0:	0005b783          	ld	a5,0(a1)
    800046f4:	ff050693          	addi	a3,a0,-16
    800046f8:	0007b703          	ld	a4,0(a5)
    800046fc:	00d7fc63          	bgeu	a5,a3,80004714 <__mem_free+0x38>
    80004700:	00e6ee63          	bltu	a3,a4,8000471c <__mem_free+0x40>
    80004704:	00e7fc63          	bgeu	a5,a4,8000471c <__mem_free+0x40>
    80004708:	00070793          	mv	a5,a4
    8000470c:	0007b703          	ld	a4,0(a5)
    80004710:	fed7e8e3          	bltu	a5,a3,80004700 <__mem_free+0x24>
    80004714:	fee7eae3          	bltu	a5,a4,80004708 <__mem_free+0x2c>
    80004718:	fee6f8e3          	bgeu	a3,a4,80004708 <__mem_free+0x2c>
    8000471c:	ff852803          	lw	a6,-8(a0)
    80004720:	02081613          	slli	a2,a6,0x20
    80004724:	01c65613          	srli	a2,a2,0x1c
    80004728:	00c68633          	add	a2,a3,a2
    8000472c:	02c70a63          	beq	a4,a2,80004760 <__mem_free+0x84>
    80004730:	fee53823          	sd	a4,-16(a0)
    80004734:	0087a503          	lw	a0,8(a5)
    80004738:	02051613          	slli	a2,a0,0x20
    8000473c:	01c65613          	srli	a2,a2,0x1c
    80004740:	00c78633          	add	a2,a5,a2
    80004744:	04c68263          	beq	a3,a2,80004788 <__mem_free+0xac>
    80004748:	00813403          	ld	s0,8(sp)
    8000474c:	00d7b023          	sd	a3,0(a5)
    80004750:	00f5b023          	sd	a5,0(a1)
    80004754:	00000513          	li	a0,0
    80004758:	01010113          	addi	sp,sp,16
    8000475c:	00008067          	ret
    80004760:	00872603          	lw	a2,8(a4)
    80004764:	00073703          	ld	a4,0(a4)
    80004768:	0106083b          	addw	a6,a2,a6
    8000476c:	ff052c23          	sw	a6,-8(a0)
    80004770:	fee53823          	sd	a4,-16(a0)
    80004774:	0087a503          	lw	a0,8(a5)
    80004778:	02051613          	slli	a2,a0,0x20
    8000477c:	01c65613          	srli	a2,a2,0x1c
    80004780:	00c78633          	add	a2,a5,a2
    80004784:	fcc692e3          	bne	a3,a2,80004748 <__mem_free+0x6c>
    80004788:	00813403          	ld	s0,8(sp)
    8000478c:	0105053b          	addw	a0,a0,a6
    80004790:	00a7a423          	sw	a0,8(a5)
    80004794:	00e7b023          	sd	a4,0(a5)
    80004798:	00f5b023          	sd	a5,0(a1)
    8000479c:	00000513          	li	a0,0
    800047a0:	01010113          	addi	sp,sp,16
    800047a4:	00008067          	ret

00000000800047a8 <__mem_alloc>:
    800047a8:	fc010113          	addi	sp,sp,-64
    800047ac:	02813823          	sd	s0,48(sp)
    800047b0:	02913423          	sd	s1,40(sp)
    800047b4:	03213023          	sd	s2,32(sp)
    800047b8:	01513423          	sd	s5,8(sp)
    800047bc:	02113c23          	sd	ra,56(sp)
    800047c0:	01313c23          	sd	s3,24(sp)
    800047c4:	01413823          	sd	s4,16(sp)
    800047c8:	01613023          	sd	s6,0(sp)
    800047cc:	04010413          	addi	s0,sp,64
    800047d0:	00001a97          	auipc	s5,0x1
    800047d4:	458a8a93          	addi	s5,s5,1112 # 80005c28 <freep>
    800047d8:	00f50913          	addi	s2,a0,15
    800047dc:	000ab683          	ld	a3,0(s5)
    800047e0:	00495913          	srli	s2,s2,0x4
    800047e4:	0019049b          	addiw	s1,s2,1
    800047e8:	00048913          	mv	s2,s1
    800047ec:	0c068c63          	beqz	a3,800048c4 <__mem_alloc+0x11c>
    800047f0:	0006b503          	ld	a0,0(a3)
    800047f4:	00852703          	lw	a4,8(a0)
    800047f8:	10977063          	bgeu	a4,s1,800048f8 <__mem_alloc+0x150>
    800047fc:	000017b7          	lui	a5,0x1
    80004800:	0009099b          	sext.w	s3,s2
    80004804:	0af4e863          	bltu	s1,a5,800048b4 <__mem_alloc+0x10c>
    80004808:	02099a13          	slli	s4,s3,0x20
    8000480c:	01ca5a13          	srli	s4,s4,0x1c
    80004810:	fff00b13          	li	s6,-1
    80004814:	0100006f          	j	80004824 <__mem_alloc+0x7c>
    80004818:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000481c:	00852703          	lw	a4,8(a0)
    80004820:	04977463          	bgeu	a4,s1,80004868 <__mem_alloc+0xc0>
    80004824:	00050793          	mv	a5,a0
    80004828:	fea698e3          	bne	a3,a0,80004818 <__mem_alloc+0x70>
    8000482c:	000a0513          	mv	a0,s4
    80004830:	00000097          	auipc	ra,0x0
    80004834:	1f0080e7          	jalr	496(ra) # 80004a20 <kvmincrease>
    80004838:	00050793          	mv	a5,a0
    8000483c:	01050513          	addi	a0,a0,16
    80004840:	07678e63          	beq	a5,s6,800048bc <__mem_alloc+0x114>
    80004844:	0137a423          	sw	s3,8(a5)
    80004848:	00000097          	auipc	ra,0x0
    8000484c:	e94080e7          	jalr	-364(ra) # 800046dc <__mem_free>
    80004850:	000ab783          	ld	a5,0(s5)
    80004854:	06078463          	beqz	a5,800048bc <__mem_alloc+0x114>
    80004858:	0007b503          	ld	a0,0(a5)
    8000485c:	00078693          	mv	a3,a5
    80004860:	00852703          	lw	a4,8(a0)
    80004864:	fc9760e3          	bltu	a4,s1,80004824 <__mem_alloc+0x7c>
    80004868:	08e48263          	beq	s1,a4,800048ec <__mem_alloc+0x144>
    8000486c:	4127073b          	subw	a4,a4,s2
    80004870:	02071693          	slli	a3,a4,0x20
    80004874:	01c6d693          	srli	a3,a3,0x1c
    80004878:	00e52423          	sw	a4,8(a0)
    8000487c:	00d50533          	add	a0,a0,a3
    80004880:	01252423          	sw	s2,8(a0)
    80004884:	00fab023          	sd	a5,0(s5)
    80004888:	01050513          	addi	a0,a0,16
    8000488c:	03813083          	ld	ra,56(sp)
    80004890:	03013403          	ld	s0,48(sp)
    80004894:	02813483          	ld	s1,40(sp)
    80004898:	02013903          	ld	s2,32(sp)
    8000489c:	01813983          	ld	s3,24(sp)
    800048a0:	01013a03          	ld	s4,16(sp)
    800048a4:	00813a83          	ld	s5,8(sp)
    800048a8:	00013b03          	ld	s6,0(sp)
    800048ac:	04010113          	addi	sp,sp,64
    800048b0:	00008067          	ret
    800048b4:	000019b7          	lui	s3,0x1
    800048b8:	f51ff06f          	j	80004808 <__mem_alloc+0x60>
    800048bc:	00000513          	li	a0,0
    800048c0:	fcdff06f          	j	8000488c <__mem_alloc+0xe4>
    800048c4:	00002797          	auipc	a5,0x2
    800048c8:	5fc78793          	addi	a5,a5,1532 # 80006ec0 <base>
    800048cc:	00078513          	mv	a0,a5
    800048d0:	00fab023          	sd	a5,0(s5)
    800048d4:	00f7b023          	sd	a5,0(a5)
    800048d8:	00000713          	li	a4,0
    800048dc:	00002797          	auipc	a5,0x2
    800048e0:	5e07a623          	sw	zero,1516(a5) # 80006ec8 <base+0x8>
    800048e4:	00050693          	mv	a3,a0
    800048e8:	f11ff06f          	j	800047f8 <__mem_alloc+0x50>
    800048ec:	00053703          	ld	a4,0(a0)
    800048f0:	00e7b023          	sd	a4,0(a5)
    800048f4:	f91ff06f          	j	80004884 <__mem_alloc+0xdc>
    800048f8:	00068793          	mv	a5,a3
    800048fc:	f6dff06f          	j	80004868 <__mem_alloc+0xc0>

0000000080004900 <__putc>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	02010413          	addi	s0,sp,32
    80004910:	00050793          	mv	a5,a0
    80004914:	fef40593          	addi	a1,s0,-17
    80004918:	00100613          	li	a2,1
    8000491c:	00000513          	li	a0,0
    80004920:	fef407a3          	sb	a5,-17(s0)
    80004924:	fffff097          	auipc	ra,0xfffff
    80004928:	918080e7          	jalr	-1768(ra) # 8000323c <console_write>
    8000492c:	01813083          	ld	ra,24(sp)
    80004930:	01013403          	ld	s0,16(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret

000000008000493c <__getc>:
    8000493c:	fe010113          	addi	sp,sp,-32
    80004940:	00813823          	sd	s0,16(sp)
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	02010413          	addi	s0,sp,32
    8000494c:	fe840593          	addi	a1,s0,-24
    80004950:	00100613          	li	a2,1
    80004954:	00000513          	li	a0,0
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	8c4080e7          	jalr	-1852(ra) # 8000321c <console_read>
    80004960:	fe844503          	lbu	a0,-24(s0)
    80004964:	01813083          	ld	ra,24(sp)
    80004968:	01013403          	ld	s0,16(sp)
    8000496c:	02010113          	addi	sp,sp,32
    80004970:	00008067          	ret

0000000080004974 <console_handler>:
    80004974:	fe010113          	addi	sp,sp,-32
    80004978:	00813823          	sd	s0,16(sp)
    8000497c:	00113c23          	sd	ra,24(sp)
    80004980:	00913423          	sd	s1,8(sp)
    80004984:	02010413          	addi	s0,sp,32
    80004988:	14202773          	csrr	a4,scause
    8000498c:	100027f3          	csrr	a5,sstatus
    80004990:	0027f793          	andi	a5,a5,2
    80004994:	06079e63          	bnez	a5,80004a10 <console_handler+0x9c>
    80004998:	00074c63          	bltz	a4,800049b0 <console_handler+0x3c>
    8000499c:	01813083          	ld	ra,24(sp)
    800049a0:	01013403          	ld	s0,16(sp)
    800049a4:	00813483          	ld	s1,8(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret
    800049b0:	0ff77713          	andi	a4,a4,255
    800049b4:	00900793          	li	a5,9
    800049b8:	fef712e3          	bne	a4,a5,8000499c <console_handler+0x28>
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	4b8080e7          	jalr	1208(ra) # 80002e74 <plic_claim>
    800049c4:	00a00793          	li	a5,10
    800049c8:	00050493          	mv	s1,a0
    800049cc:	02f50c63          	beq	a0,a5,80004a04 <console_handler+0x90>
    800049d0:	fc0506e3          	beqz	a0,8000499c <console_handler+0x28>
    800049d4:	00050593          	mv	a1,a0
    800049d8:	00001517          	auipc	a0,0x1
    800049dc:	80050513          	addi	a0,a0,-2048 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800049e0:	fffff097          	auipc	ra,0xfffff
    800049e4:	8d8080e7          	jalr	-1832(ra) # 800032b8 <__printf>
    800049e8:	01013403          	ld	s0,16(sp)
    800049ec:	01813083          	ld	ra,24(sp)
    800049f0:	00048513          	mv	a0,s1
    800049f4:	00813483          	ld	s1,8(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	ffffe317          	auipc	t1,0xffffe
    80004a00:	4b030067          	jr	1200(t1) # 80002eac <plic_complete>
    80004a04:	fffff097          	auipc	ra,0xfffff
    80004a08:	1bc080e7          	jalr	444(ra) # 80003bc0 <uartintr>
    80004a0c:	fddff06f          	j	800049e8 <console_handler+0x74>
    80004a10:	00001517          	auipc	a0,0x1
    80004a14:	8c850513          	addi	a0,a0,-1848 # 800052d8 <digits+0x78>
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	844080e7          	jalr	-1980(ra) # 8000325c <panic>

0000000080004a20 <kvmincrease>:
    80004a20:	fe010113          	addi	sp,sp,-32
    80004a24:	01213023          	sd	s2,0(sp)
    80004a28:	00001937          	lui	s2,0x1
    80004a2c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004a30:	00813823          	sd	s0,16(sp)
    80004a34:	00113c23          	sd	ra,24(sp)
    80004a38:	00913423          	sd	s1,8(sp)
    80004a3c:	02010413          	addi	s0,sp,32
    80004a40:	01250933          	add	s2,a0,s2
    80004a44:	00c95913          	srli	s2,s2,0xc
    80004a48:	02090863          	beqz	s2,80004a78 <kvmincrease+0x58>
    80004a4c:	00000493          	li	s1,0
    80004a50:	00148493          	addi	s1,s1,1
    80004a54:	fffff097          	auipc	ra,0xfffff
    80004a58:	4bc080e7          	jalr	1212(ra) # 80003f10 <kalloc>
    80004a5c:	fe991ae3          	bne	s2,s1,80004a50 <kvmincrease+0x30>
    80004a60:	01813083          	ld	ra,24(sp)
    80004a64:	01013403          	ld	s0,16(sp)
    80004a68:	00813483          	ld	s1,8(sp)
    80004a6c:	00013903          	ld	s2,0(sp)
    80004a70:	02010113          	addi	sp,sp,32
    80004a74:	00008067          	ret
    80004a78:	01813083          	ld	ra,24(sp)
    80004a7c:	01013403          	ld	s0,16(sp)
    80004a80:	00813483          	ld	s1,8(sp)
    80004a84:	00013903          	ld	s2,0(sp)
    80004a88:	00000513          	li	a0,0
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret
	...

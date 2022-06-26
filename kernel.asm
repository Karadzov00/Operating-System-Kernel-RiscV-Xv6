
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	bc013103          	ld	sp,-1088(sp) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	56c020ef          	jal	ra,80002588 <start>

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
    80001080:	7cd000ef          	jal	ra,8000204c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001140:	db0080e7          	jalr	-592(ra) # 80001eec <_ZN9Scheduler3putEP7_thread>
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
    800011a8:	a7c70713          	addi	a4,a4,-1412 # 80005c20 <_ZN7_thread8globalIdE>
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
    8000122c:	9f848493          	addi	s1,s1,-1544 # 80005c20 <_ZN7_thread8globalIdE>
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
    80001280:	9ac4b483          	ld	s1,-1620(s1) # 80005c28 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001284:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001288:	02078c63          	beqz	a5,800012c0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    8000128c:	00001097          	auipc	ra,0x1
    80001290:	bf8080e7          	jalr	-1032(ra) # 80001e84 <_ZN9Scheduler3getEv>
    80001294:	00005797          	auipc	a5,0x5
    80001298:	98a7ba23          	sd	a0,-1644(a5) # 80005c28 <_ZN7_thread7runningE>
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
    800012c8:	c28080e7          	jalr	-984(ra) # 80001eec <_ZN9Scheduler3putEP7_thread>
    800012cc:	fc1ff06f          	j	8000128c <_ZN7_thread8dispatchEv+0x24>

00000000800012d0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012e0:	00001097          	auipc	ra,0x1
    800012e4:	12c080e7          	jalr	300(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000130c:	104080e7          	jalr	260(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001334:	104080e7          	jalr	260(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013f4:	044080e7          	jalr	68(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001444:	7707b783          	ld	a5,1904(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001448:	0007b903          	ld	s2,0(a5)
    8000144c:	02894783          	lbu	a5,40(s2)
        if(!old->isFinished()) { this->blocked.addLast(old); }
    80001450:	04078863          	beqz	a5,800014a0 <_ZN9Semaphore4waitEv+0x98>
        _thread::running = Scheduler::get();
    80001454:	00001097          	auipc	ra,0x1
    80001458:	a30080e7          	jalr	-1488(ra) # 80001e84 <_ZN9Scheduler3getEv>
    8000145c:	00004497          	auipc	s1,0x4
    80001460:	7544b483          	ld	s1,1876(s1) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    800014a8:	f68080e7          	jalr	-152(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001530:	f08080e7          	jalr	-248(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
            _thread* thread = blocked.removeFirst();
            Scheduler::put(thread);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	9b4080e7          	jalr	-1612(ra) # 80001eec <_ZN9Scheduler3putEP7_thread>
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
    80001570:	ea0080e7          	jalr	-352(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001598:	e78080e7          	jalr	-392(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
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
    800015c0:	e78080e7          	jalr	-392(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800015e8:	e50080e7          	jalr	-432(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800015fc:	ff010113          	addi	sp,sp,-16
    80001600:	00113423          	sd	ra,8(sp)
    80001604:	00813023          	sd	s0,0(sp)
    80001608:	01010413          	addi	s0,sp,16


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    8000160c:	00004797          	auipc	a5,0x4
    80001610:	5ac7b783          	ld	a5,1452(a5) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001614:	10579073          	csrw	stvec,a5
//            printString("thread created");
//        }
//    _thread::running=idle;


    userMain();
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	804080e7          	jalr	-2044(ra) # 80001e1c <_Z8userMainv>

    return 0;
}
    80001620:	00000513          	li	a0,0
    80001624:	00813083          	ld	ra,8(sp)
    80001628:	00013403          	ld	s0,0(sp)
    8000162c:	01010113          	addi	sp,sp,16
    80001630:	00008067          	ret

0000000080001634 <_Z7syscallP4args>:
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    80001634:	ff010113          	addi	sp,sp,-16
    80001638:	00813423          	sd	s0,8(sp)
    8000163c:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001640:	00053583          	ld	a1,0(a0)
    uint64 arg1 = arg->a1;
    80001644:	00853603          	ld	a2,8(a0)
    uint64 arg2 = arg->a2;
    80001648:	01053683          	ld	a3,16(a0)
    uint64 arg3 = arg->a3;
    8000164c:	01853703          	ld	a4,24(a0)
    uint64 arg4 = arg->a4;
    80001650:	02053783          	ld	a5,32(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001654:	00058513          	mv	a0,a1
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001658:	00060593          	mv	a1,a2
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    8000165c:	00068613          	mv	a2,a3
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001660:	00070693          	mv	a3,a4
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    80001664:	00078713          	mv	a4,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001668:	00000073          	ecall


}
    8000166c:	00813403          	ld	s0,8(sp)
    80001670:	01010113          	addi	sp,sp,16
    80001674:	00008067          	ret

0000000080001678 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001678:	fc010113          	addi	sp,sp,-64
    8000167c:	02113c23          	sd	ra,56(sp)
    80001680:	02813823          	sd	s0,48(sp)
    80001684:	04010413          	addi	s0,sp,64
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    80001688:	00100793          	li	a5,1
    8000168c:	fcf43423          	sd	a5,-56(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001690:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001694:	03f57513          	andi	a0,a0,63
    80001698:	00050463          	beqz	a0,800016a0 <_Z9mem_allocm+0x28>
    8000169c:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    800016a0:	fcf43823          	sd	a5,-48(s0)

    syscall(&arg);
    800016a4:	fc840513          	addi	a0,s0,-56
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	f8c080e7          	jalr	-116(ra) # 80001634 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800016b0:	00050513          	mv	a0,a0

    return (void*)ret;
}
    800016b4:	03813083          	ld	ra,56(sp)
    800016b8:	03013403          	ld	s0,48(sp)
    800016bc:	04010113          	addi	sp,sp,64
    800016c0:	00008067          	ret

00000000800016c4 <_Z8mem_freePv>:

int mem_free (void* p){
    800016c4:	fc010113          	addi	sp,sp,-64
    800016c8:	02113c23          	sd	ra,56(sp)
    800016cc:	02813823          	sd	s0,48(sp)
    800016d0:	04010413          	addi	s0,sp,64
    args arg;
    arg.a0=0x02;
    800016d4:	00200793          	li	a5,2
    800016d8:	fcf43423          	sd	a5,-56(s0)
    arg.a1=(uint64)p;
    800016dc:	fca43823          	sd	a0,-48(s0)

    syscall(&arg);
    800016e0:	fc840513          	addi	a0,s0,-56
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	f50080e7          	jalr	-176(ra) # 80001634 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800016ec:	00050513          	mv	a0,a0
    return (int)ret;
}
    800016f0:	0005051b          	sext.w	a0,a0
    800016f4:	03813083          	ld	ra,56(sp)
    800016f8:	03013403          	ld	s0,48(sp)
    800016fc:	04010113          	addi	sp,sp,64
    80001700:	00008067          	ret

0000000080001704 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    80001704:	fa010113          	addi	sp,sp,-96
    80001708:	04113c23          	sd	ra,88(sp)
    8000170c:	04813823          	sd	s0,80(sp)
    80001710:	04913423          	sd	s1,72(sp)
    80001714:	05213023          	sd	s2,64(sp)
    80001718:	03313c23          	sd	s3,56(sp)
    8000171c:	06010413          	addi	s0,sp,96
    80001720:	00050993          	mv	s3,a0
    80001724:	00058913          	mv	s2,a1
    80001728:	00060493          	mv	s1,a2

    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    8000172c:	00008537          	lui	a0,0x8
    80001730:	00000097          	auipc	ra,0x0
    80001734:	f48080e7          	jalr	-184(ra) # 80001678 <_Z9mem_allocm>
    args myArgs;
    myArgs.a0=0x11;
    80001738:	01100793          	li	a5,17
    8000173c:	faf43423          	sd	a5,-88(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    80001740:	fb343823          	sd	s3,-80(s0)
    myArgs.a2=(uint64)start_routine;
    80001744:	fb243c23          	sd	s2,-72(s0)
    myArgs.a3=(uint64)arg;
    80001748:	fc943023          	sd	s1,-64(s0)
    myArgs.a4=(uint64)stack;
    8000174c:	fca43423          	sd	a0,-56(s0)

    syscall(&myArgs);
    80001750:	fa840513          	addi	a0,s0,-88
    80001754:	00000097          	auipc	ra,0x0
    80001758:	ee0080e7          	jalr	-288(ra) # 80001634 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000175c:	00050513          	mv	a0,a0
    return ret;


}
    80001760:	0005051b          	sext.w	a0,a0
    80001764:	05813083          	ld	ra,88(sp)
    80001768:	05013403          	ld	s0,80(sp)
    8000176c:	04813483          	ld	s1,72(sp)
    80001770:	04013903          	ld	s2,64(sp)
    80001774:	03813983          	ld	s3,56(sp)
    80001778:	06010113          	addi	sp,sp,96
    8000177c:	00008067          	ret

0000000080001780 <_Z11thread_exitv>:

int thread_exit (){
    80001780:	fc010113          	addi	sp,sp,-64
    80001784:	02113c23          	sd	ra,56(sp)
    80001788:	02813823          	sd	s0,48(sp)
    8000178c:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x12;
    80001790:	01200793          	li	a5,18
    80001794:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    80001798:	fc840513          	addi	a0,s0,-56
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	e98080e7          	jalr	-360(ra) # 80001634 <_Z7syscallP4args>

    return 0;
}
    800017a4:	00000513          	li	a0,0
    800017a8:	03813083          	ld	ra,56(sp)
    800017ac:	03013403          	ld	s0,48(sp)
    800017b0:	04010113          	addi	sp,sp,64
    800017b4:	00008067          	ret

00000000800017b8 <_Z15thread_dispatchv>:


void thread_dispatch (){
    800017b8:	fc010113          	addi	sp,sp,-64
    800017bc:	02113c23          	sd	ra,56(sp)
    800017c0:	02813823          	sd	s0,48(sp)
    800017c4:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x13;
    800017c8:	01300793          	li	a5,19
    800017cc:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    800017d0:	fc840513          	addi	a0,s0,-56
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	e60080e7          	jalr	-416(ra) # 80001634 <_Z7syscallP4args>


}
    800017dc:	03813083          	ld	ra,56(sp)
    800017e0:	03013403          	ld	s0,48(sp)
    800017e4:	04010113          	addi	sp,sp,64
    800017e8:	00008067          	ret

00000000800017ec <_Z8sem_openPP9Semaphorej>:
class Semaphore;
typedef Semaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
){
    800017ec:	fc010113          	addi	sp,sp,-64
    800017f0:	02113c23          	sd	ra,56(sp)
    800017f4:	02813823          	sd	s0,48(sp)
    800017f8:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x21;
    800017fc:	02100793          	li	a5,33
    80001800:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)handle;
    80001804:	fca43823          	sd	a0,-48(s0)
    myArgs.a2 = (uint64)init;
    80001808:	02059593          	slli	a1,a1,0x20
    8000180c:	0205d593          	srli	a1,a1,0x20
    80001810:	fcb43c23          	sd	a1,-40(s0)

    syscall(&myArgs);
    80001814:	fc840513          	addi	a0,s0,-56
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	e1c080e7          	jalr	-484(ra) # 80001634 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001820:	00050513          	mv	a0,a0
    return ret;

}
    80001824:	0005051b          	sext.w	a0,a0
    80001828:	03813083          	ld	ra,56(sp)
    8000182c:	03013403          	ld	s0,48(sp)
    80001830:	04010113          	addi	sp,sp,64
    80001834:	00008067          	ret

0000000080001838 <_Z9sem_closeP9Semaphore>:

int sem_close (sem_t handle){
    80001838:	fc010113          	addi	sp,sp,-64
    8000183c:	02113c23          	sd	ra,56(sp)
    80001840:	02813823          	sd	s0,48(sp)
    80001844:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x22;
    80001848:	02200793          	li	a5,34
    8000184c:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)handle;
    80001850:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    80001854:	fc840513          	addi	a0,s0,-56
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	ddc080e7          	jalr	-548(ra) # 80001634 <_Z7syscallP4args>

    return 0;
}
    80001860:	00000513          	li	a0,0
    80001864:	03813083          	ld	ra,56(sp)
    80001868:	03013403          	ld	s0,48(sp)
    8000186c:	04010113          	addi	sp,sp,64
    80001870:	00008067          	ret

0000000080001874 <_Z8sem_waitP9Semaphore>:

int sem_wait (sem_t id){
    80001874:	fc010113          	addi	sp,sp,-64
    80001878:	02113c23          	sd	ra,56(sp)
    8000187c:	02813823          	sd	s0,48(sp)
    80001880:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x23;
    80001884:	02300793          	li	a5,35
    80001888:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)id;
    8000188c:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    80001890:	fc840513          	addi	a0,s0,-56
    80001894:	00000097          	auipc	ra,0x0
    80001898:	da0080e7          	jalr	-608(ra) # 80001634 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000189c:	00050513          	mv	a0,a0
    return ret;

}
    800018a0:	0005051b          	sext.w	a0,a0
    800018a4:	03813083          	ld	ra,56(sp)
    800018a8:	03013403          	ld	s0,48(sp)
    800018ac:	04010113          	addi	sp,sp,64
    800018b0:	00008067          	ret

00000000800018b4 <_Z11workerBodyCPv>:
    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

void workerBodyC(void* arg) {
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	01213023          	sd	s2,0(sp)
    800018c8:	02010413          	addi	s0,sp,32
    sem_wait(mutex);
    800018cc:	00004517          	auipc	a0,0x4
    800018d0:	36c53503          	ld	a0,876(a0) # 80005c38 <mutex>
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	fa0080e7          	jalr	-96(ra) # 80001874 <_Z8sem_waitP9Semaphore>
    uint8 i = 0;
    800018dc:	00000493          	li	s1,0
    800018e0:	0380006f          	j	80001918 <_Z11workerBodyCPv+0x64>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	71c50513          	addi	a0,a0,1820 # 80005000 <kvmincrease+0x670>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	b70080e7          	jalr	-1168(ra) # 8000245c <_Z11printStringPKc>
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	bd4080e7          	jalr	-1068(ra) # 800024cc <_Z12printIntegerm>
    80001900:	00004517          	auipc	a0,0x4
    80001904:	8e850513          	addi	a0,a0,-1816 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	b54080e7          	jalr	-1196(ra) # 8000245c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001910:	0014849b          	addiw	s1,s1,1
    80001914:	0ff4f493          	andi	s1,s1,255
    80001918:	00200793          	li	a5,2
    8000191c:	fc97f4e3          	bgeu	a5,s1,800018e4 <_Z11workerBodyCPv+0x30>
    }

    printString("C: dispatch\n");
    80001920:	00003517          	auipc	a0,0x3
    80001924:	6e850513          	addi	a0,a0,1768 # 80005008 <kvmincrease+0x678>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	b34080e7          	jalr	-1228(ra) # 8000245c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001930:	00700313          	li	t1,7
    //thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001934:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80001938:	00003517          	auipc	a0,0x3
    8000193c:	6e050513          	addi	a0,a0,1760 # 80005018 <kvmincrease+0x688>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	b1c080e7          	jalr	-1252(ra) # 8000245c <_Z11printStringPKc>
    80001948:	00090513          	mv	a0,s2
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	b80080e7          	jalr	-1152(ra) # 800024cc <_Z12printIntegerm>
    80001954:	00004517          	auipc	a0,0x4
    80001958:	89450513          	addi	a0,a0,-1900 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	b00080e7          	jalr	-1280(ra) # 8000245c <_Z11printStringPKc>
    80001964:	0380006f          	j	8000199c <_Z11workerBodyCPv+0xe8>

    /*uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInteger(result); printString("\n");*/

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	69850513          	addi	a0,a0,1688 # 80005000 <kvmincrease+0x670>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	aec080e7          	jalr	-1300(ra) # 8000245c <_Z11printStringPKc>
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	b50080e7          	jalr	-1200(ra) # 800024cc <_Z12printIntegerm>
    80001984:	00004517          	auipc	a0,0x4
    80001988:	86450513          	addi	a0,a0,-1948 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	ad0080e7          	jalr	-1328(ra) # 8000245c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001994:	0014849b          	addiw	s1,s1,1
    80001998:	0ff4f493          	andi	s1,s1,255
    8000199c:	00500793          	li	a5,5
    800019a0:	fc97f4e3          	bgeu	a5,s1,80001968 <_Z11workerBodyCPv+0xb4>
    }

    printString("C finished!\n");
    800019a4:	00003517          	auipc	a0,0x3
    800019a8:	67c50513          	addi	a0,a0,1660 # 80005020 <kvmincrease+0x690>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	ab0080e7          	jalr	-1360(ra) # 8000245c <_Z11printStringPKc>
    finishedC = true;
    800019b4:	00100793          	li	a5,1
    800019b8:	00004717          	auipc	a4,0x4
    800019bc:	28f70423          	sb	a5,648(a4) # 80005c40 <finishedC>
    //thread_dispatch();
}
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	00013903          	ld	s2,0(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_Z10sem_signalP9Semaphore>:

int sem_signal (sem_t id){
    800019d8:	fc010113          	addi	sp,sp,-64
    800019dc:	02113c23          	sd	ra,56(sp)
    800019e0:	02813823          	sd	s0,48(sp)
    800019e4:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0 = 0x24;
    800019e8:	02400793          	li	a5,36
    800019ec:	fcf43423          	sd	a5,-56(s0)
    myArgs.a1 = (uint64)id;
    800019f0:	fca43823          	sd	a0,-48(s0)

    syscall(&myArgs);
    800019f4:	fc840513          	addi	a0,s0,-56
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	c3c080e7          	jalr	-964(ra) # 80001634 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001a00:	00050513          	mv	a0,a0
    return ret;
}
    80001a04:	0005051b          	sext.w	a0,a0
    80001a08:	03813083          	ld	ra,56(sp)
    80001a0c:	03013403          	ld	s0,48(sp)
    80001a10:	04010113          	addi	sp,sp,64
    80001a14:	00008067          	ret

0000000080001a18 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80001a18:	fe010113          	addi	sp,sp,-32
    80001a1c:	00113c23          	sd	ra,24(sp)
    80001a20:	00813823          	sd	s0,16(sp)
    80001a24:	00913423          	sd	s1,8(sp)
    80001a28:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a2c:	00a00493          	li	s1,10
    80001a30:	0380006f          	j	80001a68 <_Z11workerBodyDPv+0x50>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	5fc50513          	addi	a0,a0,1532 # 80005030 <kvmincrease+0x6a0>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	a20080e7          	jalr	-1504(ra) # 8000245c <_Z11printStringPKc>
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	a84080e7          	jalr	-1404(ra) # 800024cc <_Z12printIntegerm>
    80001a50:	00003517          	auipc	a0,0x3
    80001a54:	79850513          	addi	a0,a0,1944 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	a04080e7          	jalr	-1532(ra) # 8000245c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001a60:	0014849b          	addiw	s1,s1,1
    80001a64:	0ff4f493          	andi	s1,s1,255
    80001a68:	00c00793          	li	a5,12
    80001a6c:	fc97f4e3          	bgeu	a5,s1,80001a34 <_Z11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	5c850513          	addi	a0,a0,1480 # 80005038 <kvmincrease+0x6a8>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	9e4080e7          	jalr	-1564(ra) # 8000245c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a80:	00500313          	li	t1,5
    80001a84:	0380006f          	j	80001abc <_Z11workerBodyDPv+0xa4>

    /*   uint64 result = fibonacci(16);
       printString("D: fibonaci="); printInteger(result); printString("\n");*/

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001a88:	00003517          	auipc	a0,0x3
    80001a8c:	5a850513          	addi	a0,a0,1448 # 80005030 <kvmincrease+0x6a0>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	9cc080e7          	jalr	-1588(ra) # 8000245c <_Z11printStringPKc>
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	a30080e7          	jalr	-1488(ra) # 800024cc <_Z12printIntegerm>
    80001aa4:	00003517          	auipc	a0,0x3
    80001aa8:	74450513          	addi	a0,a0,1860 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	9b0080e7          	jalr	-1616(ra) # 8000245c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001ab4:	0014849b          	addiw	s1,s1,1
    80001ab8:	0ff4f493          	andi	s1,s1,255
    80001abc:	00f00793          	li	a5,15
    80001ac0:	fc97f4e3          	bgeu	a5,s1,80001a88 <_Z11workerBodyDPv+0x70>
    }

    printString("D finished!\n");
    80001ac4:	00003517          	auipc	a0,0x3
    80001ac8:	58450513          	addi	a0,a0,1412 # 80005048 <kvmincrease+0x6b8>
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	990080e7          	jalr	-1648(ra) # 8000245c <_Z11printStringPKc>
    finishedD = true;
    80001ad4:	00004797          	auipc	a5,0x4
    80001ad8:	16478793          	addi	a5,a5,356 # 80005c38 <mutex>
    80001adc:	00100713          	li	a4,1
    80001ae0:	00e784a3          	sb	a4,9(a5)
    //thread_dispatch();
    sem_signal(mutex);
    80001ae4:	0007b503          	ld	a0,0(a5)
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	ef0080e7          	jalr	-272(ra) # 800019d8 <_Z10sem_signalP9Semaphore>
}
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_Z11createMutexv>:
void createMutex(){
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    int a = sem_open(&mutex, 0);
    80001b14:	00000593          	li	a1,0
    80001b18:	00004517          	auipc	a0,0x4
    80001b1c:	12050513          	addi	a0,a0,288 # 80005c38 <mutex>
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	ccc080e7          	jalr	-820(ra) # 800017ec <_Z8sem_openPP9Semaphorej>
    if(!a){
    80001b28:	00050a63          	beqz	a0,80001b3c <_Z11createMutexv+0x38>
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret
        printString("Mutex created\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	51c50513          	addi	a0,a0,1308 # 80005058 <kvmincrease+0x6c8>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	918080e7          	jalr	-1768(ra) # 8000245c <_Z11printStringPKc>
}
    80001b4c:	fe1ff06f          	j	80001b2c <_Z11createMutexv+0x28>

0000000080001b50 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	01213023          	sd	s2,0(sp)
    80001b64:	02010413          	addi	s0,sp,32
    80001b68:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001b6c:	00100793          	li	a5,1
    80001b70:	02a7f863          	bgeu	a5,a0,80001ba0 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001b74:	00a00793          	li	a5,10
    80001b78:	02f577b3          	remu	a5,a0,a5
    80001b7c:	02078e63          	beqz	a5,80001bb8 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001b80:	fff48513          	addi	a0,s1,-1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	fcc080e7          	jalr	-52(ra) # 80001b50 <_Z9fibonaccim>
    80001b8c:	00050913          	mv	s2,a0
    80001b90:	ffe48513          	addi	a0,s1,-2
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	fbc080e7          	jalr	-68(ra) # 80001b50 <_Z9fibonaccim>
    80001b9c:	00a90533          	add	a0,s2,a0
}
    80001ba0:	01813083          	ld	ra,24(sp)
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	00813483          	ld	s1,8(sp)
    80001bac:	00013903          	ld	s2,0(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	c00080e7          	jalr	-1024(ra) # 800017b8 <_Z15thread_dispatchv>
    80001bc0:	fc1ff06f          	j	80001b80 <_Z9fibonaccim+0x30>

0000000080001bc4 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	01213023          	sd	s2,0(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001bdc:	00000913          	li	s2,0
    80001be0:	0380006f          	j	80001c18 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	bd4080e7          	jalr	-1068(ra) # 800017b8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001bec:	00148493          	addi	s1,s1,1
    80001bf0:	000027b7          	lui	a5,0x2
    80001bf4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001bf8:	0097ee63          	bltu	a5,s1,80001c14 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001bfc:	00000713          	li	a4,0
    80001c00:	000077b7          	lui	a5,0x7
    80001c04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001c08:	fce7eee3          	bltu	a5,a4,80001be4 <_Z11workerBodyAPv+0x20>
    80001c0c:	00170713          	addi	a4,a4,1
    80001c10:	ff1ff06f          	j	80001c00 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001c14:	00190913          	addi	s2,s2,1
    80001c18:	00900793          	li	a5,9
    80001c1c:	0327ec63          	bltu	a5,s2,80001c54 <_Z11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80001c20:	00003517          	auipc	a0,0x3
    80001c24:	44850513          	addi	a0,a0,1096 # 80005068 <kvmincrease+0x6d8>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	834080e7          	jalr	-1996(ra) # 8000245c <_Z11printStringPKc>
    80001c30:	00090513          	mv	a0,s2
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	898080e7          	jalr	-1896(ra) # 800024cc <_Z12printIntegerm>
    80001c3c:	00003517          	auipc	a0,0x3
    80001c40:	5ac50513          	addi	a0,a0,1452 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	818080e7          	jalr	-2024(ra) # 8000245c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001c4c:	00000493          	li	s1,0
    80001c50:	fa1ff06f          	j	80001bf0 <_Z11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80001c54:	00003517          	auipc	a0,0x3
    80001c58:	41c50513          	addi	a0,a0,1052 # 80005070 <kvmincrease+0x6e0>
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	800080e7          	jalr	-2048(ra) # 8000245c <_Z11printStringPKc>
    finishedA = true;
    80001c64:	00100793          	li	a5,1
    80001c68:	00004717          	auipc	a4,0x4
    80001c6c:	fcf70d23          	sb	a5,-38(a4) # 80005c42 <finishedA>
}
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	00013903          	ld	s2,0(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret

0000000080001c88 <_Z11workerBodyBPv>:
void workerBodyB(void* arg) {
    80001c88:	fe010113          	addi	sp,sp,-32
    80001c8c:	00113c23          	sd	ra,24(sp)
    80001c90:	00813823          	sd	s0,16(sp)
    80001c94:	00913423          	sd	s1,8(sp)
    80001c98:	01213023          	sd	s2,0(sp)
    80001c9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001ca0:	00000913          	li	s2,0
    80001ca4:	0380006f          	j	80001cdc <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	b10080e7          	jalr	-1264(ra) # 800017b8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001cb0:	00148493          	addi	s1,s1,1
    80001cb4:	000027b7          	lui	a5,0x2
    80001cb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001cbc:	0097ee63          	bltu	a5,s1,80001cd8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001cc0:	00000713          	li	a4,0
    80001cc4:	000077b7          	lui	a5,0x7
    80001cc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ccc:	fce7eee3          	bltu	a5,a4,80001ca8 <_Z11workerBodyBPv+0x20>
    80001cd0:	00170713          	addi	a4,a4,1
    80001cd4:	ff1ff06f          	j	80001cc4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001cd8:	00190913          	addi	s2,s2,1
    80001cdc:	00f00793          	li	a5,15
    80001ce0:	0327ec63          	bltu	a5,s2,80001d18 <_Z11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001ce4:	00003517          	auipc	a0,0x3
    80001ce8:	39c50513          	addi	a0,a0,924 # 80005080 <kvmincrease+0x6f0>
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	770080e7          	jalr	1904(ra) # 8000245c <_Z11printStringPKc>
    80001cf4:	00090513          	mv	a0,s2
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	7d4080e7          	jalr	2004(ra) # 800024cc <_Z12printIntegerm>
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	4e850513          	addi	a0,a0,1256 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	754080e7          	jalr	1876(ra) # 8000245c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001d10:	00000493          	li	s1,0
    80001d14:	fa1ff06f          	j	80001cb4 <_Z11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80001d18:	00003517          	auipc	a0,0x3
    80001d1c:	37050513          	addi	a0,a0,880 # 80005088 <kvmincrease+0x6f8>
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	73c080e7          	jalr	1852(ra) # 8000245c <_Z11printStringPKc>
    finishedB = true;
    80001d28:	00100793          	li	a5,1
    80001d2c:	00004717          	auipc	a4,0x4
    80001d30:	f0f70ba3          	sb	a5,-233(a4) # 80005c43 <finishedB>
    thread_dispatch();
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	a84080e7          	jalr	-1404(ra) # 800017b8 <_Z15thread_dispatchv>
}
    80001d3c:	01813083          	ld	ra,24(sp)
    80001d40:	01013403          	ld	s0,16(sp)
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	00013903          	ld	s2,0(sp)
    80001d4c:	02010113          	addi	sp,sp,32
    80001d50:	00008067          	ret

0000000080001d54 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80001d54:	fc010113          	addi	sp,sp,-64
    80001d58:	02113c23          	sd	ra,56(sp)
    80001d5c:	02813823          	sd	s0,48(sp)
    80001d60:	04010413          	addi	s0,sp,64
    thread_t threads[5];

    createMutex();
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	da0080e7          	jalr	-608(ra) # 80001b04 <_Z11createMutexv>

    thread_create(&threads[0], nullptr, nullptr);
    80001d6c:	00000613          	li	a2,0
    80001d70:	00000593          	li	a1,0
    80001d74:	fc840513          	addi	a0,s0,-56
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	98c080e7          	jalr	-1652(ra) # 80001704 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = threads[0];
    80001d80:	fc843703          	ld	a4,-56(s0)
    80001d84:	00004797          	auipc	a5,0x4
    80001d88:	e2c7b783          	ld	a5,-468(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d8c:	00e7b023          	sd	a4,0(a5)
    printString("ThreadA created\n");

    thread_create(&threads[2], workerBodyB, nullptr);
    printString("ThreadB created\n");*/

    thread_create(&threads[3], workerBodyC, nullptr);
    80001d90:	00000613          	li	a2,0
    80001d94:	00000597          	auipc	a1,0x0
    80001d98:	b2058593          	addi	a1,a1,-1248 # 800018b4 <_Z11workerBodyCPv>
    80001d9c:	fe040513          	addi	a0,s0,-32
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	964080e7          	jalr	-1692(ra) # 80001704 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80001da8:	00003517          	auipc	a0,0x3
    80001dac:	2f050513          	addi	a0,a0,752 # 80005098 <kvmincrease+0x708>
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	6ac080e7          	jalr	1708(ra) # 8000245c <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyD, nullptr);
    80001db8:	00000613          	li	a2,0
    80001dbc:	00000597          	auipc	a1,0x0
    80001dc0:	c5c58593          	addi	a1,a1,-932 # 80001a18 <_Z11workerBodyDPv>
    80001dc4:	fe840513          	addi	a0,s0,-24
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	93c080e7          	jalr	-1732(ra) # 80001704 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80001dd0:	00003517          	auipc	a0,0x3
    80001dd4:	2e050513          	addi	a0,a0,736 # 800050b0 <kvmincrease+0x720>
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	684080e7          	jalr	1668(ra) # 8000245c <_Z11printStringPKc>

    thread_dispatch();
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	9d8080e7          	jalr	-1576(ra) # 800017b8 <_Z15thread_dispatchv>
    80001de8:	00c0006f          	j	80001df4 <_Z18Threads_C_API_testv+0xa0>

    while (!(finishedC && finishedD)) {
        thread_dispatch();
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	9cc080e7          	jalr	-1588(ra) # 800017b8 <_Z15thread_dispatchv>
    while (!(finishedC && finishedD)) {
    80001df4:	00004797          	auipc	a5,0x4
    80001df8:	e4c7c783          	lbu	a5,-436(a5) # 80005c40 <finishedC>
    80001dfc:	fe0788e3          	beqz	a5,80001dec <_Z18Threads_C_API_testv+0x98>
    80001e00:	00004797          	auipc	a5,0x4
    80001e04:	e417c783          	lbu	a5,-447(a5) # 80005c41 <finishedD>
    80001e08:	fe0782e3          	beqz	a5,80001dec <_Z18Threads_C_API_testv+0x98>
    }

}
    80001e0c:	03813083          	ld	ra,56(sp)
    80001e10:	03013403          	ld	s0,48(sp)
    80001e14:	04010113          	addi	sp,sp,64
    80001e18:	00008067          	ret

0000000080001e1c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	f28080e7          	jalr	-216(ra) # 80001d54 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813423          	sd	s0,8(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    80001e50:	00100793          	li	a5,1
    80001e54:	00f50863          	beq	a0,a5,80001e64 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e58:	00813403          	ld	s0,8(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret
    80001e64:	000107b7          	lui	a5,0x10
    80001e68:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e6c:	fef596e3          	bne	a1,a5,80001e58 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001e70:	00004797          	auipc	a5,0x4
    80001e74:	dd878793          	addi	a5,a5,-552 # 80005c48 <_ZN9Scheduler16readyThreadQueueE>
    80001e78:	0007b023          	sd	zero,0(a5)
    80001e7c:	0007b423          	sd	zero,8(a5)
    80001e80:	fd9ff06f          	j	80001e58 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e84 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001e84:	fe010113          	addi	sp,sp,-32
    80001e88:	00113c23          	sd	ra,24(sp)
    80001e8c:	00813823          	sd	s0,16(sp)
    80001e90:	00913423          	sd	s1,8(sp)
    80001e94:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001e98:	00004517          	auipc	a0,0x4
    80001e9c:	db053503          	ld	a0,-592(a0) # 80005c48 <_ZN9Scheduler16readyThreadQueueE>
    80001ea0:	04050263          	beqz	a0,80001ee4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001ea4:	00853783          	ld	a5,8(a0)
    80001ea8:	00004717          	auipc	a4,0x4
    80001eac:	daf73023          	sd	a5,-608(a4) # 80005c48 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001eb0:	02078463          	beqz	a5,80001ed8 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001eb4:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	57c080e7          	jalr	1404(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001ec0:	00048513          	mv	a0,s1
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	02010113          	addi	sp,sp,32
    80001ed4:	00008067          	ret
        if (!head) { tail = 0; }
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	d607bc23          	sd	zero,-648(a5) # 80005c50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ee0:	fd5ff06f          	j	80001eb4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001ee4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001ee8:	fd9ff06f          	j	80001ec0 <_ZN9Scheduler3getEv+0x3c>

0000000080001eec <_ZN9Scheduler3putEP7_thread>:
{
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	02010413          	addi	s0,sp,32
    80001f00:	00050493          	mv	s1,a0
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
    80001f04:	01000513          	li	a0,16
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	504080e7          	jalr	1284(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    80001f10:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001f14:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f18:	00004797          	auipc	a5,0x4
    80001f1c:	d387b783          	ld	a5,-712(a5) # 80005c50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f20:	02078263          	beqz	a5,80001f44 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001f24:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f28:	00004797          	auipc	a5,0x4
    80001f2c:	d2a7b423          	sd	a0,-728(a5) # 80005c50 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001f30:	01813083          	ld	ra,24(sp)
    80001f34:	01013403          	ld	s0,16(sp)
    80001f38:	00813483          	ld	s1,8(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret
            head = tail = elem;
    80001f44:	00004797          	auipc	a5,0x4
    80001f48:	d0478793          	addi	a5,a5,-764 # 80005c48 <_ZN9Scheduler16readyThreadQueueE>
    80001f4c:	00a7b423          	sd	a0,8(a5)
    80001f50:	00a7b023          	sd	a0,0(a5)
    80001f54:	fddff06f          	j	80001f30 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001f58 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00113423          	sd	ra,8(sp)
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	01010413          	addi	s0,sp,16
    80001f68:	000105b7          	lui	a1,0x10
    80001f6c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f70:	00100513          	li	a0,1
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	ed0080e7          	jalr	-304(ra) # 80001e44 <_Z41__static_initialization_and_destruction_0ii>
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00113423          	sd	ra,8(sp)
    80001f94:	00813023          	sd	s0,0(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	6dc080e7          	jalr	1756(ra) # 80001678 <_Z9mem_allocm>
}
    80001fa4:	00813083          	ld	ra,8(sp)
    80001fa8:	00013403          	ld	s0,0(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_Znam>:

void* operator new[](size_t n){
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	6b4080e7          	jalr	1716(ra) # 80001678 <_Z9mem_allocm>
}
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	6d8080e7          	jalr	1752(ra) # 800016c4 <_Z8mem_freePv>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00113423          	sd	ra,8(sp)
    8000200c:	00813023          	sd	s0,0(sp)
    80002010:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002014:	fffff097          	auipc	ra,0xfffff
    80002018:	6b0080e7          	jalr	1712(ra) # 800016c4 <_Z8mem_freePv>

}
    8000201c:	00813083          	ld	ra,8(sp)
    80002020:	00013403          	ld	s0,0(sp)
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <_ZN5Riscv10popSppSpieEv>:




void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002038:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    8000203c:	10200073          	sret
}
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    8000204c:	f2010113          	addi	sp,sp,-224
    80002050:	0c113c23          	sd	ra,216(sp)
    80002054:	0c813823          	sd	s0,208(sp)
    80002058:	0c913423          	sd	s1,200(sp)
    8000205c:	0d213023          	sd	s2,192(sp)
    80002060:	0b313c23          	sd	s3,184(sp)
    80002064:	0b413823          	sd	s4,176(sp)
    80002068:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000206c:	142027f3          	csrr	a5,scause
    80002070:	f2f43423          	sd	a5,-216(s0)
    return scause;
    80002074:	f2843783          	ld	a5,-216(s0)
    uint scause = r_scause();
    80002078:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
//    uint64 arg0;
    uint64 arg1;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    8000207c:	00050493          	mv	s1,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80002080:	ff87879b          	addiw	a5,a5,-8
    80002084:	00100713          	li	a4,1
    80002088:	02f77263          	bgeu	a4,a5,800020ac <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        //print(sepc)
        //print(stval) //trap value

    }

}
    8000208c:	0d813083          	ld	ra,216(sp)
    80002090:	0d013403          	ld	s0,208(sp)
    80002094:	0c813483          	ld	s1,200(sp)
    80002098:	0c013903          	ld	s2,192(sp)
    8000209c:	0b813983          	ld	s3,184(sp)
    800020a0:	0b013a03          	ld	s4,176(sp)
    800020a4:	0e010113          	addi	sp,sp,224
    800020a8:	00008067          	ret
        if(a0reg==0x11){
    800020ac:	01100793          	li	a5,17
    800020b0:	08f48863          	beq	s1,a5,80002140 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        if(a0reg== 0x01 ){
    800020b4:	00100793          	li	a5,1
    800020b8:	0ef48863          	beq	s1,a5,800021a8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
        else if(a0reg==0x02){
    800020bc:	00200793          	li	a5,2
    800020c0:	12f48263          	beq	s1,a5,800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if(a0reg==0x12){
    800020c4:	01200793          	li	a5,18
    800020c8:	14f48a63          	beq	s1,a5,8000221c <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
        else if(a0reg == 0x13){
    800020cc:	01300793          	li	a5,19
    800020d0:	18f48863          	beq	s1,a5,80002260 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if(a0reg==0x04){
    800020d4:	00400793          	li	a5,4
    800020d8:	1af48c63          	beq	s1,a5,80002290 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        else if(a0reg==0x21){
    800020dc:	02100793          	li	a5,33
    800020e0:	1ef48663          	beq	s1,a5,800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x280>
        else if(a0reg==0x22){
    800020e4:	02200793          	li	a5,34
    800020e8:	24f48663          	beq	s1,a5,80002334 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
        else if(a0reg==0x23){
    800020ec:	02300793          	li	a5,35
    800020f0:	2cf48e63          	beq	s1,a5,800023cc <_ZN5Riscv20handleSupervisorTrapEv+0x380>
        else if(a0reg==0x24){
    800020f4:	02400793          	li	a5,36
    800020f8:	f8f49ae3          	bne	s1,a5,8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020fc:	141027f3          	csrr	a5,sepc
    80002100:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002104:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80002108:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000210c:	100027f3          	csrr	a5,sstatus
    80002110:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002114:	fc043903          	ld	s2,-64(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80002118:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    8000211c:	00058793          	mv	a5,a1
            sem->signal();
    80002120:	0007b503          	ld	a0,0(a5)
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	3b8080e7          	jalr	952(ra) # 800014dc <_ZN9Semaphore6signalEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    8000212c:	00000793          	li	a5,0
    80002130:	00078513          	mv	a0,a5
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002134:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002138:	14149073          	csrw	sepc,s1
}
    8000213c:	f51ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002140:	141027f3          	csrr	a5,sepc
    80002144:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    80002148:	f3843903          	ld	s2,-200(s0)
            uint64 sepc = r_sepc() + 4;
    8000214c:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002150:	100027f3          	csrr	a5,sstatus
    80002154:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    80002158:	f3043983          	ld	s3,-208(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    8000215c:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80002160:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80002164:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80002168:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    8000216c:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80002170:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80002174:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80002178:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	1cc080e7          	jalr	460(ra) # 80001348 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80002184:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80002188:	00050c63          	beqz	a0,800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    8000218c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002190:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002194:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002198:	14191073          	csrw	sepc,s2
}
    8000219c:	f19ff06f          	j	800020b4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
            else ret =-1;
    800021a0:	fff00793          	li	a5,-1
    800021a4:	fedff06f          	j	80002190 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021a8:	141027f3          	csrr	a5,sepc
    800021ac:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    800021b0:	f4843483          	ld	s1,-184(s0)
            uint64 sepc = r_sepc() + 4;
    800021b4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021b8:	100027f3          	csrr	a5,sstatus
    800021bc:	f4f43023          	sd	a5,-192(s0)
    return sstatus;
    800021c0:	f4043903          	ld	s2,-192(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800021c4:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    800021c8:	00651513          	slli	a0,a0,0x6
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	240080e7          	jalr	576(ra) # 8000240c <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800021d4:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021d8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021dc:	14149073          	csrw	sepc,s1
}
    800021e0:	eadff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021e4:	141027f3          	csrr	a5,sepc
    800021e8:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    800021ec:	f5843483          	ld	s1,-168(s0)
            uint64 sepc = r_sepc() + 4;
    800021f0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021f4:	100027f3          	csrr	a5,sstatus
    800021f8:	f4f43823          	sd	a5,-176(s0)
    return sstatus;
    800021fc:	f5043903          	ld	s2,-176(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80002200:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80002204:	00000097          	auipc	ra,0x0
    80002208:	230080e7          	jalr	560(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    8000220c:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002210:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002214:	14149073          	csrw	sepc,s1
}
    80002218:	e75ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000221c:	141027f3          	csrr	a5,sepc
    80002220:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    80002224:	f6843483          	ld	s1,-152(s0)
            uint64 sepc = r_sepc() + 4;
    80002228:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000222c:	100027f3          	csrr	a5,sstatus
    80002230:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    80002234:	f6043903          	ld	s2,-160(s0)
            _thread::running->finished=true;
    80002238:	00004797          	auipc	a5,0x4
    8000223c:	9787b783          	ld	a5,-1672(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002240:	0007b783          	ld	a5,0(a5)
    80002244:	00100713          	li	a4,1
    80002248:	02e78423          	sb	a4,40(a5)
            _thread::dispatch();
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	01c080e7          	jalr	28(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002254:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002258:	14149073          	csrw	sepc,s1
}
    8000225c:	e31ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002260:	141027f3          	csrr	a5,sepc
    80002264:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80002268:	f7843483          	ld	s1,-136(s0)
            uint64 sepc = r_sepc() + 4;
    8000226c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002270:	100027f3          	csrr	a5,sstatus
    80002274:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80002278:	f7043903          	ld	s2,-144(s0)
            _thread::dispatch();
    8000227c:	fffff097          	auipc	ra,0xfffff
    80002280:	fec080e7          	jalr	-20(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002284:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002288:	14149073          	csrw	sepc,s1
}
    8000228c:	e01ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002290:	141027f3          	csrr	a5,sepc
    80002294:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002298:	f8843483          	ld	s1,-120(s0)
            uint64 sepc = r_sepc() + 4;
    8000229c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022a0:	100027f3          	csrr	a5,sstatus
    800022a4:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800022a8:	f8043903          	ld	s2,-128(s0)
            _thread::timeSliceCounter = 0;
    800022ac:	00004797          	auipc	a5,0x4
    800022b0:	91c7b783          	ld	a5,-1764(a5) # 80005bc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800022b4:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	fb0080e7          	jalr	-80(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022c0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022c4:	14149073          	csrw	sepc,s1
}
    800022c8:	dc5ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022cc:	141027f3          	csrr	a5,sepc
    800022d0:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800022d4:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    800022d8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022dc:	100027f3          	csrr	a5,sstatus
    800022e0:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800022e4:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800022e8:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    800022ec:	06043603          	ld	a2,96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800022f0:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //init val
    800022f4:	00060a13          	mv	s4,a2
            Semaphore* sem = new Semaphore(arg2);
    800022f8:	01800513          	li	a0,24
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	260080e7          	jalr	608(ra) # 8000155c <_ZN9SemaphorenwEm>
#include "_thread.hpp"
#include "List.hpp"

class Semaphore {
public:
    Semaphore(uint64 init=1):val(init){}
    80002304:	01452023          	sw	s4,0(a0)
    List() : head(0), tail(0) {}
    80002308:	00053423          	sd	zero,8(a0)
    8000230c:	00053823          	sd	zero,16(a0)
            *arg1=sem;
    80002310:	00a9b023          	sd	a0,0(s3)
            if(sem!= nullptr)ret=0;
    80002314:	00050c63          	beqz	a0,8000232c <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
    80002318:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    8000231c:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002320:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002324:	14149073          	csrw	sepc,s1
}
    80002328:	d65ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
            else ret=-1;
    8000232c:	fff00793          	li	a5,-1
    80002330:	fedff06f          	j	8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002334:	141027f3          	csrr	a5,sepc
    80002338:	faf43423          	sd	a5,-88(s0)
    return sepc;
    8000233c:	fa843983          	ld	s3,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80002340:	00498993          	addi	s3,s3,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002344:	100027f3          	csrr	a5,sstatus
    80002348:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000234c:	fa043a03          	ld	s4,-96(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80002350:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    80002354:	00058793          	mv	a5,a1
            Semaphore* sem = *arg1;
    80002358:	0007b483          	ld	s1,0(a5)
    8000235c:	0300006f          	j	8000238c <_ZN5Riscv20handleSupervisorTrapEv+0x340>
        T *ret = elem->data;
    80002360:	00053903          	ld	s2,0(a0)
        MemoryAllocator::kmem_free(elem);
    80002364:	00000097          	auipc	ra,0x0
    80002368:	0d0080e7          	jalr	208(ra) # 80002434 <_ZN15MemoryAllocator9kmem_freeEPv>
                t->deblocked=true;
    8000236c:	00100793          	li	a5,1
    80002370:	02f90c23          	sb	a5,56(s2)
                sem->val++;
    80002374:	0004a783          	lw	a5,0(s1)
    80002378:	0017879b          	addiw	a5,a5,1
    8000237c:	00f4a023          	sw	a5,0(s1)
                Scheduler::put(t);
    80002380:	00090513          	mv	a0,s2
    80002384:	00000097          	auipc	ra,0x0
    80002388:	b68080e7          	jalr	-1176(ra) # 80001eec <_ZN9Scheduler3putEP7_thread>
        if (!head) { return 0; }
    8000238c:	0084b503          	ld	a0,8(s1)
    80002390:	02050063          	beqz	a0,800023b0 <_ZN5Riscv20handleSupervisorTrapEv+0x364>
        return head->data;
    80002394:	00053783          	ld	a5,0(a0)
            while(sem->blocked.peekFirst()!=0){
    80002398:	00078c63          	beqz	a5,800023b0 <_ZN5Riscv20handleSupervisorTrapEv+0x364>
        head = head->next;
    8000239c:	00853783          	ld	a5,8(a0)
    800023a0:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800023a4:	fa079ee3          	bnez	a5,80002360 <_ZN5Riscv20handleSupervisorTrapEv+0x314>
    800023a8:	0004b823          	sd	zero,16(s1)
    800023ac:	fb5ff06f          	j	80002360 <_ZN5Riscv20handleSupervisorTrapEv+0x314>
            delete sem;
    800023b0:	00048863          	beqz	s1,800023c0 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
    800023b4:	00048513          	mv	a0,s1
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	1f4080e7          	jalr	500(ra) # 800015ac <_ZN9SemaphoredlEPv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023c0:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023c4:	14199073          	csrw	sepc,s3
}
    800023c8:	cc5ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023cc:	141027f3          	csrr	a5,sepc
    800023d0:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800023d4:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    800023d8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023dc:	100027f3          	csrr	a5,sstatus
    800023e0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800023e4:	fb043903          	ld	s2,-80(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800023e8:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800023ec:	00058793          	mv	a5,a1
            uint64 ret = sem->wait();
    800023f0:	0007b503          	ld	a0,0(a5)
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	014080e7          	jalr	20(ra) # 80001408 <_ZN9Semaphore4waitEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    800023fc:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002400:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002404:	14149073          	csrw	sepc,s1
}
    80002408:	c85ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>

000000008000240c <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00113423          	sd	ra,8(sp)
    80002414:	00813023          	sd	s0,0(sp)
    80002418:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    8000241c:	00002097          	auipc	ra,0x2
    80002420:	2fc080e7          	jalr	764(ra) # 80004718 <__mem_alloc>
}
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80002444:	00002097          	auipc	ra,0x2
    80002448:	208080e7          	jalr	520(ra) # 8000464c <__mem_free>
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000245c:	fd010113          	addi	sp,sp,-48
    80002460:	02113423          	sd	ra,40(sp)
    80002464:	02813023          	sd	s0,32(sp)
    80002468:	00913c23          	sd	s1,24(sp)
    8000246c:	01213823          	sd	s2,16(sp)
    80002470:	03010413          	addi	s0,sp,48
    80002474:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002478:	100027f3          	csrr	a5,sstatus
    8000247c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002480:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002484:	00200793          	li	a5,2
    80002488:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    8000248c:	0004c503          	lbu	a0,0(s1)
    80002490:	00050a63          	beqz	a0,800024a4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002494:	00002097          	auipc	ra,0x2
    80002498:	3dc080e7          	jalr	988(ra) # 80004870 <__putc>
        string++;
    8000249c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024a0:	fedff06f          	j	8000248c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    800024a4:	0009091b          	sext.w	s2,s2
    800024a8:	00297913          	andi	s2,s2,2
    800024ac:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800024b0:	10092073          	csrs	sstatus,s2
}
    800024b4:	02813083          	ld	ra,40(sp)
    800024b8:	02013403          	ld	s0,32(sp)
    800024bc:	01813483          	ld	s1,24(sp)
    800024c0:	01013903          	ld	s2,16(sp)
    800024c4:	03010113          	addi	sp,sp,48
    800024c8:	00008067          	ret

00000000800024cc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800024cc:	fc010113          	addi	sp,sp,-64
    800024d0:	02113c23          	sd	ra,56(sp)
    800024d4:	02813823          	sd	s0,48(sp)
    800024d8:	02913423          	sd	s1,40(sp)
    800024dc:	03213023          	sd	s2,32(sp)
    800024e0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024e4:	100027f3          	csrr	a5,sstatus
    800024e8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800024ec:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024f0:	00200793          	li	a5,2
    800024f4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800024f8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800024fc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002500:	00a00613          	li	a2,10
    80002504:	02c5773b          	remuw	a4,a0,a2
    80002508:	02071693          	slli	a3,a4,0x20
    8000250c:	0206d693          	srli	a3,a3,0x20
    80002510:	00003717          	auipc	a4,0x3
    80002514:	bb870713          	addi	a4,a4,-1096 # 800050c8 <_ZZ12printIntegermE6digits>
    80002518:	00d70733          	add	a4,a4,a3
    8000251c:	00074703          	lbu	a4,0(a4)
    80002520:	fe040693          	addi	a3,s0,-32
    80002524:	009687b3          	add	a5,a3,s1
    80002528:	0014849b          	addiw	s1,s1,1
    8000252c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002530:	0005071b          	sext.w	a4,a0
    80002534:	02c5553b          	divuw	a0,a0,a2
    80002538:	00900793          	li	a5,9
    8000253c:	fce7e2e3          	bltu	a5,a4,80002500 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002540:	fff4849b          	addiw	s1,s1,-1
    80002544:	0004ce63          	bltz	s1,80002560 <_Z12printIntegerm+0x94>
    80002548:	fe040793          	addi	a5,s0,-32
    8000254c:	009787b3          	add	a5,a5,s1
    80002550:	ff07c503          	lbu	a0,-16(a5)
    80002554:	00002097          	auipc	ra,0x2
    80002558:	31c080e7          	jalr	796(ra) # 80004870 <__putc>
    8000255c:	fe5ff06f          	j	80002540 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002560:	0009091b          	sext.w	s2,s2
    80002564:	00297913          	andi	s2,s2,2
    80002568:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000256c:	10092073          	csrs	sstatus,s2
}
    80002570:	03813083          	ld	ra,56(sp)
    80002574:	03013403          	ld	s0,48(sp)
    80002578:	02813483          	ld	s1,40(sp)
    8000257c:	02013903          	ld	s2,32(sp)
    80002580:	04010113          	addi	sp,sp,64
    80002584:	00008067          	ret

0000000080002588 <start>:
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    80002594:	300027f3          	csrr	a5,mstatus
    80002598:	ffffe737          	lui	a4,0xffffe
    8000259c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff792f>
    800025a0:	00e7f7b3          	and	a5,a5,a4
    800025a4:	00001737          	lui	a4,0x1
    800025a8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800025ac:	00e7e7b3          	or	a5,a5,a4
    800025b0:	30079073          	csrw	mstatus,a5
    800025b4:	00000797          	auipc	a5,0x0
    800025b8:	16078793          	addi	a5,a5,352 # 80002714 <system_main>
    800025bc:	34179073          	csrw	mepc,a5
    800025c0:	00000793          	li	a5,0
    800025c4:	18079073          	csrw	satp,a5
    800025c8:	000107b7          	lui	a5,0x10
    800025cc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800025d0:	30279073          	csrw	medeleg,a5
    800025d4:	30379073          	csrw	mideleg,a5
    800025d8:	104027f3          	csrr	a5,sie
    800025dc:	2227e793          	ori	a5,a5,546
    800025e0:	10479073          	csrw	sie,a5
    800025e4:	fff00793          	li	a5,-1
    800025e8:	00a7d793          	srli	a5,a5,0xa
    800025ec:	3b079073          	csrw	pmpaddr0,a5
    800025f0:	00f00793          	li	a5,15
    800025f4:	3a079073          	csrw	pmpcfg0,a5
    800025f8:	f14027f3          	csrr	a5,mhartid
    800025fc:	0200c737          	lui	a4,0x200c
    80002600:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002604:	0007869b          	sext.w	a3,a5
    80002608:	00269713          	slli	a4,a3,0x2
    8000260c:	000f4637          	lui	a2,0xf4
    80002610:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002614:	00d70733          	add	a4,a4,a3
    80002618:	0037979b          	slliw	a5,a5,0x3
    8000261c:	020046b7          	lui	a3,0x2004
    80002620:	00d787b3          	add	a5,a5,a3
    80002624:	00c585b3          	add	a1,a1,a2
    80002628:	00371693          	slli	a3,a4,0x3
    8000262c:	00003717          	auipc	a4,0x3
    80002630:	63470713          	addi	a4,a4,1588 # 80005c60 <timer_scratch>
    80002634:	00b7b023          	sd	a1,0(a5)
    80002638:	00d70733          	add	a4,a4,a3
    8000263c:	00f73c23          	sd	a5,24(a4)
    80002640:	02c73023          	sd	a2,32(a4)
    80002644:	34071073          	csrw	mscratch,a4
    80002648:	00000797          	auipc	a5,0x0
    8000264c:	6e878793          	addi	a5,a5,1768 # 80002d30 <timervec>
    80002650:	30579073          	csrw	mtvec,a5
    80002654:	300027f3          	csrr	a5,mstatus
    80002658:	0087e793          	ori	a5,a5,8
    8000265c:	30079073          	csrw	mstatus,a5
    80002660:	304027f3          	csrr	a5,mie
    80002664:	0807e793          	ori	a5,a5,128
    80002668:	30479073          	csrw	mie,a5
    8000266c:	f14027f3          	csrr	a5,mhartid
    80002670:	0007879b          	sext.w	a5,a5
    80002674:	00078213          	mv	tp,a5
    80002678:	30200073          	mret
    8000267c:	00813403          	ld	s0,8(sp)
    80002680:	01010113          	addi	sp,sp,16
    80002684:	00008067          	ret

0000000080002688 <timerinit>:
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	f14027f3          	csrr	a5,mhartid
    80002698:	0200c737          	lui	a4,0x200c
    8000269c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800026a0:	0007869b          	sext.w	a3,a5
    800026a4:	00269713          	slli	a4,a3,0x2
    800026a8:	000f4637          	lui	a2,0xf4
    800026ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800026b0:	00d70733          	add	a4,a4,a3
    800026b4:	0037979b          	slliw	a5,a5,0x3
    800026b8:	020046b7          	lui	a3,0x2004
    800026bc:	00d787b3          	add	a5,a5,a3
    800026c0:	00c585b3          	add	a1,a1,a2
    800026c4:	00371693          	slli	a3,a4,0x3
    800026c8:	00003717          	auipc	a4,0x3
    800026cc:	59870713          	addi	a4,a4,1432 # 80005c60 <timer_scratch>
    800026d0:	00b7b023          	sd	a1,0(a5)
    800026d4:	00d70733          	add	a4,a4,a3
    800026d8:	00f73c23          	sd	a5,24(a4)
    800026dc:	02c73023          	sd	a2,32(a4)
    800026e0:	34071073          	csrw	mscratch,a4
    800026e4:	00000797          	auipc	a5,0x0
    800026e8:	64c78793          	addi	a5,a5,1612 # 80002d30 <timervec>
    800026ec:	30579073          	csrw	mtvec,a5
    800026f0:	300027f3          	csrr	a5,mstatus
    800026f4:	0087e793          	ori	a5,a5,8
    800026f8:	30079073          	csrw	mstatus,a5
    800026fc:	304027f3          	csrr	a5,mie
    80002700:	0807e793          	ori	a5,a5,128
    80002704:	30479073          	csrw	mie,a5
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <system_main>:
    80002714:	fe010113          	addi	sp,sp,-32
    80002718:	00813823          	sd	s0,16(sp)
    8000271c:	00913423          	sd	s1,8(sp)
    80002720:	00113c23          	sd	ra,24(sp)
    80002724:	02010413          	addi	s0,sp,32
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	0c4080e7          	jalr	196(ra) # 800027ec <cpuid>
    80002730:	00003497          	auipc	s1,0x3
    80002734:	4c048493          	addi	s1,s1,1216 # 80005bf0 <started>
    80002738:	02050263          	beqz	a0,8000275c <system_main+0x48>
    8000273c:	0004a783          	lw	a5,0(s1)
    80002740:	0007879b          	sext.w	a5,a5
    80002744:	fe078ce3          	beqz	a5,8000273c <system_main+0x28>
    80002748:	0ff0000f          	fence
    8000274c:	00003517          	auipc	a0,0x3
    80002750:	9bc50513          	addi	a0,a0,-1604 # 80005108 <_ZZ12printIntegermE6digits+0x40>
    80002754:	00001097          	auipc	ra,0x1
    80002758:	a78080e7          	jalr	-1416(ra) # 800031cc <panic>
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	9cc080e7          	jalr	-1588(ra) # 80003128 <consoleinit>
    80002764:	00001097          	auipc	ra,0x1
    80002768:	158080e7          	jalr	344(ra) # 800038bc <printfinit>
    8000276c:	00003517          	auipc	a0,0x3
    80002770:	a7c50513          	addi	a0,a0,-1412 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80002774:	00001097          	auipc	ra,0x1
    80002778:	ab4080e7          	jalr	-1356(ra) # 80003228 <__printf>
    8000277c:	00003517          	auipc	a0,0x3
    80002780:	95c50513          	addi	a0,a0,-1700 # 800050d8 <_ZZ12printIntegermE6digits+0x10>
    80002784:	00001097          	auipc	ra,0x1
    80002788:	aa4080e7          	jalr	-1372(ra) # 80003228 <__printf>
    8000278c:	00003517          	auipc	a0,0x3
    80002790:	a5c50513          	addi	a0,a0,-1444 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80002794:	00001097          	auipc	ra,0x1
    80002798:	a94080e7          	jalr	-1388(ra) # 80003228 <__printf>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	4ac080e7          	jalr	1196(ra) # 80003c48 <kinit>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	148080e7          	jalr	328(ra) # 800028ec <trapinit>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	16c080e7          	jalr	364(ra) # 80002918 <trapinithart>
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	5bc080e7          	jalr	1468(ra) # 80002d70 <plicinit>
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	5dc080e7          	jalr	1500(ra) # 80002d98 <plicinithart>
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	078080e7          	jalr	120(ra) # 8000283c <userinit>
    800027cc:	0ff0000f          	fence
    800027d0:	00100793          	li	a5,1
    800027d4:	00003517          	auipc	a0,0x3
    800027d8:	91c50513          	addi	a0,a0,-1764 # 800050f0 <_ZZ12printIntegermE6digits+0x28>
    800027dc:	00f4a023          	sw	a5,0(s1)
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	a48080e7          	jalr	-1464(ra) # 80003228 <__printf>
    800027e8:	0000006f          	j	800027e8 <system_main+0xd4>

00000000800027ec <cpuid>:
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	00020513          	mv	a0,tp
    800027fc:	00813403          	ld	s0,8(sp)
    80002800:	0005051b          	sext.w	a0,a0
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <mycpu>:
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00813423          	sd	s0,8(sp)
    80002814:	01010413          	addi	s0,sp,16
    80002818:	00020793          	mv	a5,tp
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	0007879b          	sext.w	a5,a5
    80002824:	00779793          	slli	a5,a5,0x7
    80002828:	00004517          	auipc	a0,0x4
    8000282c:	46850513          	addi	a0,a0,1128 # 80006c90 <cpus>
    80002830:	00f50533          	add	a0,a0,a5
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <userinit>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	fffff317          	auipc	t1,0xfffff
    80002854:	dac30067          	jr	-596(t1) # 800015fc <main>

0000000080002858 <either_copyout>:
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	02051663          	bnez	a0,80002894 <either_copyout+0x3c>
    8000286c:	00058513          	mv	a0,a1
    80002870:	00060593          	mv	a1,a2
    80002874:	0006861b          	sext.w	a2,a3
    80002878:	00002097          	auipc	ra,0x2
    8000287c:	c5c080e7          	jalr	-932(ra) # 800044d4 <__memmove>
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	00000513          	li	a0,0
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret
    80002894:	00003517          	auipc	a0,0x3
    80002898:	89c50513          	addi	a0,a0,-1892 # 80005130 <_ZZ12printIntegermE6digits+0x68>
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	930080e7          	jalr	-1744(ra) # 800031cc <panic>

00000000800028a4 <either_copyin>:
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	02059463          	bnez	a1,800028dc <either_copyin+0x38>
    800028b8:	00060593          	mv	a1,a2
    800028bc:	0006861b          	sext.w	a2,a3
    800028c0:	00002097          	auipc	ra,0x2
    800028c4:	c14080e7          	jalr	-1004(ra) # 800044d4 <__memmove>
    800028c8:	00813083          	ld	ra,8(sp)
    800028cc:	00013403          	ld	s0,0(sp)
    800028d0:	00000513          	li	a0,0
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret
    800028dc:	00003517          	auipc	a0,0x3
    800028e0:	87c50513          	addi	a0,a0,-1924 # 80005158 <_ZZ12printIntegermE6digits+0x90>
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	8e8080e7          	jalr	-1816(ra) # 800031cc <panic>

00000000800028ec <trapinit>:
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00813423          	sd	s0,8(sp)
    800028f4:	01010413          	addi	s0,sp,16
    800028f8:	00813403          	ld	s0,8(sp)
    800028fc:	00003597          	auipc	a1,0x3
    80002900:	88458593          	addi	a1,a1,-1916 # 80005180 <_ZZ12printIntegermE6digits+0xb8>
    80002904:	00004517          	auipc	a0,0x4
    80002908:	40c50513          	addi	a0,a0,1036 # 80006d10 <tickslock>
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00001317          	auipc	t1,0x1
    80002914:	5c830067          	jr	1480(t1) # 80003ed8 <initlock>

0000000080002918 <trapinithart>:
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    80002924:	00000797          	auipc	a5,0x0
    80002928:	2fc78793          	addi	a5,a5,764 # 80002c20 <kernelvec>
    8000292c:	10579073          	csrw	stvec,a5
    80002930:	00813403          	ld	s0,8(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <usertrap>:
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <usertrapret>:
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	00813403          	ld	s0,8(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <kerneltrap>:
    8000296c:	fe010113          	addi	sp,sp,-32
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00113c23          	sd	ra,24(sp)
    80002978:	00913423          	sd	s1,8(sp)
    8000297c:	02010413          	addi	s0,sp,32
    80002980:	142025f3          	csrr	a1,scause
    80002984:	100027f3          	csrr	a5,sstatus
    80002988:	0027f793          	andi	a5,a5,2
    8000298c:	10079c63          	bnez	a5,80002aa4 <kerneltrap+0x138>
    80002990:	142027f3          	csrr	a5,scause
    80002994:	0207ce63          	bltz	a5,800029d0 <kerneltrap+0x64>
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	83050513          	addi	a0,a0,-2000 # 800051c8 <_ZZ12printIntegermE6digits+0x100>
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	888080e7          	jalr	-1912(ra) # 80003228 <__printf>
    800029a8:	141025f3          	csrr	a1,sepc
    800029ac:	14302673          	csrr	a2,stval
    800029b0:	00003517          	auipc	a0,0x3
    800029b4:	82850513          	addi	a0,a0,-2008 # 800051d8 <_ZZ12printIntegermE6digits+0x110>
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	870080e7          	jalr	-1936(ra) # 80003228 <__printf>
    800029c0:	00003517          	auipc	a0,0x3
    800029c4:	83050513          	addi	a0,a0,-2000 # 800051f0 <_ZZ12printIntegermE6digits+0x128>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	804080e7          	jalr	-2044(ra) # 800031cc <panic>
    800029d0:	0ff7f713          	andi	a4,a5,255
    800029d4:	00900693          	li	a3,9
    800029d8:	04d70063          	beq	a4,a3,80002a18 <kerneltrap+0xac>
    800029dc:	fff00713          	li	a4,-1
    800029e0:	03f71713          	slli	a4,a4,0x3f
    800029e4:	00170713          	addi	a4,a4,1
    800029e8:	fae798e3          	bne	a5,a4,80002998 <kerneltrap+0x2c>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	e00080e7          	jalr	-512(ra) # 800027ec <cpuid>
    800029f4:	06050663          	beqz	a0,80002a60 <kerneltrap+0xf4>
    800029f8:	144027f3          	csrr	a5,sip
    800029fc:	ffd7f793          	andi	a5,a5,-3
    80002a00:	14479073          	csrw	sip,a5
    80002a04:	01813083          	ld	ra,24(sp)
    80002a08:	01013403          	ld	s0,16(sp)
    80002a0c:	00813483          	ld	s1,8(sp)
    80002a10:	02010113          	addi	sp,sp,32
    80002a14:	00008067          	ret
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	3cc080e7          	jalr	972(ra) # 80002de4 <plic_claim>
    80002a20:	00a00793          	li	a5,10
    80002a24:	00050493          	mv	s1,a0
    80002a28:	06f50863          	beq	a0,a5,80002a98 <kerneltrap+0x12c>
    80002a2c:	fc050ce3          	beqz	a0,80002a04 <kerneltrap+0x98>
    80002a30:	00050593          	mv	a1,a0
    80002a34:	00002517          	auipc	a0,0x2
    80002a38:	77450513          	addi	a0,a0,1908 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	7ec080e7          	jalr	2028(ra) # 80003228 <__printf>
    80002a44:	01013403          	ld	s0,16(sp)
    80002a48:	01813083          	ld	ra,24(sp)
    80002a4c:	00048513          	mv	a0,s1
    80002a50:	00813483          	ld	s1,8(sp)
    80002a54:	02010113          	addi	sp,sp,32
    80002a58:	00000317          	auipc	t1,0x0
    80002a5c:	3c430067          	jr	964(t1) # 80002e1c <plic_complete>
    80002a60:	00004517          	auipc	a0,0x4
    80002a64:	2b050513          	addi	a0,a0,688 # 80006d10 <tickslock>
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	494080e7          	jalr	1172(ra) # 80003efc <acquire>
    80002a70:	00003717          	auipc	a4,0x3
    80002a74:	18470713          	addi	a4,a4,388 # 80005bf4 <ticks>
    80002a78:	00072783          	lw	a5,0(a4)
    80002a7c:	00004517          	auipc	a0,0x4
    80002a80:	29450513          	addi	a0,a0,660 # 80006d10 <tickslock>
    80002a84:	0017879b          	addiw	a5,a5,1
    80002a88:	00f72023          	sw	a5,0(a4)
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	53c080e7          	jalr	1340(ra) # 80003fc8 <release>
    80002a94:	f65ff06f          	j	800029f8 <kerneltrap+0x8c>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	098080e7          	jalr	152(ra) # 80003b30 <uartintr>
    80002aa0:	fa5ff06f          	j	80002a44 <kerneltrap+0xd8>
    80002aa4:	00002517          	auipc	a0,0x2
    80002aa8:	6e450513          	addi	a0,a0,1764 # 80005188 <_ZZ12printIntegermE6digits+0xc0>
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	720080e7          	jalr	1824(ra) # 800031cc <panic>

0000000080002ab4 <clockintr>:
    80002ab4:	fe010113          	addi	sp,sp,-32
    80002ab8:	00813823          	sd	s0,16(sp)
    80002abc:	00913423          	sd	s1,8(sp)
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	02010413          	addi	s0,sp,32
    80002ac8:	00004497          	auipc	s1,0x4
    80002acc:	24848493          	addi	s1,s1,584 # 80006d10 <tickslock>
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	428080e7          	jalr	1064(ra) # 80003efc <acquire>
    80002adc:	00003717          	auipc	a4,0x3
    80002ae0:	11870713          	addi	a4,a4,280 # 80005bf4 <ticks>
    80002ae4:	00072783          	lw	a5,0(a4)
    80002ae8:	01013403          	ld	s0,16(sp)
    80002aec:	01813083          	ld	ra,24(sp)
    80002af0:	00048513          	mv	a0,s1
    80002af4:	0017879b          	addiw	a5,a5,1
    80002af8:	00813483          	ld	s1,8(sp)
    80002afc:	00f72023          	sw	a5,0(a4)
    80002b00:	02010113          	addi	sp,sp,32
    80002b04:	00001317          	auipc	t1,0x1
    80002b08:	4c430067          	jr	1220(t1) # 80003fc8 <release>

0000000080002b0c <devintr>:
    80002b0c:	142027f3          	csrr	a5,scause
    80002b10:	00000513          	li	a0,0
    80002b14:	0007c463          	bltz	a5,80002b1c <devintr+0x10>
    80002b18:	00008067          	ret
    80002b1c:	fe010113          	addi	sp,sp,-32
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00113c23          	sd	ra,24(sp)
    80002b28:	00913423          	sd	s1,8(sp)
    80002b2c:	02010413          	addi	s0,sp,32
    80002b30:	0ff7f713          	andi	a4,a5,255
    80002b34:	00900693          	li	a3,9
    80002b38:	04d70c63          	beq	a4,a3,80002b90 <devintr+0x84>
    80002b3c:	fff00713          	li	a4,-1
    80002b40:	03f71713          	slli	a4,a4,0x3f
    80002b44:	00170713          	addi	a4,a4,1
    80002b48:	00e78c63          	beq	a5,a4,80002b60 <devintr+0x54>
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	02010113          	addi	sp,sp,32
    80002b5c:	00008067          	ret
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	c8c080e7          	jalr	-884(ra) # 800027ec <cpuid>
    80002b68:	06050663          	beqz	a0,80002bd4 <devintr+0xc8>
    80002b6c:	144027f3          	csrr	a5,sip
    80002b70:	ffd7f793          	andi	a5,a5,-3
    80002b74:	14479073          	csrw	sip,a5
    80002b78:	01813083          	ld	ra,24(sp)
    80002b7c:	01013403          	ld	s0,16(sp)
    80002b80:	00813483          	ld	s1,8(sp)
    80002b84:	00200513          	li	a0,2
    80002b88:	02010113          	addi	sp,sp,32
    80002b8c:	00008067          	ret
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	254080e7          	jalr	596(ra) # 80002de4 <plic_claim>
    80002b98:	00a00793          	li	a5,10
    80002b9c:	00050493          	mv	s1,a0
    80002ba0:	06f50663          	beq	a0,a5,80002c0c <devintr+0x100>
    80002ba4:	00100513          	li	a0,1
    80002ba8:	fa0482e3          	beqz	s1,80002b4c <devintr+0x40>
    80002bac:	00048593          	mv	a1,s1
    80002bb0:	00002517          	auipc	a0,0x2
    80002bb4:	5f850513          	addi	a0,a0,1528 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	670080e7          	jalr	1648(ra) # 80003228 <__printf>
    80002bc0:	00048513          	mv	a0,s1
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	258080e7          	jalr	600(ra) # 80002e1c <plic_complete>
    80002bcc:	00100513          	li	a0,1
    80002bd0:	f7dff06f          	j	80002b4c <devintr+0x40>
    80002bd4:	00004517          	auipc	a0,0x4
    80002bd8:	13c50513          	addi	a0,a0,316 # 80006d10 <tickslock>
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	320080e7          	jalr	800(ra) # 80003efc <acquire>
    80002be4:	00003717          	auipc	a4,0x3
    80002be8:	01070713          	addi	a4,a4,16 # 80005bf4 <ticks>
    80002bec:	00072783          	lw	a5,0(a4)
    80002bf0:	00004517          	auipc	a0,0x4
    80002bf4:	12050513          	addi	a0,a0,288 # 80006d10 <tickslock>
    80002bf8:	0017879b          	addiw	a5,a5,1
    80002bfc:	00f72023          	sw	a5,0(a4)
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	3c8080e7          	jalr	968(ra) # 80003fc8 <release>
    80002c08:	f65ff06f          	j	80002b6c <devintr+0x60>
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	f24080e7          	jalr	-220(ra) # 80003b30 <uartintr>
    80002c14:	fadff06f          	j	80002bc0 <devintr+0xb4>
	...

0000000080002c20 <kernelvec>:
    80002c20:	f0010113          	addi	sp,sp,-256
    80002c24:	00113023          	sd	ra,0(sp)
    80002c28:	00213423          	sd	sp,8(sp)
    80002c2c:	00313823          	sd	gp,16(sp)
    80002c30:	00413c23          	sd	tp,24(sp)
    80002c34:	02513023          	sd	t0,32(sp)
    80002c38:	02613423          	sd	t1,40(sp)
    80002c3c:	02713823          	sd	t2,48(sp)
    80002c40:	02813c23          	sd	s0,56(sp)
    80002c44:	04913023          	sd	s1,64(sp)
    80002c48:	04a13423          	sd	a0,72(sp)
    80002c4c:	04b13823          	sd	a1,80(sp)
    80002c50:	04c13c23          	sd	a2,88(sp)
    80002c54:	06d13023          	sd	a3,96(sp)
    80002c58:	06e13423          	sd	a4,104(sp)
    80002c5c:	06f13823          	sd	a5,112(sp)
    80002c60:	07013c23          	sd	a6,120(sp)
    80002c64:	09113023          	sd	a7,128(sp)
    80002c68:	09213423          	sd	s2,136(sp)
    80002c6c:	09313823          	sd	s3,144(sp)
    80002c70:	09413c23          	sd	s4,152(sp)
    80002c74:	0b513023          	sd	s5,160(sp)
    80002c78:	0b613423          	sd	s6,168(sp)
    80002c7c:	0b713823          	sd	s7,176(sp)
    80002c80:	0b813c23          	sd	s8,184(sp)
    80002c84:	0d913023          	sd	s9,192(sp)
    80002c88:	0da13423          	sd	s10,200(sp)
    80002c8c:	0db13823          	sd	s11,208(sp)
    80002c90:	0dc13c23          	sd	t3,216(sp)
    80002c94:	0fd13023          	sd	t4,224(sp)
    80002c98:	0fe13423          	sd	t5,232(sp)
    80002c9c:	0ff13823          	sd	t6,240(sp)
    80002ca0:	ccdff0ef          	jal	ra,8000296c <kerneltrap>
    80002ca4:	00013083          	ld	ra,0(sp)
    80002ca8:	00813103          	ld	sp,8(sp)
    80002cac:	01013183          	ld	gp,16(sp)
    80002cb0:	02013283          	ld	t0,32(sp)
    80002cb4:	02813303          	ld	t1,40(sp)
    80002cb8:	03013383          	ld	t2,48(sp)
    80002cbc:	03813403          	ld	s0,56(sp)
    80002cc0:	04013483          	ld	s1,64(sp)
    80002cc4:	04813503          	ld	a0,72(sp)
    80002cc8:	05013583          	ld	a1,80(sp)
    80002ccc:	05813603          	ld	a2,88(sp)
    80002cd0:	06013683          	ld	a3,96(sp)
    80002cd4:	06813703          	ld	a4,104(sp)
    80002cd8:	07013783          	ld	a5,112(sp)
    80002cdc:	07813803          	ld	a6,120(sp)
    80002ce0:	08013883          	ld	a7,128(sp)
    80002ce4:	08813903          	ld	s2,136(sp)
    80002ce8:	09013983          	ld	s3,144(sp)
    80002cec:	09813a03          	ld	s4,152(sp)
    80002cf0:	0a013a83          	ld	s5,160(sp)
    80002cf4:	0a813b03          	ld	s6,168(sp)
    80002cf8:	0b013b83          	ld	s7,176(sp)
    80002cfc:	0b813c03          	ld	s8,184(sp)
    80002d00:	0c013c83          	ld	s9,192(sp)
    80002d04:	0c813d03          	ld	s10,200(sp)
    80002d08:	0d013d83          	ld	s11,208(sp)
    80002d0c:	0d813e03          	ld	t3,216(sp)
    80002d10:	0e013e83          	ld	t4,224(sp)
    80002d14:	0e813f03          	ld	t5,232(sp)
    80002d18:	0f013f83          	ld	t6,240(sp)
    80002d1c:	10010113          	addi	sp,sp,256
    80002d20:	10200073          	sret
    80002d24:	00000013          	nop
    80002d28:	00000013          	nop
    80002d2c:	00000013          	nop

0000000080002d30 <timervec>:
    80002d30:	34051573          	csrrw	a0,mscratch,a0
    80002d34:	00b53023          	sd	a1,0(a0)
    80002d38:	00c53423          	sd	a2,8(a0)
    80002d3c:	00d53823          	sd	a3,16(a0)
    80002d40:	01853583          	ld	a1,24(a0)
    80002d44:	02053603          	ld	a2,32(a0)
    80002d48:	0005b683          	ld	a3,0(a1)
    80002d4c:	00c686b3          	add	a3,a3,a2
    80002d50:	00d5b023          	sd	a3,0(a1)
    80002d54:	00200593          	li	a1,2
    80002d58:	14459073          	csrw	sip,a1
    80002d5c:	01053683          	ld	a3,16(a0)
    80002d60:	00853603          	ld	a2,8(a0)
    80002d64:	00053583          	ld	a1,0(a0)
    80002d68:	34051573          	csrrw	a0,mscratch,a0
    80002d6c:	30200073          	mret

0000000080002d70 <plicinit>:
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	0c0007b7          	lui	a5,0xc000
    80002d84:	00100713          	li	a4,1
    80002d88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002d8c:	00e7a223          	sw	a4,4(a5)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <plicinithart>:
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00813023          	sd	s0,0(sp)
    80002da0:	00113423          	sd	ra,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	a44080e7          	jalr	-1468(ra) # 800027ec <cpuid>
    80002db0:	0085171b          	slliw	a4,a0,0x8
    80002db4:	0c0027b7          	lui	a5,0xc002
    80002db8:	00e787b3          	add	a5,a5,a4
    80002dbc:	40200713          	li	a4,1026
    80002dc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002dc4:	00813083          	ld	ra,8(sp)
    80002dc8:	00013403          	ld	s0,0(sp)
    80002dcc:	00d5151b          	slliw	a0,a0,0xd
    80002dd0:	0c2017b7          	lui	a5,0xc201
    80002dd4:	00a78533          	add	a0,a5,a0
    80002dd8:	00052023          	sw	zero,0(a0)
    80002ddc:	01010113          	addi	sp,sp,16
    80002de0:	00008067          	ret

0000000080002de4 <plic_claim>:
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00813023          	sd	s0,0(sp)
    80002dec:	00113423          	sd	ra,8(sp)
    80002df0:	01010413          	addi	s0,sp,16
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	9f8080e7          	jalr	-1544(ra) # 800027ec <cpuid>
    80002dfc:	00813083          	ld	ra,8(sp)
    80002e00:	00013403          	ld	s0,0(sp)
    80002e04:	00d5151b          	slliw	a0,a0,0xd
    80002e08:	0c2017b7          	lui	a5,0xc201
    80002e0c:	00a78533          	add	a0,a5,a0
    80002e10:	00452503          	lw	a0,4(a0)
    80002e14:	01010113          	addi	sp,sp,16
    80002e18:	00008067          	ret

0000000080002e1c <plic_complete>:
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	02010413          	addi	s0,sp,32
    80002e30:	00050493          	mv	s1,a0
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	9b8080e7          	jalr	-1608(ra) # 800027ec <cpuid>
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	00d5179b          	slliw	a5,a0,0xd
    80002e48:	0c201737          	lui	a4,0xc201
    80002e4c:	00f707b3          	add	a5,a4,a5
    80002e50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	02010113          	addi	sp,sp,32
    80002e5c:	00008067          	ret

0000000080002e60 <consolewrite>:
    80002e60:	fb010113          	addi	sp,sp,-80
    80002e64:	04813023          	sd	s0,64(sp)
    80002e68:	04113423          	sd	ra,72(sp)
    80002e6c:	02913c23          	sd	s1,56(sp)
    80002e70:	03213823          	sd	s2,48(sp)
    80002e74:	03313423          	sd	s3,40(sp)
    80002e78:	03413023          	sd	s4,32(sp)
    80002e7c:	01513c23          	sd	s5,24(sp)
    80002e80:	05010413          	addi	s0,sp,80
    80002e84:	06c05c63          	blez	a2,80002efc <consolewrite+0x9c>
    80002e88:	00060993          	mv	s3,a2
    80002e8c:	00050a13          	mv	s4,a0
    80002e90:	00058493          	mv	s1,a1
    80002e94:	00000913          	li	s2,0
    80002e98:	fff00a93          	li	s5,-1
    80002e9c:	01c0006f          	j	80002eb8 <consolewrite+0x58>
    80002ea0:	fbf44503          	lbu	a0,-65(s0)
    80002ea4:	0019091b          	addiw	s2,s2,1
    80002ea8:	00148493          	addi	s1,s1,1
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	a9c080e7          	jalr	-1380(ra) # 80003948 <uartputc>
    80002eb4:	03298063          	beq	s3,s2,80002ed4 <consolewrite+0x74>
    80002eb8:	00048613          	mv	a2,s1
    80002ebc:	00100693          	li	a3,1
    80002ec0:	000a0593          	mv	a1,s4
    80002ec4:	fbf40513          	addi	a0,s0,-65
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	9dc080e7          	jalr	-1572(ra) # 800028a4 <either_copyin>
    80002ed0:	fd5518e3          	bne	a0,s5,80002ea0 <consolewrite+0x40>
    80002ed4:	04813083          	ld	ra,72(sp)
    80002ed8:	04013403          	ld	s0,64(sp)
    80002edc:	03813483          	ld	s1,56(sp)
    80002ee0:	02813983          	ld	s3,40(sp)
    80002ee4:	02013a03          	ld	s4,32(sp)
    80002ee8:	01813a83          	ld	s5,24(sp)
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	03013903          	ld	s2,48(sp)
    80002ef4:	05010113          	addi	sp,sp,80
    80002ef8:	00008067          	ret
    80002efc:	00000913          	li	s2,0
    80002f00:	fd5ff06f          	j	80002ed4 <consolewrite+0x74>

0000000080002f04 <consoleread>:
    80002f04:	f9010113          	addi	sp,sp,-112
    80002f08:	06813023          	sd	s0,96(sp)
    80002f0c:	04913c23          	sd	s1,88(sp)
    80002f10:	05213823          	sd	s2,80(sp)
    80002f14:	05313423          	sd	s3,72(sp)
    80002f18:	05413023          	sd	s4,64(sp)
    80002f1c:	03513c23          	sd	s5,56(sp)
    80002f20:	03613823          	sd	s6,48(sp)
    80002f24:	03713423          	sd	s7,40(sp)
    80002f28:	03813023          	sd	s8,32(sp)
    80002f2c:	06113423          	sd	ra,104(sp)
    80002f30:	01913c23          	sd	s9,24(sp)
    80002f34:	07010413          	addi	s0,sp,112
    80002f38:	00060b93          	mv	s7,a2
    80002f3c:	00050913          	mv	s2,a0
    80002f40:	00058c13          	mv	s8,a1
    80002f44:	00060b1b          	sext.w	s6,a2
    80002f48:	00004497          	auipc	s1,0x4
    80002f4c:	df048493          	addi	s1,s1,-528 # 80006d38 <cons>
    80002f50:	00400993          	li	s3,4
    80002f54:	fff00a13          	li	s4,-1
    80002f58:	00a00a93          	li	s5,10
    80002f5c:	05705e63          	blez	s7,80002fb8 <consoleread+0xb4>
    80002f60:	09c4a703          	lw	a4,156(s1)
    80002f64:	0984a783          	lw	a5,152(s1)
    80002f68:	0007071b          	sext.w	a4,a4
    80002f6c:	08e78463          	beq	a5,a4,80002ff4 <consoleread+0xf0>
    80002f70:	07f7f713          	andi	a4,a5,127
    80002f74:	00e48733          	add	a4,s1,a4
    80002f78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002f7c:	0017869b          	addiw	a3,a5,1
    80002f80:	08d4ac23          	sw	a3,152(s1)
    80002f84:	00070c9b          	sext.w	s9,a4
    80002f88:	0b370663          	beq	a4,s3,80003034 <consoleread+0x130>
    80002f8c:	00100693          	li	a3,1
    80002f90:	f9f40613          	addi	a2,s0,-97
    80002f94:	000c0593          	mv	a1,s8
    80002f98:	00090513          	mv	a0,s2
    80002f9c:	f8e40fa3          	sb	a4,-97(s0)
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	8b8080e7          	jalr	-1864(ra) # 80002858 <either_copyout>
    80002fa8:	01450863          	beq	a0,s4,80002fb8 <consoleread+0xb4>
    80002fac:	001c0c13          	addi	s8,s8,1
    80002fb0:	fffb8b9b          	addiw	s7,s7,-1
    80002fb4:	fb5c94e3          	bne	s9,s5,80002f5c <consoleread+0x58>
    80002fb8:	000b851b          	sext.w	a0,s7
    80002fbc:	06813083          	ld	ra,104(sp)
    80002fc0:	06013403          	ld	s0,96(sp)
    80002fc4:	05813483          	ld	s1,88(sp)
    80002fc8:	05013903          	ld	s2,80(sp)
    80002fcc:	04813983          	ld	s3,72(sp)
    80002fd0:	04013a03          	ld	s4,64(sp)
    80002fd4:	03813a83          	ld	s5,56(sp)
    80002fd8:	02813b83          	ld	s7,40(sp)
    80002fdc:	02013c03          	ld	s8,32(sp)
    80002fe0:	01813c83          	ld	s9,24(sp)
    80002fe4:	40ab053b          	subw	a0,s6,a0
    80002fe8:	03013b03          	ld	s6,48(sp)
    80002fec:	07010113          	addi	sp,sp,112
    80002ff0:	00008067          	ret
    80002ff4:	00001097          	auipc	ra,0x1
    80002ff8:	1d8080e7          	jalr	472(ra) # 800041cc <push_on>
    80002ffc:	0984a703          	lw	a4,152(s1)
    80003000:	09c4a783          	lw	a5,156(s1)
    80003004:	0007879b          	sext.w	a5,a5
    80003008:	fef70ce3          	beq	a4,a5,80003000 <consoleread+0xfc>
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	234080e7          	jalr	564(ra) # 80004240 <pop_on>
    80003014:	0984a783          	lw	a5,152(s1)
    80003018:	07f7f713          	andi	a4,a5,127
    8000301c:	00e48733          	add	a4,s1,a4
    80003020:	01874703          	lbu	a4,24(a4)
    80003024:	0017869b          	addiw	a3,a5,1
    80003028:	08d4ac23          	sw	a3,152(s1)
    8000302c:	00070c9b          	sext.w	s9,a4
    80003030:	f5371ee3          	bne	a4,s3,80002f8c <consoleread+0x88>
    80003034:	000b851b          	sext.w	a0,s7
    80003038:	f96bf2e3          	bgeu	s7,s6,80002fbc <consoleread+0xb8>
    8000303c:	08f4ac23          	sw	a5,152(s1)
    80003040:	f7dff06f          	j	80002fbc <consoleread+0xb8>

0000000080003044 <consputc>:
    80003044:	10000793          	li	a5,256
    80003048:	00f50663          	beq	a0,a5,80003054 <consputc+0x10>
    8000304c:	00001317          	auipc	t1,0x1
    80003050:	9f430067          	jr	-1548(t1) # 80003a40 <uartputc_sync>
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00113423          	sd	ra,8(sp)
    8000305c:	00813023          	sd	s0,0(sp)
    80003060:	01010413          	addi	s0,sp,16
    80003064:	00800513          	li	a0,8
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	9d8080e7          	jalr	-1576(ra) # 80003a40 <uartputc_sync>
    80003070:	02000513          	li	a0,32
    80003074:	00001097          	auipc	ra,0x1
    80003078:	9cc080e7          	jalr	-1588(ra) # 80003a40 <uartputc_sync>
    8000307c:	00013403          	ld	s0,0(sp)
    80003080:	00813083          	ld	ra,8(sp)
    80003084:	00800513          	li	a0,8
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00001317          	auipc	t1,0x1
    80003090:	9b430067          	jr	-1612(t1) # 80003a40 <uartputc_sync>

0000000080003094 <consoleintr>:
    80003094:	fe010113          	addi	sp,sp,-32
    80003098:	00813823          	sd	s0,16(sp)
    8000309c:	00913423          	sd	s1,8(sp)
    800030a0:	01213023          	sd	s2,0(sp)
    800030a4:	00113c23          	sd	ra,24(sp)
    800030a8:	02010413          	addi	s0,sp,32
    800030ac:	00004917          	auipc	s2,0x4
    800030b0:	c8c90913          	addi	s2,s2,-884 # 80006d38 <cons>
    800030b4:	00050493          	mv	s1,a0
    800030b8:	00090513          	mv	a0,s2
    800030bc:	00001097          	auipc	ra,0x1
    800030c0:	e40080e7          	jalr	-448(ra) # 80003efc <acquire>
    800030c4:	02048c63          	beqz	s1,800030fc <consoleintr+0x68>
    800030c8:	0a092783          	lw	a5,160(s2)
    800030cc:	09892703          	lw	a4,152(s2)
    800030d0:	07f00693          	li	a3,127
    800030d4:	40e7873b          	subw	a4,a5,a4
    800030d8:	02e6e263          	bltu	a3,a4,800030fc <consoleintr+0x68>
    800030dc:	00d00713          	li	a4,13
    800030e0:	04e48063          	beq	s1,a4,80003120 <consoleintr+0x8c>
    800030e4:	07f7f713          	andi	a4,a5,127
    800030e8:	00e90733          	add	a4,s2,a4
    800030ec:	0017879b          	addiw	a5,a5,1
    800030f0:	0af92023          	sw	a5,160(s2)
    800030f4:	00970c23          	sb	s1,24(a4)
    800030f8:	08f92e23          	sw	a5,156(s2)
    800030fc:	01013403          	ld	s0,16(sp)
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	00013903          	ld	s2,0(sp)
    8000310c:	00004517          	auipc	a0,0x4
    80003110:	c2c50513          	addi	a0,a0,-980 # 80006d38 <cons>
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00001317          	auipc	t1,0x1
    8000311c:	eb030067          	jr	-336(t1) # 80003fc8 <release>
    80003120:	00a00493          	li	s1,10
    80003124:	fc1ff06f          	j	800030e4 <consoleintr+0x50>

0000000080003128 <consoleinit>:
    80003128:	fe010113          	addi	sp,sp,-32
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	02010413          	addi	s0,sp,32
    8000313c:	00004497          	auipc	s1,0x4
    80003140:	bfc48493          	addi	s1,s1,-1028 # 80006d38 <cons>
    80003144:	00048513          	mv	a0,s1
    80003148:	00002597          	auipc	a1,0x2
    8000314c:	0b858593          	addi	a1,a1,184 # 80005200 <_ZZ12printIntegermE6digits+0x138>
    80003150:	00001097          	auipc	ra,0x1
    80003154:	d88080e7          	jalr	-632(ra) # 80003ed8 <initlock>
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	7ac080e7          	jalr	1964(ra) # 80003904 <uartinit>
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00000797          	auipc	a5,0x0
    8000316c:	d9c78793          	addi	a5,a5,-612 # 80002f04 <consoleread>
    80003170:	0af4bc23          	sd	a5,184(s1)
    80003174:	00000797          	auipc	a5,0x0
    80003178:	cec78793          	addi	a5,a5,-788 # 80002e60 <consolewrite>
    8000317c:	0cf4b023          	sd	a5,192(s1)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret

000000008000318c <console_read>:
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	00004317          	auipc	t1,0x4
    800031a0:	c5433303          	ld	t1,-940(t1) # 80006df0 <devsw+0x10>
    800031a4:	01010113          	addi	sp,sp,16
    800031a8:	00030067          	jr	t1

00000000800031ac <console_write>:
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00813423          	sd	s0,8(sp)
    800031b4:	01010413          	addi	s0,sp,16
    800031b8:	00813403          	ld	s0,8(sp)
    800031bc:	00004317          	auipc	t1,0x4
    800031c0:	c3c33303          	ld	t1,-964(t1) # 80006df8 <devsw+0x18>
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00030067          	jr	t1

00000000800031cc <panic>:
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00113c23          	sd	ra,24(sp)
    800031d4:	00813823          	sd	s0,16(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	02010413          	addi	s0,sp,32
    800031e0:	00050493          	mv	s1,a0
    800031e4:	00002517          	auipc	a0,0x2
    800031e8:	02450513          	addi	a0,a0,36 # 80005208 <_ZZ12printIntegermE6digits+0x140>
    800031ec:	00004797          	auipc	a5,0x4
    800031f0:	ca07a623          	sw	zero,-852(a5) # 80006e98 <pr+0x18>
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	034080e7          	jalr	52(ra) # 80003228 <__printf>
    800031fc:	00048513          	mv	a0,s1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	028080e7          	jalr	40(ra) # 80003228 <__printf>
    80003208:	00002517          	auipc	a0,0x2
    8000320c:	fe050513          	addi	a0,a0,-32 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	018080e7          	jalr	24(ra) # 80003228 <__printf>
    80003218:	00100793          	li	a5,1
    8000321c:	00003717          	auipc	a4,0x3
    80003220:	9cf72e23          	sw	a5,-1572(a4) # 80005bf8 <panicked>
    80003224:	0000006f          	j	80003224 <panic+0x58>

0000000080003228 <__printf>:
    80003228:	f3010113          	addi	sp,sp,-208
    8000322c:	08813023          	sd	s0,128(sp)
    80003230:	07313423          	sd	s3,104(sp)
    80003234:	09010413          	addi	s0,sp,144
    80003238:	05813023          	sd	s8,64(sp)
    8000323c:	08113423          	sd	ra,136(sp)
    80003240:	06913c23          	sd	s1,120(sp)
    80003244:	07213823          	sd	s2,112(sp)
    80003248:	07413023          	sd	s4,96(sp)
    8000324c:	05513c23          	sd	s5,88(sp)
    80003250:	05613823          	sd	s6,80(sp)
    80003254:	05713423          	sd	s7,72(sp)
    80003258:	03913c23          	sd	s9,56(sp)
    8000325c:	03a13823          	sd	s10,48(sp)
    80003260:	03b13423          	sd	s11,40(sp)
    80003264:	00004317          	auipc	t1,0x4
    80003268:	c1c30313          	addi	t1,t1,-996 # 80006e80 <pr>
    8000326c:	01832c03          	lw	s8,24(t1)
    80003270:	00b43423          	sd	a1,8(s0)
    80003274:	00c43823          	sd	a2,16(s0)
    80003278:	00d43c23          	sd	a3,24(s0)
    8000327c:	02e43023          	sd	a4,32(s0)
    80003280:	02f43423          	sd	a5,40(s0)
    80003284:	03043823          	sd	a6,48(s0)
    80003288:	03143c23          	sd	a7,56(s0)
    8000328c:	00050993          	mv	s3,a0
    80003290:	4a0c1663          	bnez	s8,8000373c <__printf+0x514>
    80003294:	60098c63          	beqz	s3,800038ac <__printf+0x684>
    80003298:	0009c503          	lbu	a0,0(s3)
    8000329c:	00840793          	addi	a5,s0,8
    800032a0:	f6f43c23          	sd	a5,-136(s0)
    800032a4:	00000493          	li	s1,0
    800032a8:	22050063          	beqz	a0,800034c8 <__printf+0x2a0>
    800032ac:	00002a37          	lui	s4,0x2
    800032b0:	00018ab7          	lui	s5,0x18
    800032b4:	000f4b37          	lui	s6,0xf4
    800032b8:	00989bb7          	lui	s7,0x989
    800032bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800032c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800032c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800032c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800032cc:	00148c9b          	addiw	s9,s1,1
    800032d0:	02500793          	li	a5,37
    800032d4:	01998933          	add	s2,s3,s9
    800032d8:	38f51263          	bne	a0,a5,8000365c <__printf+0x434>
    800032dc:	00094783          	lbu	a5,0(s2)
    800032e0:	00078c9b          	sext.w	s9,a5
    800032e4:	1e078263          	beqz	a5,800034c8 <__printf+0x2a0>
    800032e8:	0024849b          	addiw	s1,s1,2
    800032ec:	07000713          	li	a4,112
    800032f0:	00998933          	add	s2,s3,s1
    800032f4:	38e78a63          	beq	a5,a4,80003688 <__printf+0x460>
    800032f8:	20f76863          	bltu	a4,a5,80003508 <__printf+0x2e0>
    800032fc:	42a78863          	beq	a5,a0,8000372c <__printf+0x504>
    80003300:	06400713          	li	a4,100
    80003304:	40e79663          	bne	a5,a4,80003710 <__printf+0x4e8>
    80003308:	f7843783          	ld	a5,-136(s0)
    8000330c:	0007a603          	lw	a2,0(a5)
    80003310:	00878793          	addi	a5,a5,8
    80003314:	f6f43c23          	sd	a5,-136(s0)
    80003318:	42064a63          	bltz	a2,8000374c <__printf+0x524>
    8000331c:	00a00713          	li	a4,10
    80003320:	02e677bb          	remuw	a5,a2,a4
    80003324:	00002d97          	auipc	s11,0x2
    80003328:	f0cd8d93          	addi	s11,s11,-244 # 80005230 <digits>
    8000332c:	00900593          	li	a1,9
    80003330:	0006051b          	sext.w	a0,a2
    80003334:	00000c93          	li	s9,0
    80003338:	02079793          	slli	a5,a5,0x20
    8000333c:	0207d793          	srli	a5,a5,0x20
    80003340:	00fd87b3          	add	a5,s11,a5
    80003344:	0007c783          	lbu	a5,0(a5)
    80003348:	02e656bb          	divuw	a3,a2,a4
    8000334c:	f8f40023          	sb	a5,-128(s0)
    80003350:	14c5d863          	bge	a1,a2,800034a0 <__printf+0x278>
    80003354:	06300593          	li	a1,99
    80003358:	00100c93          	li	s9,1
    8000335c:	02e6f7bb          	remuw	a5,a3,a4
    80003360:	02079793          	slli	a5,a5,0x20
    80003364:	0207d793          	srli	a5,a5,0x20
    80003368:	00fd87b3          	add	a5,s11,a5
    8000336c:	0007c783          	lbu	a5,0(a5)
    80003370:	02e6d73b          	divuw	a4,a3,a4
    80003374:	f8f400a3          	sb	a5,-127(s0)
    80003378:	12a5f463          	bgeu	a1,a0,800034a0 <__printf+0x278>
    8000337c:	00a00693          	li	a3,10
    80003380:	00900593          	li	a1,9
    80003384:	02d777bb          	remuw	a5,a4,a3
    80003388:	02079793          	slli	a5,a5,0x20
    8000338c:	0207d793          	srli	a5,a5,0x20
    80003390:	00fd87b3          	add	a5,s11,a5
    80003394:	0007c503          	lbu	a0,0(a5)
    80003398:	02d757bb          	divuw	a5,a4,a3
    8000339c:	f8a40123          	sb	a0,-126(s0)
    800033a0:	48e5f263          	bgeu	a1,a4,80003824 <__printf+0x5fc>
    800033a4:	06300513          	li	a0,99
    800033a8:	02d7f5bb          	remuw	a1,a5,a3
    800033ac:	02059593          	slli	a1,a1,0x20
    800033b0:	0205d593          	srli	a1,a1,0x20
    800033b4:	00bd85b3          	add	a1,s11,a1
    800033b8:	0005c583          	lbu	a1,0(a1)
    800033bc:	02d7d7bb          	divuw	a5,a5,a3
    800033c0:	f8b401a3          	sb	a1,-125(s0)
    800033c4:	48e57263          	bgeu	a0,a4,80003848 <__printf+0x620>
    800033c8:	3e700513          	li	a0,999
    800033cc:	02d7f5bb          	remuw	a1,a5,a3
    800033d0:	02059593          	slli	a1,a1,0x20
    800033d4:	0205d593          	srli	a1,a1,0x20
    800033d8:	00bd85b3          	add	a1,s11,a1
    800033dc:	0005c583          	lbu	a1,0(a1)
    800033e0:	02d7d7bb          	divuw	a5,a5,a3
    800033e4:	f8b40223          	sb	a1,-124(s0)
    800033e8:	46e57663          	bgeu	a0,a4,80003854 <__printf+0x62c>
    800033ec:	02d7f5bb          	remuw	a1,a5,a3
    800033f0:	02059593          	slli	a1,a1,0x20
    800033f4:	0205d593          	srli	a1,a1,0x20
    800033f8:	00bd85b3          	add	a1,s11,a1
    800033fc:	0005c583          	lbu	a1,0(a1)
    80003400:	02d7d7bb          	divuw	a5,a5,a3
    80003404:	f8b402a3          	sb	a1,-123(s0)
    80003408:	46ea7863          	bgeu	s4,a4,80003878 <__printf+0x650>
    8000340c:	02d7f5bb          	remuw	a1,a5,a3
    80003410:	02059593          	slli	a1,a1,0x20
    80003414:	0205d593          	srli	a1,a1,0x20
    80003418:	00bd85b3          	add	a1,s11,a1
    8000341c:	0005c583          	lbu	a1,0(a1)
    80003420:	02d7d7bb          	divuw	a5,a5,a3
    80003424:	f8b40323          	sb	a1,-122(s0)
    80003428:	3eeaf863          	bgeu	s5,a4,80003818 <__printf+0x5f0>
    8000342c:	02d7f5bb          	remuw	a1,a5,a3
    80003430:	02059593          	slli	a1,a1,0x20
    80003434:	0205d593          	srli	a1,a1,0x20
    80003438:	00bd85b3          	add	a1,s11,a1
    8000343c:	0005c583          	lbu	a1,0(a1)
    80003440:	02d7d7bb          	divuw	a5,a5,a3
    80003444:	f8b403a3          	sb	a1,-121(s0)
    80003448:	42eb7e63          	bgeu	s6,a4,80003884 <__printf+0x65c>
    8000344c:	02d7f5bb          	remuw	a1,a5,a3
    80003450:	02059593          	slli	a1,a1,0x20
    80003454:	0205d593          	srli	a1,a1,0x20
    80003458:	00bd85b3          	add	a1,s11,a1
    8000345c:	0005c583          	lbu	a1,0(a1)
    80003460:	02d7d7bb          	divuw	a5,a5,a3
    80003464:	f8b40423          	sb	a1,-120(s0)
    80003468:	42ebfc63          	bgeu	s7,a4,800038a0 <__printf+0x678>
    8000346c:	02079793          	slli	a5,a5,0x20
    80003470:	0207d793          	srli	a5,a5,0x20
    80003474:	00fd8db3          	add	s11,s11,a5
    80003478:	000dc703          	lbu	a4,0(s11)
    8000347c:	00a00793          	li	a5,10
    80003480:	00900c93          	li	s9,9
    80003484:	f8e404a3          	sb	a4,-119(s0)
    80003488:	00065c63          	bgez	a2,800034a0 <__printf+0x278>
    8000348c:	f9040713          	addi	a4,s0,-112
    80003490:	00f70733          	add	a4,a4,a5
    80003494:	02d00693          	li	a3,45
    80003498:	fed70823          	sb	a3,-16(a4)
    8000349c:	00078c93          	mv	s9,a5
    800034a0:	f8040793          	addi	a5,s0,-128
    800034a4:	01978cb3          	add	s9,a5,s9
    800034a8:	f7f40d13          	addi	s10,s0,-129
    800034ac:	000cc503          	lbu	a0,0(s9)
    800034b0:	fffc8c93          	addi	s9,s9,-1
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	b90080e7          	jalr	-1136(ra) # 80003044 <consputc>
    800034bc:	ffac98e3          	bne	s9,s10,800034ac <__printf+0x284>
    800034c0:	00094503          	lbu	a0,0(s2)
    800034c4:	e00514e3          	bnez	a0,800032cc <__printf+0xa4>
    800034c8:	1a0c1663          	bnez	s8,80003674 <__printf+0x44c>
    800034cc:	08813083          	ld	ra,136(sp)
    800034d0:	08013403          	ld	s0,128(sp)
    800034d4:	07813483          	ld	s1,120(sp)
    800034d8:	07013903          	ld	s2,112(sp)
    800034dc:	06813983          	ld	s3,104(sp)
    800034e0:	06013a03          	ld	s4,96(sp)
    800034e4:	05813a83          	ld	s5,88(sp)
    800034e8:	05013b03          	ld	s6,80(sp)
    800034ec:	04813b83          	ld	s7,72(sp)
    800034f0:	04013c03          	ld	s8,64(sp)
    800034f4:	03813c83          	ld	s9,56(sp)
    800034f8:	03013d03          	ld	s10,48(sp)
    800034fc:	02813d83          	ld	s11,40(sp)
    80003500:	0d010113          	addi	sp,sp,208
    80003504:	00008067          	ret
    80003508:	07300713          	li	a4,115
    8000350c:	1ce78a63          	beq	a5,a4,800036e0 <__printf+0x4b8>
    80003510:	07800713          	li	a4,120
    80003514:	1ee79e63          	bne	a5,a4,80003710 <__printf+0x4e8>
    80003518:	f7843783          	ld	a5,-136(s0)
    8000351c:	0007a703          	lw	a4,0(a5)
    80003520:	00878793          	addi	a5,a5,8
    80003524:	f6f43c23          	sd	a5,-136(s0)
    80003528:	28074263          	bltz	a4,800037ac <__printf+0x584>
    8000352c:	00002d97          	auipc	s11,0x2
    80003530:	d04d8d93          	addi	s11,s11,-764 # 80005230 <digits>
    80003534:	00f77793          	andi	a5,a4,15
    80003538:	00fd87b3          	add	a5,s11,a5
    8000353c:	0007c683          	lbu	a3,0(a5)
    80003540:	00f00613          	li	a2,15
    80003544:	0007079b          	sext.w	a5,a4
    80003548:	f8d40023          	sb	a3,-128(s0)
    8000354c:	0047559b          	srliw	a1,a4,0x4
    80003550:	0047569b          	srliw	a3,a4,0x4
    80003554:	00000c93          	li	s9,0
    80003558:	0ee65063          	bge	a2,a4,80003638 <__printf+0x410>
    8000355c:	00f6f693          	andi	a3,a3,15
    80003560:	00dd86b3          	add	a3,s11,a3
    80003564:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003568:	0087d79b          	srliw	a5,a5,0x8
    8000356c:	00100c93          	li	s9,1
    80003570:	f8d400a3          	sb	a3,-127(s0)
    80003574:	0cb67263          	bgeu	a2,a1,80003638 <__printf+0x410>
    80003578:	00f7f693          	andi	a3,a5,15
    8000357c:	00dd86b3          	add	a3,s11,a3
    80003580:	0006c583          	lbu	a1,0(a3)
    80003584:	00f00613          	li	a2,15
    80003588:	0047d69b          	srliw	a3,a5,0x4
    8000358c:	f8b40123          	sb	a1,-126(s0)
    80003590:	0047d593          	srli	a1,a5,0x4
    80003594:	28f67e63          	bgeu	a2,a5,80003830 <__printf+0x608>
    80003598:	00f6f693          	andi	a3,a3,15
    8000359c:	00dd86b3          	add	a3,s11,a3
    800035a0:	0006c503          	lbu	a0,0(a3)
    800035a4:	0087d813          	srli	a6,a5,0x8
    800035a8:	0087d69b          	srliw	a3,a5,0x8
    800035ac:	f8a401a3          	sb	a0,-125(s0)
    800035b0:	28b67663          	bgeu	a2,a1,8000383c <__printf+0x614>
    800035b4:	00f6f693          	andi	a3,a3,15
    800035b8:	00dd86b3          	add	a3,s11,a3
    800035bc:	0006c583          	lbu	a1,0(a3)
    800035c0:	00c7d513          	srli	a0,a5,0xc
    800035c4:	00c7d69b          	srliw	a3,a5,0xc
    800035c8:	f8b40223          	sb	a1,-124(s0)
    800035cc:	29067a63          	bgeu	a2,a6,80003860 <__printf+0x638>
    800035d0:	00f6f693          	andi	a3,a3,15
    800035d4:	00dd86b3          	add	a3,s11,a3
    800035d8:	0006c583          	lbu	a1,0(a3)
    800035dc:	0107d813          	srli	a6,a5,0x10
    800035e0:	0107d69b          	srliw	a3,a5,0x10
    800035e4:	f8b402a3          	sb	a1,-123(s0)
    800035e8:	28a67263          	bgeu	a2,a0,8000386c <__printf+0x644>
    800035ec:	00f6f693          	andi	a3,a3,15
    800035f0:	00dd86b3          	add	a3,s11,a3
    800035f4:	0006c683          	lbu	a3,0(a3)
    800035f8:	0147d79b          	srliw	a5,a5,0x14
    800035fc:	f8d40323          	sb	a3,-122(s0)
    80003600:	21067663          	bgeu	a2,a6,8000380c <__printf+0x5e4>
    80003604:	02079793          	slli	a5,a5,0x20
    80003608:	0207d793          	srli	a5,a5,0x20
    8000360c:	00fd8db3          	add	s11,s11,a5
    80003610:	000dc683          	lbu	a3,0(s11)
    80003614:	00800793          	li	a5,8
    80003618:	00700c93          	li	s9,7
    8000361c:	f8d403a3          	sb	a3,-121(s0)
    80003620:	00075c63          	bgez	a4,80003638 <__printf+0x410>
    80003624:	f9040713          	addi	a4,s0,-112
    80003628:	00f70733          	add	a4,a4,a5
    8000362c:	02d00693          	li	a3,45
    80003630:	fed70823          	sb	a3,-16(a4)
    80003634:	00078c93          	mv	s9,a5
    80003638:	f8040793          	addi	a5,s0,-128
    8000363c:	01978cb3          	add	s9,a5,s9
    80003640:	f7f40d13          	addi	s10,s0,-129
    80003644:	000cc503          	lbu	a0,0(s9)
    80003648:	fffc8c93          	addi	s9,s9,-1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	9f8080e7          	jalr	-1544(ra) # 80003044 <consputc>
    80003654:	ff9d18e3          	bne	s10,s9,80003644 <__printf+0x41c>
    80003658:	0100006f          	j	80003668 <__printf+0x440>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	9e8080e7          	jalr	-1560(ra) # 80003044 <consputc>
    80003664:	000c8493          	mv	s1,s9
    80003668:	00094503          	lbu	a0,0(s2)
    8000366c:	c60510e3          	bnez	a0,800032cc <__printf+0xa4>
    80003670:	e40c0ee3          	beqz	s8,800034cc <__printf+0x2a4>
    80003674:	00004517          	auipc	a0,0x4
    80003678:	80c50513          	addi	a0,a0,-2036 # 80006e80 <pr>
    8000367c:	00001097          	auipc	ra,0x1
    80003680:	94c080e7          	jalr	-1716(ra) # 80003fc8 <release>
    80003684:	e49ff06f          	j	800034cc <__printf+0x2a4>
    80003688:	f7843783          	ld	a5,-136(s0)
    8000368c:	03000513          	li	a0,48
    80003690:	01000d13          	li	s10,16
    80003694:	00878713          	addi	a4,a5,8
    80003698:	0007bc83          	ld	s9,0(a5)
    8000369c:	f6e43c23          	sd	a4,-136(s0)
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	9a4080e7          	jalr	-1628(ra) # 80003044 <consputc>
    800036a8:	07800513          	li	a0,120
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	998080e7          	jalr	-1640(ra) # 80003044 <consputc>
    800036b4:	00002d97          	auipc	s11,0x2
    800036b8:	b7cd8d93          	addi	s11,s11,-1156 # 80005230 <digits>
    800036bc:	03ccd793          	srli	a5,s9,0x3c
    800036c0:	00fd87b3          	add	a5,s11,a5
    800036c4:	0007c503          	lbu	a0,0(a5)
    800036c8:	fffd0d1b          	addiw	s10,s10,-1
    800036cc:	004c9c93          	slli	s9,s9,0x4
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	974080e7          	jalr	-1676(ra) # 80003044 <consputc>
    800036d8:	fe0d12e3          	bnez	s10,800036bc <__printf+0x494>
    800036dc:	f8dff06f          	j	80003668 <__printf+0x440>
    800036e0:	f7843783          	ld	a5,-136(s0)
    800036e4:	0007bc83          	ld	s9,0(a5)
    800036e8:	00878793          	addi	a5,a5,8
    800036ec:	f6f43c23          	sd	a5,-136(s0)
    800036f0:	000c9a63          	bnez	s9,80003704 <__printf+0x4dc>
    800036f4:	1080006f          	j	800037fc <__printf+0x5d4>
    800036f8:	001c8c93          	addi	s9,s9,1
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	948080e7          	jalr	-1720(ra) # 80003044 <consputc>
    80003704:	000cc503          	lbu	a0,0(s9)
    80003708:	fe0518e3          	bnez	a0,800036f8 <__printf+0x4d0>
    8000370c:	f5dff06f          	j	80003668 <__printf+0x440>
    80003710:	02500513          	li	a0,37
    80003714:	00000097          	auipc	ra,0x0
    80003718:	930080e7          	jalr	-1744(ra) # 80003044 <consputc>
    8000371c:	000c8513          	mv	a0,s9
    80003720:	00000097          	auipc	ra,0x0
    80003724:	924080e7          	jalr	-1756(ra) # 80003044 <consputc>
    80003728:	f41ff06f          	j	80003668 <__printf+0x440>
    8000372c:	02500513          	li	a0,37
    80003730:	00000097          	auipc	ra,0x0
    80003734:	914080e7          	jalr	-1772(ra) # 80003044 <consputc>
    80003738:	f31ff06f          	j	80003668 <__printf+0x440>
    8000373c:	00030513          	mv	a0,t1
    80003740:	00000097          	auipc	ra,0x0
    80003744:	7bc080e7          	jalr	1980(ra) # 80003efc <acquire>
    80003748:	b4dff06f          	j	80003294 <__printf+0x6c>
    8000374c:	40c0053b          	negw	a0,a2
    80003750:	00a00713          	li	a4,10
    80003754:	02e576bb          	remuw	a3,a0,a4
    80003758:	00002d97          	auipc	s11,0x2
    8000375c:	ad8d8d93          	addi	s11,s11,-1320 # 80005230 <digits>
    80003760:	ff700593          	li	a1,-9
    80003764:	02069693          	slli	a3,a3,0x20
    80003768:	0206d693          	srli	a3,a3,0x20
    8000376c:	00dd86b3          	add	a3,s11,a3
    80003770:	0006c683          	lbu	a3,0(a3)
    80003774:	02e557bb          	divuw	a5,a0,a4
    80003778:	f8d40023          	sb	a3,-128(s0)
    8000377c:	10b65e63          	bge	a2,a1,80003898 <__printf+0x670>
    80003780:	06300593          	li	a1,99
    80003784:	02e7f6bb          	remuw	a3,a5,a4
    80003788:	02069693          	slli	a3,a3,0x20
    8000378c:	0206d693          	srli	a3,a3,0x20
    80003790:	00dd86b3          	add	a3,s11,a3
    80003794:	0006c683          	lbu	a3,0(a3)
    80003798:	02e7d73b          	divuw	a4,a5,a4
    8000379c:	00200793          	li	a5,2
    800037a0:	f8d400a3          	sb	a3,-127(s0)
    800037a4:	bca5ece3          	bltu	a1,a0,8000337c <__printf+0x154>
    800037a8:	ce5ff06f          	j	8000348c <__printf+0x264>
    800037ac:	40e007bb          	negw	a5,a4
    800037b0:	00002d97          	auipc	s11,0x2
    800037b4:	a80d8d93          	addi	s11,s11,-1408 # 80005230 <digits>
    800037b8:	00f7f693          	andi	a3,a5,15
    800037bc:	00dd86b3          	add	a3,s11,a3
    800037c0:	0006c583          	lbu	a1,0(a3)
    800037c4:	ff100613          	li	a2,-15
    800037c8:	0047d69b          	srliw	a3,a5,0x4
    800037cc:	f8b40023          	sb	a1,-128(s0)
    800037d0:	0047d59b          	srliw	a1,a5,0x4
    800037d4:	0ac75e63          	bge	a4,a2,80003890 <__printf+0x668>
    800037d8:	00f6f693          	andi	a3,a3,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c603          	lbu	a2,0(a3)
    800037e4:	00f00693          	li	a3,15
    800037e8:	0087d79b          	srliw	a5,a5,0x8
    800037ec:	f8c400a3          	sb	a2,-127(s0)
    800037f0:	d8b6e4e3          	bltu	a3,a1,80003578 <__printf+0x350>
    800037f4:	00200793          	li	a5,2
    800037f8:	e2dff06f          	j	80003624 <__printf+0x3fc>
    800037fc:	00002c97          	auipc	s9,0x2
    80003800:	a14c8c93          	addi	s9,s9,-1516 # 80005210 <_ZZ12printIntegermE6digits+0x148>
    80003804:	02800513          	li	a0,40
    80003808:	ef1ff06f          	j	800036f8 <__printf+0x4d0>
    8000380c:	00700793          	li	a5,7
    80003810:	00600c93          	li	s9,6
    80003814:	e0dff06f          	j	80003620 <__printf+0x3f8>
    80003818:	00700793          	li	a5,7
    8000381c:	00600c93          	li	s9,6
    80003820:	c69ff06f          	j	80003488 <__printf+0x260>
    80003824:	00300793          	li	a5,3
    80003828:	00200c93          	li	s9,2
    8000382c:	c5dff06f          	j	80003488 <__printf+0x260>
    80003830:	00300793          	li	a5,3
    80003834:	00200c93          	li	s9,2
    80003838:	de9ff06f          	j	80003620 <__printf+0x3f8>
    8000383c:	00400793          	li	a5,4
    80003840:	00300c93          	li	s9,3
    80003844:	dddff06f          	j	80003620 <__printf+0x3f8>
    80003848:	00400793          	li	a5,4
    8000384c:	00300c93          	li	s9,3
    80003850:	c39ff06f          	j	80003488 <__printf+0x260>
    80003854:	00500793          	li	a5,5
    80003858:	00400c93          	li	s9,4
    8000385c:	c2dff06f          	j	80003488 <__printf+0x260>
    80003860:	00500793          	li	a5,5
    80003864:	00400c93          	li	s9,4
    80003868:	db9ff06f          	j	80003620 <__printf+0x3f8>
    8000386c:	00600793          	li	a5,6
    80003870:	00500c93          	li	s9,5
    80003874:	dadff06f          	j	80003620 <__printf+0x3f8>
    80003878:	00600793          	li	a5,6
    8000387c:	00500c93          	li	s9,5
    80003880:	c09ff06f          	j	80003488 <__printf+0x260>
    80003884:	00800793          	li	a5,8
    80003888:	00700c93          	li	s9,7
    8000388c:	bfdff06f          	j	80003488 <__printf+0x260>
    80003890:	00100793          	li	a5,1
    80003894:	d91ff06f          	j	80003624 <__printf+0x3fc>
    80003898:	00100793          	li	a5,1
    8000389c:	bf1ff06f          	j	8000348c <__printf+0x264>
    800038a0:	00900793          	li	a5,9
    800038a4:	00800c93          	li	s9,8
    800038a8:	be1ff06f          	j	80003488 <__printf+0x260>
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	96c50513          	addi	a0,a0,-1684 # 80005218 <_ZZ12printIntegermE6digits+0x150>
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	918080e7          	jalr	-1768(ra) # 800031cc <panic>

00000000800038bc <printfinit>:
    800038bc:	fe010113          	addi	sp,sp,-32
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	02010413          	addi	s0,sp,32
    800038d0:	00003497          	auipc	s1,0x3
    800038d4:	5b048493          	addi	s1,s1,1456 # 80006e80 <pr>
    800038d8:	00048513          	mv	a0,s1
    800038dc:	00002597          	auipc	a1,0x2
    800038e0:	94c58593          	addi	a1,a1,-1716 # 80005228 <_ZZ12printIntegermE6digits+0x160>
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	5f4080e7          	jalr	1524(ra) # 80003ed8 <initlock>
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	0004ac23          	sw	zero,24(s1)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <uartinit>:
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00813423          	sd	s0,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	100007b7          	lui	a5,0x10000
    80003914:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003918:	f8000713          	li	a4,-128
    8000391c:	00e781a3          	sb	a4,3(a5)
    80003920:	00300713          	li	a4,3
    80003924:	00e78023          	sb	a4,0(a5)
    80003928:	000780a3          	sb	zero,1(a5)
    8000392c:	00e781a3          	sb	a4,3(a5)
    80003930:	00700693          	li	a3,7
    80003934:	00d78123          	sb	a3,2(a5)
    80003938:	00e780a3          	sb	a4,1(a5)
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret

0000000080003948 <uartputc>:
    80003948:	00002797          	auipc	a5,0x2
    8000394c:	2b07a783          	lw	a5,688(a5) # 80005bf8 <panicked>
    80003950:	00078463          	beqz	a5,80003958 <uartputc+0x10>
    80003954:	0000006f          	j	80003954 <uartputc+0xc>
    80003958:	fd010113          	addi	sp,sp,-48
    8000395c:	02813023          	sd	s0,32(sp)
    80003960:	00913c23          	sd	s1,24(sp)
    80003964:	01213823          	sd	s2,16(sp)
    80003968:	01313423          	sd	s3,8(sp)
    8000396c:	02113423          	sd	ra,40(sp)
    80003970:	03010413          	addi	s0,sp,48
    80003974:	00002917          	auipc	s2,0x2
    80003978:	28c90913          	addi	s2,s2,652 # 80005c00 <uart_tx_r>
    8000397c:	00093783          	ld	a5,0(s2)
    80003980:	00002497          	auipc	s1,0x2
    80003984:	28848493          	addi	s1,s1,648 # 80005c08 <uart_tx_w>
    80003988:	0004b703          	ld	a4,0(s1)
    8000398c:	02078693          	addi	a3,a5,32
    80003990:	00050993          	mv	s3,a0
    80003994:	02e69c63          	bne	a3,a4,800039cc <uartputc+0x84>
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	834080e7          	jalr	-1996(ra) # 800041cc <push_on>
    800039a0:	00093783          	ld	a5,0(s2)
    800039a4:	0004b703          	ld	a4,0(s1)
    800039a8:	02078793          	addi	a5,a5,32
    800039ac:	00e79463          	bne	a5,a4,800039b4 <uartputc+0x6c>
    800039b0:	0000006f          	j	800039b0 <uartputc+0x68>
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	88c080e7          	jalr	-1908(ra) # 80004240 <pop_on>
    800039bc:	00093783          	ld	a5,0(s2)
    800039c0:	0004b703          	ld	a4,0(s1)
    800039c4:	02078693          	addi	a3,a5,32
    800039c8:	fce688e3          	beq	a3,a4,80003998 <uartputc+0x50>
    800039cc:	01f77693          	andi	a3,a4,31
    800039d0:	00003597          	auipc	a1,0x3
    800039d4:	4d058593          	addi	a1,a1,1232 # 80006ea0 <uart_tx_buf>
    800039d8:	00d586b3          	add	a3,a1,a3
    800039dc:	00170713          	addi	a4,a4,1
    800039e0:	01368023          	sb	s3,0(a3)
    800039e4:	00e4b023          	sd	a4,0(s1)
    800039e8:	10000637          	lui	a2,0x10000
    800039ec:	02f71063          	bne	a4,a5,80003a0c <uartputc+0xc4>
    800039f0:	0340006f          	j	80003a24 <uartputc+0xdc>
    800039f4:	00074703          	lbu	a4,0(a4)
    800039f8:	00f93023          	sd	a5,0(s2)
    800039fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003a00:	00093783          	ld	a5,0(s2)
    80003a04:	0004b703          	ld	a4,0(s1)
    80003a08:	00f70e63          	beq	a4,a5,80003a24 <uartputc+0xdc>
    80003a0c:	00564683          	lbu	a3,5(a2)
    80003a10:	01f7f713          	andi	a4,a5,31
    80003a14:	00e58733          	add	a4,a1,a4
    80003a18:	0206f693          	andi	a3,a3,32
    80003a1c:	00178793          	addi	a5,a5,1
    80003a20:	fc069ae3          	bnez	a3,800039f4 <uartputc+0xac>
    80003a24:	02813083          	ld	ra,40(sp)
    80003a28:	02013403          	ld	s0,32(sp)
    80003a2c:	01813483          	ld	s1,24(sp)
    80003a30:	01013903          	ld	s2,16(sp)
    80003a34:	00813983          	ld	s3,8(sp)
    80003a38:	03010113          	addi	sp,sp,48
    80003a3c:	00008067          	ret

0000000080003a40 <uartputc_sync>:
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813423          	sd	s0,8(sp)
    80003a48:	01010413          	addi	s0,sp,16
    80003a4c:	00002717          	auipc	a4,0x2
    80003a50:	1ac72703          	lw	a4,428(a4) # 80005bf8 <panicked>
    80003a54:	02071663          	bnez	a4,80003a80 <uartputc_sync+0x40>
    80003a58:	00050793          	mv	a5,a0
    80003a5c:	100006b7          	lui	a3,0x10000
    80003a60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003a64:	02077713          	andi	a4,a4,32
    80003a68:	fe070ce3          	beqz	a4,80003a60 <uartputc_sync+0x20>
    80003a6c:	0ff7f793          	andi	a5,a5,255
    80003a70:	00f68023          	sb	a5,0(a3)
    80003a74:	00813403          	ld	s0,8(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret
    80003a80:	0000006f          	j	80003a80 <uartputc_sync+0x40>

0000000080003a84 <uartstart>:
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813423          	sd	s0,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	00002617          	auipc	a2,0x2
    80003a94:	17060613          	addi	a2,a2,368 # 80005c00 <uart_tx_r>
    80003a98:	00002517          	auipc	a0,0x2
    80003a9c:	17050513          	addi	a0,a0,368 # 80005c08 <uart_tx_w>
    80003aa0:	00063783          	ld	a5,0(a2)
    80003aa4:	00053703          	ld	a4,0(a0)
    80003aa8:	04f70263          	beq	a4,a5,80003aec <uartstart+0x68>
    80003aac:	100005b7          	lui	a1,0x10000
    80003ab0:	00003817          	auipc	a6,0x3
    80003ab4:	3f080813          	addi	a6,a6,1008 # 80006ea0 <uart_tx_buf>
    80003ab8:	01c0006f          	j	80003ad4 <uartstart+0x50>
    80003abc:	0006c703          	lbu	a4,0(a3)
    80003ac0:	00f63023          	sd	a5,0(a2)
    80003ac4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ac8:	00063783          	ld	a5,0(a2)
    80003acc:	00053703          	ld	a4,0(a0)
    80003ad0:	00f70e63          	beq	a4,a5,80003aec <uartstart+0x68>
    80003ad4:	01f7f713          	andi	a4,a5,31
    80003ad8:	00e806b3          	add	a3,a6,a4
    80003adc:	0055c703          	lbu	a4,5(a1)
    80003ae0:	00178793          	addi	a5,a5,1
    80003ae4:	02077713          	andi	a4,a4,32
    80003ae8:	fc071ae3          	bnez	a4,80003abc <uartstart+0x38>
    80003aec:	00813403          	ld	s0,8(sp)
    80003af0:	01010113          	addi	sp,sp,16
    80003af4:	00008067          	ret

0000000080003af8 <uartgetc>:
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00813423          	sd	s0,8(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	10000737          	lui	a4,0x10000
    80003b08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003b0c:	0017f793          	andi	a5,a5,1
    80003b10:	00078c63          	beqz	a5,80003b28 <uartgetc+0x30>
    80003b14:	00074503          	lbu	a0,0(a4)
    80003b18:	0ff57513          	andi	a0,a0,255
    80003b1c:	00813403          	ld	s0,8(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret
    80003b28:	fff00513          	li	a0,-1
    80003b2c:	ff1ff06f          	j	80003b1c <uartgetc+0x24>

0000000080003b30 <uartintr>:
    80003b30:	100007b7          	lui	a5,0x10000
    80003b34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003b38:	0017f793          	andi	a5,a5,1
    80003b3c:	0a078463          	beqz	a5,80003be4 <uartintr+0xb4>
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	100004b7          	lui	s1,0x10000
    80003b58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003b5c:	0ff57513          	andi	a0,a0,255
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	534080e7          	jalr	1332(ra) # 80003094 <consoleintr>
    80003b68:	0054c783          	lbu	a5,5(s1)
    80003b6c:	0017f793          	andi	a5,a5,1
    80003b70:	fe0794e3          	bnez	a5,80003b58 <uartintr+0x28>
    80003b74:	00002617          	auipc	a2,0x2
    80003b78:	08c60613          	addi	a2,a2,140 # 80005c00 <uart_tx_r>
    80003b7c:	00002517          	auipc	a0,0x2
    80003b80:	08c50513          	addi	a0,a0,140 # 80005c08 <uart_tx_w>
    80003b84:	00063783          	ld	a5,0(a2)
    80003b88:	00053703          	ld	a4,0(a0)
    80003b8c:	04f70263          	beq	a4,a5,80003bd0 <uartintr+0xa0>
    80003b90:	100005b7          	lui	a1,0x10000
    80003b94:	00003817          	auipc	a6,0x3
    80003b98:	30c80813          	addi	a6,a6,780 # 80006ea0 <uart_tx_buf>
    80003b9c:	01c0006f          	j	80003bb8 <uartintr+0x88>
    80003ba0:	0006c703          	lbu	a4,0(a3)
    80003ba4:	00f63023          	sd	a5,0(a2)
    80003ba8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003bac:	00063783          	ld	a5,0(a2)
    80003bb0:	00053703          	ld	a4,0(a0)
    80003bb4:	00f70e63          	beq	a4,a5,80003bd0 <uartintr+0xa0>
    80003bb8:	01f7f713          	andi	a4,a5,31
    80003bbc:	00e806b3          	add	a3,a6,a4
    80003bc0:	0055c703          	lbu	a4,5(a1)
    80003bc4:	00178793          	addi	a5,a5,1
    80003bc8:	02077713          	andi	a4,a4,32
    80003bcc:	fc071ae3          	bnez	a4,80003ba0 <uartintr+0x70>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00813483          	ld	s1,8(sp)
    80003bdc:	02010113          	addi	sp,sp,32
    80003be0:	00008067          	ret
    80003be4:	00002617          	auipc	a2,0x2
    80003be8:	01c60613          	addi	a2,a2,28 # 80005c00 <uart_tx_r>
    80003bec:	00002517          	auipc	a0,0x2
    80003bf0:	01c50513          	addi	a0,a0,28 # 80005c08 <uart_tx_w>
    80003bf4:	00063783          	ld	a5,0(a2)
    80003bf8:	00053703          	ld	a4,0(a0)
    80003bfc:	04f70263          	beq	a4,a5,80003c40 <uartintr+0x110>
    80003c00:	100005b7          	lui	a1,0x10000
    80003c04:	00003817          	auipc	a6,0x3
    80003c08:	29c80813          	addi	a6,a6,668 # 80006ea0 <uart_tx_buf>
    80003c0c:	01c0006f          	j	80003c28 <uartintr+0xf8>
    80003c10:	0006c703          	lbu	a4,0(a3)
    80003c14:	00f63023          	sd	a5,0(a2)
    80003c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c1c:	00063783          	ld	a5,0(a2)
    80003c20:	00053703          	ld	a4,0(a0)
    80003c24:	02f70063          	beq	a4,a5,80003c44 <uartintr+0x114>
    80003c28:	01f7f713          	andi	a4,a5,31
    80003c2c:	00e806b3          	add	a3,a6,a4
    80003c30:	0055c703          	lbu	a4,5(a1)
    80003c34:	00178793          	addi	a5,a5,1
    80003c38:	02077713          	andi	a4,a4,32
    80003c3c:	fc071ae3          	bnez	a4,80003c10 <uartintr+0xe0>
    80003c40:	00008067          	ret
    80003c44:	00008067          	ret

0000000080003c48 <kinit>:
    80003c48:	fc010113          	addi	sp,sp,-64
    80003c4c:	02913423          	sd	s1,40(sp)
    80003c50:	fffff7b7          	lui	a5,0xfffff
    80003c54:	00004497          	auipc	s1,0x4
    80003c58:	27b48493          	addi	s1,s1,635 # 80007ecf <end+0xfff>
    80003c5c:	02813823          	sd	s0,48(sp)
    80003c60:	01313c23          	sd	s3,24(sp)
    80003c64:	00f4f4b3          	and	s1,s1,a5
    80003c68:	02113c23          	sd	ra,56(sp)
    80003c6c:	03213023          	sd	s2,32(sp)
    80003c70:	01413823          	sd	s4,16(sp)
    80003c74:	01513423          	sd	s5,8(sp)
    80003c78:	04010413          	addi	s0,sp,64
    80003c7c:	000017b7          	lui	a5,0x1
    80003c80:	01100993          	li	s3,17
    80003c84:	00f487b3          	add	a5,s1,a5
    80003c88:	01b99993          	slli	s3,s3,0x1b
    80003c8c:	06f9e063          	bltu	s3,a5,80003cec <kinit+0xa4>
    80003c90:	00003a97          	auipc	s5,0x3
    80003c94:	240a8a93          	addi	s5,s5,576 # 80006ed0 <end>
    80003c98:	0754ec63          	bltu	s1,s5,80003d10 <kinit+0xc8>
    80003c9c:	0734fa63          	bgeu	s1,s3,80003d10 <kinit+0xc8>
    80003ca0:	00088a37          	lui	s4,0x88
    80003ca4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ca8:	00002917          	auipc	s2,0x2
    80003cac:	f6890913          	addi	s2,s2,-152 # 80005c10 <kmem>
    80003cb0:	00ca1a13          	slli	s4,s4,0xc
    80003cb4:	0140006f          	j	80003cc8 <kinit+0x80>
    80003cb8:	000017b7          	lui	a5,0x1
    80003cbc:	00f484b3          	add	s1,s1,a5
    80003cc0:	0554e863          	bltu	s1,s5,80003d10 <kinit+0xc8>
    80003cc4:	0534f663          	bgeu	s1,s3,80003d10 <kinit+0xc8>
    80003cc8:	00001637          	lui	a2,0x1
    80003ccc:	00100593          	li	a1,1
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	5e4080e7          	jalr	1508(ra) # 800042b8 <__memset>
    80003cdc:	00093783          	ld	a5,0(s2)
    80003ce0:	00f4b023          	sd	a5,0(s1)
    80003ce4:	00993023          	sd	s1,0(s2)
    80003ce8:	fd4498e3          	bne	s1,s4,80003cb8 <kinit+0x70>
    80003cec:	03813083          	ld	ra,56(sp)
    80003cf0:	03013403          	ld	s0,48(sp)
    80003cf4:	02813483          	ld	s1,40(sp)
    80003cf8:	02013903          	ld	s2,32(sp)
    80003cfc:	01813983          	ld	s3,24(sp)
    80003d00:	01013a03          	ld	s4,16(sp)
    80003d04:	00813a83          	ld	s5,8(sp)
    80003d08:	04010113          	addi	sp,sp,64
    80003d0c:	00008067          	ret
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	53850513          	addi	a0,a0,1336 # 80005248 <digits+0x18>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	4b4080e7          	jalr	1204(ra) # 800031cc <panic>

0000000080003d20 <freerange>:
    80003d20:	fc010113          	addi	sp,sp,-64
    80003d24:	000017b7          	lui	a5,0x1
    80003d28:	02913423          	sd	s1,40(sp)
    80003d2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003d30:	009504b3          	add	s1,a0,s1
    80003d34:	fffff537          	lui	a0,0xfffff
    80003d38:	02813823          	sd	s0,48(sp)
    80003d3c:	02113c23          	sd	ra,56(sp)
    80003d40:	03213023          	sd	s2,32(sp)
    80003d44:	01313c23          	sd	s3,24(sp)
    80003d48:	01413823          	sd	s4,16(sp)
    80003d4c:	01513423          	sd	s5,8(sp)
    80003d50:	01613023          	sd	s6,0(sp)
    80003d54:	04010413          	addi	s0,sp,64
    80003d58:	00a4f4b3          	and	s1,s1,a0
    80003d5c:	00f487b3          	add	a5,s1,a5
    80003d60:	06f5e463          	bltu	a1,a5,80003dc8 <freerange+0xa8>
    80003d64:	00003a97          	auipc	s5,0x3
    80003d68:	16ca8a93          	addi	s5,s5,364 # 80006ed0 <end>
    80003d6c:	0954e263          	bltu	s1,s5,80003df0 <freerange+0xd0>
    80003d70:	01100993          	li	s3,17
    80003d74:	01b99993          	slli	s3,s3,0x1b
    80003d78:	0734fc63          	bgeu	s1,s3,80003df0 <freerange+0xd0>
    80003d7c:	00058a13          	mv	s4,a1
    80003d80:	00002917          	auipc	s2,0x2
    80003d84:	e9090913          	addi	s2,s2,-368 # 80005c10 <kmem>
    80003d88:	00002b37          	lui	s6,0x2
    80003d8c:	0140006f          	j	80003da0 <freerange+0x80>
    80003d90:	000017b7          	lui	a5,0x1
    80003d94:	00f484b3          	add	s1,s1,a5
    80003d98:	0554ec63          	bltu	s1,s5,80003df0 <freerange+0xd0>
    80003d9c:	0534fa63          	bgeu	s1,s3,80003df0 <freerange+0xd0>
    80003da0:	00001637          	lui	a2,0x1
    80003da4:	00100593          	li	a1,1
    80003da8:	00048513          	mv	a0,s1
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	50c080e7          	jalr	1292(ra) # 800042b8 <__memset>
    80003db4:	00093703          	ld	a4,0(s2)
    80003db8:	016487b3          	add	a5,s1,s6
    80003dbc:	00e4b023          	sd	a4,0(s1)
    80003dc0:	00993023          	sd	s1,0(s2)
    80003dc4:	fcfa76e3          	bgeu	s4,a5,80003d90 <freerange+0x70>
    80003dc8:	03813083          	ld	ra,56(sp)
    80003dcc:	03013403          	ld	s0,48(sp)
    80003dd0:	02813483          	ld	s1,40(sp)
    80003dd4:	02013903          	ld	s2,32(sp)
    80003dd8:	01813983          	ld	s3,24(sp)
    80003ddc:	01013a03          	ld	s4,16(sp)
    80003de0:	00813a83          	ld	s5,8(sp)
    80003de4:	00013b03          	ld	s6,0(sp)
    80003de8:	04010113          	addi	sp,sp,64
    80003dec:	00008067          	ret
    80003df0:	00001517          	auipc	a0,0x1
    80003df4:	45850513          	addi	a0,a0,1112 # 80005248 <digits+0x18>
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	3d4080e7          	jalr	980(ra) # 800031cc <panic>

0000000080003e00 <kfree>:
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00813823          	sd	s0,16(sp)
    80003e08:	00113c23          	sd	ra,24(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	02010413          	addi	s0,sp,32
    80003e14:	03451793          	slli	a5,a0,0x34
    80003e18:	04079c63          	bnez	a5,80003e70 <kfree+0x70>
    80003e1c:	00003797          	auipc	a5,0x3
    80003e20:	0b478793          	addi	a5,a5,180 # 80006ed0 <end>
    80003e24:	00050493          	mv	s1,a0
    80003e28:	04f56463          	bltu	a0,a5,80003e70 <kfree+0x70>
    80003e2c:	01100793          	li	a5,17
    80003e30:	01b79793          	slli	a5,a5,0x1b
    80003e34:	02f57e63          	bgeu	a0,a5,80003e70 <kfree+0x70>
    80003e38:	00001637          	lui	a2,0x1
    80003e3c:	00100593          	li	a1,1
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	478080e7          	jalr	1144(ra) # 800042b8 <__memset>
    80003e48:	00002797          	auipc	a5,0x2
    80003e4c:	dc878793          	addi	a5,a5,-568 # 80005c10 <kmem>
    80003e50:	0007b703          	ld	a4,0(a5)
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00e4b023          	sd	a4,0(s1)
    80003e60:	0097b023          	sd	s1,0(a5)
    80003e64:	00813483          	ld	s1,8(sp)
    80003e68:	02010113          	addi	sp,sp,32
    80003e6c:	00008067          	ret
    80003e70:	00001517          	auipc	a0,0x1
    80003e74:	3d850513          	addi	a0,a0,984 # 80005248 <digits+0x18>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	354080e7          	jalr	852(ra) # 800031cc <panic>

0000000080003e80 <kalloc>:
    80003e80:	fe010113          	addi	sp,sp,-32
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	00002797          	auipc	a5,0x2
    80003e98:	d7c78793          	addi	a5,a5,-644 # 80005c10 <kmem>
    80003e9c:	0007b483          	ld	s1,0(a5)
    80003ea0:	02048063          	beqz	s1,80003ec0 <kalloc+0x40>
    80003ea4:	0004b703          	ld	a4,0(s1)
    80003ea8:	00001637          	lui	a2,0x1
    80003eac:	00500593          	li	a1,5
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00e7b023          	sd	a4,0(a5)
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	400080e7          	jalr	1024(ra) # 800042b8 <__memset>
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00813483          	ld	s1,8(sp)
    80003ed0:	02010113          	addi	sp,sp,32
    80003ed4:	00008067          	ret

0000000080003ed8 <initlock>:
    80003ed8:	ff010113          	addi	sp,sp,-16
    80003edc:	00813423          	sd	s0,8(sp)
    80003ee0:	01010413          	addi	s0,sp,16
    80003ee4:	00813403          	ld	s0,8(sp)
    80003ee8:	00b53423          	sd	a1,8(a0)
    80003eec:	00052023          	sw	zero,0(a0)
    80003ef0:	00053823          	sd	zero,16(a0)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <acquire>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	00113c23          	sd	ra,24(sp)
    80003f0c:	01213023          	sd	s2,0(sp)
    80003f10:	02010413          	addi	s0,sp,32
    80003f14:	00050493          	mv	s1,a0
    80003f18:	10002973          	csrr	s2,sstatus
    80003f1c:	100027f3          	csrr	a5,sstatus
    80003f20:	ffd7f793          	andi	a5,a5,-3
    80003f24:	10079073          	csrw	sstatus,a5
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	8e4080e7          	jalr	-1820(ra) # 8000280c <mycpu>
    80003f30:	07852783          	lw	a5,120(a0)
    80003f34:	06078e63          	beqz	a5,80003fb0 <acquire+0xb4>
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	8d4080e7          	jalr	-1836(ra) # 8000280c <mycpu>
    80003f40:	07852783          	lw	a5,120(a0)
    80003f44:	0004a703          	lw	a4,0(s1)
    80003f48:	0017879b          	addiw	a5,a5,1
    80003f4c:	06f52c23          	sw	a5,120(a0)
    80003f50:	04071063          	bnez	a4,80003f90 <acquire+0x94>
    80003f54:	00100713          	li	a4,1
    80003f58:	00070793          	mv	a5,a4
    80003f5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003f60:	0007879b          	sext.w	a5,a5
    80003f64:	fe079ae3          	bnez	a5,80003f58 <acquire+0x5c>
    80003f68:	0ff0000f          	fence
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	8a0080e7          	jalr	-1888(ra) # 8000280c <mycpu>
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00a4b823          	sd	a0,16(s1)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret
    80003f90:	0104b903          	ld	s2,16(s1)
    80003f94:	fffff097          	auipc	ra,0xfffff
    80003f98:	878080e7          	jalr	-1928(ra) # 8000280c <mycpu>
    80003f9c:	faa91ce3          	bne	s2,a0,80003f54 <acquire+0x58>
    80003fa0:	00001517          	auipc	a0,0x1
    80003fa4:	2b050513          	addi	a0,a0,688 # 80005250 <digits+0x20>
    80003fa8:	fffff097          	auipc	ra,0xfffff
    80003fac:	224080e7          	jalr	548(ra) # 800031cc <panic>
    80003fb0:	00195913          	srli	s2,s2,0x1
    80003fb4:	fffff097          	auipc	ra,0xfffff
    80003fb8:	858080e7          	jalr	-1960(ra) # 8000280c <mycpu>
    80003fbc:	00197913          	andi	s2,s2,1
    80003fc0:	07252e23          	sw	s2,124(a0)
    80003fc4:	f75ff06f          	j	80003f38 <acquire+0x3c>

0000000080003fc8 <release>:
    80003fc8:	fe010113          	addi	sp,sp,-32
    80003fcc:	00813823          	sd	s0,16(sp)
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00913423          	sd	s1,8(sp)
    80003fd8:	01213023          	sd	s2,0(sp)
    80003fdc:	02010413          	addi	s0,sp,32
    80003fe0:	00052783          	lw	a5,0(a0)
    80003fe4:	00079a63          	bnez	a5,80003ff8 <release+0x30>
    80003fe8:	00001517          	auipc	a0,0x1
    80003fec:	27050513          	addi	a0,a0,624 # 80005258 <digits+0x28>
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	1dc080e7          	jalr	476(ra) # 800031cc <panic>
    80003ff8:	01053903          	ld	s2,16(a0)
    80003ffc:	00050493          	mv	s1,a0
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	80c080e7          	jalr	-2036(ra) # 8000280c <mycpu>
    80004008:	fea910e3          	bne	s2,a0,80003fe8 <release+0x20>
    8000400c:	0004b823          	sd	zero,16(s1)
    80004010:	0ff0000f          	fence
    80004014:	0f50000f          	fence	iorw,ow
    80004018:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	7f0080e7          	jalr	2032(ra) # 8000280c <mycpu>
    80004024:	100027f3          	csrr	a5,sstatus
    80004028:	0027f793          	andi	a5,a5,2
    8000402c:	04079a63          	bnez	a5,80004080 <release+0xb8>
    80004030:	07852783          	lw	a5,120(a0)
    80004034:	02f05e63          	blez	a5,80004070 <release+0xa8>
    80004038:	fff7871b          	addiw	a4,a5,-1
    8000403c:	06e52c23          	sw	a4,120(a0)
    80004040:	00071c63          	bnez	a4,80004058 <release+0x90>
    80004044:	07c52783          	lw	a5,124(a0)
    80004048:	00078863          	beqz	a5,80004058 <release+0x90>
    8000404c:	100027f3          	csrr	a5,sstatus
    80004050:	0027e793          	ori	a5,a5,2
    80004054:	10079073          	csrw	sstatus,a5
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	01013403          	ld	s0,16(sp)
    80004060:	00813483          	ld	s1,8(sp)
    80004064:	00013903          	ld	s2,0(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret
    80004070:	00001517          	auipc	a0,0x1
    80004074:	20850513          	addi	a0,a0,520 # 80005278 <digits+0x48>
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	154080e7          	jalr	340(ra) # 800031cc <panic>
    80004080:	00001517          	auipc	a0,0x1
    80004084:	1e050513          	addi	a0,a0,480 # 80005260 <digits+0x30>
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	144080e7          	jalr	324(ra) # 800031cc <panic>

0000000080004090 <holding>:
    80004090:	00052783          	lw	a5,0(a0)
    80004094:	00079663          	bnez	a5,800040a0 <holding+0x10>
    80004098:	00000513          	li	a0,0
    8000409c:	00008067          	ret
    800040a0:	fe010113          	addi	sp,sp,-32
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	02010413          	addi	s0,sp,32
    800040b4:	01053483          	ld	s1,16(a0)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	754080e7          	jalr	1876(ra) # 8000280c <mycpu>
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	40a48533          	sub	a0,s1,a0
    800040cc:	00153513          	seqz	a0,a0
    800040d0:	00813483          	ld	s1,8(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret

00000000800040dc <push_off>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00113c23          	sd	ra,24(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	100024f3          	csrr	s1,sstatus
    800040f4:	100027f3          	csrr	a5,sstatus
    800040f8:	ffd7f793          	andi	a5,a5,-3
    800040fc:	10079073          	csrw	sstatus,a5
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	70c080e7          	jalr	1804(ra) # 8000280c <mycpu>
    80004108:	07852783          	lw	a5,120(a0)
    8000410c:	02078663          	beqz	a5,80004138 <push_off+0x5c>
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	6fc080e7          	jalr	1788(ra) # 8000280c <mycpu>
    80004118:	07852783          	lw	a5,120(a0)
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	0017879b          	addiw	a5,a5,1
    80004128:	06f52c23          	sw	a5,120(a0)
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret
    80004138:	0014d493          	srli	s1,s1,0x1
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	6d0080e7          	jalr	1744(ra) # 8000280c <mycpu>
    80004144:	0014f493          	andi	s1,s1,1
    80004148:	06952e23          	sw	s1,124(a0)
    8000414c:	fc5ff06f          	j	80004110 <push_off+0x34>

0000000080004150 <pop_off>:
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	01010413          	addi	s0,sp,16
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	6ac080e7          	jalr	1708(ra) # 8000280c <mycpu>
    80004168:	100027f3          	csrr	a5,sstatus
    8000416c:	0027f793          	andi	a5,a5,2
    80004170:	04079663          	bnez	a5,800041bc <pop_off+0x6c>
    80004174:	07852783          	lw	a5,120(a0)
    80004178:	02f05a63          	blez	a5,800041ac <pop_off+0x5c>
    8000417c:	fff7871b          	addiw	a4,a5,-1
    80004180:	06e52c23          	sw	a4,120(a0)
    80004184:	00071c63          	bnez	a4,8000419c <pop_off+0x4c>
    80004188:	07c52783          	lw	a5,124(a0)
    8000418c:	00078863          	beqz	a5,8000419c <pop_off+0x4c>
    80004190:	100027f3          	csrr	a5,sstatus
    80004194:	0027e793          	ori	a5,a5,2
    80004198:	10079073          	csrw	sstatus,a5
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret
    800041ac:	00001517          	auipc	a0,0x1
    800041b0:	0cc50513          	addi	a0,a0,204 # 80005278 <digits+0x48>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	018080e7          	jalr	24(ra) # 800031cc <panic>
    800041bc:	00001517          	auipc	a0,0x1
    800041c0:	0a450513          	addi	a0,a0,164 # 80005260 <digits+0x30>
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	008080e7          	jalr	8(ra) # 800031cc <panic>

00000000800041cc <push_on>:
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	02010413          	addi	s0,sp,32
    800041e0:	100024f3          	csrr	s1,sstatus
    800041e4:	100027f3          	csrr	a5,sstatus
    800041e8:	0027e793          	ori	a5,a5,2
    800041ec:	10079073          	csrw	sstatus,a5
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	61c080e7          	jalr	1564(ra) # 8000280c <mycpu>
    800041f8:	07852783          	lw	a5,120(a0)
    800041fc:	02078663          	beqz	a5,80004228 <push_on+0x5c>
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	60c080e7          	jalr	1548(ra) # 8000280c <mycpu>
    80004208:	07852783          	lw	a5,120(a0)
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	0017879b          	addiw	a5,a5,1
    80004218:	06f52c23          	sw	a5,120(a0)
    8000421c:	00813483          	ld	s1,8(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret
    80004228:	0014d493          	srli	s1,s1,0x1
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	5e0080e7          	jalr	1504(ra) # 8000280c <mycpu>
    80004234:	0014f493          	andi	s1,s1,1
    80004238:	06952e23          	sw	s1,124(a0)
    8000423c:	fc5ff06f          	j	80004200 <push_on+0x34>

0000000080004240 <pop_on>:
    80004240:	ff010113          	addi	sp,sp,-16
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	00113423          	sd	ra,8(sp)
    8000424c:	01010413          	addi	s0,sp,16
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	5bc080e7          	jalr	1468(ra) # 8000280c <mycpu>
    80004258:	100027f3          	csrr	a5,sstatus
    8000425c:	0027f793          	andi	a5,a5,2
    80004260:	04078463          	beqz	a5,800042a8 <pop_on+0x68>
    80004264:	07852783          	lw	a5,120(a0)
    80004268:	02f05863          	blez	a5,80004298 <pop_on+0x58>
    8000426c:	fff7879b          	addiw	a5,a5,-1
    80004270:	06f52c23          	sw	a5,120(a0)
    80004274:	07853783          	ld	a5,120(a0)
    80004278:	00079863          	bnez	a5,80004288 <pop_on+0x48>
    8000427c:	100027f3          	csrr	a5,sstatus
    80004280:	ffd7f793          	andi	a5,a5,-3
    80004284:	10079073          	csrw	sstatus,a5
    80004288:	00813083          	ld	ra,8(sp)
    8000428c:	00013403          	ld	s0,0(sp)
    80004290:	01010113          	addi	sp,sp,16
    80004294:	00008067          	ret
    80004298:	00001517          	auipc	a0,0x1
    8000429c:	00850513          	addi	a0,a0,8 # 800052a0 <digits+0x70>
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	f2c080e7          	jalr	-212(ra) # 800031cc <panic>
    800042a8:	00001517          	auipc	a0,0x1
    800042ac:	fd850513          	addi	a0,a0,-40 # 80005280 <digits+0x50>
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	f1c080e7          	jalr	-228(ra) # 800031cc <panic>

00000000800042b8 <__memset>:
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00813423          	sd	s0,8(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	1a060e63          	beqz	a2,80004480 <__memset+0x1c8>
    800042c8:	40a007b3          	neg	a5,a0
    800042cc:	0077f793          	andi	a5,a5,7
    800042d0:	00778693          	addi	a3,a5,7
    800042d4:	00b00813          	li	a6,11
    800042d8:	0ff5f593          	andi	a1,a1,255
    800042dc:	fff6071b          	addiw	a4,a2,-1
    800042e0:	1b06e663          	bltu	a3,a6,8000448c <__memset+0x1d4>
    800042e4:	1cd76463          	bltu	a4,a3,800044ac <__memset+0x1f4>
    800042e8:	1a078e63          	beqz	a5,800044a4 <__memset+0x1ec>
    800042ec:	00b50023          	sb	a1,0(a0)
    800042f0:	00100713          	li	a4,1
    800042f4:	1ae78463          	beq	a5,a4,8000449c <__memset+0x1e4>
    800042f8:	00b500a3          	sb	a1,1(a0)
    800042fc:	00200713          	li	a4,2
    80004300:	1ae78a63          	beq	a5,a4,800044b4 <__memset+0x1fc>
    80004304:	00b50123          	sb	a1,2(a0)
    80004308:	00300713          	li	a4,3
    8000430c:	18e78463          	beq	a5,a4,80004494 <__memset+0x1dc>
    80004310:	00b501a3          	sb	a1,3(a0)
    80004314:	00400713          	li	a4,4
    80004318:	1ae78263          	beq	a5,a4,800044bc <__memset+0x204>
    8000431c:	00b50223          	sb	a1,4(a0)
    80004320:	00500713          	li	a4,5
    80004324:	1ae78063          	beq	a5,a4,800044c4 <__memset+0x20c>
    80004328:	00b502a3          	sb	a1,5(a0)
    8000432c:	00700713          	li	a4,7
    80004330:	18e79e63          	bne	a5,a4,800044cc <__memset+0x214>
    80004334:	00b50323          	sb	a1,6(a0)
    80004338:	00700e93          	li	t4,7
    8000433c:	00859713          	slli	a4,a1,0x8
    80004340:	00e5e733          	or	a4,a1,a4
    80004344:	01059e13          	slli	t3,a1,0x10
    80004348:	01c76e33          	or	t3,a4,t3
    8000434c:	01859313          	slli	t1,a1,0x18
    80004350:	006e6333          	or	t1,t3,t1
    80004354:	02059893          	slli	a7,a1,0x20
    80004358:	40f60e3b          	subw	t3,a2,a5
    8000435c:	011368b3          	or	a7,t1,a7
    80004360:	02859813          	slli	a6,a1,0x28
    80004364:	0108e833          	or	a6,a7,a6
    80004368:	03059693          	slli	a3,a1,0x30
    8000436c:	003e589b          	srliw	a7,t3,0x3
    80004370:	00d866b3          	or	a3,a6,a3
    80004374:	03859713          	slli	a4,a1,0x38
    80004378:	00389813          	slli	a6,a7,0x3
    8000437c:	00f507b3          	add	a5,a0,a5
    80004380:	00e6e733          	or	a4,a3,a4
    80004384:	000e089b          	sext.w	a7,t3
    80004388:	00f806b3          	add	a3,a6,a5
    8000438c:	00e7b023          	sd	a4,0(a5)
    80004390:	00878793          	addi	a5,a5,8
    80004394:	fed79ce3          	bne	a5,a3,8000438c <__memset+0xd4>
    80004398:	ff8e7793          	andi	a5,t3,-8
    8000439c:	0007871b          	sext.w	a4,a5
    800043a0:	01d787bb          	addw	a5,a5,t4
    800043a4:	0ce88e63          	beq	a7,a4,80004480 <__memset+0x1c8>
    800043a8:	00f50733          	add	a4,a0,a5
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	0017871b          	addiw	a4,a5,1
    800043b4:	0cc77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	0027871b          	addiw	a4,a5,2
    800043c4:	0ac77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043c8:	00e50733          	add	a4,a0,a4
    800043cc:	00b70023          	sb	a1,0(a4)
    800043d0:	0037871b          	addiw	a4,a5,3
    800043d4:	0ac77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043d8:	00e50733          	add	a4,a0,a4
    800043dc:	00b70023          	sb	a1,0(a4)
    800043e0:	0047871b          	addiw	a4,a5,4
    800043e4:	08c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043e8:	00e50733          	add	a4,a0,a4
    800043ec:	00b70023          	sb	a1,0(a4)
    800043f0:	0057871b          	addiw	a4,a5,5
    800043f4:	08c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043f8:	00e50733          	add	a4,a0,a4
    800043fc:	00b70023          	sb	a1,0(a4)
    80004400:	0067871b          	addiw	a4,a5,6
    80004404:	06c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004408:	00e50733          	add	a4,a0,a4
    8000440c:	00b70023          	sb	a1,0(a4)
    80004410:	0077871b          	addiw	a4,a5,7
    80004414:	06c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004418:	00e50733          	add	a4,a0,a4
    8000441c:	00b70023          	sb	a1,0(a4)
    80004420:	0087871b          	addiw	a4,a5,8
    80004424:	04c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004428:	00e50733          	add	a4,a0,a4
    8000442c:	00b70023          	sb	a1,0(a4)
    80004430:	0097871b          	addiw	a4,a5,9
    80004434:	04c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004438:	00e50733          	add	a4,a0,a4
    8000443c:	00b70023          	sb	a1,0(a4)
    80004440:	00a7871b          	addiw	a4,a5,10
    80004444:	02c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004448:	00e50733          	add	a4,a0,a4
    8000444c:	00b70023          	sb	a1,0(a4)
    80004450:	00b7871b          	addiw	a4,a5,11
    80004454:	02c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004458:	00e50733          	add	a4,a0,a4
    8000445c:	00b70023          	sb	a1,0(a4)
    80004460:	00c7871b          	addiw	a4,a5,12
    80004464:	00c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004468:	00e50733          	add	a4,a0,a4
    8000446c:	00b70023          	sb	a1,0(a4)
    80004470:	00d7879b          	addiw	a5,a5,13
    80004474:	00c7f663          	bgeu	a5,a2,80004480 <__memset+0x1c8>
    80004478:	00f507b3          	add	a5,a0,a5
    8000447c:	00b78023          	sb	a1,0(a5)
    80004480:	00813403          	ld	s0,8(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret
    8000448c:	00b00693          	li	a3,11
    80004490:	e55ff06f          	j	800042e4 <__memset+0x2c>
    80004494:	00300e93          	li	t4,3
    80004498:	ea5ff06f          	j	8000433c <__memset+0x84>
    8000449c:	00100e93          	li	t4,1
    800044a0:	e9dff06f          	j	8000433c <__memset+0x84>
    800044a4:	00000e93          	li	t4,0
    800044a8:	e95ff06f          	j	8000433c <__memset+0x84>
    800044ac:	00000793          	li	a5,0
    800044b0:	ef9ff06f          	j	800043a8 <__memset+0xf0>
    800044b4:	00200e93          	li	t4,2
    800044b8:	e85ff06f          	j	8000433c <__memset+0x84>
    800044bc:	00400e93          	li	t4,4
    800044c0:	e7dff06f          	j	8000433c <__memset+0x84>
    800044c4:	00500e93          	li	t4,5
    800044c8:	e75ff06f          	j	8000433c <__memset+0x84>
    800044cc:	00600e93          	li	t4,6
    800044d0:	e6dff06f          	j	8000433c <__memset+0x84>

00000000800044d4 <__memmove>:
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00813423          	sd	s0,8(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	0e060863          	beqz	a2,800045d0 <__memmove+0xfc>
    800044e4:	fff6069b          	addiw	a3,a2,-1
    800044e8:	0006881b          	sext.w	a6,a3
    800044ec:	0ea5e863          	bltu	a1,a0,800045dc <__memmove+0x108>
    800044f0:	00758713          	addi	a4,a1,7
    800044f4:	00a5e7b3          	or	a5,a1,a0
    800044f8:	40a70733          	sub	a4,a4,a0
    800044fc:	0077f793          	andi	a5,a5,7
    80004500:	00f73713          	sltiu	a4,a4,15
    80004504:	00174713          	xori	a4,a4,1
    80004508:	0017b793          	seqz	a5,a5
    8000450c:	00e7f7b3          	and	a5,a5,a4
    80004510:	10078863          	beqz	a5,80004620 <__memmove+0x14c>
    80004514:	00900793          	li	a5,9
    80004518:	1107f463          	bgeu	a5,a6,80004620 <__memmove+0x14c>
    8000451c:	0036581b          	srliw	a6,a2,0x3
    80004520:	fff8081b          	addiw	a6,a6,-1
    80004524:	02081813          	slli	a6,a6,0x20
    80004528:	01d85893          	srli	a7,a6,0x1d
    8000452c:	00858813          	addi	a6,a1,8
    80004530:	00058793          	mv	a5,a1
    80004534:	00050713          	mv	a4,a0
    80004538:	01088833          	add	a6,a7,a6
    8000453c:	0007b883          	ld	a7,0(a5)
    80004540:	00878793          	addi	a5,a5,8
    80004544:	00870713          	addi	a4,a4,8
    80004548:	ff173c23          	sd	a7,-8(a4)
    8000454c:	ff0798e3          	bne	a5,a6,8000453c <__memmove+0x68>
    80004550:	ff867713          	andi	a4,a2,-8
    80004554:	02071793          	slli	a5,a4,0x20
    80004558:	0207d793          	srli	a5,a5,0x20
    8000455c:	00f585b3          	add	a1,a1,a5
    80004560:	40e686bb          	subw	a3,a3,a4
    80004564:	00f507b3          	add	a5,a0,a5
    80004568:	06e60463          	beq	a2,a4,800045d0 <__memmove+0xfc>
    8000456c:	0005c703          	lbu	a4,0(a1)
    80004570:	00e78023          	sb	a4,0(a5)
    80004574:	04068e63          	beqz	a3,800045d0 <__memmove+0xfc>
    80004578:	0015c603          	lbu	a2,1(a1)
    8000457c:	00100713          	li	a4,1
    80004580:	00c780a3          	sb	a2,1(a5)
    80004584:	04e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    80004588:	0025c603          	lbu	a2,2(a1)
    8000458c:	00200713          	li	a4,2
    80004590:	00c78123          	sb	a2,2(a5)
    80004594:	02e68e63          	beq	a3,a4,800045d0 <__memmove+0xfc>
    80004598:	0035c603          	lbu	a2,3(a1)
    8000459c:	00300713          	li	a4,3
    800045a0:	00c781a3          	sb	a2,3(a5)
    800045a4:	02e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045a8:	0045c603          	lbu	a2,4(a1)
    800045ac:	00400713          	li	a4,4
    800045b0:	00c78223          	sb	a2,4(a5)
    800045b4:	00e68e63          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045b8:	0055c603          	lbu	a2,5(a1)
    800045bc:	00500713          	li	a4,5
    800045c0:	00c782a3          	sb	a2,5(a5)
    800045c4:	00e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045c8:	0065c703          	lbu	a4,6(a1)
    800045cc:	00e78323          	sb	a4,6(a5)
    800045d0:	00813403          	ld	s0,8(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret
    800045dc:	02061713          	slli	a4,a2,0x20
    800045e0:	02075713          	srli	a4,a4,0x20
    800045e4:	00e587b3          	add	a5,a1,a4
    800045e8:	f0f574e3          	bgeu	a0,a5,800044f0 <__memmove+0x1c>
    800045ec:	02069613          	slli	a2,a3,0x20
    800045f0:	02065613          	srli	a2,a2,0x20
    800045f4:	fff64613          	not	a2,a2
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00c78633          	add	a2,a5,a2
    80004600:	fff7c683          	lbu	a3,-1(a5)
    80004604:	fff78793          	addi	a5,a5,-1
    80004608:	fff70713          	addi	a4,a4,-1
    8000460c:	00d70023          	sb	a3,0(a4)
    80004610:	fec798e3          	bne	a5,a2,80004600 <__memmove+0x12c>
    80004614:	00813403          	ld	s0,8(sp)
    80004618:	01010113          	addi	sp,sp,16
    8000461c:	00008067          	ret
    80004620:	02069713          	slli	a4,a3,0x20
    80004624:	02075713          	srli	a4,a4,0x20
    80004628:	00170713          	addi	a4,a4,1
    8000462c:	00e50733          	add	a4,a0,a4
    80004630:	00050793          	mv	a5,a0
    80004634:	0005c683          	lbu	a3,0(a1)
    80004638:	00178793          	addi	a5,a5,1
    8000463c:	00158593          	addi	a1,a1,1
    80004640:	fed78fa3          	sb	a3,-1(a5)
    80004644:	fee798e3          	bne	a5,a4,80004634 <__memmove+0x160>
    80004648:	f89ff06f          	j	800045d0 <__memmove+0xfc>

000000008000464c <__mem_free>:
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00813423          	sd	s0,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00001597          	auipc	a1,0x1
    8000465c:	5c058593          	addi	a1,a1,1472 # 80005c18 <freep>
    80004660:	0005b783          	ld	a5,0(a1)
    80004664:	ff050693          	addi	a3,a0,-16
    80004668:	0007b703          	ld	a4,0(a5)
    8000466c:	00d7fc63          	bgeu	a5,a3,80004684 <__mem_free+0x38>
    80004670:	00e6ee63          	bltu	a3,a4,8000468c <__mem_free+0x40>
    80004674:	00e7fc63          	bgeu	a5,a4,8000468c <__mem_free+0x40>
    80004678:	00070793          	mv	a5,a4
    8000467c:	0007b703          	ld	a4,0(a5)
    80004680:	fed7e8e3          	bltu	a5,a3,80004670 <__mem_free+0x24>
    80004684:	fee7eae3          	bltu	a5,a4,80004678 <__mem_free+0x2c>
    80004688:	fee6f8e3          	bgeu	a3,a4,80004678 <__mem_free+0x2c>
    8000468c:	ff852803          	lw	a6,-8(a0)
    80004690:	02081613          	slli	a2,a6,0x20
    80004694:	01c65613          	srli	a2,a2,0x1c
    80004698:	00c68633          	add	a2,a3,a2
    8000469c:	02c70a63          	beq	a4,a2,800046d0 <__mem_free+0x84>
    800046a0:	fee53823          	sd	a4,-16(a0)
    800046a4:	0087a503          	lw	a0,8(a5)
    800046a8:	02051613          	slli	a2,a0,0x20
    800046ac:	01c65613          	srli	a2,a2,0x1c
    800046b0:	00c78633          	add	a2,a5,a2
    800046b4:	04c68263          	beq	a3,a2,800046f8 <__mem_free+0xac>
    800046b8:	00813403          	ld	s0,8(sp)
    800046bc:	00d7b023          	sd	a3,0(a5)
    800046c0:	00f5b023          	sd	a5,0(a1)
    800046c4:	00000513          	li	a0,0
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret
    800046d0:	00872603          	lw	a2,8(a4)
    800046d4:	00073703          	ld	a4,0(a4)
    800046d8:	0106083b          	addw	a6,a2,a6
    800046dc:	ff052c23          	sw	a6,-8(a0)
    800046e0:	fee53823          	sd	a4,-16(a0)
    800046e4:	0087a503          	lw	a0,8(a5)
    800046e8:	02051613          	slli	a2,a0,0x20
    800046ec:	01c65613          	srli	a2,a2,0x1c
    800046f0:	00c78633          	add	a2,a5,a2
    800046f4:	fcc692e3          	bne	a3,a2,800046b8 <__mem_free+0x6c>
    800046f8:	00813403          	ld	s0,8(sp)
    800046fc:	0105053b          	addw	a0,a0,a6
    80004700:	00a7a423          	sw	a0,8(a5)
    80004704:	00e7b023          	sd	a4,0(a5)
    80004708:	00f5b023          	sd	a5,0(a1)
    8000470c:	00000513          	li	a0,0
    80004710:	01010113          	addi	sp,sp,16
    80004714:	00008067          	ret

0000000080004718 <__mem_alloc>:
    80004718:	fc010113          	addi	sp,sp,-64
    8000471c:	02813823          	sd	s0,48(sp)
    80004720:	02913423          	sd	s1,40(sp)
    80004724:	03213023          	sd	s2,32(sp)
    80004728:	01513423          	sd	s5,8(sp)
    8000472c:	02113c23          	sd	ra,56(sp)
    80004730:	01313c23          	sd	s3,24(sp)
    80004734:	01413823          	sd	s4,16(sp)
    80004738:	01613023          	sd	s6,0(sp)
    8000473c:	04010413          	addi	s0,sp,64
    80004740:	00001a97          	auipc	s5,0x1
    80004744:	4d8a8a93          	addi	s5,s5,1240 # 80005c18 <freep>
    80004748:	00f50913          	addi	s2,a0,15
    8000474c:	000ab683          	ld	a3,0(s5)
    80004750:	00495913          	srli	s2,s2,0x4
    80004754:	0019049b          	addiw	s1,s2,1
    80004758:	00048913          	mv	s2,s1
    8000475c:	0c068c63          	beqz	a3,80004834 <__mem_alloc+0x11c>
    80004760:	0006b503          	ld	a0,0(a3)
    80004764:	00852703          	lw	a4,8(a0)
    80004768:	10977063          	bgeu	a4,s1,80004868 <__mem_alloc+0x150>
    8000476c:	000017b7          	lui	a5,0x1
    80004770:	0009099b          	sext.w	s3,s2
    80004774:	0af4e863          	bltu	s1,a5,80004824 <__mem_alloc+0x10c>
    80004778:	02099a13          	slli	s4,s3,0x20
    8000477c:	01ca5a13          	srli	s4,s4,0x1c
    80004780:	fff00b13          	li	s6,-1
    80004784:	0100006f          	j	80004794 <__mem_alloc+0x7c>
    80004788:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000478c:	00852703          	lw	a4,8(a0)
    80004790:	04977463          	bgeu	a4,s1,800047d8 <__mem_alloc+0xc0>
    80004794:	00050793          	mv	a5,a0
    80004798:	fea698e3          	bne	a3,a0,80004788 <__mem_alloc+0x70>
    8000479c:	000a0513          	mv	a0,s4
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	1f0080e7          	jalr	496(ra) # 80004990 <kvmincrease>
    800047a8:	00050793          	mv	a5,a0
    800047ac:	01050513          	addi	a0,a0,16
    800047b0:	07678e63          	beq	a5,s6,8000482c <__mem_alloc+0x114>
    800047b4:	0137a423          	sw	s3,8(a5)
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	e94080e7          	jalr	-364(ra) # 8000464c <__mem_free>
    800047c0:	000ab783          	ld	a5,0(s5)
    800047c4:	06078463          	beqz	a5,8000482c <__mem_alloc+0x114>
    800047c8:	0007b503          	ld	a0,0(a5)
    800047cc:	00078693          	mv	a3,a5
    800047d0:	00852703          	lw	a4,8(a0)
    800047d4:	fc9760e3          	bltu	a4,s1,80004794 <__mem_alloc+0x7c>
    800047d8:	08e48263          	beq	s1,a4,8000485c <__mem_alloc+0x144>
    800047dc:	4127073b          	subw	a4,a4,s2
    800047e0:	02071693          	slli	a3,a4,0x20
    800047e4:	01c6d693          	srli	a3,a3,0x1c
    800047e8:	00e52423          	sw	a4,8(a0)
    800047ec:	00d50533          	add	a0,a0,a3
    800047f0:	01252423          	sw	s2,8(a0)
    800047f4:	00fab023          	sd	a5,0(s5)
    800047f8:	01050513          	addi	a0,a0,16
    800047fc:	03813083          	ld	ra,56(sp)
    80004800:	03013403          	ld	s0,48(sp)
    80004804:	02813483          	ld	s1,40(sp)
    80004808:	02013903          	ld	s2,32(sp)
    8000480c:	01813983          	ld	s3,24(sp)
    80004810:	01013a03          	ld	s4,16(sp)
    80004814:	00813a83          	ld	s5,8(sp)
    80004818:	00013b03          	ld	s6,0(sp)
    8000481c:	04010113          	addi	sp,sp,64
    80004820:	00008067          	ret
    80004824:	000019b7          	lui	s3,0x1
    80004828:	f51ff06f          	j	80004778 <__mem_alloc+0x60>
    8000482c:	00000513          	li	a0,0
    80004830:	fcdff06f          	j	800047fc <__mem_alloc+0xe4>
    80004834:	00002797          	auipc	a5,0x2
    80004838:	68c78793          	addi	a5,a5,1676 # 80006ec0 <base>
    8000483c:	00078513          	mv	a0,a5
    80004840:	00fab023          	sd	a5,0(s5)
    80004844:	00f7b023          	sd	a5,0(a5)
    80004848:	00000713          	li	a4,0
    8000484c:	00002797          	auipc	a5,0x2
    80004850:	6607ae23          	sw	zero,1660(a5) # 80006ec8 <base+0x8>
    80004854:	00050693          	mv	a3,a0
    80004858:	f11ff06f          	j	80004768 <__mem_alloc+0x50>
    8000485c:	00053703          	ld	a4,0(a0)
    80004860:	00e7b023          	sd	a4,0(a5)
    80004864:	f91ff06f          	j	800047f4 <__mem_alloc+0xdc>
    80004868:	00068793          	mv	a5,a3
    8000486c:	f6dff06f          	j	800047d8 <__mem_alloc+0xc0>

0000000080004870 <__putc>:
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00813823          	sd	s0,16(sp)
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	02010413          	addi	s0,sp,32
    80004880:	00050793          	mv	a5,a0
    80004884:	fef40593          	addi	a1,s0,-17
    80004888:	00100613          	li	a2,1
    8000488c:	00000513          	li	a0,0
    80004890:	fef407a3          	sb	a5,-17(s0)
    80004894:	fffff097          	auipc	ra,0xfffff
    80004898:	918080e7          	jalr	-1768(ra) # 800031ac <console_write>
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	02010113          	addi	sp,sp,32
    800048a8:	00008067          	ret

00000000800048ac <__getc>:
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	fe840593          	addi	a1,s0,-24
    800048c0:	00100613          	li	a2,1
    800048c4:	00000513          	li	a0,0
    800048c8:	fffff097          	auipc	ra,0xfffff
    800048cc:	8c4080e7          	jalr	-1852(ra) # 8000318c <console_read>
    800048d0:	fe844503          	lbu	a0,-24(s0)
    800048d4:	01813083          	ld	ra,24(sp)
    800048d8:	01013403          	ld	s0,16(sp)
    800048dc:	02010113          	addi	sp,sp,32
    800048e0:	00008067          	ret

00000000800048e4 <console_handler>:
    800048e4:	fe010113          	addi	sp,sp,-32
    800048e8:	00813823          	sd	s0,16(sp)
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00913423          	sd	s1,8(sp)
    800048f4:	02010413          	addi	s0,sp,32
    800048f8:	14202773          	csrr	a4,scause
    800048fc:	100027f3          	csrr	a5,sstatus
    80004900:	0027f793          	andi	a5,a5,2
    80004904:	06079e63          	bnez	a5,80004980 <console_handler+0x9c>
    80004908:	00074c63          	bltz	a4,80004920 <console_handler+0x3c>
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	00813483          	ld	s1,8(sp)
    80004918:	02010113          	addi	sp,sp,32
    8000491c:	00008067          	ret
    80004920:	0ff77713          	andi	a4,a4,255
    80004924:	00900793          	li	a5,9
    80004928:	fef712e3          	bne	a4,a5,8000490c <console_handler+0x28>
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	4b8080e7          	jalr	1208(ra) # 80002de4 <plic_claim>
    80004934:	00a00793          	li	a5,10
    80004938:	00050493          	mv	s1,a0
    8000493c:	02f50c63          	beq	a0,a5,80004974 <console_handler+0x90>
    80004940:	fc0506e3          	beqz	a0,8000490c <console_handler+0x28>
    80004944:	00050593          	mv	a1,a0
    80004948:	00001517          	auipc	a0,0x1
    8000494c:	86050513          	addi	a0,a0,-1952 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	8d8080e7          	jalr	-1832(ra) # 80003228 <__printf>
    80004958:	01013403          	ld	s0,16(sp)
    8000495c:	01813083          	ld	ra,24(sp)
    80004960:	00048513          	mv	a0,s1
    80004964:	00813483          	ld	s1,8(sp)
    80004968:	02010113          	addi	sp,sp,32
    8000496c:	ffffe317          	auipc	t1,0xffffe
    80004970:	4b030067          	jr	1200(t1) # 80002e1c <plic_complete>
    80004974:	fffff097          	auipc	ra,0xfffff
    80004978:	1bc080e7          	jalr	444(ra) # 80003b30 <uartintr>
    8000497c:	fddff06f          	j	80004958 <console_handler+0x74>
    80004980:	00001517          	auipc	a0,0x1
    80004984:	92850513          	addi	a0,a0,-1752 # 800052a8 <digits+0x78>
    80004988:	fffff097          	auipc	ra,0xfffff
    8000498c:	844080e7          	jalr	-1980(ra) # 800031cc <panic>

0000000080004990 <kvmincrease>:
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	01213023          	sd	s2,0(sp)
    80004998:	00001937          	lui	s2,0x1
    8000499c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800049a0:	00813823          	sd	s0,16(sp)
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	02010413          	addi	s0,sp,32
    800049b0:	01250933          	add	s2,a0,s2
    800049b4:	00c95913          	srli	s2,s2,0xc
    800049b8:	02090863          	beqz	s2,800049e8 <kvmincrease+0x58>
    800049bc:	00000493          	li	s1,0
    800049c0:	00148493          	addi	s1,s1,1
    800049c4:	fffff097          	auipc	ra,0xfffff
    800049c8:	4bc080e7          	jalr	1212(ra) # 80003e80 <kalloc>
    800049cc:	fe991ae3          	bne	s2,s1,800049c0 <kvmincrease+0x30>
    800049d0:	01813083          	ld	ra,24(sp)
    800049d4:	01013403          	ld	s0,16(sp)
    800049d8:	00813483          	ld	s1,8(sp)
    800049dc:	00013903          	ld	s2,0(sp)
    800049e0:	02010113          	addi	sp,sp,32
    800049e4:	00008067          	ret
    800049e8:	01813083          	ld	ra,24(sp)
    800049ec:	01013403          	ld	s0,16(sp)
    800049f0:	00813483          	ld	s1,8(sp)
    800049f4:	00013903          	ld	s2,0(sp)
    800049f8:	00000513          	li	a0,0
    800049fc:	02010113          	addi	sp,sp,32
    80004a00:	00008067          	ret
	...

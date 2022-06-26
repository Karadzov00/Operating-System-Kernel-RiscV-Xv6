
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
    8000001c:	564020ef          	jal	ra,80002580 <start>

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
    800012e4:	124080e7          	jalr	292(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000130c:	0fc080e7          	jalr	252(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001334:	0fc080e7          	jalr	252(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800013f4:	03c080e7          	jalr	60(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_ZN9Semaphore4waitEv>:

#include "../h/Semaphore.hpp"


int Semaphore::wait() {
    if(--(this->val) < 0){
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
    800014a8:	f60080e7          	jalr	-160(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    if(++(this->val) <=0){
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
    80001530:	f00080e7          	jalr	-256(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001570:	e98080e7          	jalr	-360(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001598:	e70080e7          	jalr	-400(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800015c0:	e70080e7          	jalr	-400(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800015e8:	e48080e7          	jalr	-440(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
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
    800018e8:	71c50513          	addi	a0,a0,1820 # 80005000 <kvmincrease+0x680>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	b68080e7          	jalr	-1176(ra) # 80002454 <_Z11printStringPKc>
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	bcc080e7          	jalr	-1076(ra) # 800024c4 <_Z12printIntegerm>
    80001900:	00004517          	auipc	a0,0x4
    80001904:	8e850513          	addi	a0,a0,-1816 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	b4c080e7          	jalr	-1204(ra) # 80002454 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001910:	0014849b          	addiw	s1,s1,1
    80001914:	0ff4f493          	andi	s1,s1,255
    80001918:	00200793          	li	a5,2
    8000191c:	fc97f4e3          	bgeu	a5,s1,800018e4 <_Z11workerBodyCPv+0x30>
    }

    printString("C: dispatch\n");
    80001920:	00003517          	auipc	a0,0x3
    80001924:	6e850513          	addi	a0,a0,1768 # 80005008 <kvmincrease+0x688>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	b2c080e7          	jalr	-1236(ra) # 80002454 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001930:	00700313          	li	t1,7
    //thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001934:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80001938:	00003517          	auipc	a0,0x3
    8000193c:	6e050513          	addi	a0,a0,1760 # 80005018 <kvmincrease+0x698>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	b14080e7          	jalr	-1260(ra) # 80002454 <_Z11printStringPKc>
    80001948:	00090513          	mv	a0,s2
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	b78080e7          	jalr	-1160(ra) # 800024c4 <_Z12printIntegerm>
    80001954:	00004517          	auipc	a0,0x4
    80001958:	89450513          	addi	a0,a0,-1900 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	af8080e7          	jalr	-1288(ra) # 80002454 <_Z11printStringPKc>
    80001964:	0380006f          	j	8000199c <_Z11workerBodyCPv+0xe8>

    /*uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInteger(result); printString("\n");*/

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	69850513          	addi	a0,a0,1688 # 80005000 <kvmincrease+0x680>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	ae4080e7          	jalr	-1308(ra) # 80002454 <_Z11printStringPKc>
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	b48080e7          	jalr	-1208(ra) # 800024c4 <_Z12printIntegerm>
    80001984:	00004517          	auipc	a0,0x4
    80001988:	86450513          	addi	a0,a0,-1948 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	ac8080e7          	jalr	-1336(ra) # 80002454 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001994:	0014849b          	addiw	s1,s1,1
    80001998:	0ff4f493          	andi	s1,s1,255
    8000199c:	00500793          	li	a5,5
    800019a0:	fc97f4e3          	bgeu	a5,s1,80001968 <_Z11workerBodyCPv+0xb4>
    }

    printString("C finished!\n");
    800019a4:	00003517          	auipc	a0,0x3
    800019a8:	67c50513          	addi	a0,a0,1660 # 80005020 <kvmincrease+0x6a0>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	aa8080e7          	jalr	-1368(ra) # 80002454 <_Z11printStringPKc>
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
    80001a38:	5fc50513          	addi	a0,a0,1532 # 80005030 <kvmincrease+0x6b0>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	a18080e7          	jalr	-1512(ra) # 80002454 <_Z11printStringPKc>
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	a7c080e7          	jalr	-1412(ra) # 800024c4 <_Z12printIntegerm>
    80001a50:	00003517          	auipc	a0,0x3
    80001a54:	79850513          	addi	a0,a0,1944 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	9fc080e7          	jalr	-1540(ra) # 80002454 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001a60:	0014849b          	addiw	s1,s1,1
    80001a64:	0ff4f493          	andi	s1,s1,255
    80001a68:	00c00793          	li	a5,12
    80001a6c:	fc97f4e3          	bgeu	a5,s1,80001a34 <_Z11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	5c850513          	addi	a0,a0,1480 # 80005038 <kvmincrease+0x6b8>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	9dc080e7          	jalr	-1572(ra) # 80002454 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a80:	00500313          	li	t1,5
    80001a84:	0380006f          	j	80001abc <_Z11workerBodyDPv+0xa4>

    /*   uint64 result = fibonacci(16);
       printString("D: fibonaci="); printInteger(result); printString("\n");*/

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001a88:	00003517          	auipc	a0,0x3
    80001a8c:	5a850513          	addi	a0,a0,1448 # 80005030 <kvmincrease+0x6b0>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	9c4080e7          	jalr	-1596(ra) # 80002454 <_Z11printStringPKc>
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	a28080e7          	jalr	-1496(ra) # 800024c4 <_Z12printIntegerm>
    80001aa4:	00003517          	auipc	a0,0x3
    80001aa8:	74450513          	addi	a0,a0,1860 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	9a8080e7          	jalr	-1624(ra) # 80002454 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001ab4:	0014849b          	addiw	s1,s1,1
    80001ab8:	0ff4f493          	andi	s1,s1,255
    80001abc:	00f00793          	li	a5,15
    80001ac0:	fc97f4e3          	bgeu	a5,s1,80001a88 <_Z11workerBodyDPv+0x70>
    }

    printString("D finished!\n");
    80001ac4:	00003517          	auipc	a0,0x3
    80001ac8:	58450513          	addi	a0,a0,1412 # 80005048 <kvmincrease+0x6c8>
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	988080e7          	jalr	-1656(ra) # 80002454 <_Z11printStringPKc>
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
    80001b40:	51c50513          	addi	a0,a0,1308 # 80005058 <kvmincrease+0x6d8>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	910080e7          	jalr	-1776(ra) # 80002454 <_Z11printStringPKc>
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
    80001c24:	44850513          	addi	a0,a0,1096 # 80005068 <kvmincrease+0x6e8>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	82c080e7          	jalr	-2004(ra) # 80002454 <_Z11printStringPKc>
    80001c30:	00090513          	mv	a0,s2
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	890080e7          	jalr	-1904(ra) # 800024c4 <_Z12printIntegerm>
    80001c3c:	00003517          	auipc	a0,0x3
    80001c40:	5ac50513          	addi	a0,a0,1452 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	810080e7          	jalr	-2032(ra) # 80002454 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001c4c:	00000493          	li	s1,0
    80001c50:	fa1ff06f          	j	80001bf0 <_Z11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80001c54:	00003517          	auipc	a0,0x3
    80001c58:	41c50513          	addi	a0,a0,1052 # 80005070 <kvmincrease+0x6f0>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	7f8080e7          	jalr	2040(ra) # 80002454 <_Z11printStringPKc>
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
    80001ce8:	39c50513          	addi	a0,a0,924 # 80005080 <kvmincrease+0x700>
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	768080e7          	jalr	1896(ra) # 80002454 <_Z11printStringPKc>
    80001cf4:	00090513          	mv	a0,s2
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	7cc080e7          	jalr	1996(ra) # 800024c4 <_Z12printIntegerm>
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	4e850513          	addi	a0,a0,1256 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	74c080e7          	jalr	1868(ra) # 80002454 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001d10:	00000493          	li	s1,0
    80001d14:	fa1ff06f          	j	80001cb4 <_Z11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80001d18:	00003517          	auipc	a0,0x3
    80001d1c:	37050513          	addi	a0,a0,880 # 80005088 <kvmincrease+0x708>
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	734080e7          	jalr	1844(ra) # 80002454 <_Z11printStringPKc>
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
    80001dac:	2f050513          	addi	a0,a0,752 # 80005098 <kvmincrease+0x718>
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	6a4080e7          	jalr	1700(ra) # 80002454 <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyD, nullptr);
    80001db8:	00000613          	li	a2,0
    80001dbc:	00000597          	auipc	a1,0x0
    80001dc0:	c5c58593          	addi	a1,a1,-932 # 80001a18 <_Z11workerBodyDPv>
    80001dc4:	fe840513          	addi	a0,s0,-24
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	93c080e7          	jalr	-1732(ra) # 80001704 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80001dd0:	00003517          	auipc	a0,0x3
    80001dd4:	2e050513          	addi	a0,a0,736 # 800050b0 <kvmincrease+0x730>
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	67c080e7          	jalr	1660(ra) # 80002454 <_Z11printStringPKc>

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
    80001ebc:	574080e7          	jalr	1396(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001f0c:	4fc080e7          	jalr	1276(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800020b0:	08f48663          	beq	s1,a5,8000213c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        if(a0reg== 0x01 ){
    800020b4:	00100793          	li	a5,1
    800020b8:	0ef48663          	beq	s1,a5,800021a4 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
        else if(a0reg==0x02){
    800020bc:	00200793          	li	a5,2
    800020c0:	12f48063          	beq	s1,a5,800021e0 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if(a0reg==0x12){
    800020c4:	01200793          	li	a5,18
    800020c8:	14f48863          	beq	s1,a5,80002218 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
        else if(a0reg == 0x13){
    800020cc:	01300793          	li	a5,19
    800020d0:	18f48663          	beq	s1,a5,8000225c <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        else if(a0reg==0x04){
    800020d4:	00400793          	li	a5,4
    800020d8:	1af48a63          	beq	s1,a5,8000228c <_ZN5Riscv20handleSupervisorTrapEv+0x240>
        else if(a0reg==0x21){
    800020dc:	02100793          	li	a5,33
    800020e0:	1ef48463          	beq	s1,a5,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
        else if(a0reg==0x22){
    800020e4:	02200793          	li	a5,34
    800020e8:	24f48463          	beq	s1,a5,80002330 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
        else if(a0reg==0x23){
    800020ec:	02300793          	li	a5,35
    800020f0:	2cf48c63          	beq	s1,a5,800023c8 <_ZN5Riscv20handleSupervisorTrapEv+0x37c>
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
    8000211c:	00058513          	mv	a0,a1
            arg1->signal();
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	3bc080e7          	jalr	956(ra) # 800014dc <_ZN9Semaphore6signalEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002128:	00000793          	li	a5,0
    8000212c:	00078513          	mv	a0,a5
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002130:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002134:	14149073          	csrw	sepc,s1
}
    80002138:	f55ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000213c:	141027f3          	csrr	a5,sepc
    80002140:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    80002144:	f3843903          	ld	s2,-200(s0)
            uint64 sepc = r_sepc() + 4;
    80002148:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000214c:	100027f3          	csrr	a5,sstatus
    80002150:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    80002154:	f3043983          	ld	s3,-208(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80002158:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    8000215c:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80002160:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80002164:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80002168:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    8000216c:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80002170:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80002174:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	1d0080e7          	jalr	464(ra) # 80001348 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80002180:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80002184:	00050c63          	beqz	a0,8000219c <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    80002188:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    8000218c:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002190:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002194:	14191073          	csrw	sepc,s2
}
    80002198:	f1dff06f          	j	800020b4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
            else ret =-1;
    8000219c:	fff00793          	li	a5,-1
    800021a0:	fedff06f          	j	8000218c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021a4:	141027f3          	csrr	a5,sepc
    800021a8:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    800021ac:	f4843483          	ld	s1,-184(s0)
            uint64 sepc = r_sepc() + 4;
    800021b0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021b4:	100027f3          	csrr	a5,sstatus
    800021b8:	f4f43023          	sd	a5,-192(s0)
    return sstatus;
    800021bc:	f4043903          	ld	s2,-192(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800021c0:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    800021c4:	00651513          	slli	a0,a0,0x6
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	23c080e7          	jalr	572(ra) # 80002404 <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800021d0:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021d4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021d8:	14149073          	csrw	sepc,s1
}
    800021dc:	eb1ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021e0:	141027f3          	csrr	a5,sepc
    800021e4:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    800021e8:	f5843483          	ld	s1,-168(s0)
            uint64 sepc = r_sepc() + 4;
    800021ec:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021f0:	100027f3          	csrr	a5,sstatus
    800021f4:	f4f43823          	sd	a5,-176(s0)
    return sstatus;
    800021f8:	f5043903          	ld	s2,-176(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800021fc:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80002200:	00000097          	auipc	ra,0x0
    80002204:	22c080e7          	jalr	556(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002208:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000220c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002210:	14149073          	csrw	sepc,s1
}
    80002214:	e79ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002218:	141027f3          	csrr	a5,sepc
    8000221c:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    80002220:	f6843483          	ld	s1,-152(s0)
            uint64 sepc = r_sepc() + 4;
    80002224:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002228:	100027f3          	csrr	a5,sstatus
    8000222c:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    80002230:	f6043903          	ld	s2,-160(s0)
            _thread::running->finished=true;
    80002234:	00004797          	auipc	a5,0x4
    80002238:	97c7b783          	ld	a5,-1668(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000223c:	0007b783          	ld	a5,0(a5)
    80002240:	00100713          	li	a4,1
    80002244:	02e78423          	sb	a4,40(a5)
            _thread::dispatch();
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	020080e7          	jalr	32(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002250:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002254:	14149073          	csrw	sepc,s1
}
    80002258:	e35ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000225c:	141027f3          	csrr	a5,sepc
    80002260:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80002264:	f7843483          	ld	s1,-136(s0)
            uint64 sepc = r_sepc() + 4;
    80002268:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000226c:	100027f3          	csrr	a5,sstatus
    80002270:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80002274:	f7043903          	ld	s2,-144(s0)
            _thread::dispatch();
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	ff0080e7          	jalr	-16(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002280:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002284:	14149073          	csrw	sepc,s1
}
    80002288:	e05ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000228c:	141027f3          	csrr	a5,sepc
    80002290:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002294:	f8843483          	ld	s1,-120(s0)
            uint64 sepc = r_sepc() + 4;
    80002298:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000229c:	100027f3          	csrr	a5,sstatus
    800022a0:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800022a4:	f8043903          	ld	s2,-128(s0)
            _thread::timeSliceCounter = 0;
    800022a8:	00004797          	auipc	a5,0x4
    800022ac:	9207b783          	ld	a5,-1760(a5) # 80005bc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800022b0:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	fb4080e7          	jalr	-76(ra) # 80001268 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022bc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022c0:	14149073          	csrw	sepc,s1
}
    800022c4:	dc9ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022c8:	141027f3          	csrr	a5,sepc
    800022cc:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800022d0:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    800022d4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022d8:	100027f3          	csrr	a5,sstatus
    800022dc:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800022e0:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800022e4:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    800022e8:	06043603          	ld	a2,96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800022ec:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //init val
    800022f0:	00060a13          	mv	s4,a2
            Semaphore* sem = new Semaphore(arg2);
    800022f4:	01800513          	li	a0,24
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	264080e7          	jalr	612(ra) # 8000155c <_ZN9SemaphorenwEm>
#include "_thread.hpp"
#include "List.hpp"

class Semaphore {
public:
    Semaphore(uint64 init=1):val(init){}
    80002300:	01452023          	sw	s4,0(a0)
    List() : head(0), tail(0) {}
    80002304:	00053423          	sd	zero,8(a0)
    80002308:	00053823          	sd	zero,16(a0)
            *arg1=sem;
    8000230c:	00a9b023          	sd	a0,0(s3)
            if(sem!= nullptr)ret=0;
    80002310:	00050c63          	beqz	a0,80002328 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
    80002314:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002318:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000231c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002320:	14149073          	csrw	sepc,s1
}
    80002324:	d69ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
            else ret=-1;
    80002328:	fff00793          	li	a5,-1
    8000232c:	fedff06f          	j	80002318 <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002330:	141027f3          	csrr	a5,sepc
    80002334:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002338:	fa843983          	ld	s3,-88(s0)
            uint64 sepc = r_sepc() + 4;
    8000233c:	00498993          	addi	s3,s3,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002340:	100027f3          	csrr	a5,sstatus
    80002344:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002348:	fa043a03          	ld	s4,-96(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    8000234c:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    80002350:	00058793          	mv	a5,a1
            Semaphore* sem = *arg1;
    80002354:	0007b483          	ld	s1,0(a5)
    80002358:	0300006f          	j	80002388 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
        T *ret = elem->data;
    8000235c:	00053903          	ld	s2,0(a0)
        MemoryAllocator::kmem_free(elem);
    80002360:	00000097          	auipc	ra,0x0
    80002364:	0cc080e7          	jalr	204(ra) # 8000242c <_ZN15MemoryAllocator9kmem_freeEPv>
                t->deblocked=true;
    80002368:	00100793          	li	a5,1
    8000236c:	02f90c23          	sb	a5,56(s2)
                sem->val++;
    80002370:	0004a783          	lw	a5,0(s1)
    80002374:	0017879b          	addiw	a5,a5,1
    80002378:	00f4a023          	sw	a5,0(s1)
                Scheduler::put(t);
    8000237c:	00090513          	mv	a0,s2
    80002380:	00000097          	auipc	ra,0x0
    80002384:	b6c080e7          	jalr	-1172(ra) # 80001eec <_ZN9Scheduler3putEP7_thread>
        if (!head) { return 0; }
    80002388:	0084b503          	ld	a0,8(s1)
    8000238c:	02050063          	beqz	a0,800023ac <_ZN5Riscv20handleSupervisorTrapEv+0x360>
        return head->data;
    80002390:	00053783          	ld	a5,0(a0)
            while(sem->blocked.peekFirst()!=0){
    80002394:	00078c63          	beqz	a5,800023ac <_ZN5Riscv20handleSupervisorTrapEv+0x360>
        head = head->next;
    80002398:	00853783          	ld	a5,8(a0)
    8000239c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800023a0:	fa079ee3          	bnez	a5,8000235c <_ZN5Riscv20handleSupervisorTrapEv+0x310>
    800023a4:	0004b823          	sd	zero,16(s1)
    800023a8:	fb5ff06f          	j	8000235c <_ZN5Riscv20handleSupervisorTrapEv+0x310>
            delete sem;
    800023ac:	00048863          	beqz	s1,800023bc <_ZN5Riscv20handleSupervisorTrapEv+0x370>
    800023b0:	00048513          	mv	a0,s1
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	1f8080e7          	jalr	504(ra) # 800015ac <_ZN9SemaphoredlEPv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023bc:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023c0:	14199073          	csrw	sepc,s3
}
    800023c4:	cc9ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023c8:	141027f3          	csrr	a5,sepc
    800023cc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800023d0:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    800023d4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023d8:	100027f3          	csrr	a5,sstatus
    800023dc:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800023e0:	fb043903          	ld	s2,-80(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800023e4:	05843583          	ld	a1,88(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (sem_t*)
    800023e8:	00058513          	mv	a0,a1
            uint64 ret = arg1->wait();
    800023ec:	fffff097          	auipc	ra,0xfffff
    800023f0:	01c080e7          	jalr	28(ra) # 80001408 <_ZN9Semaphore4waitEv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    800023f4:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023f8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023fc:	14149073          	csrw	sepc,s1
}
    80002400:	c8dff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x40>

0000000080002404 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80002414:	00002097          	auipc	ra,0x2
    80002418:	2f4080e7          	jalr	756(ra) # 80004708 <__mem_alloc>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00113423          	sd	ra,8(sp)
    80002434:	00813023          	sd	s0,0(sp)
    80002438:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    8000243c:	00002097          	auipc	ra,0x2
    80002440:	200080e7          	jalr	512(ra) # 8000463c <__mem_free>
    80002444:	00813083          	ld	ra,8(sp)
    80002448:	00013403          	ld	s0,0(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002454:	fd010113          	addi	sp,sp,-48
    80002458:	02113423          	sd	ra,40(sp)
    8000245c:	02813023          	sd	s0,32(sp)
    80002460:	00913c23          	sd	s1,24(sp)
    80002464:	01213823          	sd	s2,16(sp)
    80002468:	03010413          	addi	s0,sp,48
    8000246c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002470:	100027f3          	csrr	a5,sstatus
    80002474:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002478:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000247c:	00200793          	li	a5,2
    80002480:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80002484:	0004c503          	lbu	a0,0(s1)
    80002488:	00050a63          	beqz	a0,8000249c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    8000248c:	00002097          	auipc	ra,0x2
    80002490:	3d4080e7          	jalr	980(ra) # 80004860 <__putc>
        string++;
    80002494:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002498:	fedff06f          	j	80002484 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    8000249c:	0009091b          	sext.w	s2,s2
    800024a0:	00297913          	andi	s2,s2,2
    800024a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800024a8:	10092073          	csrs	sstatus,s2
}
    800024ac:	02813083          	ld	ra,40(sp)
    800024b0:	02013403          	ld	s0,32(sp)
    800024b4:	01813483          	ld	s1,24(sp)
    800024b8:	01013903          	ld	s2,16(sp)
    800024bc:	03010113          	addi	sp,sp,48
    800024c0:	00008067          	ret

00000000800024c4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800024c4:	fc010113          	addi	sp,sp,-64
    800024c8:	02113c23          	sd	ra,56(sp)
    800024cc:	02813823          	sd	s0,48(sp)
    800024d0:	02913423          	sd	s1,40(sp)
    800024d4:	03213023          	sd	s2,32(sp)
    800024d8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024dc:	100027f3          	csrr	a5,sstatus
    800024e0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800024e4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024e8:	00200793          	li	a5,2
    800024ec:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800024f0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800024f4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800024f8:	00a00613          	li	a2,10
    800024fc:	02c5773b          	remuw	a4,a0,a2
    80002500:	02071693          	slli	a3,a4,0x20
    80002504:	0206d693          	srli	a3,a3,0x20
    80002508:	00003717          	auipc	a4,0x3
    8000250c:	bc070713          	addi	a4,a4,-1088 # 800050c8 <_ZZ12printIntegermE6digits>
    80002510:	00d70733          	add	a4,a4,a3
    80002514:	00074703          	lbu	a4,0(a4)
    80002518:	fe040693          	addi	a3,s0,-32
    8000251c:	009687b3          	add	a5,a3,s1
    80002520:	0014849b          	addiw	s1,s1,1
    80002524:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002528:	0005071b          	sext.w	a4,a0
    8000252c:	02c5553b          	divuw	a0,a0,a2
    80002530:	00900793          	li	a5,9
    80002534:	fce7e2e3          	bltu	a5,a4,800024f8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002538:	fff4849b          	addiw	s1,s1,-1
    8000253c:	0004ce63          	bltz	s1,80002558 <_Z12printIntegerm+0x94>
    80002540:	fe040793          	addi	a5,s0,-32
    80002544:	009787b3          	add	a5,a5,s1
    80002548:	ff07c503          	lbu	a0,-16(a5)
    8000254c:	00002097          	auipc	ra,0x2
    80002550:	314080e7          	jalr	788(ra) # 80004860 <__putc>
    80002554:	fe5ff06f          	j	80002538 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002558:	0009091b          	sext.w	s2,s2
    8000255c:	00297913          	andi	s2,s2,2
    80002560:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002564:	10092073          	csrs	sstatus,s2
}
    80002568:	03813083          	ld	ra,56(sp)
    8000256c:	03013403          	ld	s0,48(sp)
    80002570:	02813483          	ld	s1,40(sp)
    80002574:	02013903          	ld	s2,32(sp)
    80002578:	04010113          	addi	sp,sp,64
    8000257c:	00008067          	ret

0000000080002580 <start>:
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    8000258c:	300027f3          	csrr	a5,mstatus
    80002590:	ffffe737          	lui	a4,0xffffe
    80002594:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff792f>
    80002598:	00e7f7b3          	and	a5,a5,a4
    8000259c:	00001737          	lui	a4,0x1
    800025a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800025a4:	00e7e7b3          	or	a5,a5,a4
    800025a8:	30079073          	csrw	mstatus,a5
    800025ac:	00000797          	auipc	a5,0x0
    800025b0:	16078793          	addi	a5,a5,352 # 8000270c <system_main>
    800025b4:	34179073          	csrw	mepc,a5
    800025b8:	00000793          	li	a5,0
    800025bc:	18079073          	csrw	satp,a5
    800025c0:	000107b7          	lui	a5,0x10
    800025c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800025c8:	30279073          	csrw	medeleg,a5
    800025cc:	30379073          	csrw	mideleg,a5
    800025d0:	104027f3          	csrr	a5,sie
    800025d4:	2227e793          	ori	a5,a5,546
    800025d8:	10479073          	csrw	sie,a5
    800025dc:	fff00793          	li	a5,-1
    800025e0:	00a7d793          	srli	a5,a5,0xa
    800025e4:	3b079073          	csrw	pmpaddr0,a5
    800025e8:	00f00793          	li	a5,15
    800025ec:	3a079073          	csrw	pmpcfg0,a5
    800025f0:	f14027f3          	csrr	a5,mhartid
    800025f4:	0200c737          	lui	a4,0x200c
    800025f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800025fc:	0007869b          	sext.w	a3,a5
    80002600:	00269713          	slli	a4,a3,0x2
    80002604:	000f4637          	lui	a2,0xf4
    80002608:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000260c:	00d70733          	add	a4,a4,a3
    80002610:	0037979b          	slliw	a5,a5,0x3
    80002614:	020046b7          	lui	a3,0x2004
    80002618:	00d787b3          	add	a5,a5,a3
    8000261c:	00c585b3          	add	a1,a1,a2
    80002620:	00371693          	slli	a3,a4,0x3
    80002624:	00003717          	auipc	a4,0x3
    80002628:	63c70713          	addi	a4,a4,1596 # 80005c60 <timer_scratch>
    8000262c:	00b7b023          	sd	a1,0(a5)
    80002630:	00d70733          	add	a4,a4,a3
    80002634:	00f73c23          	sd	a5,24(a4)
    80002638:	02c73023          	sd	a2,32(a4)
    8000263c:	34071073          	csrw	mscratch,a4
    80002640:	00000797          	auipc	a5,0x0
    80002644:	6e078793          	addi	a5,a5,1760 # 80002d20 <timervec>
    80002648:	30579073          	csrw	mtvec,a5
    8000264c:	300027f3          	csrr	a5,mstatus
    80002650:	0087e793          	ori	a5,a5,8
    80002654:	30079073          	csrw	mstatus,a5
    80002658:	304027f3          	csrr	a5,mie
    8000265c:	0807e793          	ori	a5,a5,128
    80002660:	30479073          	csrw	mie,a5
    80002664:	f14027f3          	csrr	a5,mhartid
    80002668:	0007879b          	sext.w	a5,a5
    8000266c:	00078213          	mv	tp,a5
    80002670:	30200073          	mret
    80002674:	00813403          	ld	s0,8(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <timerinit>:
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00813423          	sd	s0,8(sp)
    80002688:	01010413          	addi	s0,sp,16
    8000268c:	f14027f3          	csrr	a5,mhartid
    80002690:	0200c737          	lui	a4,0x200c
    80002694:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002698:	0007869b          	sext.w	a3,a5
    8000269c:	00269713          	slli	a4,a3,0x2
    800026a0:	000f4637          	lui	a2,0xf4
    800026a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800026a8:	00d70733          	add	a4,a4,a3
    800026ac:	0037979b          	slliw	a5,a5,0x3
    800026b0:	020046b7          	lui	a3,0x2004
    800026b4:	00d787b3          	add	a5,a5,a3
    800026b8:	00c585b3          	add	a1,a1,a2
    800026bc:	00371693          	slli	a3,a4,0x3
    800026c0:	00003717          	auipc	a4,0x3
    800026c4:	5a070713          	addi	a4,a4,1440 # 80005c60 <timer_scratch>
    800026c8:	00b7b023          	sd	a1,0(a5)
    800026cc:	00d70733          	add	a4,a4,a3
    800026d0:	00f73c23          	sd	a5,24(a4)
    800026d4:	02c73023          	sd	a2,32(a4)
    800026d8:	34071073          	csrw	mscratch,a4
    800026dc:	00000797          	auipc	a5,0x0
    800026e0:	64478793          	addi	a5,a5,1604 # 80002d20 <timervec>
    800026e4:	30579073          	csrw	mtvec,a5
    800026e8:	300027f3          	csrr	a5,mstatus
    800026ec:	0087e793          	ori	a5,a5,8
    800026f0:	30079073          	csrw	mstatus,a5
    800026f4:	304027f3          	csrr	a5,mie
    800026f8:	0807e793          	ori	a5,a5,128
    800026fc:	30479073          	csrw	mie,a5
    80002700:	00813403          	ld	s0,8(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <system_main>:
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00813823          	sd	s0,16(sp)
    80002714:	00913423          	sd	s1,8(sp)
    80002718:	00113c23          	sd	ra,24(sp)
    8000271c:	02010413          	addi	s0,sp,32
    80002720:	00000097          	auipc	ra,0x0
    80002724:	0c4080e7          	jalr	196(ra) # 800027e4 <cpuid>
    80002728:	00003497          	auipc	s1,0x3
    8000272c:	4c848493          	addi	s1,s1,1224 # 80005bf0 <started>
    80002730:	02050263          	beqz	a0,80002754 <system_main+0x48>
    80002734:	0004a783          	lw	a5,0(s1)
    80002738:	0007879b          	sext.w	a5,a5
    8000273c:	fe078ce3          	beqz	a5,80002734 <system_main+0x28>
    80002740:	0ff0000f          	fence
    80002744:	00003517          	auipc	a0,0x3
    80002748:	9c450513          	addi	a0,a0,-1596 # 80005108 <_ZZ12printIntegermE6digits+0x40>
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	a70080e7          	jalr	-1424(ra) # 800031bc <panic>
    80002754:	00001097          	auipc	ra,0x1
    80002758:	9c4080e7          	jalr	-1596(ra) # 80003118 <consoleinit>
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	150080e7          	jalr	336(ra) # 800038ac <printfinit>
    80002764:	00003517          	auipc	a0,0x3
    80002768:	a8450513          	addi	a0,a0,-1404 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	aac080e7          	jalr	-1364(ra) # 80003218 <__printf>
    80002774:	00003517          	auipc	a0,0x3
    80002778:	96450513          	addi	a0,a0,-1692 # 800050d8 <_ZZ12printIntegermE6digits+0x10>
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	a9c080e7          	jalr	-1380(ra) # 80003218 <__printf>
    80002784:	00003517          	auipc	a0,0x3
    80002788:	a6450513          	addi	a0,a0,-1436 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	a8c080e7          	jalr	-1396(ra) # 80003218 <__printf>
    80002794:	00001097          	auipc	ra,0x1
    80002798:	4a4080e7          	jalr	1188(ra) # 80003c38 <kinit>
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	148080e7          	jalr	328(ra) # 800028e4 <trapinit>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	16c080e7          	jalr	364(ra) # 80002910 <trapinithart>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	5b4080e7          	jalr	1460(ra) # 80002d60 <plicinit>
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	5d4080e7          	jalr	1492(ra) # 80002d88 <plicinithart>
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	078080e7          	jalr	120(ra) # 80002834 <userinit>
    800027c4:	0ff0000f          	fence
    800027c8:	00100793          	li	a5,1
    800027cc:	00003517          	auipc	a0,0x3
    800027d0:	92450513          	addi	a0,a0,-1756 # 800050f0 <_ZZ12printIntegermE6digits+0x28>
    800027d4:	00f4a023          	sw	a5,0(s1)
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	a40080e7          	jalr	-1472(ra) # 80003218 <__printf>
    800027e0:	0000006f          	j	800027e0 <system_main+0xd4>

00000000800027e4 <cpuid>:
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00813423          	sd	s0,8(sp)
    800027ec:	01010413          	addi	s0,sp,16
    800027f0:	00020513          	mv	a0,tp
    800027f4:	00813403          	ld	s0,8(sp)
    800027f8:	0005051b          	sext.w	a0,a0
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <mycpu>:
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00813423          	sd	s0,8(sp)
    8000280c:	01010413          	addi	s0,sp,16
    80002810:	00020793          	mv	a5,tp
    80002814:	00813403          	ld	s0,8(sp)
    80002818:	0007879b          	sext.w	a5,a5
    8000281c:	00779793          	slli	a5,a5,0x7
    80002820:	00004517          	auipc	a0,0x4
    80002824:	47050513          	addi	a0,a0,1136 # 80006c90 <cpus>
    80002828:	00f50533          	add	a0,a0,a5
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <userinit>:
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00813423          	sd	s0,8(sp)
    8000283c:	01010413          	addi	s0,sp,16
    80002840:	00813403          	ld	s0,8(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	fffff317          	auipc	t1,0xfffff
    8000284c:	db430067          	jr	-588(t1) # 800015fc <main>

0000000080002850 <either_copyout>:
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
    80002860:	02051663          	bnez	a0,8000288c <either_copyout+0x3c>
    80002864:	00058513          	mv	a0,a1
    80002868:	00060593          	mv	a1,a2
    8000286c:	0006861b          	sext.w	a2,a3
    80002870:	00002097          	auipc	ra,0x2
    80002874:	c54080e7          	jalr	-940(ra) # 800044c4 <__memmove>
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	00000513          	li	a0,0
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret
    8000288c:	00003517          	auipc	a0,0x3
    80002890:	8a450513          	addi	a0,a0,-1884 # 80005130 <_ZZ12printIntegermE6digits+0x68>
    80002894:	00001097          	auipc	ra,0x1
    80002898:	928080e7          	jalr	-1752(ra) # 800031bc <panic>

000000008000289c <either_copyin>:
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	00113423          	sd	ra,8(sp)
    800028a8:	01010413          	addi	s0,sp,16
    800028ac:	02059463          	bnez	a1,800028d4 <either_copyin+0x38>
    800028b0:	00060593          	mv	a1,a2
    800028b4:	0006861b          	sext.w	a2,a3
    800028b8:	00002097          	auipc	ra,0x2
    800028bc:	c0c080e7          	jalr	-1012(ra) # 800044c4 <__memmove>
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	00000513          	li	a0,0
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret
    800028d4:	00003517          	auipc	a0,0x3
    800028d8:	88450513          	addi	a0,a0,-1916 # 80005158 <_ZZ12printIntegermE6digits+0x90>
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	8e0080e7          	jalr	-1824(ra) # 800031bc <panic>

00000000800028e4 <trapinit>:
    800028e4:	ff010113          	addi	sp,sp,-16
    800028e8:	00813423          	sd	s0,8(sp)
    800028ec:	01010413          	addi	s0,sp,16
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	00003597          	auipc	a1,0x3
    800028f8:	88c58593          	addi	a1,a1,-1908 # 80005180 <_ZZ12printIntegermE6digits+0xb8>
    800028fc:	00004517          	auipc	a0,0x4
    80002900:	41450513          	addi	a0,a0,1044 # 80006d10 <tickslock>
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00001317          	auipc	t1,0x1
    8000290c:	5c030067          	jr	1472(t1) # 80003ec8 <initlock>

0000000080002910 <trapinithart>:
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00813423          	sd	s0,8(sp)
    80002918:	01010413          	addi	s0,sp,16
    8000291c:	00000797          	auipc	a5,0x0
    80002920:	2f478793          	addi	a5,a5,756 # 80002c10 <kernelvec>
    80002924:	10579073          	csrw	stvec,a5
    80002928:	00813403          	ld	s0,8(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <usertrap>:
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00813423          	sd	s0,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    80002940:	00813403          	ld	s0,8(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <usertrapret>:
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret

0000000080002964 <kerneltrap>:
    80002964:	fe010113          	addi	sp,sp,-32
    80002968:	00813823          	sd	s0,16(sp)
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00913423          	sd	s1,8(sp)
    80002974:	02010413          	addi	s0,sp,32
    80002978:	142025f3          	csrr	a1,scause
    8000297c:	100027f3          	csrr	a5,sstatus
    80002980:	0027f793          	andi	a5,a5,2
    80002984:	10079c63          	bnez	a5,80002a9c <kerneltrap+0x138>
    80002988:	142027f3          	csrr	a5,scause
    8000298c:	0207ce63          	bltz	a5,800029c8 <kerneltrap+0x64>
    80002990:	00003517          	auipc	a0,0x3
    80002994:	83850513          	addi	a0,a0,-1992 # 800051c8 <_ZZ12printIntegermE6digits+0x100>
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	880080e7          	jalr	-1920(ra) # 80003218 <__printf>
    800029a0:	141025f3          	csrr	a1,sepc
    800029a4:	14302673          	csrr	a2,stval
    800029a8:	00003517          	auipc	a0,0x3
    800029ac:	83050513          	addi	a0,a0,-2000 # 800051d8 <_ZZ12printIntegermE6digits+0x110>
    800029b0:	00001097          	auipc	ra,0x1
    800029b4:	868080e7          	jalr	-1944(ra) # 80003218 <__printf>
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	83850513          	addi	a0,a0,-1992 # 800051f0 <_ZZ12printIntegermE6digits+0x128>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	7fc080e7          	jalr	2044(ra) # 800031bc <panic>
    800029c8:	0ff7f713          	andi	a4,a5,255
    800029cc:	00900693          	li	a3,9
    800029d0:	04d70063          	beq	a4,a3,80002a10 <kerneltrap+0xac>
    800029d4:	fff00713          	li	a4,-1
    800029d8:	03f71713          	slli	a4,a4,0x3f
    800029dc:	00170713          	addi	a4,a4,1
    800029e0:	fae798e3          	bne	a5,a4,80002990 <kerneltrap+0x2c>
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	e00080e7          	jalr	-512(ra) # 800027e4 <cpuid>
    800029ec:	06050663          	beqz	a0,80002a58 <kerneltrap+0xf4>
    800029f0:	144027f3          	csrr	a5,sip
    800029f4:	ffd7f793          	andi	a5,a5,-3
    800029f8:	14479073          	csrw	sip,a5
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	02010113          	addi	sp,sp,32
    80002a0c:	00008067          	ret
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	3c4080e7          	jalr	964(ra) # 80002dd4 <plic_claim>
    80002a18:	00a00793          	li	a5,10
    80002a1c:	00050493          	mv	s1,a0
    80002a20:	06f50863          	beq	a0,a5,80002a90 <kerneltrap+0x12c>
    80002a24:	fc050ce3          	beqz	a0,800029fc <kerneltrap+0x98>
    80002a28:	00050593          	mv	a1,a0
    80002a2c:	00002517          	auipc	a0,0x2
    80002a30:	77c50513          	addi	a0,a0,1916 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	7e4080e7          	jalr	2020(ra) # 80003218 <__printf>
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	01813083          	ld	ra,24(sp)
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00813483          	ld	s1,8(sp)
    80002a4c:	02010113          	addi	sp,sp,32
    80002a50:	00000317          	auipc	t1,0x0
    80002a54:	3bc30067          	jr	956(t1) # 80002e0c <plic_complete>
    80002a58:	00004517          	auipc	a0,0x4
    80002a5c:	2b850513          	addi	a0,a0,696 # 80006d10 <tickslock>
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	48c080e7          	jalr	1164(ra) # 80003eec <acquire>
    80002a68:	00003717          	auipc	a4,0x3
    80002a6c:	18c70713          	addi	a4,a4,396 # 80005bf4 <ticks>
    80002a70:	00072783          	lw	a5,0(a4)
    80002a74:	00004517          	auipc	a0,0x4
    80002a78:	29c50513          	addi	a0,a0,668 # 80006d10 <tickslock>
    80002a7c:	0017879b          	addiw	a5,a5,1
    80002a80:	00f72023          	sw	a5,0(a4)
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	534080e7          	jalr	1332(ra) # 80003fb8 <release>
    80002a8c:	f65ff06f          	j	800029f0 <kerneltrap+0x8c>
    80002a90:	00001097          	auipc	ra,0x1
    80002a94:	090080e7          	jalr	144(ra) # 80003b20 <uartintr>
    80002a98:	fa5ff06f          	j	80002a3c <kerneltrap+0xd8>
    80002a9c:	00002517          	auipc	a0,0x2
    80002aa0:	6ec50513          	addi	a0,a0,1772 # 80005188 <_ZZ12printIntegermE6digits+0xc0>
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	718080e7          	jalr	1816(ra) # 800031bc <panic>

0000000080002aac <clockintr>:
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	02010413          	addi	s0,sp,32
    80002ac0:	00004497          	auipc	s1,0x4
    80002ac4:	25048493          	addi	s1,s1,592 # 80006d10 <tickslock>
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	420080e7          	jalr	1056(ra) # 80003eec <acquire>
    80002ad4:	00003717          	auipc	a4,0x3
    80002ad8:	12070713          	addi	a4,a4,288 # 80005bf4 <ticks>
    80002adc:	00072783          	lw	a5,0(a4)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	01813083          	ld	ra,24(sp)
    80002ae8:	00048513          	mv	a0,s1
    80002aec:	0017879b          	addiw	a5,a5,1
    80002af0:	00813483          	ld	s1,8(sp)
    80002af4:	00f72023          	sw	a5,0(a4)
    80002af8:	02010113          	addi	sp,sp,32
    80002afc:	00001317          	auipc	t1,0x1
    80002b00:	4bc30067          	jr	1212(t1) # 80003fb8 <release>

0000000080002b04 <devintr>:
    80002b04:	142027f3          	csrr	a5,scause
    80002b08:	00000513          	li	a0,0
    80002b0c:	0007c463          	bltz	a5,80002b14 <devintr+0x10>
    80002b10:	00008067          	ret
    80002b14:	fe010113          	addi	sp,sp,-32
    80002b18:	00813823          	sd	s0,16(sp)
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	00913423          	sd	s1,8(sp)
    80002b24:	02010413          	addi	s0,sp,32
    80002b28:	0ff7f713          	andi	a4,a5,255
    80002b2c:	00900693          	li	a3,9
    80002b30:	04d70c63          	beq	a4,a3,80002b88 <devintr+0x84>
    80002b34:	fff00713          	li	a4,-1
    80002b38:	03f71713          	slli	a4,a4,0x3f
    80002b3c:	00170713          	addi	a4,a4,1
    80002b40:	00e78c63          	beq	a5,a4,80002b58 <devintr+0x54>
    80002b44:	01813083          	ld	ra,24(sp)
    80002b48:	01013403          	ld	s0,16(sp)
    80002b4c:	00813483          	ld	s1,8(sp)
    80002b50:	02010113          	addi	sp,sp,32
    80002b54:	00008067          	ret
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	c8c080e7          	jalr	-884(ra) # 800027e4 <cpuid>
    80002b60:	06050663          	beqz	a0,80002bcc <devintr+0xc8>
    80002b64:	144027f3          	csrr	a5,sip
    80002b68:	ffd7f793          	andi	a5,a5,-3
    80002b6c:	14479073          	csrw	sip,a5
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	00200513          	li	a0,2
    80002b80:	02010113          	addi	sp,sp,32
    80002b84:	00008067          	ret
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	24c080e7          	jalr	588(ra) # 80002dd4 <plic_claim>
    80002b90:	00a00793          	li	a5,10
    80002b94:	00050493          	mv	s1,a0
    80002b98:	06f50663          	beq	a0,a5,80002c04 <devintr+0x100>
    80002b9c:	00100513          	li	a0,1
    80002ba0:	fa0482e3          	beqz	s1,80002b44 <devintr+0x40>
    80002ba4:	00048593          	mv	a1,s1
    80002ba8:	00002517          	auipc	a0,0x2
    80002bac:	60050513          	addi	a0,a0,1536 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	668080e7          	jalr	1640(ra) # 80003218 <__printf>
    80002bb8:	00048513          	mv	a0,s1
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	250080e7          	jalr	592(ra) # 80002e0c <plic_complete>
    80002bc4:	00100513          	li	a0,1
    80002bc8:	f7dff06f          	j	80002b44 <devintr+0x40>
    80002bcc:	00004517          	auipc	a0,0x4
    80002bd0:	14450513          	addi	a0,a0,324 # 80006d10 <tickslock>
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	318080e7          	jalr	792(ra) # 80003eec <acquire>
    80002bdc:	00003717          	auipc	a4,0x3
    80002be0:	01870713          	addi	a4,a4,24 # 80005bf4 <ticks>
    80002be4:	00072783          	lw	a5,0(a4)
    80002be8:	00004517          	auipc	a0,0x4
    80002bec:	12850513          	addi	a0,a0,296 # 80006d10 <tickslock>
    80002bf0:	0017879b          	addiw	a5,a5,1
    80002bf4:	00f72023          	sw	a5,0(a4)
    80002bf8:	00001097          	auipc	ra,0x1
    80002bfc:	3c0080e7          	jalr	960(ra) # 80003fb8 <release>
    80002c00:	f65ff06f          	j	80002b64 <devintr+0x60>
    80002c04:	00001097          	auipc	ra,0x1
    80002c08:	f1c080e7          	jalr	-228(ra) # 80003b20 <uartintr>
    80002c0c:	fadff06f          	j	80002bb8 <devintr+0xb4>

0000000080002c10 <kernelvec>:
    80002c10:	f0010113          	addi	sp,sp,-256
    80002c14:	00113023          	sd	ra,0(sp)
    80002c18:	00213423          	sd	sp,8(sp)
    80002c1c:	00313823          	sd	gp,16(sp)
    80002c20:	00413c23          	sd	tp,24(sp)
    80002c24:	02513023          	sd	t0,32(sp)
    80002c28:	02613423          	sd	t1,40(sp)
    80002c2c:	02713823          	sd	t2,48(sp)
    80002c30:	02813c23          	sd	s0,56(sp)
    80002c34:	04913023          	sd	s1,64(sp)
    80002c38:	04a13423          	sd	a0,72(sp)
    80002c3c:	04b13823          	sd	a1,80(sp)
    80002c40:	04c13c23          	sd	a2,88(sp)
    80002c44:	06d13023          	sd	a3,96(sp)
    80002c48:	06e13423          	sd	a4,104(sp)
    80002c4c:	06f13823          	sd	a5,112(sp)
    80002c50:	07013c23          	sd	a6,120(sp)
    80002c54:	09113023          	sd	a7,128(sp)
    80002c58:	09213423          	sd	s2,136(sp)
    80002c5c:	09313823          	sd	s3,144(sp)
    80002c60:	09413c23          	sd	s4,152(sp)
    80002c64:	0b513023          	sd	s5,160(sp)
    80002c68:	0b613423          	sd	s6,168(sp)
    80002c6c:	0b713823          	sd	s7,176(sp)
    80002c70:	0b813c23          	sd	s8,184(sp)
    80002c74:	0d913023          	sd	s9,192(sp)
    80002c78:	0da13423          	sd	s10,200(sp)
    80002c7c:	0db13823          	sd	s11,208(sp)
    80002c80:	0dc13c23          	sd	t3,216(sp)
    80002c84:	0fd13023          	sd	t4,224(sp)
    80002c88:	0fe13423          	sd	t5,232(sp)
    80002c8c:	0ff13823          	sd	t6,240(sp)
    80002c90:	cd5ff0ef          	jal	ra,80002964 <kerneltrap>
    80002c94:	00013083          	ld	ra,0(sp)
    80002c98:	00813103          	ld	sp,8(sp)
    80002c9c:	01013183          	ld	gp,16(sp)
    80002ca0:	02013283          	ld	t0,32(sp)
    80002ca4:	02813303          	ld	t1,40(sp)
    80002ca8:	03013383          	ld	t2,48(sp)
    80002cac:	03813403          	ld	s0,56(sp)
    80002cb0:	04013483          	ld	s1,64(sp)
    80002cb4:	04813503          	ld	a0,72(sp)
    80002cb8:	05013583          	ld	a1,80(sp)
    80002cbc:	05813603          	ld	a2,88(sp)
    80002cc0:	06013683          	ld	a3,96(sp)
    80002cc4:	06813703          	ld	a4,104(sp)
    80002cc8:	07013783          	ld	a5,112(sp)
    80002ccc:	07813803          	ld	a6,120(sp)
    80002cd0:	08013883          	ld	a7,128(sp)
    80002cd4:	08813903          	ld	s2,136(sp)
    80002cd8:	09013983          	ld	s3,144(sp)
    80002cdc:	09813a03          	ld	s4,152(sp)
    80002ce0:	0a013a83          	ld	s5,160(sp)
    80002ce4:	0a813b03          	ld	s6,168(sp)
    80002ce8:	0b013b83          	ld	s7,176(sp)
    80002cec:	0b813c03          	ld	s8,184(sp)
    80002cf0:	0c013c83          	ld	s9,192(sp)
    80002cf4:	0c813d03          	ld	s10,200(sp)
    80002cf8:	0d013d83          	ld	s11,208(sp)
    80002cfc:	0d813e03          	ld	t3,216(sp)
    80002d00:	0e013e83          	ld	t4,224(sp)
    80002d04:	0e813f03          	ld	t5,232(sp)
    80002d08:	0f013f83          	ld	t6,240(sp)
    80002d0c:	10010113          	addi	sp,sp,256
    80002d10:	10200073          	sret
    80002d14:	00000013          	nop
    80002d18:	00000013          	nop
    80002d1c:	00000013          	nop

0000000080002d20 <timervec>:
    80002d20:	34051573          	csrrw	a0,mscratch,a0
    80002d24:	00b53023          	sd	a1,0(a0)
    80002d28:	00c53423          	sd	a2,8(a0)
    80002d2c:	00d53823          	sd	a3,16(a0)
    80002d30:	01853583          	ld	a1,24(a0)
    80002d34:	02053603          	ld	a2,32(a0)
    80002d38:	0005b683          	ld	a3,0(a1)
    80002d3c:	00c686b3          	add	a3,a3,a2
    80002d40:	00d5b023          	sd	a3,0(a1)
    80002d44:	00200593          	li	a1,2
    80002d48:	14459073          	csrw	sip,a1
    80002d4c:	01053683          	ld	a3,16(a0)
    80002d50:	00853603          	ld	a2,8(a0)
    80002d54:	00053583          	ld	a1,0(a0)
    80002d58:	34051573          	csrrw	a0,mscratch,a0
    80002d5c:	30200073          	mret

0000000080002d60 <plicinit>:
    80002d60:	ff010113          	addi	sp,sp,-16
    80002d64:	00813423          	sd	s0,8(sp)
    80002d68:	01010413          	addi	s0,sp,16
    80002d6c:	00813403          	ld	s0,8(sp)
    80002d70:	0c0007b7          	lui	a5,0xc000
    80002d74:	00100713          	li	a4,1
    80002d78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002d7c:	00e7a223          	sw	a4,4(a5)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret

0000000080002d88 <plicinithart>:
    80002d88:	ff010113          	addi	sp,sp,-16
    80002d8c:	00813023          	sd	s0,0(sp)
    80002d90:	00113423          	sd	ra,8(sp)
    80002d94:	01010413          	addi	s0,sp,16
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	a4c080e7          	jalr	-1460(ra) # 800027e4 <cpuid>
    80002da0:	0085171b          	slliw	a4,a0,0x8
    80002da4:	0c0027b7          	lui	a5,0xc002
    80002da8:	00e787b3          	add	a5,a5,a4
    80002dac:	40200713          	li	a4,1026
    80002db0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002db4:	00813083          	ld	ra,8(sp)
    80002db8:	00013403          	ld	s0,0(sp)
    80002dbc:	00d5151b          	slliw	a0,a0,0xd
    80002dc0:	0c2017b7          	lui	a5,0xc201
    80002dc4:	00a78533          	add	a0,a5,a0
    80002dc8:	00052023          	sw	zero,0(a0)
    80002dcc:	01010113          	addi	sp,sp,16
    80002dd0:	00008067          	ret

0000000080002dd4 <plic_claim>:
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00813023          	sd	s0,0(sp)
    80002ddc:	00113423          	sd	ra,8(sp)
    80002de0:	01010413          	addi	s0,sp,16
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	a00080e7          	jalr	-1536(ra) # 800027e4 <cpuid>
    80002dec:	00813083          	ld	ra,8(sp)
    80002df0:	00013403          	ld	s0,0(sp)
    80002df4:	00d5151b          	slliw	a0,a0,0xd
    80002df8:	0c2017b7          	lui	a5,0xc201
    80002dfc:	00a78533          	add	a0,a5,a0
    80002e00:	00452503          	lw	a0,4(a0)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <plic_complete>:
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	00113c23          	sd	ra,24(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00050493          	mv	s1,a0
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	9c0080e7          	jalr	-1600(ra) # 800027e4 <cpuid>
    80002e2c:	01813083          	ld	ra,24(sp)
    80002e30:	01013403          	ld	s0,16(sp)
    80002e34:	00d5179b          	slliw	a5,a0,0xd
    80002e38:	0c201737          	lui	a4,0xc201
    80002e3c:	00f707b3          	add	a5,a4,a5
    80002e40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002e44:	00813483          	ld	s1,8(sp)
    80002e48:	02010113          	addi	sp,sp,32
    80002e4c:	00008067          	ret

0000000080002e50 <consolewrite>:
    80002e50:	fb010113          	addi	sp,sp,-80
    80002e54:	04813023          	sd	s0,64(sp)
    80002e58:	04113423          	sd	ra,72(sp)
    80002e5c:	02913c23          	sd	s1,56(sp)
    80002e60:	03213823          	sd	s2,48(sp)
    80002e64:	03313423          	sd	s3,40(sp)
    80002e68:	03413023          	sd	s4,32(sp)
    80002e6c:	01513c23          	sd	s5,24(sp)
    80002e70:	05010413          	addi	s0,sp,80
    80002e74:	06c05c63          	blez	a2,80002eec <consolewrite+0x9c>
    80002e78:	00060993          	mv	s3,a2
    80002e7c:	00050a13          	mv	s4,a0
    80002e80:	00058493          	mv	s1,a1
    80002e84:	00000913          	li	s2,0
    80002e88:	fff00a93          	li	s5,-1
    80002e8c:	01c0006f          	j	80002ea8 <consolewrite+0x58>
    80002e90:	fbf44503          	lbu	a0,-65(s0)
    80002e94:	0019091b          	addiw	s2,s2,1
    80002e98:	00148493          	addi	s1,s1,1
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	a9c080e7          	jalr	-1380(ra) # 80003938 <uartputc>
    80002ea4:	03298063          	beq	s3,s2,80002ec4 <consolewrite+0x74>
    80002ea8:	00048613          	mv	a2,s1
    80002eac:	00100693          	li	a3,1
    80002eb0:	000a0593          	mv	a1,s4
    80002eb4:	fbf40513          	addi	a0,s0,-65
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	9e4080e7          	jalr	-1564(ra) # 8000289c <either_copyin>
    80002ec0:	fd5518e3          	bne	a0,s5,80002e90 <consolewrite+0x40>
    80002ec4:	04813083          	ld	ra,72(sp)
    80002ec8:	04013403          	ld	s0,64(sp)
    80002ecc:	03813483          	ld	s1,56(sp)
    80002ed0:	02813983          	ld	s3,40(sp)
    80002ed4:	02013a03          	ld	s4,32(sp)
    80002ed8:	01813a83          	ld	s5,24(sp)
    80002edc:	00090513          	mv	a0,s2
    80002ee0:	03013903          	ld	s2,48(sp)
    80002ee4:	05010113          	addi	sp,sp,80
    80002ee8:	00008067          	ret
    80002eec:	00000913          	li	s2,0
    80002ef0:	fd5ff06f          	j	80002ec4 <consolewrite+0x74>

0000000080002ef4 <consoleread>:
    80002ef4:	f9010113          	addi	sp,sp,-112
    80002ef8:	06813023          	sd	s0,96(sp)
    80002efc:	04913c23          	sd	s1,88(sp)
    80002f00:	05213823          	sd	s2,80(sp)
    80002f04:	05313423          	sd	s3,72(sp)
    80002f08:	05413023          	sd	s4,64(sp)
    80002f0c:	03513c23          	sd	s5,56(sp)
    80002f10:	03613823          	sd	s6,48(sp)
    80002f14:	03713423          	sd	s7,40(sp)
    80002f18:	03813023          	sd	s8,32(sp)
    80002f1c:	06113423          	sd	ra,104(sp)
    80002f20:	01913c23          	sd	s9,24(sp)
    80002f24:	07010413          	addi	s0,sp,112
    80002f28:	00060b93          	mv	s7,a2
    80002f2c:	00050913          	mv	s2,a0
    80002f30:	00058c13          	mv	s8,a1
    80002f34:	00060b1b          	sext.w	s6,a2
    80002f38:	00004497          	auipc	s1,0x4
    80002f3c:	e0048493          	addi	s1,s1,-512 # 80006d38 <cons>
    80002f40:	00400993          	li	s3,4
    80002f44:	fff00a13          	li	s4,-1
    80002f48:	00a00a93          	li	s5,10
    80002f4c:	05705e63          	blez	s7,80002fa8 <consoleread+0xb4>
    80002f50:	09c4a703          	lw	a4,156(s1)
    80002f54:	0984a783          	lw	a5,152(s1)
    80002f58:	0007071b          	sext.w	a4,a4
    80002f5c:	08e78463          	beq	a5,a4,80002fe4 <consoleread+0xf0>
    80002f60:	07f7f713          	andi	a4,a5,127
    80002f64:	00e48733          	add	a4,s1,a4
    80002f68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002f6c:	0017869b          	addiw	a3,a5,1
    80002f70:	08d4ac23          	sw	a3,152(s1)
    80002f74:	00070c9b          	sext.w	s9,a4
    80002f78:	0b370663          	beq	a4,s3,80003024 <consoleread+0x130>
    80002f7c:	00100693          	li	a3,1
    80002f80:	f9f40613          	addi	a2,s0,-97
    80002f84:	000c0593          	mv	a1,s8
    80002f88:	00090513          	mv	a0,s2
    80002f8c:	f8e40fa3          	sb	a4,-97(s0)
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	8c0080e7          	jalr	-1856(ra) # 80002850 <either_copyout>
    80002f98:	01450863          	beq	a0,s4,80002fa8 <consoleread+0xb4>
    80002f9c:	001c0c13          	addi	s8,s8,1
    80002fa0:	fffb8b9b          	addiw	s7,s7,-1
    80002fa4:	fb5c94e3          	bne	s9,s5,80002f4c <consoleread+0x58>
    80002fa8:	000b851b          	sext.w	a0,s7
    80002fac:	06813083          	ld	ra,104(sp)
    80002fb0:	06013403          	ld	s0,96(sp)
    80002fb4:	05813483          	ld	s1,88(sp)
    80002fb8:	05013903          	ld	s2,80(sp)
    80002fbc:	04813983          	ld	s3,72(sp)
    80002fc0:	04013a03          	ld	s4,64(sp)
    80002fc4:	03813a83          	ld	s5,56(sp)
    80002fc8:	02813b83          	ld	s7,40(sp)
    80002fcc:	02013c03          	ld	s8,32(sp)
    80002fd0:	01813c83          	ld	s9,24(sp)
    80002fd4:	40ab053b          	subw	a0,s6,a0
    80002fd8:	03013b03          	ld	s6,48(sp)
    80002fdc:	07010113          	addi	sp,sp,112
    80002fe0:	00008067          	ret
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	1d8080e7          	jalr	472(ra) # 800041bc <push_on>
    80002fec:	0984a703          	lw	a4,152(s1)
    80002ff0:	09c4a783          	lw	a5,156(s1)
    80002ff4:	0007879b          	sext.w	a5,a5
    80002ff8:	fef70ce3          	beq	a4,a5,80002ff0 <consoleread+0xfc>
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	234080e7          	jalr	564(ra) # 80004230 <pop_on>
    80003004:	0984a783          	lw	a5,152(s1)
    80003008:	07f7f713          	andi	a4,a5,127
    8000300c:	00e48733          	add	a4,s1,a4
    80003010:	01874703          	lbu	a4,24(a4)
    80003014:	0017869b          	addiw	a3,a5,1
    80003018:	08d4ac23          	sw	a3,152(s1)
    8000301c:	00070c9b          	sext.w	s9,a4
    80003020:	f5371ee3          	bne	a4,s3,80002f7c <consoleread+0x88>
    80003024:	000b851b          	sext.w	a0,s7
    80003028:	f96bf2e3          	bgeu	s7,s6,80002fac <consoleread+0xb8>
    8000302c:	08f4ac23          	sw	a5,152(s1)
    80003030:	f7dff06f          	j	80002fac <consoleread+0xb8>

0000000080003034 <consputc>:
    80003034:	10000793          	li	a5,256
    80003038:	00f50663          	beq	a0,a5,80003044 <consputc+0x10>
    8000303c:	00001317          	auipc	t1,0x1
    80003040:	9f430067          	jr	-1548(t1) # 80003a30 <uartputc_sync>
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	00800513          	li	a0,8
    80003058:	00001097          	auipc	ra,0x1
    8000305c:	9d8080e7          	jalr	-1576(ra) # 80003a30 <uartputc_sync>
    80003060:	02000513          	li	a0,32
    80003064:	00001097          	auipc	ra,0x1
    80003068:	9cc080e7          	jalr	-1588(ra) # 80003a30 <uartputc_sync>
    8000306c:	00013403          	ld	s0,0(sp)
    80003070:	00813083          	ld	ra,8(sp)
    80003074:	00800513          	li	a0,8
    80003078:	01010113          	addi	sp,sp,16
    8000307c:	00001317          	auipc	t1,0x1
    80003080:	9b430067          	jr	-1612(t1) # 80003a30 <uartputc_sync>

0000000080003084 <consoleintr>:
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00813823          	sd	s0,16(sp)
    8000308c:	00913423          	sd	s1,8(sp)
    80003090:	01213023          	sd	s2,0(sp)
    80003094:	00113c23          	sd	ra,24(sp)
    80003098:	02010413          	addi	s0,sp,32
    8000309c:	00004917          	auipc	s2,0x4
    800030a0:	c9c90913          	addi	s2,s2,-868 # 80006d38 <cons>
    800030a4:	00050493          	mv	s1,a0
    800030a8:	00090513          	mv	a0,s2
    800030ac:	00001097          	auipc	ra,0x1
    800030b0:	e40080e7          	jalr	-448(ra) # 80003eec <acquire>
    800030b4:	02048c63          	beqz	s1,800030ec <consoleintr+0x68>
    800030b8:	0a092783          	lw	a5,160(s2)
    800030bc:	09892703          	lw	a4,152(s2)
    800030c0:	07f00693          	li	a3,127
    800030c4:	40e7873b          	subw	a4,a5,a4
    800030c8:	02e6e263          	bltu	a3,a4,800030ec <consoleintr+0x68>
    800030cc:	00d00713          	li	a4,13
    800030d0:	04e48063          	beq	s1,a4,80003110 <consoleintr+0x8c>
    800030d4:	07f7f713          	andi	a4,a5,127
    800030d8:	00e90733          	add	a4,s2,a4
    800030dc:	0017879b          	addiw	a5,a5,1
    800030e0:	0af92023          	sw	a5,160(s2)
    800030e4:	00970c23          	sb	s1,24(a4)
    800030e8:	08f92e23          	sw	a5,156(s2)
    800030ec:	01013403          	ld	s0,16(sp)
    800030f0:	01813083          	ld	ra,24(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	00013903          	ld	s2,0(sp)
    800030fc:	00004517          	auipc	a0,0x4
    80003100:	c3c50513          	addi	a0,a0,-964 # 80006d38 <cons>
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00001317          	auipc	t1,0x1
    8000310c:	eb030067          	jr	-336(t1) # 80003fb8 <release>
    80003110:	00a00493          	li	s1,10
    80003114:	fc1ff06f          	j	800030d4 <consoleintr+0x50>

0000000080003118 <consoleinit>:
    80003118:	fe010113          	addi	sp,sp,-32
    8000311c:	00113c23          	sd	ra,24(sp)
    80003120:	00813823          	sd	s0,16(sp)
    80003124:	00913423          	sd	s1,8(sp)
    80003128:	02010413          	addi	s0,sp,32
    8000312c:	00004497          	auipc	s1,0x4
    80003130:	c0c48493          	addi	s1,s1,-1012 # 80006d38 <cons>
    80003134:	00048513          	mv	a0,s1
    80003138:	00002597          	auipc	a1,0x2
    8000313c:	0c858593          	addi	a1,a1,200 # 80005200 <_ZZ12printIntegermE6digits+0x138>
    80003140:	00001097          	auipc	ra,0x1
    80003144:	d88080e7          	jalr	-632(ra) # 80003ec8 <initlock>
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	7ac080e7          	jalr	1964(ra) # 800038f4 <uartinit>
    80003150:	01813083          	ld	ra,24(sp)
    80003154:	01013403          	ld	s0,16(sp)
    80003158:	00000797          	auipc	a5,0x0
    8000315c:	d9c78793          	addi	a5,a5,-612 # 80002ef4 <consoleread>
    80003160:	0af4bc23          	sd	a5,184(s1)
    80003164:	00000797          	auipc	a5,0x0
    80003168:	cec78793          	addi	a5,a5,-788 # 80002e50 <consolewrite>
    8000316c:	0cf4b023          	sd	a5,192(s1)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret

000000008000317c <console_read>:
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00813423          	sd	s0,8(sp)
    80003184:	01010413          	addi	s0,sp,16
    80003188:	00813403          	ld	s0,8(sp)
    8000318c:	00004317          	auipc	t1,0x4
    80003190:	c6433303          	ld	t1,-924(t1) # 80006df0 <devsw+0x10>
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00030067          	jr	t1

000000008000319c <console_write>:
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    800031a8:	00813403          	ld	s0,8(sp)
    800031ac:	00004317          	auipc	t1,0x4
    800031b0:	c4c33303          	ld	t1,-948(t1) # 80006df8 <devsw+0x18>
    800031b4:	01010113          	addi	sp,sp,16
    800031b8:	00030067          	jr	t1

00000000800031bc <panic>:
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00113c23          	sd	ra,24(sp)
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	02010413          	addi	s0,sp,32
    800031d0:	00050493          	mv	s1,a0
    800031d4:	00002517          	auipc	a0,0x2
    800031d8:	03450513          	addi	a0,a0,52 # 80005208 <_ZZ12printIntegermE6digits+0x140>
    800031dc:	00004797          	auipc	a5,0x4
    800031e0:	ca07ae23          	sw	zero,-836(a5) # 80006e98 <pr+0x18>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	034080e7          	jalr	52(ra) # 80003218 <__printf>
    800031ec:	00048513          	mv	a0,s1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	028080e7          	jalr	40(ra) # 80003218 <__printf>
    800031f8:	00002517          	auipc	a0,0x2
    800031fc:	ff050513          	addi	a0,a0,-16 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80003200:	00000097          	auipc	ra,0x0
    80003204:	018080e7          	jalr	24(ra) # 80003218 <__printf>
    80003208:	00100793          	li	a5,1
    8000320c:	00003717          	auipc	a4,0x3
    80003210:	9ef72623          	sw	a5,-1556(a4) # 80005bf8 <panicked>
    80003214:	0000006f          	j	80003214 <panic+0x58>

0000000080003218 <__printf>:
    80003218:	f3010113          	addi	sp,sp,-208
    8000321c:	08813023          	sd	s0,128(sp)
    80003220:	07313423          	sd	s3,104(sp)
    80003224:	09010413          	addi	s0,sp,144
    80003228:	05813023          	sd	s8,64(sp)
    8000322c:	08113423          	sd	ra,136(sp)
    80003230:	06913c23          	sd	s1,120(sp)
    80003234:	07213823          	sd	s2,112(sp)
    80003238:	07413023          	sd	s4,96(sp)
    8000323c:	05513c23          	sd	s5,88(sp)
    80003240:	05613823          	sd	s6,80(sp)
    80003244:	05713423          	sd	s7,72(sp)
    80003248:	03913c23          	sd	s9,56(sp)
    8000324c:	03a13823          	sd	s10,48(sp)
    80003250:	03b13423          	sd	s11,40(sp)
    80003254:	00004317          	auipc	t1,0x4
    80003258:	c2c30313          	addi	t1,t1,-980 # 80006e80 <pr>
    8000325c:	01832c03          	lw	s8,24(t1)
    80003260:	00b43423          	sd	a1,8(s0)
    80003264:	00c43823          	sd	a2,16(s0)
    80003268:	00d43c23          	sd	a3,24(s0)
    8000326c:	02e43023          	sd	a4,32(s0)
    80003270:	02f43423          	sd	a5,40(s0)
    80003274:	03043823          	sd	a6,48(s0)
    80003278:	03143c23          	sd	a7,56(s0)
    8000327c:	00050993          	mv	s3,a0
    80003280:	4a0c1663          	bnez	s8,8000372c <__printf+0x514>
    80003284:	60098c63          	beqz	s3,8000389c <__printf+0x684>
    80003288:	0009c503          	lbu	a0,0(s3)
    8000328c:	00840793          	addi	a5,s0,8
    80003290:	f6f43c23          	sd	a5,-136(s0)
    80003294:	00000493          	li	s1,0
    80003298:	22050063          	beqz	a0,800034b8 <__printf+0x2a0>
    8000329c:	00002a37          	lui	s4,0x2
    800032a0:	00018ab7          	lui	s5,0x18
    800032a4:	000f4b37          	lui	s6,0xf4
    800032a8:	00989bb7          	lui	s7,0x989
    800032ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800032b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800032b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800032b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800032bc:	00148c9b          	addiw	s9,s1,1
    800032c0:	02500793          	li	a5,37
    800032c4:	01998933          	add	s2,s3,s9
    800032c8:	38f51263          	bne	a0,a5,8000364c <__printf+0x434>
    800032cc:	00094783          	lbu	a5,0(s2)
    800032d0:	00078c9b          	sext.w	s9,a5
    800032d4:	1e078263          	beqz	a5,800034b8 <__printf+0x2a0>
    800032d8:	0024849b          	addiw	s1,s1,2
    800032dc:	07000713          	li	a4,112
    800032e0:	00998933          	add	s2,s3,s1
    800032e4:	38e78a63          	beq	a5,a4,80003678 <__printf+0x460>
    800032e8:	20f76863          	bltu	a4,a5,800034f8 <__printf+0x2e0>
    800032ec:	42a78863          	beq	a5,a0,8000371c <__printf+0x504>
    800032f0:	06400713          	li	a4,100
    800032f4:	40e79663          	bne	a5,a4,80003700 <__printf+0x4e8>
    800032f8:	f7843783          	ld	a5,-136(s0)
    800032fc:	0007a603          	lw	a2,0(a5)
    80003300:	00878793          	addi	a5,a5,8
    80003304:	f6f43c23          	sd	a5,-136(s0)
    80003308:	42064a63          	bltz	a2,8000373c <__printf+0x524>
    8000330c:	00a00713          	li	a4,10
    80003310:	02e677bb          	remuw	a5,a2,a4
    80003314:	00002d97          	auipc	s11,0x2
    80003318:	f1cd8d93          	addi	s11,s11,-228 # 80005230 <digits>
    8000331c:	00900593          	li	a1,9
    80003320:	0006051b          	sext.w	a0,a2
    80003324:	00000c93          	li	s9,0
    80003328:	02079793          	slli	a5,a5,0x20
    8000332c:	0207d793          	srli	a5,a5,0x20
    80003330:	00fd87b3          	add	a5,s11,a5
    80003334:	0007c783          	lbu	a5,0(a5)
    80003338:	02e656bb          	divuw	a3,a2,a4
    8000333c:	f8f40023          	sb	a5,-128(s0)
    80003340:	14c5d863          	bge	a1,a2,80003490 <__printf+0x278>
    80003344:	06300593          	li	a1,99
    80003348:	00100c93          	li	s9,1
    8000334c:	02e6f7bb          	remuw	a5,a3,a4
    80003350:	02079793          	slli	a5,a5,0x20
    80003354:	0207d793          	srli	a5,a5,0x20
    80003358:	00fd87b3          	add	a5,s11,a5
    8000335c:	0007c783          	lbu	a5,0(a5)
    80003360:	02e6d73b          	divuw	a4,a3,a4
    80003364:	f8f400a3          	sb	a5,-127(s0)
    80003368:	12a5f463          	bgeu	a1,a0,80003490 <__printf+0x278>
    8000336c:	00a00693          	li	a3,10
    80003370:	00900593          	li	a1,9
    80003374:	02d777bb          	remuw	a5,a4,a3
    80003378:	02079793          	slli	a5,a5,0x20
    8000337c:	0207d793          	srli	a5,a5,0x20
    80003380:	00fd87b3          	add	a5,s11,a5
    80003384:	0007c503          	lbu	a0,0(a5)
    80003388:	02d757bb          	divuw	a5,a4,a3
    8000338c:	f8a40123          	sb	a0,-126(s0)
    80003390:	48e5f263          	bgeu	a1,a4,80003814 <__printf+0x5fc>
    80003394:	06300513          	li	a0,99
    80003398:	02d7f5bb          	remuw	a1,a5,a3
    8000339c:	02059593          	slli	a1,a1,0x20
    800033a0:	0205d593          	srli	a1,a1,0x20
    800033a4:	00bd85b3          	add	a1,s11,a1
    800033a8:	0005c583          	lbu	a1,0(a1)
    800033ac:	02d7d7bb          	divuw	a5,a5,a3
    800033b0:	f8b401a3          	sb	a1,-125(s0)
    800033b4:	48e57263          	bgeu	a0,a4,80003838 <__printf+0x620>
    800033b8:	3e700513          	li	a0,999
    800033bc:	02d7f5bb          	remuw	a1,a5,a3
    800033c0:	02059593          	slli	a1,a1,0x20
    800033c4:	0205d593          	srli	a1,a1,0x20
    800033c8:	00bd85b3          	add	a1,s11,a1
    800033cc:	0005c583          	lbu	a1,0(a1)
    800033d0:	02d7d7bb          	divuw	a5,a5,a3
    800033d4:	f8b40223          	sb	a1,-124(s0)
    800033d8:	46e57663          	bgeu	a0,a4,80003844 <__printf+0x62c>
    800033dc:	02d7f5bb          	remuw	a1,a5,a3
    800033e0:	02059593          	slli	a1,a1,0x20
    800033e4:	0205d593          	srli	a1,a1,0x20
    800033e8:	00bd85b3          	add	a1,s11,a1
    800033ec:	0005c583          	lbu	a1,0(a1)
    800033f0:	02d7d7bb          	divuw	a5,a5,a3
    800033f4:	f8b402a3          	sb	a1,-123(s0)
    800033f8:	46ea7863          	bgeu	s4,a4,80003868 <__printf+0x650>
    800033fc:	02d7f5bb          	remuw	a1,a5,a3
    80003400:	02059593          	slli	a1,a1,0x20
    80003404:	0205d593          	srli	a1,a1,0x20
    80003408:	00bd85b3          	add	a1,s11,a1
    8000340c:	0005c583          	lbu	a1,0(a1)
    80003410:	02d7d7bb          	divuw	a5,a5,a3
    80003414:	f8b40323          	sb	a1,-122(s0)
    80003418:	3eeaf863          	bgeu	s5,a4,80003808 <__printf+0x5f0>
    8000341c:	02d7f5bb          	remuw	a1,a5,a3
    80003420:	02059593          	slli	a1,a1,0x20
    80003424:	0205d593          	srli	a1,a1,0x20
    80003428:	00bd85b3          	add	a1,s11,a1
    8000342c:	0005c583          	lbu	a1,0(a1)
    80003430:	02d7d7bb          	divuw	a5,a5,a3
    80003434:	f8b403a3          	sb	a1,-121(s0)
    80003438:	42eb7e63          	bgeu	s6,a4,80003874 <__printf+0x65c>
    8000343c:	02d7f5bb          	remuw	a1,a5,a3
    80003440:	02059593          	slli	a1,a1,0x20
    80003444:	0205d593          	srli	a1,a1,0x20
    80003448:	00bd85b3          	add	a1,s11,a1
    8000344c:	0005c583          	lbu	a1,0(a1)
    80003450:	02d7d7bb          	divuw	a5,a5,a3
    80003454:	f8b40423          	sb	a1,-120(s0)
    80003458:	42ebfc63          	bgeu	s7,a4,80003890 <__printf+0x678>
    8000345c:	02079793          	slli	a5,a5,0x20
    80003460:	0207d793          	srli	a5,a5,0x20
    80003464:	00fd8db3          	add	s11,s11,a5
    80003468:	000dc703          	lbu	a4,0(s11)
    8000346c:	00a00793          	li	a5,10
    80003470:	00900c93          	li	s9,9
    80003474:	f8e404a3          	sb	a4,-119(s0)
    80003478:	00065c63          	bgez	a2,80003490 <__printf+0x278>
    8000347c:	f9040713          	addi	a4,s0,-112
    80003480:	00f70733          	add	a4,a4,a5
    80003484:	02d00693          	li	a3,45
    80003488:	fed70823          	sb	a3,-16(a4)
    8000348c:	00078c93          	mv	s9,a5
    80003490:	f8040793          	addi	a5,s0,-128
    80003494:	01978cb3          	add	s9,a5,s9
    80003498:	f7f40d13          	addi	s10,s0,-129
    8000349c:	000cc503          	lbu	a0,0(s9)
    800034a0:	fffc8c93          	addi	s9,s9,-1
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	b90080e7          	jalr	-1136(ra) # 80003034 <consputc>
    800034ac:	ffac98e3          	bne	s9,s10,8000349c <__printf+0x284>
    800034b0:	00094503          	lbu	a0,0(s2)
    800034b4:	e00514e3          	bnez	a0,800032bc <__printf+0xa4>
    800034b8:	1a0c1663          	bnez	s8,80003664 <__printf+0x44c>
    800034bc:	08813083          	ld	ra,136(sp)
    800034c0:	08013403          	ld	s0,128(sp)
    800034c4:	07813483          	ld	s1,120(sp)
    800034c8:	07013903          	ld	s2,112(sp)
    800034cc:	06813983          	ld	s3,104(sp)
    800034d0:	06013a03          	ld	s4,96(sp)
    800034d4:	05813a83          	ld	s5,88(sp)
    800034d8:	05013b03          	ld	s6,80(sp)
    800034dc:	04813b83          	ld	s7,72(sp)
    800034e0:	04013c03          	ld	s8,64(sp)
    800034e4:	03813c83          	ld	s9,56(sp)
    800034e8:	03013d03          	ld	s10,48(sp)
    800034ec:	02813d83          	ld	s11,40(sp)
    800034f0:	0d010113          	addi	sp,sp,208
    800034f4:	00008067          	ret
    800034f8:	07300713          	li	a4,115
    800034fc:	1ce78a63          	beq	a5,a4,800036d0 <__printf+0x4b8>
    80003500:	07800713          	li	a4,120
    80003504:	1ee79e63          	bne	a5,a4,80003700 <__printf+0x4e8>
    80003508:	f7843783          	ld	a5,-136(s0)
    8000350c:	0007a703          	lw	a4,0(a5)
    80003510:	00878793          	addi	a5,a5,8
    80003514:	f6f43c23          	sd	a5,-136(s0)
    80003518:	28074263          	bltz	a4,8000379c <__printf+0x584>
    8000351c:	00002d97          	auipc	s11,0x2
    80003520:	d14d8d93          	addi	s11,s11,-748 # 80005230 <digits>
    80003524:	00f77793          	andi	a5,a4,15
    80003528:	00fd87b3          	add	a5,s11,a5
    8000352c:	0007c683          	lbu	a3,0(a5)
    80003530:	00f00613          	li	a2,15
    80003534:	0007079b          	sext.w	a5,a4
    80003538:	f8d40023          	sb	a3,-128(s0)
    8000353c:	0047559b          	srliw	a1,a4,0x4
    80003540:	0047569b          	srliw	a3,a4,0x4
    80003544:	00000c93          	li	s9,0
    80003548:	0ee65063          	bge	a2,a4,80003628 <__printf+0x410>
    8000354c:	00f6f693          	andi	a3,a3,15
    80003550:	00dd86b3          	add	a3,s11,a3
    80003554:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003558:	0087d79b          	srliw	a5,a5,0x8
    8000355c:	00100c93          	li	s9,1
    80003560:	f8d400a3          	sb	a3,-127(s0)
    80003564:	0cb67263          	bgeu	a2,a1,80003628 <__printf+0x410>
    80003568:	00f7f693          	andi	a3,a5,15
    8000356c:	00dd86b3          	add	a3,s11,a3
    80003570:	0006c583          	lbu	a1,0(a3)
    80003574:	00f00613          	li	a2,15
    80003578:	0047d69b          	srliw	a3,a5,0x4
    8000357c:	f8b40123          	sb	a1,-126(s0)
    80003580:	0047d593          	srli	a1,a5,0x4
    80003584:	28f67e63          	bgeu	a2,a5,80003820 <__printf+0x608>
    80003588:	00f6f693          	andi	a3,a3,15
    8000358c:	00dd86b3          	add	a3,s11,a3
    80003590:	0006c503          	lbu	a0,0(a3)
    80003594:	0087d813          	srli	a6,a5,0x8
    80003598:	0087d69b          	srliw	a3,a5,0x8
    8000359c:	f8a401a3          	sb	a0,-125(s0)
    800035a0:	28b67663          	bgeu	a2,a1,8000382c <__printf+0x614>
    800035a4:	00f6f693          	andi	a3,a3,15
    800035a8:	00dd86b3          	add	a3,s11,a3
    800035ac:	0006c583          	lbu	a1,0(a3)
    800035b0:	00c7d513          	srli	a0,a5,0xc
    800035b4:	00c7d69b          	srliw	a3,a5,0xc
    800035b8:	f8b40223          	sb	a1,-124(s0)
    800035bc:	29067a63          	bgeu	a2,a6,80003850 <__printf+0x638>
    800035c0:	00f6f693          	andi	a3,a3,15
    800035c4:	00dd86b3          	add	a3,s11,a3
    800035c8:	0006c583          	lbu	a1,0(a3)
    800035cc:	0107d813          	srli	a6,a5,0x10
    800035d0:	0107d69b          	srliw	a3,a5,0x10
    800035d4:	f8b402a3          	sb	a1,-123(s0)
    800035d8:	28a67263          	bgeu	a2,a0,8000385c <__printf+0x644>
    800035dc:	00f6f693          	andi	a3,a3,15
    800035e0:	00dd86b3          	add	a3,s11,a3
    800035e4:	0006c683          	lbu	a3,0(a3)
    800035e8:	0147d79b          	srliw	a5,a5,0x14
    800035ec:	f8d40323          	sb	a3,-122(s0)
    800035f0:	21067663          	bgeu	a2,a6,800037fc <__printf+0x5e4>
    800035f4:	02079793          	slli	a5,a5,0x20
    800035f8:	0207d793          	srli	a5,a5,0x20
    800035fc:	00fd8db3          	add	s11,s11,a5
    80003600:	000dc683          	lbu	a3,0(s11)
    80003604:	00800793          	li	a5,8
    80003608:	00700c93          	li	s9,7
    8000360c:	f8d403a3          	sb	a3,-121(s0)
    80003610:	00075c63          	bgez	a4,80003628 <__printf+0x410>
    80003614:	f9040713          	addi	a4,s0,-112
    80003618:	00f70733          	add	a4,a4,a5
    8000361c:	02d00693          	li	a3,45
    80003620:	fed70823          	sb	a3,-16(a4)
    80003624:	00078c93          	mv	s9,a5
    80003628:	f8040793          	addi	a5,s0,-128
    8000362c:	01978cb3          	add	s9,a5,s9
    80003630:	f7f40d13          	addi	s10,s0,-129
    80003634:	000cc503          	lbu	a0,0(s9)
    80003638:	fffc8c93          	addi	s9,s9,-1
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	9f8080e7          	jalr	-1544(ra) # 80003034 <consputc>
    80003644:	ff9d18e3          	bne	s10,s9,80003634 <__printf+0x41c>
    80003648:	0100006f          	j	80003658 <__printf+0x440>
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	9e8080e7          	jalr	-1560(ra) # 80003034 <consputc>
    80003654:	000c8493          	mv	s1,s9
    80003658:	00094503          	lbu	a0,0(s2)
    8000365c:	c60510e3          	bnez	a0,800032bc <__printf+0xa4>
    80003660:	e40c0ee3          	beqz	s8,800034bc <__printf+0x2a4>
    80003664:	00004517          	auipc	a0,0x4
    80003668:	81c50513          	addi	a0,a0,-2020 # 80006e80 <pr>
    8000366c:	00001097          	auipc	ra,0x1
    80003670:	94c080e7          	jalr	-1716(ra) # 80003fb8 <release>
    80003674:	e49ff06f          	j	800034bc <__printf+0x2a4>
    80003678:	f7843783          	ld	a5,-136(s0)
    8000367c:	03000513          	li	a0,48
    80003680:	01000d13          	li	s10,16
    80003684:	00878713          	addi	a4,a5,8
    80003688:	0007bc83          	ld	s9,0(a5)
    8000368c:	f6e43c23          	sd	a4,-136(s0)
    80003690:	00000097          	auipc	ra,0x0
    80003694:	9a4080e7          	jalr	-1628(ra) # 80003034 <consputc>
    80003698:	07800513          	li	a0,120
    8000369c:	00000097          	auipc	ra,0x0
    800036a0:	998080e7          	jalr	-1640(ra) # 80003034 <consputc>
    800036a4:	00002d97          	auipc	s11,0x2
    800036a8:	b8cd8d93          	addi	s11,s11,-1140 # 80005230 <digits>
    800036ac:	03ccd793          	srli	a5,s9,0x3c
    800036b0:	00fd87b3          	add	a5,s11,a5
    800036b4:	0007c503          	lbu	a0,0(a5)
    800036b8:	fffd0d1b          	addiw	s10,s10,-1
    800036bc:	004c9c93          	slli	s9,s9,0x4
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	974080e7          	jalr	-1676(ra) # 80003034 <consputc>
    800036c8:	fe0d12e3          	bnez	s10,800036ac <__printf+0x494>
    800036cc:	f8dff06f          	j	80003658 <__printf+0x440>
    800036d0:	f7843783          	ld	a5,-136(s0)
    800036d4:	0007bc83          	ld	s9,0(a5)
    800036d8:	00878793          	addi	a5,a5,8
    800036dc:	f6f43c23          	sd	a5,-136(s0)
    800036e0:	000c9a63          	bnez	s9,800036f4 <__printf+0x4dc>
    800036e4:	1080006f          	j	800037ec <__printf+0x5d4>
    800036e8:	001c8c93          	addi	s9,s9,1
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	948080e7          	jalr	-1720(ra) # 80003034 <consputc>
    800036f4:	000cc503          	lbu	a0,0(s9)
    800036f8:	fe0518e3          	bnez	a0,800036e8 <__printf+0x4d0>
    800036fc:	f5dff06f          	j	80003658 <__printf+0x440>
    80003700:	02500513          	li	a0,37
    80003704:	00000097          	auipc	ra,0x0
    80003708:	930080e7          	jalr	-1744(ra) # 80003034 <consputc>
    8000370c:	000c8513          	mv	a0,s9
    80003710:	00000097          	auipc	ra,0x0
    80003714:	924080e7          	jalr	-1756(ra) # 80003034 <consputc>
    80003718:	f41ff06f          	j	80003658 <__printf+0x440>
    8000371c:	02500513          	li	a0,37
    80003720:	00000097          	auipc	ra,0x0
    80003724:	914080e7          	jalr	-1772(ra) # 80003034 <consputc>
    80003728:	f31ff06f          	j	80003658 <__printf+0x440>
    8000372c:	00030513          	mv	a0,t1
    80003730:	00000097          	auipc	ra,0x0
    80003734:	7bc080e7          	jalr	1980(ra) # 80003eec <acquire>
    80003738:	b4dff06f          	j	80003284 <__printf+0x6c>
    8000373c:	40c0053b          	negw	a0,a2
    80003740:	00a00713          	li	a4,10
    80003744:	02e576bb          	remuw	a3,a0,a4
    80003748:	00002d97          	auipc	s11,0x2
    8000374c:	ae8d8d93          	addi	s11,s11,-1304 # 80005230 <digits>
    80003750:	ff700593          	li	a1,-9
    80003754:	02069693          	slli	a3,a3,0x20
    80003758:	0206d693          	srli	a3,a3,0x20
    8000375c:	00dd86b3          	add	a3,s11,a3
    80003760:	0006c683          	lbu	a3,0(a3)
    80003764:	02e557bb          	divuw	a5,a0,a4
    80003768:	f8d40023          	sb	a3,-128(s0)
    8000376c:	10b65e63          	bge	a2,a1,80003888 <__printf+0x670>
    80003770:	06300593          	li	a1,99
    80003774:	02e7f6bb          	remuw	a3,a5,a4
    80003778:	02069693          	slli	a3,a3,0x20
    8000377c:	0206d693          	srli	a3,a3,0x20
    80003780:	00dd86b3          	add	a3,s11,a3
    80003784:	0006c683          	lbu	a3,0(a3)
    80003788:	02e7d73b          	divuw	a4,a5,a4
    8000378c:	00200793          	li	a5,2
    80003790:	f8d400a3          	sb	a3,-127(s0)
    80003794:	bca5ece3          	bltu	a1,a0,8000336c <__printf+0x154>
    80003798:	ce5ff06f          	j	8000347c <__printf+0x264>
    8000379c:	40e007bb          	negw	a5,a4
    800037a0:	00002d97          	auipc	s11,0x2
    800037a4:	a90d8d93          	addi	s11,s11,-1392 # 80005230 <digits>
    800037a8:	00f7f693          	andi	a3,a5,15
    800037ac:	00dd86b3          	add	a3,s11,a3
    800037b0:	0006c583          	lbu	a1,0(a3)
    800037b4:	ff100613          	li	a2,-15
    800037b8:	0047d69b          	srliw	a3,a5,0x4
    800037bc:	f8b40023          	sb	a1,-128(s0)
    800037c0:	0047d59b          	srliw	a1,a5,0x4
    800037c4:	0ac75e63          	bge	a4,a2,80003880 <__printf+0x668>
    800037c8:	00f6f693          	andi	a3,a3,15
    800037cc:	00dd86b3          	add	a3,s11,a3
    800037d0:	0006c603          	lbu	a2,0(a3)
    800037d4:	00f00693          	li	a3,15
    800037d8:	0087d79b          	srliw	a5,a5,0x8
    800037dc:	f8c400a3          	sb	a2,-127(s0)
    800037e0:	d8b6e4e3          	bltu	a3,a1,80003568 <__printf+0x350>
    800037e4:	00200793          	li	a5,2
    800037e8:	e2dff06f          	j	80003614 <__printf+0x3fc>
    800037ec:	00002c97          	auipc	s9,0x2
    800037f0:	a24c8c93          	addi	s9,s9,-1500 # 80005210 <_ZZ12printIntegermE6digits+0x148>
    800037f4:	02800513          	li	a0,40
    800037f8:	ef1ff06f          	j	800036e8 <__printf+0x4d0>
    800037fc:	00700793          	li	a5,7
    80003800:	00600c93          	li	s9,6
    80003804:	e0dff06f          	j	80003610 <__printf+0x3f8>
    80003808:	00700793          	li	a5,7
    8000380c:	00600c93          	li	s9,6
    80003810:	c69ff06f          	j	80003478 <__printf+0x260>
    80003814:	00300793          	li	a5,3
    80003818:	00200c93          	li	s9,2
    8000381c:	c5dff06f          	j	80003478 <__printf+0x260>
    80003820:	00300793          	li	a5,3
    80003824:	00200c93          	li	s9,2
    80003828:	de9ff06f          	j	80003610 <__printf+0x3f8>
    8000382c:	00400793          	li	a5,4
    80003830:	00300c93          	li	s9,3
    80003834:	dddff06f          	j	80003610 <__printf+0x3f8>
    80003838:	00400793          	li	a5,4
    8000383c:	00300c93          	li	s9,3
    80003840:	c39ff06f          	j	80003478 <__printf+0x260>
    80003844:	00500793          	li	a5,5
    80003848:	00400c93          	li	s9,4
    8000384c:	c2dff06f          	j	80003478 <__printf+0x260>
    80003850:	00500793          	li	a5,5
    80003854:	00400c93          	li	s9,4
    80003858:	db9ff06f          	j	80003610 <__printf+0x3f8>
    8000385c:	00600793          	li	a5,6
    80003860:	00500c93          	li	s9,5
    80003864:	dadff06f          	j	80003610 <__printf+0x3f8>
    80003868:	00600793          	li	a5,6
    8000386c:	00500c93          	li	s9,5
    80003870:	c09ff06f          	j	80003478 <__printf+0x260>
    80003874:	00800793          	li	a5,8
    80003878:	00700c93          	li	s9,7
    8000387c:	bfdff06f          	j	80003478 <__printf+0x260>
    80003880:	00100793          	li	a5,1
    80003884:	d91ff06f          	j	80003614 <__printf+0x3fc>
    80003888:	00100793          	li	a5,1
    8000388c:	bf1ff06f          	j	8000347c <__printf+0x264>
    80003890:	00900793          	li	a5,9
    80003894:	00800c93          	li	s9,8
    80003898:	be1ff06f          	j	80003478 <__printf+0x260>
    8000389c:	00002517          	auipc	a0,0x2
    800038a0:	97c50513          	addi	a0,a0,-1668 # 80005218 <_ZZ12printIntegermE6digits+0x150>
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	918080e7          	jalr	-1768(ra) # 800031bc <panic>

00000000800038ac <printfinit>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00913423          	sd	s1,8(sp)
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	02010413          	addi	s0,sp,32
    800038c0:	00003497          	auipc	s1,0x3
    800038c4:	5c048493          	addi	s1,s1,1472 # 80006e80 <pr>
    800038c8:	00048513          	mv	a0,s1
    800038cc:	00002597          	auipc	a1,0x2
    800038d0:	95c58593          	addi	a1,a1,-1700 # 80005228 <_ZZ12printIntegermE6digits+0x160>
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	5f4080e7          	jalr	1524(ra) # 80003ec8 <initlock>
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	0004ac23          	sw	zero,24(s1)
    800038e8:	00813483          	ld	s1,8(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret

00000000800038f4 <uartinit>:
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00813423          	sd	s0,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	100007b7          	lui	a5,0x10000
    80003904:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003908:	f8000713          	li	a4,-128
    8000390c:	00e781a3          	sb	a4,3(a5)
    80003910:	00300713          	li	a4,3
    80003914:	00e78023          	sb	a4,0(a5)
    80003918:	000780a3          	sb	zero,1(a5)
    8000391c:	00e781a3          	sb	a4,3(a5)
    80003920:	00700693          	li	a3,7
    80003924:	00d78123          	sb	a3,2(a5)
    80003928:	00e780a3          	sb	a4,1(a5)
    8000392c:	00813403          	ld	s0,8(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret

0000000080003938 <uartputc>:
    80003938:	00002797          	auipc	a5,0x2
    8000393c:	2c07a783          	lw	a5,704(a5) # 80005bf8 <panicked>
    80003940:	00078463          	beqz	a5,80003948 <uartputc+0x10>
    80003944:	0000006f          	j	80003944 <uartputc+0xc>
    80003948:	fd010113          	addi	sp,sp,-48
    8000394c:	02813023          	sd	s0,32(sp)
    80003950:	00913c23          	sd	s1,24(sp)
    80003954:	01213823          	sd	s2,16(sp)
    80003958:	01313423          	sd	s3,8(sp)
    8000395c:	02113423          	sd	ra,40(sp)
    80003960:	03010413          	addi	s0,sp,48
    80003964:	00002917          	auipc	s2,0x2
    80003968:	29c90913          	addi	s2,s2,668 # 80005c00 <uart_tx_r>
    8000396c:	00093783          	ld	a5,0(s2)
    80003970:	00002497          	auipc	s1,0x2
    80003974:	29848493          	addi	s1,s1,664 # 80005c08 <uart_tx_w>
    80003978:	0004b703          	ld	a4,0(s1)
    8000397c:	02078693          	addi	a3,a5,32
    80003980:	00050993          	mv	s3,a0
    80003984:	02e69c63          	bne	a3,a4,800039bc <uartputc+0x84>
    80003988:	00001097          	auipc	ra,0x1
    8000398c:	834080e7          	jalr	-1996(ra) # 800041bc <push_on>
    80003990:	00093783          	ld	a5,0(s2)
    80003994:	0004b703          	ld	a4,0(s1)
    80003998:	02078793          	addi	a5,a5,32
    8000399c:	00e79463          	bne	a5,a4,800039a4 <uartputc+0x6c>
    800039a0:	0000006f          	j	800039a0 <uartputc+0x68>
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	88c080e7          	jalr	-1908(ra) # 80004230 <pop_on>
    800039ac:	00093783          	ld	a5,0(s2)
    800039b0:	0004b703          	ld	a4,0(s1)
    800039b4:	02078693          	addi	a3,a5,32
    800039b8:	fce688e3          	beq	a3,a4,80003988 <uartputc+0x50>
    800039bc:	01f77693          	andi	a3,a4,31
    800039c0:	00003597          	auipc	a1,0x3
    800039c4:	4e058593          	addi	a1,a1,1248 # 80006ea0 <uart_tx_buf>
    800039c8:	00d586b3          	add	a3,a1,a3
    800039cc:	00170713          	addi	a4,a4,1
    800039d0:	01368023          	sb	s3,0(a3)
    800039d4:	00e4b023          	sd	a4,0(s1)
    800039d8:	10000637          	lui	a2,0x10000
    800039dc:	02f71063          	bne	a4,a5,800039fc <uartputc+0xc4>
    800039e0:	0340006f          	j	80003a14 <uartputc+0xdc>
    800039e4:	00074703          	lbu	a4,0(a4)
    800039e8:	00f93023          	sd	a5,0(s2)
    800039ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800039f0:	00093783          	ld	a5,0(s2)
    800039f4:	0004b703          	ld	a4,0(s1)
    800039f8:	00f70e63          	beq	a4,a5,80003a14 <uartputc+0xdc>
    800039fc:	00564683          	lbu	a3,5(a2)
    80003a00:	01f7f713          	andi	a4,a5,31
    80003a04:	00e58733          	add	a4,a1,a4
    80003a08:	0206f693          	andi	a3,a3,32
    80003a0c:	00178793          	addi	a5,a5,1
    80003a10:	fc069ae3          	bnez	a3,800039e4 <uartputc+0xac>
    80003a14:	02813083          	ld	ra,40(sp)
    80003a18:	02013403          	ld	s0,32(sp)
    80003a1c:	01813483          	ld	s1,24(sp)
    80003a20:	01013903          	ld	s2,16(sp)
    80003a24:	00813983          	ld	s3,8(sp)
    80003a28:	03010113          	addi	sp,sp,48
    80003a2c:	00008067          	ret

0000000080003a30 <uartputc_sync>:
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00813423          	sd	s0,8(sp)
    80003a38:	01010413          	addi	s0,sp,16
    80003a3c:	00002717          	auipc	a4,0x2
    80003a40:	1bc72703          	lw	a4,444(a4) # 80005bf8 <panicked>
    80003a44:	02071663          	bnez	a4,80003a70 <uartputc_sync+0x40>
    80003a48:	00050793          	mv	a5,a0
    80003a4c:	100006b7          	lui	a3,0x10000
    80003a50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003a54:	02077713          	andi	a4,a4,32
    80003a58:	fe070ce3          	beqz	a4,80003a50 <uartputc_sync+0x20>
    80003a5c:	0ff7f793          	andi	a5,a5,255
    80003a60:	00f68023          	sb	a5,0(a3)
    80003a64:	00813403          	ld	s0,8(sp)
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret
    80003a70:	0000006f          	j	80003a70 <uartputc_sync+0x40>

0000000080003a74 <uartstart>:
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00813423          	sd	s0,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	00002617          	auipc	a2,0x2
    80003a84:	18060613          	addi	a2,a2,384 # 80005c00 <uart_tx_r>
    80003a88:	00002517          	auipc	a0,0x2
    80003a8c:	18050513          	addi	a0,a0,384 # 80005c08 <uart_tx_w>
    80003a90:	00063783          	ld	a5,0(a2)
    80003a94:	00053703          	ld	a4,0(a0)
    80003a98:	04f70263          	beq	a4,a5,80003adc <uartstart+0x68>
    80003a9c:	100005b7          	lui	a1,0x10000
    80003aa0:	00003817          	auipc	a6,0x3
    80003aa4:	40080813          	addi	a6,a6,1024 # 80006ea0 <uart_tx_buf>
    80003aa8:	01c0006f          	j	80003ac4 <uartstart+0x50>
    80003aac:	0006c703          	lbu	a4,0(a3)
    80003ab0:	00f63023          	sd	a5,0(a2)
    80003ab4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ab8:	00063783          	ld	a5,0(a2)
    80003abc:	00053703          	ld	a4,0(a0)
    80003ac0:	00f70e63          	beq	a4,a5,80003adc <uartstart+0x68>
    80003ac4:	01f7f713          	andi	a4,a5,31
    80003ac8:	00e806b3          	add	a3,a6,a4
    80003acc:	0055c703          	lbu	a4,5(a1)
    80003ad0:	00178793          	addi	a5,a5,1
    80003ad4:	02077713          	andi	a4,a4,32
    80003ad8:	fc071ae3          	bnez	a4,80003aac <uartstart+0x38>
    80003adc:	00813403          	ld	s0,8(sp)
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00008067          	ret

0000000080003ae8 <uartgetc>:
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00813423          	sd	s0,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	10000737          	lui	a4,0x10000
    80003af8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003afc:	0017f793          	andi	a5,a5,1
    80003b00:	00078c63          	beqz	a5,80003b18 <uartgetc+0x30>
    80003b04:	00074503          	lbu	a0,0(a4)
    80003b08:	0ff57513          	andi	a0,a0,255
    80003b0c:	00813403          	ld	s0,8(sp)
    80003b10:	01010113          	addi	sp,sp,16
    80003b14:	00008067          	ret
    80003b18:	fff00513          	li	a0,-1
    80003b1c:	ff1ff06f          	j	80003b0c <uartgetc+0x24>

0000000080003b20 <uartintr>:
    80003b20:	100007b7          	lui	a5,0x10000
    80003b24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003b28:	0017f793          	andi	a5,a5,1
    80003b2c:	0a078463          	beqz	a5,80003bd4 <uartintr+0xb4>
    80003b30:	fe010113          	addi	sp,sp,-32
    80003b34:	00813823          	sd	s0,16(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	00113c23          	sd	ra,24(sp)
    80003b40:	02010413          	addi	s0,sp,32
    80003b44:	100004b7          	lui	s1,0x10000
    80003b48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003b4c:	0ff57513          	andi	a0,a0,255
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	534080e7          	jalr	1332(ra) # 80003084 <consoleintr>
    80003b58:	0054c783          	lbu	a5,5(s1)
    80003b5c:	0017f793          	andi	a5,a5,1
    80003b60:	fe0794e3          	bnez	a5,80003b48 <uartintr+0x28>
    80003b64:	00002617          	auipc	a2,0x2
    80003b68:	09c60613          	addi	a2,a2,156 # 80005c00 <uart_tx_r>
    80003b6c:	00002517          	auipc	a0,0x2
    80003b70:	09c50513          	addi	a0,a0,156 # 80005c08 <uart_tx_w>
    80003b74:	00063783          	ld	a5,0(a2)
    80003b78:	00053703          	ld	a4,0(a0)
    80003b7c:	04f70263          	beq	a4,a5,80003bc0 <uartintr+0xa0>
    80003b80:	100005b7          	lui	a1,0x10000
    80003b84:	00003817          	auipc	a6,0x3
    80003b88:	31c80813          	addi	a6,a6,796 # 80006ea0 <uart_tx_buf>
    80003b8c:	01c0006f          	j	80003ba8 <uartintr+0x88>
    80003b90:	0006c703          	lbu	a4,0(a3)
    80003b94:	00f63023          	sd	a5,0(a2)
    80003b98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b9c:	00063783          	ld	a5,0(a2)
    80003ba0:	00053703          	ld	a4,0(a0)
    80003ba4:	00f70e63          	beq	a4,a5,80003bc0 <uartintr+0xa0>
    80003ba8:	01f7f713          	andi	a4,a5,31
    80003bac:	00e806b3          	add	a3,a6,a4
    80003bb0:	0055c703          	lbu	a4,5(a1)
    80003bb4:	00178793          	addi	a5,a5,1
    80003bb8:	02077713          	andi	a4,a4,32
    80003bbc:	fc071ae3          	bnez	a4,80003b90 <uartintr+0x70>
    80003bc0:	01813083          	ld	ra,24(sp)
    80003bc4:	01013403          	ld	s0,16(sp)
    80003bc8:	00813483          	ld	s1,8(sp)
    80003bcc:	02010113          	addi	sp,sp,32
    80003bd0:	00008067          	ret
    80003bd4:	00002617          	auipc	a2,0x2
    80003bd8:	02c60613          	addi	a2,a2,44 # 80005c00 <uart_tx_r>
    80003bdc:	00002517          	auipc	a0,0x2
    80003be0:	02c50513          	addi	a0,a0,44 # 80005c08 <uart_tx_w>
    80003be4:	00063783          	ld	a5,0(a2)
    80003be8:	00053703          	ld	a4,0(a0)
    80003bec:	04f70263          	beq	a4,a5,80003c30 <uartintr+0x110>
    80003bf0:	100005b7          	lui	a1,0x10000
    80003bf4:	00003817          	auipc	a6,0x3
    80003bf8:	2ac80813          	addi	a6,a6,684 # 80006ea0 <uart_tx_buf>
    80003bfc:	01c0006f          	j	80003c18 <uartintr+0xf8>
    80003c00:	0006c703          	lbu	a4,0(a3)
    80003c04:	00f63023          	sd	a5,0(a2)
    80003c08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c0c:	00063783          	ld	a5,0(a2)
    80003c10:	00053703          	ld	a4,0(a0)
    80003c14:	02f70063          	beq	a4,a5,80003c34 <uartintr+0x114>
    80003c18:	01f7f713          	andi	a4,a5,31
    80003c1c:	00e806b3          	add	a3,a6,a4
    80003c20:	0055c703          	lbu	a4,5(a1)
    80003c24:	00178793          	addi	a5,a5,1
    80003c28:	02077713          	andi	a4,a4,32
    80003c2c:	fc071ae3          	bnez	a4,80003c00 <uartintr+0xe0>
    80003c30:	00008067          	ret
    80003c34:	00008067          	ret

0000000080003c38 <kinit>:
    80003c38:	fc010113          	addi	sp,sp,-64
    80003c3c:	02913423          	sd	s1,40(sp)
    80003c40:	fffff7b7          	lui	a5,0xfffff
    80003c44:	00004497          	auipc	s1,0x4
    80003c48:	28b48493          	addi	s1,s1,651 # 80007ecf <end+0xfff>
    80003c4c:	02813823          	sd	s0,48(sp)
    80003c50:	01313c23          	sd	s3,24(sp)
    80003c54:	00f4f4b3          	and	s1,s1,a5
    80003c58:	02113c23          	sd	ra,56(sp)
    80003c5c:	03213023          	sd	s2,32(sp)
    80003c60:	01413823          	sd	s4,16(sp)
    80003c64:	01513423          	sd	s5,8(sp)
    80003c68:	04010413          	addi	s0,sp,64
    80003c6c:	000017b7          	lui	a5,0x1
    80003c70:	01100993          	li	s3,17
    80003c74:	00f487b3          	add	a5,s1,a5
    80003c78:	01b99993          	slli	s3,s3,0x1b
    80003c7c:	06f9e063          	bltu	s3,a5,80003cdc <kinit+0xa4>
    80003c80:	00003a97          	auipc	s5,0x3
    80003c84:	250a8a93          	addi	s5,s5,592 # 80006ed0 <end>
    80003c88:	0754ec63          	bltu	s1,s5,80003d00 <kinit+0xc8>
    80003c8c:	0734fa63          	bgeu	s1,s3,80003d00 <kinit+0xc8>
    80003c90:	00088a37          	lui	s4,0x88
    80003c94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003c98:	00002917          	auipc	s2,0x2
    80003c9c:	f7890913          	addi	s2,s2,-136 # 80005c10 <kmem>
    80003ca0:	00ca1a13          	slli	s4,s4,0xc
    80003ca4:	0140006f          	j	80003cb8 <kinit+0x80>
    80003ca8:	000017b7          	lui	a5,0x1
    80003cac:	00f484b3          	add	s1,s1,a5
    80003cb0:	0554e863          	bltu	s1,s5,80003d00 <kinit+0xc8>
    80003cb4:	0534f663          	bgeu	s1,s3,80003d00 <kinit+0xc8>
    80003cb8:	00001637          	lui	a2,0x1
    80003cbc:	00100593          	li	a1,1
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	5e4080e7          	jalr	1508(ra) # 800042a8 <__memset>
    80003ccc:	00093783          	ld	a5,0(s2)
    80003cd0:	00f4b023          	sd	a5,0(s1)
    80003cd4:	00993023          	sd	s1,0(s2)
    80003cd8:	fd4498e3          	bne	s1,s4,80003ca8 <kinit+0x70>
    80003cdc:	03813083          	ld	ra,56(sp)
    80003ce0:	03013403          	ld	s0,48(sp)
    80003ce4:	02813483          	ld	s1,40(sp)
    80003ce8:	02013903          	ld	s2,32(sp)
    80003cec:	01813983          	ld	s3,24(sp)
    80003cf0:	01013a03          	ld	s4,16(sp)
    80003cf4:	00813a83          	ld	s5,8(sp)
    80003cf8:	04010113          	addi	sp,sp,64
    80003cfc:	00008067          	ret
    80003d00:	00001517          	auipc	a0,0x1
    80003d04:	54850513          	addi	a0,a0,1352 # 80005248 <digits+0x18>
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	4b4080e7          	jalr	1204(ra) # 800031bc <panic>

0000000080003d10 <freerange>:
    80003d10:	fc010113          	addi	sp,sp,-64
    80003d14:	000017b7          	lui	a5,0x1
    80003d18:	02913423          	sd	s1,40(sp)
    80003d1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003d20:	009504b3          	add	s1,a0,s1
    80003d24:	fffff537          	lui	a0,0xfffff
    80003d28:	02813823          	sd	s0,48(sp)
    80003d2c:	02113c23          	sd	ra,56(sp)
    80003d30:	03213023          	sd	s2,32(sp)
    80003d34:	01313c23          	sd	s3,24(sp)
    80003d38:	01413823          	sd	s4,16(sp)
    80003d3c:	01513423          	sd	s5,8(sp)
    80003d40:	01613023          	sd	s6,0(sp)
    80003d44:	04010413          	addi	s0,sp,64
    80003d48:	00a4f4b3          	and	s1,s1,a0
    80003d4c:	00f487b3          	add	a5,s1,a5
    80003d50:	06f5e463          	bltu	a1,a5,80003db8 <freerange+0xa8>
    80003d54:	00003a97          	auipc	s5,0x3
    80003d58:	17ca8a93          	addi	s5,s5,380 # 80006ed0 <end>
    80003d5c:	0954e263          	bltu	s1,s5,80003de0 <freerange+0xd0>
    80003d60:	01100993          	li	s3,17
    80003d64:	01b99993          	slli	s3,s3,0x1b
    80003d68:	0734fc63          	bgeu	s1,s3,80003de0 <freerange+0xd0>
    80003d6c:	00058a13          	mv	s4,a1
    80003d70:	00002917          	auipc	s2,0x2
    80003d74:	ea090913          	addi	s2,s2,-352 # 80005c10 <kmem>
    80003d78:	00002b37          	lui	s6,0x2
    80003d7c:	0140006f          	j	80003d90 <freerange+0x80>
    80003d80:	000017b7          	lui	a5,0x1
    80003d84:	00f484b3          	add	s1,s1,a5
    80003d88:	0554ec63          	bltu	s1,s5,80003de0 <freerange+0xd0>
    80003d8c:	0534fa63          	bgeu	s1,s3,80003de0 <freerange+0xd0>
    80003d90:	00001637          	lui	a2,0x1
    80003d94:	00100593          	li	a1,1
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	50c080e7          	jalr	1292(ra) # 800042a8 <__memset>
    80003da4:	00093703          	ld	a4,0(s2)
    80003da8:	016487b3          	add	a5,s1,s6
    80003dac:	00e4b023          	sd	a4,0(s1)
    80003db0:	00993023          	sd	s1,0(s2)
    80003db4:	fcfa76e3          	bgeu	s4,a5,80003d80 <freerange+0x70>
    80003db8:	03813083          	ld	ra,56(sp)
    80003dbc:	03013403          	ld	s0,48(sp)
    80003dc0:	02813483          	ld	s1,40(sp)
    80003dc4:	02013903          	ld	s2,32(sp)
    80003dc8:	01813983          	ld	s3,24(sp)
    80003dcc:	01013a03          	ld	s4,16(sp)
    80003dd0:	00813a83          	ld	s5,8(sp)
    80003dd4:	00013b03          	ld	s6,0(sp)
    80003dd8:	04010113          	addi	sp,sp,64
    80003ddc:	00008067          	ret
    80003de0:	00001517          	auipc	a0,0x1
    80003de4:	46850513          	addi	a0,a0,1128 # 80005248 <digits+0x18>
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	3d4080e7          	jalr	980(ra) # 800031bc <panic>

0000000080003df0 <kfree>:
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00113c23          	sd	ra,24(sp)
    80003dfc:	00913423          	sd	s1,8(sp)
    80003e00:	02010413          	addi	s0,sp,32
    80003e04:	03451793          	slli	a5,a0,0x34
    80003e08:	04079c63          	bnez	a5,80003e60 <kfree+0x70>
    80003e0c:	00003797          	auipc	a5,0x3
    80003e10:	0c478793          	addi	a5,a5,196 # 80006ed0 <end>
    80003e14:	00050493          	mv	s1,a0
    80003e18:	04f56463          	bltu	a0,a5,80003e60 <kfree+0x70>
    80003e1c:	01100793          	li	a5,17
    80003e20:	01b79793          	slli	a5,a5,0x1b
    80003e24:	02f57e63          	bgeu	a0,a5,80003e60 <kfree+0x70>
    80003e28:	00001637          	lui	a2,0x1
    80003e2c:	00100593          	li	a1,1
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	478080e7          	jalr	1144(ra) # 800042a8 <__memset>
    80003e38:	00002797          	auipc	a5,0x2
    80003e3c:	dd878793          	addi	a5,a5,-552 # 80005c10 <kmem>
    80003e40:	0007b703          	ld	a4,0(a5)
    80003e44:	01813083          	ld	ra,24(sp)
    80003e48:	01013403          	ld	s0,16(sp)
    80003e4c:	00e4b023          	sd	a4,0(s1)
    80003e50:	0097b023          	sd	s1,0(a5)
    80003e54:	00813483          	ld	s1,8(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret
    80003e60:	00001517          	auipc	a0,0x1
    80003e64:	3e850513          	addi	a0,a0,1000 # 80005248 <digits+0x18>
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	354080e7          	jalr	852(ra) # 800031bc <panic>

0000000080003e70 <kalloc>:
    80003e70:	fe010113          	addi	sp,sp,-32
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	00113c23          	sd	ra,24(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	00002797          	auipc	a5,0x2
    80003e88:	d8c78793          	addi	a5,a5,-628 # 80005c10 <kmem>
    80003e8c:	0007b483          	ld	s1,0(a5)
    80003e90:	02048063          	beqz	s1,80003eb0 <kalloc+0x40>
    80003e94:	0004b703          	ld	a4,0(s1)
    80003e98:	00001637          	lui	a2,0x1
    80003e9c:	00500593          	li	a1,5
    80003ea0:	00048513          	mv	a0,s1
    80003ea4:	00e7b023          	sd	a4,0(a5)
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	400080e7          	jalr	1024(ra) # 800042a8 <__memset>
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	00813483          	ld	s1,8(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret

0000000080003ec8 <initlock>:
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00813423          	sd	s0,8(sp)
    80003ed0:	01010413          	addi	s0,sp,16
    80003ed4:	00813403          	ld	s0,8(sp)
    80003ed8:	00b53423          	sd	a1,8(a0)
    80003edc:	00052023          	sw	zero,0(a0)
    80003ee0:	00053823          	sd	zero,16(a0)
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00008067          	ret

0000000080003eec <acquire>:
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00813823          	sd	s0,16(sp)
    80003ef4:	00913423          	sd	s1,8(sp)
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	01213023          	sd	s2,0(sp)
    80003f00:	02010413          	addi	s0,sp,32
    80003f04:	00050493          	mv	s1,a0
    80003f08:	10002973          	csrr	s2,sstatus
    80003f0c:	100027f3          	csrr	a5,sstatus
    80003f10:	ffd7f793          	andi	a5,a5,-3
    80003f14:	10079073          	csrw	sstatus,a5
    80003f18:	fffff097          	auipc	ra,0xfffff
    80003f1c:	8ec080e7          	jalr	-1812(ra) # 80002804 <mycpu>
    80003f20:	07852783          	lw	a5,120(a0)
    80003f24:	06078e63          	beqz	a5,80003fa0 <acquire+0xb4>
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	8dc080e7          	jalr	-1828(ra) # 80002804 <mycpu>
    80003f30:	07852783          	lw	a5,120(a0)
    80003f34:	0004a703          	lw	a4,0(s1)
    80003f38:	0017879b          	addiw	a5,a5,1
    80003f3c:	06f52c23          	sw	a5,120(a0)
    80003f40:	04071063          	bnez	a4,80003f80 <acquire+0x94>
    80003f44:	00100713          	li	a4,1
    80003f48:	00070793          	mv	a5,a4
    80003f4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003f50:	0007879b          	sext.w	a5,a5
    80003f54:	fe079ae3          	bnez	a5,80003f48 <acquire+0x5c>
    80003f58:	0ff0000f          	fence
    80003f5c:	fffff097          	auipc	ra,0xfffff
    80003f60:	8a8080e7          	jalr	-1880(ra) # 80002804 <mycpu>
    80003f64:	01813083          	ld	ra,24(sp)
    80003f68:	01013403          	ld	s0,16(sp)
    80003f6c:	00a4b823          	sd	a0,16(s1)
    80003f70:	00013903          	ld	s2,0(sp)
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	02010113          	addi	sp,sp,32
    80003f7c:	00008067          	ret
    80003f80:	0104b903          	ld	s2,16(s1)
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	880080e7          	jalr	-1920(ra) # 80002804 <mycpu>
    80003f8c:	faa91ce3          	bne	s2,a0,80003f44 <acquire+0x58>
    80003f90:	00001517          	auipc	a0,0x1
    80003f94:	2c050513          	addi	a0,a0,704 # 80005250 <digits+0x20>
    80003f98:	fffff097          	auipc	ra,0xfffff
    80003f9c:	224080e7          	jalr	548(ra) # 800031bc <panic>
    80003fa0:	00195913          	srli	s2,s2,0x1
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	860080e7          	jalr	-1952(ra) # 80002804 <mycpu>
    80003fac:	00197913          	andi	s2,s2,1
    80003fb0:	07252e23          	sw	s2,124(a0)
    80003fb4:	f75ff06f          	j	80003f28 <acquire+0x3c>

0000000080003fb8 <release>:
    80003fb8:	fe010113          	addi	sp,sp,-32
    80003fbc:	00813823          	sd	s0,16(sp)
    80003fc0:	00113c23          	sd	ra,24(sp)
    80003fc4:	00913423          	sd	s1,8(sp)
    80003fc8:	01213023          	sd	s2,0(sp)
    80003fcc:	02010413          	addi	s0,sp,32
    80003fd0:	00052783          	lw	a5,0(a0)
    80003fd4:	00079a63          	bnez	a5,80003fe8 <release+0x30>
    80003fd8:	00001517          	auipc	a0,0x1
    80003fdc:	28050513          	addi	a0,a0,640 # 80005258 <digits+0x28>
    80003fe0:	fffff097          	auipc	ra,0xfffff
    80003fe4:	1dc080e7          	jalr	476(ra) # 800031bc <panic>
    80003fe8:	01053903          	ld	s2,16(a0)
    80003fec:	00050493          	mv	s1,a0
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	814080e7          	jalr	-2028(ra) # 80002804 <mycpu>
    80003ff8:	fea910e3          	bne	s2,a0,80003fd8 <release+0x20>
    80003ffc:	0004b823          	sd	zero,16(s1)
    80004000:	0ff0000f          	fence
    80004004:	0f50000f          	fence	iorw,ow
    80004008:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	7f8080e7          	jalr	2040(ra) # 80002804 <mycpu>
    80004014:	100027f3          	csrr	a5,sstatus
    80004018:	0027f793          	andi	a5,a5,2
    8000401c:	04079a63          	bnez	a5,80004070 <release+0xb8>
    80004020:	07852783          	lw	a5,120(a0)
    80004024:	02f05e63          	blez	a5,80004060 <release+0xa8>
    80004028:	fff7871b          	addiw	a4,a5,-1
    8000402c:	06e52c23          	sw	a4,120(a0)
    80004030:	00071c63          	bnez	a4,80004048 <release+0x90>
    80004034:	07c52783          	lw	a5,124(a0)
    80004038:	00078863          	beqz	a5,80004048 <release+0x90>
    8000403c:	100027f3          	csrr	a5,sstatus
    80004040:	0027e793          	ori	a5,a5,2
    80004044:	10079073          	csrw	sstatus,a5
    80004048:	01813083          	ld	ra,24(sp)
    8000404c:	01013403          	ld	s0,16(sp)
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	00013903          	ld	s2,0(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret
    80004060:	00001517          	auipc	a0,0x1
    80004064:	21850513          	addi	a0,a0,536 # 80005278 <digits+0x48>
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	154080e7          	jalr	340(ra) # 800031bc <panic>
    80004070:	00001517          	auipc	a0,0x1
    80004074:	1f050513          	addi	a0,a0,496 # 80005260 <digits+0x30>
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	144080e7          	jalr	324(ra) # 800031bc <panic>

0000000080004080 <holding>:
    80004080:	00052783          	lw	a5,0(a0)
    80004084:	00079663          	bnez	a5,80004090 <holding+0x10>
    80004088:	00000513          	li	a0,0
    8000408c:	00008067          	ret
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	00113c23          	sd	ra,24(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	01053483          	ld	s1,16(a0)
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	75c080e7          	jalr	1884(ra) # 80002804 <mycpu>
    800040b0:	01813083          	ld	ra,24(sp)
    800040b4:	01013403          	ld	s0,16(sp)
    800040b8:	40a48533          	sub	a0,s1,a0
    800040bc:	00153513          	seqz	a0,a0
    800040c0:	00813483          	ld	s1,8(sp)
    800040c4:	02010113          	addi	sp,sp,32
    800040c8:	00008067          	ret

00000000800040cc <push_off>:
    800040cc:	fe010113          	addi	sp,sp,-32
    800040d0:	00813823          	sd	s0,16(sp)
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	00913423          	sd	s1,8(sp)
    800040dc:	02010413          	addi	s0,sp,32
    800040e0:	100024f3          	csrr	s1,sstatus
    800040e4:	100027f3          	csrr	a5,sstatus
    800040e8:	ffd7f793          	andi	a5,a5,-3
    800040ec:	10079073          	csrw	sstatus,a5
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	714080e7          	jalr	1812(ra) # 80002804 <mycpu>
    800040f8:	07852783          	lw	a5,120(a0)
    800040fc:	02078663          	beqz	a5,80004128 <push_off+0x5c>
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	704080e7          	jalr	1796(ra) # 80002804 <mycpu>
    80004108:	07852783          	lw	a5,120(a0)
    8000410c:	01813083          	ld	ra,24(sp)
    80004110:	01013403          	ld	s0,16(sp)
    80004114:	0017879b          	addiw	a5,a5,1
    80004118:	06f52c23          	sw	a5,120(a0)
    8000411c:	00813483          	ld	s1,8(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret
    80004128:	0014d493          	srli	s1,s1,0x1
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	6d8080e7          	jalr	1752(ra) # 80002804 <mycpu>
    80004134:	0014f493          	andi	s1,s1,1
    80004138:	06952e23          	sw	s1,124(a0)
    8000413c:	fc5ff06f          	j	80004100 <push_off+0x34>

0000000080004140 <pop_off>:
    80004140:	ff010113          	addi	sp,sp,-16
    80004144:	00813023          	sd	s0,0(sp)
    80004148:	00113423          	sd	ra,8(sp)
    8000414c:	01010413          	addi	s0,sp,16
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	6b4080e7          	jalr	1716(ra) # 80002804 <mycpu>
    80004158:	100027f3          	csrr	a5,sstatus
    8000415c:	0027f793          	andi	a5,a5,2
    80004160:	04079663          	bnez	a5,800041ac <pop_off+0x6c>
    80004164:	07852783          	lw	a5,120(a0)
    80004168:	02f05a63          	blez	a5,8000419c <pop_off+0x5c>
    8000416c:	fff7871b          	addiw	a4,a5,-1
    80004170:	06e52c23          	sw	a4,120(a0)
    80004174:	00071c63          	bnez	a4,8000418c <pop_off+0x4c>
    80004178:	07c52783          	lw	a5,124(a0)
    8000417c:	00078863          	beqz	a5,8000418c <pop_off+0x4c>
    80004180:	100027f3          	csrr	a5,sstatus
    80004184:	0027e793          	ori	a5,a5,2
    80004188:	10079073          	csrw	sstatus,a5
    8000418c:	00813083          	ld	ra,8(sp)
    80004190:	00013403          	ld	s0,0(sp)
    80004194:	01010113          	addi	sp,sp,16
    80004198:	00008067          	ret
    8000419c:	00001517          	auipc	a0,0x1
    800041a0:	0dc50513          	addi	a0,a0,220 # 80005278 <digits+0x48>
    800041a4:	fffff097          	auipc	ra,0xfffff
    800041a8:	018080e7          	jalr	24(ra) # 800031bc <panic>
    800041ac:	00001517          	auipc	a0,0x1
    800041b0:	0b450513          	addi	a0,a0,180 # 80005260 <digits+0x30>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	008080e7          	jalr	8(ra) # 800031bc <panic>

00000000800041bc <push_on>:
    800041bc:	fe010113          	addi	sp,sp,-32
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00113c23          	sd	ra,24(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	02010413          	addi	s0,sp,32
    800041d0:	100024f3          	csrr	s1,sstatus
    800041d4:	100027f3          	csrr	a5,sstatus
    800041d8:	0027e793          	ori	a5,a5,2
    800041dc:	10079073          	csrw	sstatus,a5
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	624080e7          	jalr	1572(ra) # 80002804 <mycpu>
    800041e8:	07852783          	lw	a5,120(a0)
    800041ec:	02078663          	beqz	a5,80004218 <push_on+0x5c>
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	614080e7          	jalr	1556(ra) # 80002804 <mycpu>
    800041f8:	07852783          	lw	a5,120(a0)
    800041fc:	01813083          	ld	ra,24(sp)
    80004200:	01013403          	ld	s0,16(sp)
    80004204:	0017879b          	addiw	a5,a5,1
    80004208:	06f52c23          	sw	a5,120(a0)
    8000420c:	00813483          	ld	s1,8(sp)
    80004210:	02010113          	addi	sp,sp,32
    80004214:	00008067          	ret
    80004218:	0014d493          	srli	s1,s1,0x1
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	5e8080e7          	jalr	1512(ra) # 80002804 <mycpu>
    80004224:	0014f493          	andi	s1,s1,1
    80004228:	06952e23          	sw	s1,124(a0)
    8000422c:	fc5ff06f          	j	800041f0 <push_on+0x34>

0000000080004230 <pop_on>:
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00813023          	sd	s0,0(sp)
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	01010413          	addi	s0,sp,16
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	5c4080e7          	jalr	1476(ra) # 80002804 <mycpu>
    80004248:	100027f3          	csrr	a5,sstatus
    8000424c:	0027f793          	andi	a5,a5,2
    80004250:	04078463          	beqz	a5,80004298 <pop_on+0x68>
    80004254:	07852783          	lw	a5,120(a0)
    80004258:	02f05863          	blez	a5,80004288 <pop_on+0x58>
    8000425c:	fff7879b          	addiw	a5,a5,-1
    80004260:	06f52c23          	sw	a5,120(a0)
    80004264:	07853783          	ld	a5,120(a0)
    80004268:	00079863          	bnez	a5,80004278 <pop_on+0x48>
    8000426c:	100027f3          	csrr	a5,sstatus
    80004270:	ffd7f793          	andi	a5,a5,-3
    80004274:	10079073          	csrw	sstatus,a5
    80004278:	00813083          	ld	ra,8(sp)
    8000427c:	00013403          	ld	s0,0(sp)
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret
    80004288:	00001517          	auipc	a0,0x1
    8000428c:	01850513          	addi	a0,a0,24 # 800052a0 <digits+0x70>
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	f2c080e7          	jalr	-212(ra) # 800031bc <panic>
    80004298:	00001517          	auipc	a0,0x1
    8000429c:	fe850513          	addi	a0,a0,-24 # 80005280 <digits+0x50>
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	f1c080e7          	jalr	-228(ra) # 800031bc <panic>

00000000800042a8 <__memset>:
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00813423          	sd	s0,8(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	1a060e63          	beqz	a2,80004470 <__memset+0x1c8>
    800042b8:	40a007b3          	neg	a5,a0
    800042bc:	0077f793          	andi	a5,a5,7
    800042c0:	00778693          	addi	a3,a5,7
    800042c4:	00b00813          	li	a6,11
    800042c8:	0ff5f593          	andi	a1,a1,255
    800042cc:	fff6071b          	addiw	a4,a2,-1
    800042d0:	1b06e663          	bltu	a3,a6,8000447c <__memset+0x1d4>
    800042d4:	1cd76463          	bltu	a4,a3,8000449c <__memset+0x1f4>
    800042d8:	1a078e63          	beqz	a5,80004494 <__memset+0x1ec>
    800042dc:	00b50023          	sb	a1,0(a0)
    800042e0:	00100713          	li	a4,1
    800042e4:	1ae78463          	beq	a5,a4,8000448c <__memset+0x1e4>
    800042e8:	00b500a3          	sb	a1,1(a0)
    800042ec:	00200713          	li	a4,2
    800042f0:	1ae78a63          	beq	a5,a4,800044a4 <__memset+0x1fc>
    800042f4:	00b50123          	sb	a1,2(a0)
    800042f8:	00300713          	li	a4,3
    800042fc:	18e78463          	beq	a5,a4,80004484 <__memset+0x1dc>
    80004300:	00b501a3          	sb	a1,3(a0)
    80004304:	00400713          	li	a4,4
    80004308:	1ae78263          	beq	a5,a4,800044ac <__memset+0x204>
    8000430c:	00b50223          	sb	a1,4(a0)
    80004310:	00500713          	li	a4,5
    80004314:	1ae78063          	beq	a5,a4,800044b4 <__memset+0x20c>
    80004318:	00b502a3          	sb	a1,5(a0)
    8000431c:	00700713          	li	a4,7
    80004320:	18e79e63          	bne	a5,a4,800044bc <__memset+0x214>
    80004324:	00b50323          	sb	a1,6(a0)
    80004328:	00700e93          	li	t4,7
    8000432c:	00859713          	slli	a4,a1,0x8
    80004330:	00e5e733          	or	a4,a1,a4
    80004334:	01059e13          	slli	t3,a1,0x10
    80004338:	01c76e33          	or	t3,a4,t3
    8000433c:	01859313          	slli	t1,a1,0x18
    80004340:	006e6333          	or	t1,t3,t1
    80004344:	02059893          	slli	a7,a1,0x20
    80004348:	40f60e3b          	subw	t3,a2,a5
    8000434c:	011368b3          	or	a7,t1,a7
    80004350:	02859813          	slli	a6,a1,0x28
    80004354:	0108e833          	or	a6,a7,a6
    80004358:	03059693          	slli	a3,a1,0x30
    8000435c:	003e589b          	srliw	a7,t3,0x3
    80004360:	00d866b3          	or	a3,a6,a3
    80004364:	03859713          	slli	a4,a1,0x38
    80004368:	00389813          	slli	a6,a7,0x3
    8000436c:	00f507b3          	add	a5,a0,a5
    80004370:	00e6e733          	or	a4,a3,a4
    80004374:	000e089b          	sext.w	a7,t3
    80004378:	00f806b3          	add	a3,a6,a5
    8000437c:	00e7b023          	sd	a4,0(a5)
    80004380:	00878793          	addi	a5,a5,8
    80004384:	fed79ce3          	bne	a5,a3,8000437c <__memset+0xd4>
    80004388:	ff8e7793          	andi	a5,t3,-8
    8000438c:	0007871b          	sext.w	a4,a5
    80004390:	01d787bb          	addw	a5,a5,t4
    80004394:	0ce88e63          	beq	a7,a4,80004470 <__memset+0x1c8>
    80004398:	00f50733          	add	a4,a0,a5
    8000439c:	00b70023          	sb	a1,0(a4)
    800043a0:	0017871b          	addiw	a4,a5,1
    800043a4:	0cc77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043a8:	00e50733          	add	a4,a0,a4
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	0027871b          	addiw	a4,a5,2
    800043b4:	0ac77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	0037871b          	addiw	a4,a5,3
    800043c4:	0ac77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043c8:	00e50733          	add	a4,a0,a4
    800043cc:	00b70023          	sb	a1,0(a4)
    800043d0:	0047871b          	addiw	a4,a5,4
    800043d4:	08c77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043d8:	00e50733          	add	a4,a0,a4
    800043dc:	00b70023          	sb	a1,0(a4)
    800043e0:	0057871b          	addiw	a4,a5,5
    800043e4:	08c77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043e8:	00e50733          	add	a4,a0,a4
    800043ec:	00b70023          	sb	a1,0(a4)
    800043f0:	0067871b          	addiw	a4,a5,6
    800043f4:	06c77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    800043f8:	00e50733          	add	a4,a0,a4
    800043fc:	00b70023          	sb	a1,0(a4)
    80004400:	0077871b          	addiw	a4,a5,7
    80004404:	06c77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004408:	00e50733          	add	a4,a0,a4
    8000440c:	00b70023          	sb	a1,0(a4)
    80004410:	0087871b          	addiw	a4,a5,8
    80004414:	04c77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004418:	00e50733          	add	a4,a0,a4
    8000441c:	00b70023          	sb	a1,0(a4)
    80004420:	0097871b          	addiw	a4,a5,9
    80004424:	04c77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004428:	00e50733          	add	a4,a0,a4
    8000442c:	00b70023          	sb	a1,0(a4)
    80004430:	00a7871b          	addiw	a4,a5,10
    80004434:	02c77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004438:	00e50733          	add	a4,a0,a4
    8000443c:	00b70023          	sb	a1,0(a4)
    80004440:	00b7871b          	addiw	a4,a5,11
    80004444:	02c77663          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004448:	00e50733          	add	a4,a0,a4
    8000444c:	00b70023          	sb	a1,0(a4)
    80004450:	00c7871b          	addiw	a4,a5,12
    80004454:	00c77e63          	bgeu	a4,a2,80004470 <__memset+0x1c8>
    80004458:	00e50733          	add	a4,a0,a4
    8000445c:	00b70023          	sb	a1,0(a4)
    80004460:	00d7879b          	addiw	a5,a5,13
    80004464:	00c7f663          	bgeu	a5,a2,80004470 <__memset+0x1c8>
    80004468:	00f507b3          	add	a5,a0,a5
    8000446c:	00b78023          	sb	a1,0(a5)
    80004470:	00813403          	ld	s0,8(sp)
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00008067          	ret
    8000447c:	00b00693          	li	a3,11
    80004480:	e55ff06f          	j	800042d4 <__memset+0x2c>
    80004484:	00300e93          	li	t4,3
    80004488:	ea5ff06f          	j	8000432c <__memset+0x84>
    8000448c:	00100e93          	li	t4,1
    80004490:	e9dff06f          	j	8000432c <__memset+0x84>
    80004494:	00000e93          	li	t4,0
    80004498:	e95ff06f          	j	8000432c <__memset+0x84>
    8000449c:	00000793          	li	a5,0
    800044a0:	ef9ff06f          	j	80004398 <__memset+0xf0>
    800044a4:	00200e93          	li	t4,2
    800044a8:	e85ff06f          	j	8000432c <__memset+0x84>
    800044ac:	00400e93          	li	t4,4
    800044b0:	e7dff06f          	j	8000432c <__memset+0x84>
    800044b4:	00500e93          	li	t4,5
    800044b8:	e75ff06f          	j	8000432c <__memset+0x84>
    800044bc:	00600e93          	li	t4,6
    800044c0:	e6dff06f          	j	8000432c <__memset+0x84>

00000000800044c4 <__memmove>:
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00813423          	sd	s0,8(sp)
    800044cc:	01010413          	addi	s0,sp,16
    800044d0:	0e060863          	beqz	a2,800045c0 <__memmove+0xfc>
    800044d4:	fff6069b          	addiw	a3,a2,-1
    800044d8:	0006881b          	sext.w	a6,a3
    800044dc:	0ea5e863          	bltu	a1,a0,800045cc <__memmove+0x108>
    800044e0:	00758713          	addi	a4,a1,7
    800044e4:	00a5e7b3          	or	a5,a1,a0
    800044e8:	40a70733          	sub	a4,a4,a0
    800044ec:	0077f793          	andi	a5,a5,7
    800044f0:	00f73713          	sltiu	a4,a4,15
    800044f4:	00174713          	xori	a4,a4,1
    800044f8:	0017b793          	seqz	a5,a5
    800044fc:	00e7f7b3          	and	a5,a5,a4
    80004500:	10078863          	beqz	a5,80004610 <__memmove+0x14c>
    80004504:	00900793          	li	a5,9
    80004508:	1107f463          	bgeu	a5,a6,80004610 <__memmove+0x14c>
    8000450c:	0036581b          	srliw	a6,a2,0x3
    80004510:	fff8081b          	addiw	a6,a6,-1
    80004514:	02081813          	slli	a6,a6,0x20
    80004518:	01d85893          	srli	a7,a6,0x1d
    8000451c:	00858813          	addi	a6,a1,8
    80004520:	00058793          	mv	a5,a1
    80004524:	00050713          	mv	a4,a0
    80004528:	01088833          	add	a6,a7,a6
    8000452c:	0007b883          	ld	a7,0(a5)
    80004530:	00878793          	addi	a5,a5,8
    80004534:	00870713          	addi	a4,a4,8
    80004538:	ff173c23          	sd	a7,-8(a4)
    8000453c:	ff0798e3          	bne	a5,a6,8000452c <__memmove+0x68>
    80004540:	ff867713          	andi	a4,a2,-8
    80004544:	02071793          	slli	a5,a4,0x20
    80004548:	0207d793          	srli	a5,a5,0x20
    8000454c:	00f585b3          	add	a1,a1,a5
    80004550:	40e686bb          	subw	a3,a3,a4
    80004554:	00f507b3          	add	a5,a0,a5
    80004558:	06e60463          	beq	a2,a4,800045c0 <__memmove+0xfc>
    8000455c:	0005c703          	lbu	a4,0(a1)
    80004560:	00e78023          	sb	a4,0(a5)
    80004564:	04068e63          	beqz	a3,800045c0 <__memmove+0xfc>
    80004568:	0015c603          	lbu	a2,1(a1)
    8000456c:	00100713          	li	a4,1
    80004570:	00c780a3          	sb	a2,1(a5)
    80004574:	04e68663          	beq	a3,a4,800045c0 <__memmove+0xfc>
    80004578:	0025c603          	lbu	a2,2(a1)
    8000457c:	00200713          	li	a4,2
    80004580:	00c78123          	sb	a2,2(a5)
    80004584:	02e68e63          	beq	a3,a4,800045c0 <__memmove+0xfc>
    80004588:	0035c603          	lbu	a2,3(a1)
    8000458c:	00300713          	li	a4,3
    80004590:	00c781a3          	sb	a2,3(a5)
    80004594:	02e68663          	beq	a3,a4,800045c0 <__memmove+0xfc>
    80004598:	0045c603          	lbu	a2,4(a1)
    8000459c:	00400713          	li	a4,4
    800045a0:	00c78223          	sb	a2,4(a5)
    800045a4:	00e68e63          	beq	a3,a4,800045c0 <__memmove+0xfc>
    800045a8:	0055c603          	lbu	a2,5(a1)
    800045ac:	00500713          	li	a4,5
    800045b0:	00c782a3          	sb	a2,5(a5)
    800045b4:	00e68663          	beq	a3,a4,800045c0 <__memmove+0xfc>
    800045b8:	0065c703          	lbu	a4,6(a1)
    800045bc:	00e78323          	sb	a4,6(a5)
    800045c0:	00813403          	ld	s0,8(sp)
    800045c4:	01010113          	addi	sp,sp,16
    800045c8:	00008067          	ret
    800045cc:	02061713          	slli	a4,a2,0x20
    800045d0:	02075713          	srli	a4,a4,0x20
    800045d4:	00e587b3          	add	a5,a1,a4
    800045d8:	f0f574e3          	bgeu	a0,a5,800044e0 <__memmove+0x1c>
    800045dc:	02069613          	slli	a2,a3,0x20
    800045e0:	02065613          	srli	a2,a2,0x20
    800045e4:	fff64613          	not	a2,a2
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00c78633          	add	a2,a5,a2
    800045f0:	fff7c683          	lbu	a3,-1(a5)
    800045f4:	fff78793          	addi	a5,a5,-1
    800045f8:	fff70713          	addi	a4,a4,-1
    800045fc:	00d70023          	sb	a3,0(a4)
    80004600:	fec798e3          	bne	a5,a2,800045f0 <__memmove+0x12c>
    80004604:	00813403          	ld	s0,8(sp)
    80004608:	01010113          	addi	sp,sp,16
    8000460c:	00008067          	ret
    80004610:	02069713          	slli	a4,a3,0x20
    80004614:	02075713          	srli	a4,a4,0x20
    80004618:	00170713          	addi	a4,a4,1
    8000461c:	00e50733          	add	a4,a0,a4
    80004620:	00050793          	mv	a5,a0
    80004624:	0005c683          	lbu	a3,0(a1)
    80004628:	00178793          	addi	a5,a5,1
    8000462c:	00158593          	addi	a1,a1,1
    80004630:	fed78fa3          	sb	a3,-1(a5)
    80004634:	fee798e3          	bne	a5,a4,80004624 <__memmove+0x160>
    80004638:	f89ff06f          	j	800045c0 <__memmove+0xfc>

000000008000463c <__mem_free>:
    8000463c:	ff010113          	addi	sp,sp,-16
    80004640:	00813423          	sd	s0,8(sp)
    80004644:	01010413          	addi	s0,sp,16
    80004648:	00001597          	auipc	a1,0x1
    8000464c:	5d058593          	addi	a1,a1,1488 # 80005c18 <freep>
    80004650:	0005b783          	ld	a5,0(a1)
    80004654:	ff050693          	addi	a3,a0,-16
    80004658:	0007b703          	ld	a4,0(a5)
    8000465c:	00d7fc63          	bgeu	a5,a3,80004674 <__mem_free+0x38>
    80004660:	00e6ee63          	bltu	a3,a4,8000467c <__mem_free+0x40>
    80004664:	00e7fc63          	bgeu	a5,a4,8000467c <__mem_free+0x40>
    80004668:	00070793          	mv	a5,a4
    8000466c:	0007b703          	ld	a4,0(a5)
    80004670:	fed7e8e3          	bltu	a5,a3,80004660 <__mem_free+0x24>
    80004674:	fee7eae3          	bltu	a5,a4,80004668 <__mem_free+0x2c>
    80004678:	fee6f8e3          	bgeu	a3,a4,80004668 <__mem_free+0x2c>
    8000467c:	ff852803          	lw	a6,-8(a0)
    80004680:	02081613          	slli	a2,a6,0x20
    80004684:	01c65613          	srli	a2,a2,0x1c
    80004688:	00c68633          	add	a2,a3,a2
    8000468c:	02c70a63          	beq	a4,a2,800046c0 <__mem_free+0x84>
    80004690:	fee53823          	sd	a4,-16(a0)
    80004694:	0087a503          	lw	a0,8(a5)
    80004698:	02051613          	slli	a2,a0,0x20
    8000469c:	01c65613          	srli	a2,a2,0x1c
    800046a0:	00c78633          	add	a2,a5,a2
    800046a4:	04c68263          	beq	a3,a2,800046e8 <__mem_free+0xac>
    800046a8:	00813403          	ld	s0,8(sp)
    800046ac:	00d7b023          	sd	a3,0(a5)
    800046b0:	00f5b023          	sd	a5,0(a1)
    800046b4:	00000513          	li	a0,0
    800046b8:	01010113          	addi	sp,sp,16
    800046bc:	00008067          	ret
    800046c0:	00872603          	lw	a2,8(a4)
    800046c4:	00073703          	ld	a4,0(a4)
    800046c8:	0106083b          	addw	a6,a2,a6
    800046cc:	ff052c23          	sw	a6,-8(a0)
    800046d0:	fee53823          	sd	a4,-16(a0)
    800046d4:	0087a503          	lw	a0,8(a5)
    800046d8:	02051613          	slli	a2,a0,0x20
    800046dc:	01c65613          	srli	a2,a2,0x1c
    800046e0:	00c78633          	add	a2,a5,a2
    800046e4:	fcc692e3          	bne	a3,a2,800046a8 <__mem_free+0x6c>
    800046e8:	00813403          	ld	s0,8(sp)
    800046ec:	0105053b          	addw	a0,a0,a6
    800046f0:	00a7a423          	sw	a0,8(a5)
    800046f4:	00e7b023          	sd	a4,0(a5)
    800046f8:	00f5b023          	sd	a5,0(a1)
    800046fc:	00000513          	li	a0,0
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <__mem_alloc>:
    80004708:	fc010113          	addi	sp,sp,-64
    8000470c:	02813823          	sd	s0,48(sp)
    80004710:	02913423          	sd	s1,40(sp)
    80004714:	03213023          	sd	s2,32(sp)
    80004718:	01513423          	sd	s5,8(sp)
    8000471c:	02113c23          	sd	ra,56(sp)
    80004720:	01313c23          	sd	s3,24(sp)
    80004724:	01413823          	sd	s4,16(sp)
    80004728:	01613023          	sd	s6,0(sp)
    8000472c:	04010413          	addi	s0,sp,64
    80004730:	00001a97          	auipc	s5,0x1
    80004734:	4e8a8a93          	addi	s5,s5,1256 # 80005c18 <freep>
    80004738:	00f50913          	addi	s2,a0,15
    8000473c:	000ab683          	ld	a3,0(s5)
    80004740:	00495913          	srli	s2,s2,0x4
    80004744:	0019049b          	addiw	s1,s2,1
    80004748:	00048913          	mv	s2,s1
    8000474c:	0c068c63          	beqz	a3,80004824 <__mem_alloc+0x11c>
    80004750:	0006b503          	ld	a0,0(a3)
    80004754:	00852703          	lw	a4,8(a0)
    80004758:	10977063          	bgeu	a4,s1,80004858 <__mem_alloc+0x150>
    8000475c:	000017b7          	lui	a5,0x1
    80004760:	0009099b          	sext.w	s3,s2
    80004764:	0af4e863          	bltu	s1,a5,80004814 <__mem_alloc+0x10c>
    80004768:	02099a13          	slli	s4,s3,0x20
    8000476c:	01ca5a13          	srli	s4,s4,0x1c
    80004770:	fff00b13          	li	s6,-1
    80004774:	0100006f          	j	80004784 <__mem_alloc+0x7c>
    80004778:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000477c:	00852703          	lw	a4,8(a0)
    80004780:	04977463          	bgeu	a4,s1,800047c8 <__mem_alloc+0xc0>
    80004784:	00050793          	mv	a5,a0
    80004788:	fea698e3          	bne	a3,a0,80004778 <__mem_alloc+0x70>
    8000478c:	000a0513          	mv	a0,s4
    80004790:	00000097          	auipc	ra,0x0
    80004794:	1f0080e7          	jalr	496(ra) # 80004980 <kvmincrease>
    80004798:	00050793          	mv	a5,a0
    8000479c:	01050513          	addi	a0,a0,16
    800047a0:	07678e63          	beq	a5,s6,8000481c <__mem_alloc+0x114>
    800047a4:	0137a423          	sw	s3,8(a5)
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	e94080e7          	jalr	-364(ra) # 8000463c <__mem_free>
    800047b0:	000ab783          	ld	a5,0(s5)
    800047b4:	06078463          	beqz	a5,8000481c <__mem_alloc+0x114>
    800047b8:	0007b503          	ld	a0,0(a5)
    800047bc:	00078693          	mv	a3,a5
    800047c0:	00852703          	lw	a4,8(a0)
    800047c4:	fc9760e3          	bltu	a4,s1,80004784 <__mem_alloc+0x7c>
    800047c8:	08e48263          	beq	s1,a4,8000484c <__mem_alloc+0x144>
    800047cc:	4127073b          	subw	a4,a4,s2
    800047d0:	02071693          	slli	a3,a4,0x20
    800047d4:	01c6d693          	srli	a3,a3,0x1c
    800047d8:	00e52423          	sw	a4,8(a0)
    800047dc:	00d50533          	add	a0,a0,a3
    800047e0:	01252423          	sw	s2,8(a0)
    800047e4:	00fab023          	sd	a5,0(s5)
    800047e8:	01050513          	addi	a0,a0,16
    800047ec:	03813083          	ld	ra,56(sp)
    800047f0:	03013403          	ld	s0,48(sp)
    800047f4:	02813483          	ld	s1,40(sp)
    800047f8:	02013903          	ld	s2,32(sp)
    800047fc:	01813983          	ld	s3,24(sp)
    80004800:	01013a03          	ld	s4,16(sp)
    80004804:	00813a83          	ld	s5,8(sp)
    80004808:	00013b03          	ld	s6,0(sp)
    8000480c:	04010113          	addi	sp,sp,64
    80004810:	00008067          	ret
    80004814:	000019b7          	lui	s3,0x1
    80004818:	f51ff06f          	j	80004768 <__mem_alloc+0x60>
    8000481c:	00000513          	li	a0,0
    80004820:	fcdff06f          	j	800047ec <__mem_alloc+0xe4>
    80004824:	00002797          	auipc	a5,0x2
    80004828:	69c78793          	addi	a5,a5,1692 # 80006ec0 <base>
    8000482c:	00078513          	mv	a0,a5
    80004830:	00fab023          	sd	a5,0(s5)
    80004834:	00f7b023          	sd	a5,0(a5)
    80004838:	00000713          	li	a4,0
    8000483c:	00002797          	auipc	a5,0x2
    80004840:	6807a623          	sw	zero,1676(a5) # 80006ec8 <base+0x8>
    80004844:	00050693          	mv	a3,a0
    80004848:	f11ff06f          	j	80004758 <__mem_alloc+0x50>
    8000484c:	00053703          	ld	a4,0(a0)
    80004850:	00e7b023          	sd	a4,0(a5)
    80004854:	f91ff06f          	j	800047e4 <__mem_alloc+0xdc>
    80004858:	00068793          	mv	a5,a3
    8000485c:	f6dff06f          	j	800047c8 <__mem_alloc+0xc0>

0000000080004860 <__putc>:
    80004860:	fe010113          	addi	sp,sp,-32
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	00113c23          	sd	ra,24(sp)
    8000486c:	02010413          	addi	s0,sp,32
    80004870:	00050793          	mv	a5,a0
    80004874:	fef40593          	addi	a1,s0,-17
    80004878:	00100613          	li	a2,1
    8000487c:	00000513          	li	a0,0
    80004880:	fef407a3          	sb	a5,-17(s0)
    80004884:	fffff097          	auipc	ra,0xfffff
    80004888:	918080e7          	jalr	-1768(ra) # 8000319c <console_write>
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	02010113          	addi	sp,sp,32
    80004898:	00008067          	ret

000000008000489c <__getc>:
    8000489c:	fe010113          	addi	sp,sp,-32
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00113c23          	sd	ra,24(sp)
    800048a8:	02010413          	addi	s0,sp,32
    800048ac:	fe840593          	addi	a1,s0,-24
    800048b0:	00100613          	li	a2,1
    800048b4:	00000513          	li	a0,0
    800048b8:	fffff097          	auipc	ra,0xfffff
    800048bc:	8c4080e7          	jalr	-1852(ra) # 8000317c <console_read>
    800048c0:	fe844503          	lbu	a0,-24(s0)
    800048c4:	01813083          	ld	ra,24(sp)
    800048c8:	01013403          	ld	s0,16(sp)
    800048cc:	02010113          	addi	sp,sp,32
    800048d0:	00008067          	ret

00000000800048d4 <console_handler>:
    800048d4:	fe010113          	addi	sp,sp,-32
    800048d8:	00813823          	sd	s0,16(sp)
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00913423          	sd	s1,8(sp)
    800048e4:	02010413          	addi	s0,sp,32
    800048e8:	14202773          	csrr	a4,scause
    800048ec:	100027f3          	csrr	a5,sstatus
    800048f0:	0027f793          	andi	a5,a5,2
    800048f4:	06079e63          	bnez	a5,80004970 <console_handler+0x9c>
    800048f8:	00074c63          	bltz	a4,80004910 <console_handler+0x3c>
    800048fc:	01813083          	ld	ra,24(sp)
    80004900:	01013403          	ld	s0,16(sp)
    80004904:	00813483          	ld	s1,8(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret
    80004910:	0ff77713          	andi	a4,a4,255
    80004914:	00900793          	li	a5,9
    80004918:	fef712e3          	bne	a4,a5,800048fc <console_handler+0x28>
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	4b8080e7          	jalr	1208(ra) # 80002dd4 <plic_claim>
    80004924:	00a00793          	li	a5,10
    80004928:	00050493          	mv	s1,a0
    8000492c:	02f50c63          	beq	a0,a5,80004964 <console_handler+0x90>
    80004930:	fc0506e3          	beqz	a0,800048fc <console_handler+0x28>
    80004934:	00050593          	mv	a1,a0
    80004938:	00001517          	auipc	a0,0x1
    8000493c:	87050513          	addi	a0,a0,-1936 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80004940:	fffff097          	auipc	ra,0xfffff
    80004944:	8d8080e7          	jalr	-1832(ra) # 80003218 <__printf>
    80004948:	01013403          	ld	s0,16(sp)
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	00048513          	mv	a0,s1
    80004954:	00813483          	ld	s1,8(sp)
    80004958:	02010113          	addi	sp,sp,32
    8000495c:	ffffe317          	auipc	t1,0xffffe
    80004960:	4b030067          	jr	1200(t1) # 80002e0c <plic_complete>
    80004964:	fffff097          	auipc	ra,0xfffff
    80004968:	1bc080e7          	jalr	444(ra) # 80003b20 <uartintr>
    8000496c:	fddff06f          	j	80004948 <console_handler+0x74>
    80004970:	00001517          	auipc	a0,0x1
    80004974:	93850513          	addi	a0,a0,-1736 # 800052a8 <digits+0x78>
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	844080e7          	jalr	-1980(ra) # 800031bc <panic>

0000000080004980 <kvmincrease>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	01213023          	sd	s2,0(sp)
    80004988:	00001937          	lui	s2,0x1
    8000498c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004990:	00813823          	sd	s0,16(sp)
    80004994:	00113c23          	sd	ra,24(sp)
    80004998:	00913423          	sd	s1,8(sp)
    8000499c:	02010413          	addi	s0,sp,32
    800049a0:	01250933          	add	s2,a0,s2
    800049a4:	00c95913          	srli	s2,s2,0xc
    800049a8:	02090863          	beqz	s2,800049d8 <kvmincrease+0x58>
    800049ac:	00000493          	li	s1,0
    800049b0:	00148493          	addi	s1,s1,1
    800049b4:	fffff097          	auipc	ra,0xfffff
    800049b8:	4bc080e7          	jalr	1212(ra) # 80003e70 <kalloc>
    800049bc:	fe991ae3          	bne	s2,s1,800049b0 <kvmincrease+0x30>
    800049c0:	01813083          	ld	ra,24(sp)
    800049c4:	01013403          	ld	s0,16(sp)
    800049c8:	00813483          	ld	s1,8(sp)
    800049cc:	00013903          	ld	s2,0(sp)
    800049d0:	02010113          	addi	sp,sp,32
    800049d4:	00008067          	ret
    800049d8:	01813083          	ld	ra,24(sp)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	00813483          	ld	s1,8(sp)
    800049e4:	00013903          	ld	s2,0(sp)
    800049e8:	00000513          	li	a0,0
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret
	...


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
    8000001c:	701010ef          	jal	ra,80001f1c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
        # push all registers to stack
        addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
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
    80001080:	3f9000ef          	jal	ra,80001c78 <_ZN5Riscv20handleSupervisorTrapEv>

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
        addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

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

_thread* _thread::createThread(Body body, void* arg, uint64 * stack) {
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stack);
}

_thread::_thread(Body body, uint64 timeSlice, void* arg, uint64* stack):
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
    this->stack = (body!= nullptr ? stack: nullptr);
    8000113c:	04058c63          	beqz	a1,80001194 <_ZN7_threadC1EPFvPvEmS0_Pm+0x70>
    80001140:	00070793          	mv	a5,a4
    80001144:	00f53423          	sd	a5,8(a0)
    context = {(uint64)&threadWrapper,
            this->stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001148:	04078a63          	beqz	a5,8000119c <_ZN7_threadC1EPFvPvEmS0_Pm+0x78>
    8000114c:	000087b7          	lui	a5,0x8
    80001150:	00f70733          	add	a4,a4,a5
    context = {(uint64)&threadWrapper,
    80001154:	00000797          	auipc	a5,0x0
    80001158:	0b078793          	addi	a5,a5,176 # 80001204 <_ZN7_thread13threadWrapperEv>
    8000115c:	00f53823          	sd	a5,16(a0)
    80001160:	00e53c23          	sd	a4,24(a0)
    };
    status = Status::NEW;
    80001164:	00100793          	li	a5,1
    80001168:	04f52023          	sw	a5,64(a0)
    id = globalId++;
    8000116c:	00005717          	auipc	a4,0x5
    80001170:	80470713          	addi	a4,a4,-2044 # 80005970 <_ZN7_thread8globalIdE>
    80001174:	00073783          	ld	a5,0(a4)
    80001178:	00178613          	addi	a2,a5,1
    8000117c:	00c73023          	sd	a2,0(a4)
    80001180:	02f53c23          	sd	a5,56(a0)
    this->arg=arg;
    80001184:	02d53823          	sd	a3,48(a0)
}
    80001188:	00813403          	ld	s0,8(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret
    this->stack = (body!= nullptr ? stack: nullptr);
    80001194:	00000793          	li	a5,0
    80001198:	fadff06f          	j	80001144 <_ZN7_threadC1EPFvPvEmS0_Pm+0x20>
            this->stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    8000119c:	00000713          	li	a4,0
    800011a0:	fb5ff06f          	j	80001154 <_ZN7_threadC1EPFvPvEmS0_Pm+0x30>

00000000800011a4 <_ZN7_thread5startEv>:
//    if(status==Status::FINISHED)return;
//    if(status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    status=Status::READY;
    if(body!= nullptr)
    800011a4:	00053783          	ld	a5,0(a0)
    800011a8:	02078663          	beqz	a5,800011d4 <_ZN7_thread5startEv+0x30>
void _thread::start() {
    800011ac:	ff010113          	addi	sp,sp,-16
    800011b0:	00113423          	sd	ra,8(sp)
    800011b4:	00813023          	sd	s0,0(sp)
    800011b8:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    800011bc:	00000097          	auipc	ra,0x0
    800011c0:	59c080e7          	jalr	1436(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
}
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	00013403          	ld	s0,0(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret
    800011d4:	00008067          	ret

00000000800011d8 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00813423          	sd	s0,8(sp)
    800011e0:	01010413          	addi	s0,sp,16
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800011e4:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800011e8:	00400713          	li	a4,4
    800011ec:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    800011f0:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    800011f4:	00078513          	mv	a0,a5

}
    800011f8:	00813403          	ld	s0,8(sp)
    800011fc:	01010113          	addi	sp,sp,16
    80001200:	00008067          	ret

0000000080001204 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001204:	fe010113          	addi	sp,sp,-32
    80001208:	00113c23          	sd	ra,24(sp)
    8000120c:	00813823          	sd	s0,16(sp)
    80001210:	00913423          	sd	s1,8(sp)
    80001214:	02010413          	addi	s0,sp,32
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    80001218:	00004497          	auipc	s1,0x4
    8000121c:	75848493          	addi	s1,s1,1880 # 80005970 <_ZN7_thread8globalIdE>
    80001220:	0084b783          	ld	a5,8(s1)
    80001224:	0007b703          	ld	a4,0(a5)
    80001228:	0307b503          	ld	a0,48(a5)
    8000122c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001230:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001234:	00100713          	li	a4,1
    80001238:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    8000123c:	00000097          	auipc	ra,0x0
    80001240:	f9c080e7          	jalr	-100(ra) # 800011d8 <_ZN7_thread5yieldEv>
}
    80001244:	01813083          	ld	ra,24(sp)
    80001248:	01013403          	ld	s0,16(sp)
    8000124c:	00813483          	ld	s1,8(sp)
    80001250:	02010113          	addi	sp,sp,32
    80001254:	00008067          	ret

0000000080001258 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001258:	fe010113          	addi	sp,sp,-32
    8000125c:	00113c23          	sd	ra,24(sp)
    80001260:	00813823          	sd	s0,16(sp)
    80001264:	00913423          	sd	s1,8(sp)
    80001268:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000126c:	00004497          	auipc	s1,0x4
    80001270:	70c4b483          	ld	s1,1804(s1) # 80005978 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001274:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    80001278:	02078c63          	beqz	a5,800012b0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    8000127c:	00000097          	auipc	ra,0x0
    80001280:	474080e7          	jalr	1140(ra) # 800016f0 <_ZN9Scheduler3getEv>
    80001284:	00004797          	auipc	a5,0x4
    80001288:	6ea7ba23          	sd	a0,1780(a5) # 80005978 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    8000128c:	01050593          	addi	a1,a0,16
    80001290:	01048513          	addi	a0,s1,16
    80001294:	00000097          	auipc	ra,0x0
    80001298:	e7c080e7          	jalr	-388(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    8000129c:	01813083          	ld	ra,24(sp)
    800012a0:	01013403          	ld	s0,16(sp)
    800012a4:	00813483          	ld	s1,8(sp)
    800012a8:	02010113          	addi	sp,sp,32
    800012ac:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012b0:	00048513          	mv	a0,s1
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	4a4080e7          	jalr	1188(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
    800012bc:	fc1ff06f          	j	8000127c <_ZN7_thread8dispatchEv+0x24>

00000000800012c0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012c0:	ff010113          	addi	sp,sp,-16
    800012c4:	00113423          	sd	ra,8(sp)
    800012c8:	00813023          	sd	s0,0(sp)
    800012cc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012d0:	00001097          	auipc	ra,0x1
    800012d4:	ad0080e7          	jalr	-1328(ra) # 80001da0 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012d8:	00813083          	ld	ra,8(sp)
    800012dc:	00013403          	ld	s0,0(sp)
    800012e0:	01010113          	addi	sp,sp,16
    800012e4:	00008067          	ret

00000000800012e8 <_ZN7_thread12createThreadEPFvPvES0_Pm>:
_thread* _thread::createThread(Body body, void* arg, uint64 * stack) {
    800012e8:	fd010113          	addi	sp,sp,-48
    800012ec:	02113423          	sd	ra,40(sp)
    800012f0:	02813023          	sd	s0,32(sp)
    800012f4:	00913c23          	sd	s1,24(sp)
    800012f8:	01213823          	sd	s2,16(sp)
    800012fc:	01313423          	sd	s3,8(sp)
    80001300:	01413023          	sd	s4,0(sp)
    80001304:	03010413          	addi	s0,sp,48
    80001308:	00050913          	mv	s2,a0
    8000130c:	00058993          	mv	s3,a1
    80001310:	00060a13          	mv	s4,a2
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stack);
    80001314:	04800513          	li	a0,72
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	fa8080e7          	jalr	-88(ra) # 800012c0 <_ZN7_threadnwEm>
    80001320:	00050493          	mv	s1,a0
    80001324:	000a0713          	mv	a4,s4
    80001328:	00098693          	mv	a3,s3
    8000132c:	00200613          	li	a2,2
    80001330:	00090593          	mv	a1,s2
    80001334:	00000097          	auipc	ra,0x0
    80001338:	df0080e7          	jalr	-528(ra) # 80001124 <_ZN7_threadC1EPFvPvEmS0_Pm>
}
    8000133c:	00048513          	mv	a0,s1
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00113423          	sd	ra,8(sp)
    80001368:	00813023          	sd	s0,0(sp)
    8000136c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001370:	00001097          	auipc	ra,0x1
    80001374:	a30080e7          	jalr	-1488(ra) # 80001da0 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	a30080e7          	jalr	-1488(ra) # 80001dc8 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013a0:	00813083          	ld	ra,8(sp)
    800013a4:	00013403          	ld	s0,0(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00113423          	sd	ra,8(sp)
    800013b8:	00813023          	sd	s0,0(sp)
    800013bc:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	a08080e7          	jalr	-1528(ra) # 80001dc8 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013c8:	00813083          	ld	ra,8(sp)
    800013cc:	00013403          	ld	s0,0(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z7syscallP4args>:
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    800013e4:	00053583          	ld	a1,0(a0)
    uint64 arg1 = arg->a1;
    800013e8:	00853603          	ld	a2,8(a0)
    uint64 arg2 = arg->a2;
    800013ec:	01053683          	ld	a3,16(a0)
    uint64 arg3 = arg->a3;
    800013f0:	01853703          	ld	a4,24(a0)
    uint64 arg4 = arg->a4;
    800013f4:	02053783          	ld	a5,32(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    800013f8:	00058513          	mv	a0,a1
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    800013fc:	00060593          	mv	a1,a2
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001400:	00068613          	mv	a2,a3
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001404:	00070693          	mv	a3,a4
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    80001408:	00078713          	mv	a4,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    8000140c:	00000073          	ecall


}
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    8000141c:	fc010113          	addi	sp,sp,-64
    80001420:	02113c23          	sd	ra,56(sp)
    80001424:	02813823          	sd	s0,48(sp)
    80001428:	04010413          	addi	s0,sp,64
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    8000142c:	00100793          	li	a5,1
    80001430:	fcf43423          	sd	a5,-56(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001434:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001438:	03f57513          	andi	a0,a0,63
    8000143c:	00050463          	beqz	a0,80001444 <_Z9mem_allocm+0x28>
    80001440:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    80001444:	fcf43823          	sd	a5,-48(s0)

    syscall(&arg);
    80001448:	fc840513          	addi	a0,s0,-56
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	f8c080e7          	jalr	-116(ra) # 800013d8 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001454:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001458:	03813083          	ld	ra,56(sp)
    8000145c:	03013403          	ld	s0,48(sp)
    80001460:	04010113          	addi	sp,sp,64
    80001464:	00008067          	ret

0000000080001468 <_Z8mem_freePv>:

int mem_free (void* p){
    80001468:	fc010113          	addi	sp,sp,-64
    8000146c:	02113c23          	sd	ra,56(sp)
    80001470:	02813823          	sd	s0,48(sp)
    80001474:	04010413          	addi	s0,sp,64
    args arg;
    arg.a0=0x02;
    80001478:	00200793          	li	a5,2
    8000147c:	fcf43423          	sd	a5,-56(s0)
    arg.a1=(uint64)p;
    80001480:	fca43823          	sd	a0,-48(s0)

    syscall(&arg);
    80001484:	fc840513          	addi	a0,s0,-56
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	f50080e7          	jalr	-176(ra) # 800013d8 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001490:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001494:	0005051b          	sext.w	a0,a0
    80001498:	03813083          	ld	ra,56(sp)
    8000149c:	03013403          	ld	s0,48(sp)
    800014a0:	04010113          	addi	sp,sp,64
    800014a4:	00008067          	ret

00000000800014a8 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014a8:	fa010113          	addi	sp,sp,-96
    800014ac:	04113c23          	sd	ra,88(sp)
    800014b0:	04813823          	sd	s0,80(sp)
    800014b4:	04913423          	sd	s1,72(sp)
    800014b8:	05213023          	sd	s2,64(sp)
    800014bc:	03313c23          	sd	s3,56(sp)
    800014c0:	06010413          	addi	s0,sp,96
    800014c4:	00050993          	mv	s3,a0
    800014c8:	00058913          	mv	s2,a1
    800014cc:	00060493          	mv	s1,a2

    uint64* stack = (uint64*)mem_alloc(DEFAULT_STACK_SIZE*sizeof (uint64));
    800014d0:	00008537          	lui	a0,0x8
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f48080e7          	jalr	-184(ra) # 8000141c <_Z9mem_allocm>

    args myArgs;
    myArgs.a0=0x11;
    800014dc:	01100793          	li	a5,17
    800014e0:	faf43423          	sd	a5,-88(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    800014e4:	fb343823          	sd	s3,-80(s0)
    myArgs.a2=(uint64)start_routine;
    800014e8:	fb243c23          	sd	s2,-72(s0)
    myArgs.a3=(uint64)arg;
    800014ec:	fc943023          	sd	s1,-64(s0)
    myArgs.a4=(uint64)stack;
    800014f0:	fca43423          	sd	a0,-56(s0)

    syscall(&myArgs);
    800014f4:	fa840513          	addi	a0,s0,-88
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	ee0080e7          	jalr	-288(ra) # 800013d8 <_Z7syscallP4args>
    uint64* ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001500:	00050793          	mv	a5,a0

    _thread** ptr = (_thread**)ret;
    handle = ptr;
    if(handle!= nullptr){
    80001504:	02078263          	beqz	a5,80001528 <_Z13thread_createPP7_threadPFvPvES2_+0x80>
        return 0;
    80001508:	00000513          	li	a0,0
    else{
        return -1;
    }


}
    8000150c:	05813083          	ld	ra,88(sp)
    80001510:	05013403          	ld	s0,80(sp)
    80001514:	04813483          	ld	s1,72(sp)
    80001518:	04013903          	ld	s2,64(sp)
    8000151c:	03813983          	ld	s3,56(sp)
    80001520:	06010113          	addi	sp,sp,96
    80001524:	00008067          	ret
        return -1;
    80001528:	fff00513          	li	a0,-1
    8000152c:	fe1ff06f          	j	8000150c <_Z13thread_createPP7_threadPFvPvES2_+0x64>

0000000080001530 <_Z11thread_exitv>:

int thread_exit (){
    80001530:	fc010113          	addi	sp,sp,-64
    80001534:	02113c23          	sd	ra,56(sp)
    80001538:	02813823          	sd	s0,48(sp)
    8000153c:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x12;
    80001540:	01200793          	li	a5,18
    80001544:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    80001548:	fc840513          	addi	a0,s0,-56
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	e8c080e7          	jalr	-372(ra) # 800013d8 <_Z7syscallP4args>

    return 0;
}
    80001554:	00000513          	li	a0,0
    80001558:	03813083          	ld	ra,56(sp)
    8000155c:	03013403          	ld	s0,48(sp)
    80001560:	04010113          	addi	sp,sp,64
    80001564:	00008067          	ret

0000000080001568 <_Z15thread_dispatchv>:


void thread_dispatch (){
    80001568:	fc010113          	addi	sp,sp,-64
    8000156c:	02113c23          	sd	ra,56(sp)
    80001570:	02813823          	sd	s0,48(sp)
    80001574:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x13;
    80001578:	01300793          	li	a5,19
    8000157c:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    80001580:	fc840513          	addi	a0,s0,-56
    80001584:	00000097          	auipc	ra,0x0
    80001588:	e54080e7          	jalr	-428(ra) # 800013d8 <_Z7syscallP4args>


}
    8000158c:	03813083          	ld	ra,56(sp)
    80001590:	03013403          	ld	s0,48(sp)
    80001594:	04010113          	addi	sp,sp,64
    80001598:	00008067          	ret

000000008000159c <_Z9userMain2v>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

void userMain2(){
    8000159c:	fd010113          	addi	sp,sp,-48
    800015a0:	02113423          	sd	ra,40(sp)
    800015a4:	02813023          	sd	s0,32(sp)
    800015a8:	03010413          	addi	s0,sp,48
//    };
//    threads[0]->start();
//    _thread::running=threads[0];
    _thread* threads[3];

    if(!thread_create(&threads[0], workerBodyA, nullptr)){
    800015ac:	00000613          	li	a2,0
    800015b0:	00004597          	auipc	a1,0x4
    800015b4:	3585b583          	ld	a1,856(a1) # 80005908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015b8:	fd840513          	addi	a0,s0,-40
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	eec080e7          	jalr	-276(ra) # 800014a8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015c4:	04050663          	beqz	a0,80001610 <_Z9userMain2v+0x74>
        printString("thread created");
    }
    threads[0]->start();
    800015c8:	fd843503          	ld	a0,-40(s0)
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	bd8080e7          	jalr	-1064(ra) # 800011a4 <_ZN7_thread5startEv>
    _thread::running=threads[0];
    800015d4:	fd843703          	ld	a4,-40(s0)
    800015d8:	00004797          	auipc	a5,0x4
    800015dc:	3187b783          	ld	a5,792(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015e0:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyB, nullptr)){
    800015e4:	00000613          	li	a2,0
    800015e8:	00004597          	auipc	a1,0x4
    800015ec:	3285b583          	ld	a1,808(a1) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015f0:	fe040513          	addi	a0,s0,-32
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	eb4080e7          	jalr	-332(ra) # 800014a8 <_Z13thread_createPP7_threadPFvPvES2_>
    800015fc:	02050463          	beqz	a0,80001624 <_Z9userMain2v+0x88>
        printString("thread created");
    }
    threads[1]->start();
    80001600:	fe043503          	ld	a0,-32(s0)
    80001604:	00000097          	auipc	ra,0x0
    80001608:	ba0080e7          	jalr	-1120(ra) # 800011a4 <_ZN7_thread5startEv>
    8000160c:	0340006f          	j	80001640 <_Z9userMain2v+0xa4>
        printString("thread created");
    80001610:	00004517          	auipc	a0,0x4
    80001614:	9f050513          	addi	a0,a0,-1552 # 80005000 <kvmincrease+0xce0>
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	7d8080e7          	jalr	2008(ra) # 80001df0 <_Z11printStringPKc>
    80001620:	fa9ff06f          	j	800015c8 <_Z9userMain2v+0x2c>
        printString("thread created");
    80001624:	00004517          	auipc	a0,0x4
    80001628:	9dc50513          	addi	a0,a0,-1572 # 80005000 <kvmincrease+0xce0>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	7c4080e7          	jalr	1988(ra) # 80001df0 <_Z11printStringPKc>
    80001634:	fcdff06f          	j	80001600 <_Z9userMain2v+0x64>

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	ba0080e7          	jalr	-1120(ra) # 800011d8 <_ZN7_thread5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001640:	fe043783          	ld	a5,-32(s0)
    80001644:	0287c783          	lbu	a5,40(a5)
    80001648:	fe0788e3          	beqz	a5,80001638 <_Z9userMain2v+0x9c>
    8000164c:	fe843783          	ld	a5,-24(s0)
    80001650:	0287c783          	lbu	a5,40(a5)
    80001654:	fe0782e3          	beqz	a5,80001638 <_Z9userMain2v+0x9c>
    }

    printString("finished \n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	9b850513          	addi	a0,a0,-1608 # 80005010 <kvmincrease+0xcf0>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	790080e7          	jalr	1936(ra) # 80001df0 <_Z11printStringPKc>

    80001668:	02813083          	ld	ra,40(sp)
    8000166c:	02013403          	ld	s0,32(sp)
    80001670:	03010113          	addi	sp,sp,48
    80001674:	00008067          	ret

0000000080001678 <main>:


//extern void userMain1();
extern void userMain2();

int main(){
    80001678:	ff010113          	addi	sp,sp,-16
    8000167c:	00113423          	sd	ra,8(sp)
    80001680:	00813023          	sd	s0,0(sp)
    80001684:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001688:	00004797          	auipc	a5,0x4
    8000168c:	2707b783          	ld	a5,624(a5) # 800058f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001690:	10579073          	csrw	stvec,a5
//    {
//        delete thread;
//    }


    userMain2();
    80001694:	00000097          	auipc	ra,0x0
    80001698:	f08080e7          	jalr	-248(ra) # 8000159c <_Z9userMain2v>


    return 0;
}
    8000169c:	00000513          	li	a0,0
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
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
    80001728:	6a4080e7          	jalr	1700(ra) # 80001dc8 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001778:	62c080e7          	jalr	1580(ra) # 80001da0 <_ZN15MemoryAllocator10kmem_allocEm>
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
    8000180c:	c14080e7          	jalr	-1004(ra) # 8000141c <_Z9mem_allocm>
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
    80001834:	bec080e7          	jalr	-1044(ra) # 8000141c <_Z9mem_allocm>
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
    8000185c:	c10080e7          	jalr	-1008(ra) # 80001468 <_Z8mem_freePv>
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
    80001884:	be8080e7          	jalr	-1048(ra) # 80001468 <_Z8mem_freePv>

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
    80001900:	8dc080e7          	jalr	-1828(ra) # 800011d8 <_ZN7_thread5yieldEv>
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
    8000192c:	6f850513          	addi	a0,a0,1784 # 80005020 <kvmincrease+0xd00>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	4c0080e7          	jalr	1216(ra) # 80001df0 <_Z11printStringPKc>
        printInteger(i);
    80001938:	00048513          	mv	a0,s1
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	524080e7          	jalr	1316(ra) # 80001e60 <_Z12printIntegerm>
        printString("\n");
    80001944:	00003517          	auipc	a0,0x3
    80001948:	6ec50513          	addi	a0,a0,1772 # 80005030 <kvmincrease+0xd10>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	4a4080e7          	jalr	1188(ra) # 80001df0 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001954:	0014849b          	addiw	s1,s1,1
    80001958:	0ff4f493          	andi	s1,s1,255
    8000195c:	00200793          	li	a5,2
    80001960:	fc97f4e3          	bgeu	a5,s1,80001928 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6c450513          	addi	a0,a0,1732 # 80005028 <kvmincrease+0xd08>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	484080e7          	jalr	1156(ra) # 80001df0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001974:	00700313          	li	t1,7
    _thread::yield();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	860080e7          	jalr	-1952(ra) # 800011d8 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001980:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6b450513          	addi	a0,a0,1716 # 80005038 <kvmincrease+0xd18>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	464080e7          	jalr	1124(ra) # 80001df0 <_Z11printStringPKc>
    printInteger(t1);
    80001994:	00090513          	mv	a0,s2
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	4c8080e7          	jalr	1224(ra) # 80001e60 <_Z12printIntegerm>
    printString("\n");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	69050513          	addi	a0,a0,1680 # 80005030 <kvmincrease+0xd10>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	448080e7          	jalr	1096(ra) # 80001df0 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800019b0:	01400513          	li	a0,20
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	ee4080e7          	jalr	-284(ra) # 80001898 <_ZL9fibonaccim>
    800019bc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	68050513          	addi	a0,a0,1664 # 80005040 <kvmincrease+0xd20>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	428080e7          	jalr	1064(ra) # 80001df0 <_Z11printStringPKc>
    printInteger(result);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	48c080e7          	jalr	1164(ra) # 80001e60 <_Z12printIntegerm>
    printString("\n");
    800019dc:	00003517          	auipc	a0,0x3
    800019e0:	65450513          	addi	a0,a0,1620 # 80005030 <kvmincrease+0xd10>
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	40c080e7          	jalr	1036(ra) # 80001df0 <_Z11printStringPKc>
    800019ec:	0380006f          	j	80001a24 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019f0:	00003517          	auipc	a0,0x3
    800019f4:	63050513          	addi	a0,a0,1584 # 80005020 <kvmincrease+0xd00>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	3f8080e7          	jalr	1016(ra) # 80001df0 <_Z11printStringPKc>
        printInteger(i);
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	45c080e7          	jalr	1116(ra) # 80001e60 <_Z12printIntegerm>
        printString("\n");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	62450513          	addi	a0,a0,1572 # 80005030 <kvmincrease+0xd10>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	3dc080e7          	jalr	988(ra) # 80001df0 <_Z11printStringPKc>
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
    void setFinished(bool value) { finished = value; }
    80001a38:	00100713          	li	a4,1
    80001a3c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a40:	fffff097          	auipc	ra,0xfffff
    80001a44:	798080e7          	jalr	1944(ra) # 800011d8 <_ZN7_thread5yieldEv>
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
    80001a84:	5d050513          	addi	a0,a0,1488 # 80005050 <kvmincrease+0xd30>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	368080e7          	jalr	872(ra) # 80001df0 <_Z11printStringPKc>
        printInteger(i);
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	3cc080e7          	jalr	972(ra) # 80001e60 <_Z12printIntegerm>
        printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	59450513          	addi	a0,a0,1428 # 80005030 <kvmincrease+0xd10>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	34c080e7          	jalr	844(ra) # 80001df0 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001aac:	0014849b          	addiw	s1,s1,1
    80001ab0:	0ff4f493          	andi	s1,s1,255
    80001ab4:	00c00793          	li	a5,12
    80001ab8:	fc97f4e3          	bgeu	a5,s1,80001a80 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001abc:	00003517          	auipc	a0,0x3
    80001ac0:	59c50513          	addi	a0,a0,1436 # 80005058 <kvmincrease+0xd38>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	32c080e7          	jalr	812(ra) # 80001df0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001acc:	00500313          	li	t1,5
    _thread::yield();
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	708080e7          	jalr	1800(ra) # 800011d8 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001ad8:	01700513          	li	a0,23
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	dbc080e7          	jalr	-580(ra) # 80001898 <_ZL9fibonaccim>
    80001ae4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	55850513          	addi	a0,a0,1368 # 80005040 <kvmincrease+0xd20>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	300080e7          	jalr	768(ra) # 80001df0 <_Z11printStringPKc>
    printInteger(result);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	364080e7          	jalr	868(ra) # 80001e60 <_Z12printIntegerm>
    printString("\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	52c50513          	addi	a0,a0,1324 # 80005030 <kvmincrease+0xd10>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	2e4080e7          	jalr	740(ra) # 80001df0 <_Z11printStringPKc>
    80001b14:	0380006f          	j	80001b4c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	53850513          	addi	a0,a0,1336 # 80005050 <kvmincrease+0xd30>
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	2d0080e7          	jalr	720(ra) # 80001df0 <_Z11printStringPKc>
        printInteger(i);
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	334080e7          	jalr	820(ra) # 80001e60 <_Z12printIntegerm>
        printString("\n");
    80001b34:	00003517          	auipc	a0,0x3
    80001b38:	4fc50513          	addi	a0,a0,1276 # 80005030 <kvmincrease+0xd10>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	2b4080e7          	jalr	692(ra) # 80001df0 <_Z11printStringPKc>
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
    80001b6c:	670080e7          	jalr	1648(ra) # 800011d8 <_ZN7_thread5yieldEv>
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
    uint64 arg2;
    uint64 arg3;
    uint64 arg4;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b98:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b9c:	00100713          	li	a4,1
    80001ba0:	02e78a63          	beq	a5,a4,80001bd4 <_ZN5Riscv14syscallHandlerEv+0x4c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001ba4:	00200713          	li	a4,2
    80001ba8:	04e78063          	beq	a5,a4,80001be8 <_ZN5Riscv14syscallHandlerEv+0x60>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001bac:	01100713          	li	a4,17
    80001bb0:	04e78663          	beq	a5,a4,80001bfc <_ZN5Riscv14syscallHandlerEv+0x74>
        //return _thread* adress through a0
        uint64 ret = (uint64)t;
        __asm__ volatile("mv a0, %0" : : "r" (ret));

    }
    else if(arg0==0x12){
    80001bb4:	01200713          	li	a4,18
    80001bb8:	06e78a63          	beq	a5,a4,80001c2c <_ZN5Riscv14syscallHandlerEv+0xa4>
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
    80001bbc:	01300713          	li	a4,19
    80001bc0:	08e78663          	beq	a5,a4,80001c4c <_ZN5Riscv14syscallHandlerEv+0xc4>
        _thread::dispatch();

    }

}
    80001bc4:	00813083          	ld	ra,8(sp)
    80001bc8:	00013403          	ld	s0,0(sp)
    80001bcc:	01010113          	addi	sp,sp,16
    80001bd0:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001bd4:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	1c8080e7          	jalr	456(ra) # 80001da0 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001be0:	00050513          	mv	a0,a0
    80001be4:	fe1ff06f          	j	80001bc4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001be8:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	1dc080e7          	jalr	476(ra) # 80001dc8 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001bf4:	00050513          	mv	a0,a0
    80001bf8:	fcdff06f          	j	80001bc4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        __asm__ volatile("ld t0, 11*8(fp)"); //a1
    80001bfc:	05843283          	ld	t0,88(s0)
        __asm__ volatile("ld t1, 12*8(fp)"); //a2
    80001c00:	06043303          	ld	t1,96(s0)
        __asm__ volatile("ld t2, 13*8(fp)"); //a3
    80001c04:	06843383          	ld	t2,104(s0)
        __asm__ volatile("ld t3, 14*8(fp)"); //a4
    80001c08:	07043e03          	ld	t3,112(s0)
        __asm__ volatile("mv %0, t0" : "=r" (arg1));    //handle (thread_t*)
    80001c0c:	00028793          	mv	a5,t0
        __asm__ volatile("mv %0, t1" : "=r" (arg2));    //start routine
    80001c10:	00030513          	mv	a0,t1
        __asm__ volatile("mv %0, t2" : "=r" (arg3));    //argument of start routine
    80001c14:	00038593          	mv	a1,t2
        __asm__ volatile("mv %0, t3" : "=r" (arg4));    //stack
    80001c18:	000e0613          	mv	a2,t3
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3, (uint64*)arg4);    //t je thread_t
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	6cc080e7          	jalr	1740(ra) # 800012e8 <_ZN7_thread12createThreadEPFvPvES0_Pm>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001c24:	00050513          	mv	a0,a0
    80001c28:	f9dff06f          	j	80001bc4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::running->finished=true;
    80001c2c:	00004797          	auipc	a5,0x4
    80001c30:	cc47b783          	ld	a5,-828(a5) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c34:	0007b783          	ld	a5,0(a5)
    80001c38:	00100713          	li	a4,1
    80001c3c:	02e78423          	sb	a4,40(a5)
        _thread::dispatch();
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	618080e7          	jalr	1560(ra) # 80001258 <_ZN7_thread8dispatchEv>
    80001c48:	f7dff06f          	j	80001bc4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        _thread::dispatch();
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	60c080e7          	jalr	1548(ra) # 80001258 <_ZN7_thread8dispatchEv>
}
    80001c54:	f71ff06f          	j	80001bc4 <_ZN5Riscv14syscallHandlerEv+0x3c>

0000000080001c58 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c64:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001c68:	10200073          	sret
}
    80001c6c:	00813403          	ld	s0,8(sp)
    80001c70:	01010113          	addi	sp,sp,16
    80001c74:	00008067          	ret

0000000080001c78 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c78:	fa010113          	addi	sp,sp,-96
    80001c7c:	04113c23          	sd	ra,88(sp)
    80001c80:	04813823          	sd	s0,80(sp)
    80001c84:	04913423          	sd	s1,72(sp)
    80001c88:	05213023          	sd	s2,64(sp)
    80001c8c:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c90:	142027f3          	csrr	a5,scause
    80001c94:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001c98:	fa843783          	ld	a5,-88(s0)
    uint scause = r_scause();
    80001c9c:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    uint64 fp;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001ca0:	00050693          	mv	a3,a0
    __asm__ volatile("mv %0, s0" : "=r" (fp));  //load fp adress
    80001ca4:	00040613          	mv	a2,s0


    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001ca8:	ff87879b          	addiw	a5,a5,-8
    80001cac:	00100713          	li	a4,1
    80001cb0:	00f77e63          	bgeu	a4,a5,80001ccc <_ZN5Riscv20handleSupervisorTrapEv+0x54>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001cb4:	05813083          	ld	ra,88(sp)
    80001cb8:	05013403          	ld	s0,80(sp)
    80001cbc:	04813483          	ld	s1,72(sp)
    80001cc0:	04013903          	ld	s2,64(sp)
    80001cc4:	06010113          	addi	sp,sp,96
    80001cc8:	00008067          	ret
        if(a0reg==0x04){
    80001ccc:	00400793          	li	a5,4
    80001cd0:	02f68e63          	beq	a3,a5,80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
        else if(a0reg==0x11){
    80001cd4:	01100793          	li	a5,17
    80001cd8:	06f68863          	beq	a3,a5,80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cdc:	141027f3          	csrr	a5,sepc
    80001ce0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ce4:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80001ce8:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cec:	100027f3          	csrr	a5,sstatus
    80001cf0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cf4:	fd043903          	ld	s2,-48(s0)
            syscallHandler();
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	e90080e7          	jalr	-368(ra) # 80001b88 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d00:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d04:	14149073          	csrw	sepc,s1
}
    80001d08:	fadff06f          	j	80001cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d0c:	141027f3          	csrr	a5,sepc
    80001d10:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d14:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001d18:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d1c:	100027f3          	csrr	a5,sstatus
    80001d20:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001d24:	fb043903          	ld	s2,-80(s0)
            _thread::timeSliceCounter = 0;
    80001d28:	00004797          	auipc	a5,0x4
    80001d2c:	bf07b783          	ld	a5,-1040(a5) # 80005918 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d30:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	524080e7          	jalr	1316(ra) # 80001258 <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d3c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d40:	14149073          	csrw	sepc,s1
}
    80001d44:	f71ff06f          	j	80001cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d48:	141027f3          	csrr	a5,sepc
    80001d4c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001d50:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001d54:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d58:	100027f3          	csrr	a5,sstatus
    80001d5c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001d60:	fc043903          	ld	s2,-64(s0)
            __asm__ volatile("mv t0, %0" : : "r" (fp)); //move frame pointer value to t0 register
    80001d64:	00060293          	mv	t0,a2
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001d68:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001d6c:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001d70:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001d74:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001d78:	00058793          	mv	a5,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001d7c:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001d80:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001d84:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3, (uint64*)arg4);    //t je thread_t
    80001d88:	fffff097          	auipc	ra,0xfffff
    80001d8c:	560080e7          	jalr	1376(ra) # 800012e8 <_ZN7_thread12createThreadEPFvPvES0_Pm>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001d90:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d94:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d98:	14149073          	csrw	sepc,s1
}
    80001d9c:	f19ff06f          	j	80001cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>

0000000080001da0 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001db0:	00002097          	auipc	ra,0x2
    80001db4:	2f8080e7          	jalr	760(ra) # 800040a8 <__mem_alloc>
}
    80001db8:	00813083          	ld	ra,8(sp)
    80001dbc:	00013403          	ld	s0,0(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001dd8:	00002097          	auipc	ra,0x2
    80001ddc:	204080e7          	jalr	516(ra) # 80003fdc <__mem_free>
    80001de0:	00813083          	ld	ra,8(sp)
    80001de4:	00013403          	ld	s0,0(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001df0:	fd010113          	addi	sp,sp,-48
    80001df4:	02113423          	sd	ra,40(sp)
    80001df8:	02813023          	sd	s0,32(sp)
    80001dfc:	00913c23          	sd	s1,24(sp)
    80001e00:	01213823          	sd	s2,16(sp)
    80001e04:	03010413          	addi	s0,sp,48
    80001e08:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e0c:	100027f3          	csrr	a5,sstatus
    80001e10:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e14:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e18:	00200793          	li	a5,2
    80001e1c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001e20:	0004c503          	lbu	a0,0(s1)
    80001e24:	00050a63          	beqz	a0,80001e38 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e28:	00002097          	auipc	ra,0x2
    80001e2c:	3d8080e7          	jalr	984(ra) # 80004200 <__putc>
        string++;
    80001e30:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e34:	fedff06f          	j	80001e20 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001e38:	0009091b          	sext.w	s2,s2
    80001e3c:	00297913          	andi	s2,s2,2
    80001e40:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e44:	10092073          	csrs	sstatus,s2
}
    80001e48:	02813083          	ld	ra,40(sp)
    80001e4c:	02013403          	ld	s0,32(sp)
    80001e50:	01813483          	ld	s1,24(sp)
    80001e54:	01013903          	ld	s2,16(sp)
    80001e58:	03010113          	addi	sp,sp,48
    80001e5c:	00008067          	ret

0000000080001e60 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e60:	fc010113          	addi	sp,sp,-64
    80001e64:	02113c23          	sd	ra,56(sp)
    80001e68:	02813823          	sd	s0,48(sp)
    80001e6c:	02913423          	sd	s1,40(sp)
    80001e70:	03213023          	sd	s2,32(sp)
    80001e74:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e78:	100027f3          	csrr	a5,sstatus
    80001e7c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e80:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e84:	00200793          	li	a5,2
    80001e88:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001e8c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001e90:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001e94:	00a00613          	li	a2,10
    80001e98:	02c5773b          	remuw	a4,a0,a2
    80001e9c:	02071693          	slli	a3,a4,0x20
    80001ea0:	0206d693          	srli	a3,a3,0x20
    80001ea4:	00003717          	auipc	a4,0x3
    80001ea8:	1c470713          	addi	a4,a4,452 # 80005068 <_ZZ12printIntegermE6digits>
    80001eac:	00d70733          	add	a4,a4,a3
    80001eb0:	00074703          	lbu	a4,0(a4)
    80001eb4:	fe040693          	addi	a3,s0,-32
    80001eb8:	009687b3          	add	a5,a3,s1
    80001ebc:	0014849b          	addiw	s1,s1,1
    80001ec0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ec4:	0005071b          	sext.w	a4,a0
    80001ec8:	02c5553b          	divuw	a0,a0,a2
    80001ecc:	00900793          	li	a5,9
    80001ed0:	fce7e2e3          	bltu	a5,a4,80001e94 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001ed4:	fff4849b          	addiw	s1,s1,-1
    80001ed8:	0004ce63          	bltz	s1,80001ef4 <_Z12printIntegerm+0x94>
    80001edc:	fe040793          	addi	a5,s0,-32
    80001ee0:	009787b3          	add	a5,a5,s1
    80001ee4:	ff07c503          	lbu	a0,-16(a5)
    80001ee8:	00002097          	auipc	ra,0x2
    80001eec:	318080e7          	jalr	792(ra) # 80004200 <__putc>
    80001ef0:	fe5ff06f          	j	80001ed4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ef4:	0009091b          	sext.w	s2,s2
    80001ef8:	00297913          	andi	s2,s2,2
    80001efc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f00:	10092073          	csrs	sstatus,s2
}
    80001f04:	03813083          	ld	ra,56(sp)
    80001f08:	03013403          	ld	s0,48(sp)
    80001f0c:	02813483          	ld	s1,40(sp)
    80001f10:	02013903          	ld	s2,32(sp)
    80001f14:	04010113          	addi	sp,sp,64
    80001f18:	00008067          	ret

0000000080001f1c <start>:
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	300027f3          	csrr	a5,mstatus
    80001f2c:	ffffe737          	lui	a4,0xffffe
    80001f30:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bef>
    80001f34:	00e7f7b3          	and	a5,a5,a4
    80001f38:	00001737          	lui	a4,0x1
    80001f3c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f40:	00e7e7b3          	or	a5,a5,a4
    80001f44:	30079073          	csrw	mstatus,a5
    80001f48:	00000797          	auipc	a5,0x0
    80001f4c:	16078793          	addi	a5,a5,352 # 800020a8 <system_main>
    80001f50:	34179073          	csrw	mepc,a5
    80001f54:	00000793          	li	a5,0
    80001f58:	18079073          	csrw	satp,a5
    80001f5c:	000107b7          	lui	a5,0x10
    80001f60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f64:	30279073          	csrw	medeleg,a5
    80001f68:	30379073          	csrw	mideleg,a5
    80001f6c:	104027f3          	csrr	a5,sie
    80001f70:	2227e793          	ori	a5,a5,546
    80001f74:	10479073          	csrw	sie,a5
    80001f78:	fff00793          	li	a5,-1
    80001f7c:	00a7d793          	srli	a5,a5,0xa
    80001f80:	3b079073          	csrw	pmpaddr0,a5
    80001f84:	00f00793          	li	a5,15
    80001f88:	3a079073          	csrw	pmpcfg0,a5
    80001f8c:	f14027f3          	csrr	a5,mhartid
    80001f90:	0200c737          	lui	a4,0x200c
    80001f94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f98:	0007869b          	sext.w	a3,a5
    80001f9c:	00269713          	slli	a4,a3,0x2
    80001fa0:	000f4637          	lui	a2,0xf4
    80001fa4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fa8:	00d70733          	add	a4,a4,a3
    80001fac:	0037979b          	slliw	a5,a5,0x3
    80001fb0:	020046b7          	lui	a3,0x2004
    80001fb4:	00d787b3          	add	a5,a5,a3
    80001fb8:	00c585b3          	add	a1,a1,a2
    80001fbc:	00371693          	slli	a3,a4,0x3
    80001fc0:	00004717          	auipc	a4,0x4
    80001fc4:	9e070713          	addi	a4,a4,-1568 # 800059a0 <timer_scratch>
    80001fc8:	00b7b023          	sd	a1,0(a5)
    80001fcc:	00d70733          	add	a4,a4,a3
    80001fd0:	00f73c23          	sd	a5,24(a4)
    80001fd4:	02c73023          	sd	a2,32(a4)
    80001fd8:	34071073          	csrw	mscratch,a4
    80001fdc:	00000797          	auipc	a5,0x0
    80001fe0:	6e478793          	addi	a5,a5,1764 # 800026c0 <timervec>
    80001fe4:	30579073          	csrw	mtvec,a5
    80001fe8:	300027f3          	csrr	a5,mstatus
    80001fec:	0087e793          	ori	a5,a5,8
    80001ff0:	30079073          	csrw	mstatus,a5
    80001ff4:	304027f3          	csrr	a5,mie
    80001ff8:	0807e793          	ori	a5,a5,128
    80001ffc:	30479073          	csrw	mie,a5
    80002000:	f14027f3          	csrr	a5,mhartid
    80002004:	0007879b          	sext.w	a5,a5
    80002008:	00078213          	mv	tp,a5
    8000200c:	30200073          	mret
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <timerinit>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	f14027f3          	csrr	a5,mhartid
    8000202c:	0200c737          	lui	a4,0x200c
    80002030:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002034:	0007869b          	sext.w	a3,a5
    80002038:	00269713          	slli	a4,a3,0x2
    8000203c:	000f4637          	lui	a2,0xf4
    80002040:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002044:	00d70733          	add	a4,a4,a3
    80002048:	0037979b          	slliw	a5,a5,0x3
    8000204c:	020046b7          	lui	a3,0x2004
    80002050:	00d787b3          	add	a5,a5,a3
    80002054:	00c585b3          	add	a1,a1,a2
    80002058:	00371693          	slli	a3,a4,0x3
    8000205c:	00004717          	auipc	a4,0x4
    80002060:	94470713          	addi	a4,a4,-1724 # 800059a0 <timer_scratch>
    80002064:	00b7b023          	sd	a1,0(a5)
    80002068:	00d70733          	add	a4,a4,a3
    8000206c:	00f73c23          	sd	a5,24(a4)
    80002070:	02c73023          	sd	a2,32(a4)
    80002074:	34071073          	csrw	mscratch,a4
    80002078:	00000797          	auipc	a5,0x0
    8000207c:	64878793          	addi	a5,a5,1608 # 800026c0 <timervec>
    80002080:	30579073          	csrw	mtvec,a5
    80002084:	300027f3          	csrr	a5,mstatus
    80002088:	0087e793          	ori	a5,a5,8
    8000208c:	30079073          	csrw	mstatus,a5
    80002090:	304027f3          	csrr	a5,mie
    80002094:	0807e793          	ori	a5,a5,128
    80002098:	30479073          	csrw	mie,a5
    8000209c:	00813403          	ld	s0,8(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <system_main>:
    800020a8:	fe010113          	addi	sp,sp,-32
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	02010413          	addi	s0,sp,32
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	0c4080e7          	jalr	196(ra) # 80002180 <cpuid>
    800020c4:	00004497          	auipc	s1,0x4
    800020c8:	87c48493          	addi	s1,s1,-1924 # 80005940 <started>
    800020cc:	02050263          	beqz	a0,800020f0 <system_main+0x48>
    800020d0:	0004a783          	lw	a5,0(s1)
    800020d4:	0007879b          	sext.w	a5,a5
    800020d8:	fe078ce3          	beqz	a5,800020d0 <system_main+0x28>
    800020dc:	0ff0000f          	fence
    800020e0:	00003517          	auipc	a0,0x3
    800020e4:	fc850513          	addi	a0,a0,-56 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	a74080e7          	jalr	-1420(ra) # 80002b5c <panic>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	9c8080e7          	jalr	-1592(ra) # 80002ab8 <consoleinit>
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	154080e7          	jalr	340(ra) # 8000324c <printfinit>
    80002100:	00003517          	auipc	a0,0x3
    80002104:	f3050513          	addi	a0,a0,-208 # 80005030 <kvmincrease+0xd10>
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	ab0080e7          	jalr	-1360(ra) # 80002bb8 <__printf>
    80002110:	00003517          	auipc	a0,0x3
    80002114:	f6850513          	addi	a0,a0,-152 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	aa0080e7          	jalr	-1376(ra) # 80002bb8 <__printf>
    80002120:	00003517          	auipc	a0,0x3
    80002124:	f1050513          	addi	a0,a0,-240 # 80005030 <kvmincrease+0xd10>
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	a90080e7          	jalr	-1392(ra) # 80002bb8 <__printf>
    80002130:	00001097          	auipc	ra,0x1
    80002134:	4a8080e7          	jalr	1192(ra) # 800035d8 <kinit>
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	148080e7          	jalr	328(ra) # 80002280 <trapinit>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	16c080e7          	jalr	364(ra) # 800022ac <trapinithart>
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	5b8080e7          	jalr	1464(ra) # 80002700 <plicinit>
    80002150:	00000097          	auipc	ra,0x0
    80002154:	5d8080e7          	jalr	1496(ra) # 80002728 <plicinithart>
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	078080e7          	jalr	120(ra) # 800021d0 <userinit>
    80002160:	0ff0000f          	fence
    80002164:	00100793          	li	a5,1
    80002168:	00003517          	auipc	a0,0x3
    8000216c:	f2850513          	addi	a0,a0,-216 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    80002170:	00f4a023          	sw	a5,0(s1)
    80002174:	00001097          	auipc	ra,0x1
    80002178:	a44080e7          	jalr	-1468(ra) # 80002bb8 <__printf>
    8000217c:	0000006f          	j	8000217c <system_main+0xd4>

0000000080002180 <cpuid>:
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00813423          	sd	s0,8(sp)
    80002188:	01010413          	addi	s0,sp,16
    8000218c:	00020513          	mv	a0,tp
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	0005051b          	sext.w	a0,a0
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <mycpu>:
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00813423          	sd	s0,8(sp)
    800021a8:	01010413          	addi	s0,sp,16
    800021ac:	00020793          	mv	a5,tp
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	0007879b          	sext.w	a5,a5
    800021b8:	00779793          	slli	a5,a5,0x7
    800021bc:	00005517          	auipc	a0,0x5
    800021c0:	81450513          	addi	a0,a0,-2028 # 800069d0 <cpus>
    800021c4:	00f50533          	add	a0,a0,a5
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret

00000000800021d0 <userinit>:
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00813423          	sd	s0,8(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	00813403          	ld	s0,8(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	fffff317          	auipc	t1,0xfffff
    800021e8:	49430067          	jr	1172(t1) # 80001678 <main>

00000000800021ec <either_copyout>:
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813023          	sd	s0,0(sp)
    800021f4:	00113423          	sd	ra,8(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	02051663          	bnez	a0,80002228 <either_copyout+0x3c>
    80002200:	00058513          	mv	a0,a1
    80002204:	00060593          	mv	a1,a2
    80002208:	0006861b          	sext.w	a2,a3
    8000220c:	00002097          	auipc	ra,0x2
    80002210:	c58080e7          	jalr	-936(ra) # 80003e64 <__memmove>
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	00000513          	li	a0,0
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret
    80002228:	00003517          	auipc	a0,0x3
    8000222c:	ea850513          	addi	a0,a0,-344 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	92c080e7          	jalr	-1748(ra) # 80002b5c <panic>

0000000080002238 <either_copyin>:
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00813023          	sd	s0,0(sp)
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	02059463          	bnez	a1,80002270 <either_copyin+0x38>
    8000224c:	00060593          	mv	a1,a2
    80002250:	0006861b          	sext.w	a2,a3
    80002254:	00002097          	auipc	ra,0x2
    80002258:	c10080e7          	jalr	-1008(ra) # 80003e64 <__memmove>
    8000225c:	00813083          	ld	ra,8(sp)
    80002260:	00013403          	ld	s0,0(sp)
    80002264:	00000513          	li	a0,0
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret
    80002270:	00003517          	auipc	a0,0x3
    80002274:	e8850513          	addi	a0,a0,-376 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	8e4080e7          	jalr	-1820(ra) # 80002b5c <panic>

0000000080002280 <trapinit>:
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    8000228c:	00813403          	ld	s0,8(sp)
    80002290:	00003597          	auipc	a1,0x3
    80002294:	e9058593          	addi	a1,a1,-368 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    80002298:	00004517          	auipc	a0,0x4
    8000229c:	7b850513          	addi	a0,a0,1976 # 80006a50 <tickslock>
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00001317          	auipc	t1,0x1
    800022a8:	5c430067          	jr	1476(t1) # 80003868 <initlock>

00000000800022ac <trapinithart>:
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00000797          	auipc	a5,0x0
    800022bc:	2f878793          	addi	a5,a5,760 # 800025b0 <kernelvec>
    800022c0:	10579073          	csrw	stvec,a5
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <usertrap>:
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <usertrapret>:
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    800022f4:	00813403          	ld	s0,8(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <kerneltrap>:
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00813823          	sd	s0,16(sp)
    80002308:	00113c23          	sd	ra,24(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	02010413          	addi	s0,sp,32
    80002314:	142025f3          	csrr	a1,scause
    80002318:	100027f3          	csrr	a5,sstatus
    8000231c:	0027f793          	andi	a5,a5,2
    80002320:	10079c63          	bnez	a5,80002438 <kerneltrap+0x138>
    80002324:	142027f3          	csrr	a5,scause
    80002328:	0207ce63          	bltz	a5,80002364 <kerneltrap+0x64>
    8000232c:	00003517          	auipc	a0,0x3
    80002330:	e3c50513          	addi	a0,a0,-452 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	884080e7          	jalr	-1916(ra) # 80002bb8 <__printf>
    8000233c:	141025f3          	csrr	a1,sepc
    80002340:	14302673          	csrr	a2,stval
    80002344:	00003517          	auipc	a0,0x3
    80002348:	e3450513          	addi	a0,a0,-460 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	86c080e7          	jalr	-1940(ra) # 80002bb8 <__printf>
    80002354:	00003517          	auipc	a0,0x3
    80002358:	e3c50513          	addi	a0,a0,-452 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	800080e7          	jalr	-2048(ra) # 80002b5c <panic>
    80002364:	0ff7f713          	andi	a4,a5,255
    80002368:	00900693          	li	a3,9
    8000236c:	04d70063          	beq	a4,a3,800023ac <kerneltrap+0xac>
    80002370:	fff00713          	li	a4,-1
    80002374:	03f71713          	slli	a4,a4,0x3f
    80002378:	00170713          	addi	a4,a4,1
    8000237c:	fae798e3          	bne	a5,a4,8000232c <kerneltrap+0x2c>
    80002380:	00000097          	auipc	ra,0x0
    80002384:	e00080e7          	jalr	-512(ra) # 80002180 <cpuid>
    80002388:	06050663          	beqz	a0,800023f4 <kerneltrap+0xf4>
    8000238c:	144027f3          	csrr	a5,sip
    80002390:	ffd7f793          	andi	a5,a5,-3
    80002394:	14479073          	csrw	sip,a5
    80002398:	01813083          	ld	ra,24(sp)
    8000239c:	01013403          	ld	s0,16(sp)
    800023a0:	00813483          	ld	s1,8(sp)
    800023a4:	02010113          	addi	sp,sp,32
    800023a8:	00008067          	ret
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	3c8080e7          	jalr	968(ra) # 80002774 <plic_claim>
    800023b4:	00a00793          	li	a5,10
    800023b8:	00050493          	mv	s1,a0
    800023bc:	06f50863          	beq	a0,a5,8000242c <kerneltrap+0x12c>
    800023c0:	fc050ce3          	beqz	a0,80002398 <kerneltrap+0x98>
    800023c4:	00050593          	mv	a1,a0
    800023c8:	00003517          	auipc	a0,0x3
    800023cc:	d8050513          	addi	a0,a0,-640 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	7e8080e7          	jalr	2024(ra) # 80002bb8 <__printf>
    800023d8:	01013403          	ld	s0,16(sp)
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	02010113          	addi	sp,sp,32
    800023ec:	00000317          	auipc	t1,0x0
    800023f0:	3c030067          	jr	960(t1) # 800027ac <plic_complete>
    800023f4:	00004517          	auipc	a0,0x4
    800023f8:	65c50513          	addi	a0,a0,1628 # 80006a50 <tickslock>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	490080e7          	jalr	1168(ra) # 8000388c <acquire>
    80002404:	00003717          	auipc	a4,0x3
    80002408:	54070713          	addi	a4,a4,1344 # 80005944 <ticks>
    8000240c:	00072783          	lw	a5,0(a4)
    80002410:	00004517          	auipc	a0,0x4
    80002414:	64050513          	addi	a0,a0,1600 # 80006a50 <tickslock>
    80002418:	0017879b          	addiw	a5,a5,1
    8000241c:	00f72023          	sw	a5,0(a4)
    80002420:	00001097          	auipc	ra,0x1
    80002424:	538080e7          	jalr	1336(ra) # 80003958 <release>
    80002428:	f65ff06f          	j	8000238c <kerneltrap+0x8c>
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	094080e7          	jalr	148(ra) # 800034c0 <uartintr>
    80002434:	fa5ff06f          	j	800023d8 <kerneltrap+0xd8>
    80002438:	00003517          	auipc	a0,0x3
    8000243c:	cf050513          	addi	a0,a0,-784 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    80002440:	00000097          	auipc	ra,0x0
    80002444:	71c080e7          	jalr	1820(ra) # 80002b5c <panic>

0000000080002448 <clockintr>:
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	00113c23          	sd	ra,24(sp)
    80002458:	02010413          	addi	s0,sp,32
    8000245c:	00004497          	auipc	s1,0x4
    80002460:	5f448493          	addi	s1,s1,1524 # 80006a50 <tickslock>
    80002464:	00048513          	mv	a0,s1
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	424080e7          	jalr	1060(ra) # 8000388c <acquire>
    80002470:	00003717          	auipc	a4,0x3
    80002474:	4d470713          	addi	a4,a4,1236 # 80005944 <ticks>
    80002478:	00072783          	lw	a5,0(a4)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	00048513          	mv	a0,s1
    80002488:	0017879b          	addiw	a5,a5,1
    8000248c:	00813483          	ld	s1,8(sp)
    80002490:	00f72023          	sw	a5,0(a4)
    80002494:	02010113          	addi	sp,sp,32
    80002498:	00001317          	auipc	t1,0x1
    8000249c:	4c030067          	jr	1216(t1) # 80003958 <release>

00000000800024a0 <devintr>:
    800024a0:	142027f3          	csrr	a5,scause
    800024a4:	00000513          	li	a0,0
    800024a8:	0007c463          	bltz	a5,800024b0 <devintr+0x10>
    800024ac:	00008067          	ret
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00813823          	sd	s0,16(sp)
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	02010413          	addi	s0,sp,32
    800024c4:	0ff7f713          	andi	a4,a5,255
    800024c8:	00900693          	li	a3,9
    800024cc:	04d70c63          	beq	a4,a3,80002524 <devintr+0x84>
    800024d0:	fff00713          	li	a4,-1
    800024d4:	03f71713          	slli	a4,a4,0x3f
    800024d8:	00170713          	addi	a4,a4,1
    800024dc:	00e78c63          	beq	a5,a4,800024f4 <devintr+0x54>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	c8c080e7          	jalr	-884(ra) # 80002180 <cpuid>
    800024fc:	06050663          	beqz	a0,80002568 <devintr+0xc8>
    80002500:	144027f3          	csrr	a5,sip
    80002504:	ffd7f793          	andi	a5,a5,-3
    80002508:	14479073          	csrw	sip,a5
    8000250c:	01813083          	ld	ra,24(sp)
    80002510:	01013403          	ld	s0,16(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	00200513          	li	a0,2
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret
    80002524:	00000097          	auipc	ra,0x0
    80002528:	250080e7          	jalr	592(ra) # 80002774 <plic_claim>
    8000252c:	00a00793          	li	a5,10
    80002530:	00050493          	mv	s1,a0
    80002534:	06f50663          	beq	a0,a5,800025a0 <devintr+0x100>
    80002538:	00100513          	li	a0,1
    8000253c:	fa0482e3          	beqz	s1,800024e0 <devintr+0x40>
    80002540:	00048593          	mv	a1,s1
    80002544:	00003517          	auipc	a0,0x3
    80002548:	c0450513          	addi	a0,a0,-1020 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	66c080e7          	jalr	1644(ra) # 80002bb8 <__printf>
    80002554:	00048513          	mv	a0,s1
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	254080e7          	jalr	596(ra) # 800027ac <plic_complete>
    80002560:	00100513          	li	a0,1
    80002564:	f7dff06f          	j	800024e0 <devintr+0x40>
    80002568:	00004517          	auipc	a0,0x4
    8000256c:	4e850513          	addi	a0,a0,1256 # 80006a50 <tickslock>
    80002570:	00001097          	auipc	ra,0x1
    80002574:	31c080e7          	jalr	796(ra) # 8000388c <acquire>
    80002578:	00003717          	auipc	a4,0x3
    8000257c:	3cc70713          	addi	a4,a4,972 # 80005944 <ticks>
    80002580:	00072783          	lw	a5,0(a4)
    80002584:	00004517          	auipc	a0,0x4
    80002588:	4cc50513          	addi	a0,a0,1228 # 80006a50 <tickslock>
    8000258c:	0017879b          	addiw	a5,a5,1
    80002590:	00f72023          	sw	a5,0(a4)
    80002594:	00001097          	auipc	ra,0x1
    80002598:	3c4080e7          	jalr	964(ra) # 80003958 <release>
    8000259c:	f65ff06f          	j	80002500 <devintr+0x60>
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	f20080e7          	jalr	-224(ra) # 800034c0 <uartintr>
    800025a8:	fadff06f          	j	80002554 <devintr+0xb4>
    800025ac:	0000                	unimp
	...

00000000800025b0 <kernelvec>:
    800025b0:	f0010113          	addi	sp,sp,-256
    800025b4:	00113023          	sd	ra,0(sp)
    800025b8:	00213423          	sd	sp,8(sp)
    800025bc:	00313823          	sd	gp,16(sp)
    800025c0:	00413c23          	sd	tp,24(sp)
    800025c4:	02513023          	sd	t0,32(sp)
    800025c8:	02613423          	sd	t1,40(sp)
    800025cc:	02713823          	sd	t2,48(sp)
    800025d0:	02813c23          	sd	s0,56(sp)
    800025d4:	04913023          	sd	s1,64(sp)
    800025d8:	04a13423          	sd	a0,72(sp)
    800025dc:	04b13823          	sd	a1,80(sp)
    800025e0:	04c13c23          	sd	a2,88(sp)
    800025e4:	06d13023          	sd	a3,96(sp)
    800025e8:	06e13423          	sd	a4,104(sp)
    800025ec:	06f13823          	sd	a5,112(sp)
    800025f0:	07013c23          	sd	a6,120(sp)
    800025f4:	09113023          	sd	a7,128(sp)
    800025f8:	09213423          	sd	s2,136(sp)
    800025fc:	09313823          	sd	s3,144(sp)
    80002600:	09413c23          	sd	s4,152(sp)
    80002604:	0b513023          	sd	s5,160(sp)
    80002608:	0b613423          	sd	s6,168(sp)
    8000260c:	0b713823          	sd	s7,176(sp)
    80002610:	0b813c23          	sd	s8,184(sp)
    80002614:	0d913023          	sd	s9,192(sp)
    80002618:	0da13423          	sd	s10,200(sp)
    8000261c:	0db13823          	sd	s11,208(sp)
    80002620:	0dc13c23          	sd	t3,216(sp)
    80002624:	0fd13023          	sd	t4,224(sp)
    80002628:	0fe13423          	sd	t5,232(sp)
    8000262c:	0ff13823          	sd	t6,240(sp)
    80002630:	cd1ff0ef          	jal	ra,80002300 <kerneltrap>
    80002634:	00013083          	ld	ra,0(sp)
    80002638:	00813103          	ld	sp,8(sp)
    8000263c:	01013183          	ld	gp,16(sp)
    80002640:	02013283          	ld	t0,32(sp)
    80002644:	02813303          	ld	t1,40(sp)
    80002648:	03013383          	ld	t2,48(sp)
    8000264c:	03813403          	ld	s0,56(sp)
    80002650:	04013483          	ld	s1,64(sp)
    80002654:	04813503          	ld	a0,72(sp)
    80002658:	05013583          	ld	a1,80(sp)
    8000265c:	05813603          	ld	a2,88(sp)
    80002660:	06013683          	ld	a3,96(sp)
    80002664:	06813703          	ld	a4,104(sp)
    80002668:	07013783          	ld	a5,112(sp)
    8000266c:	07813803          	ld	a6,120(sp)
    80002670:	08013883          	ld	a7,128(sp)
    80002674:	08813903          	ld	s2,136(sp)
    80002678:	09013983          	ld	s3,144(sp)
    8000267c:	09813a03          	ld	s4,152(sp)
    80002680:	0a013a83          	ld	s5,160(sp)
    80002684:	0a813b03          	ld	s6,168(sp)
    80002688:	0b013b83          	ld	s7,176(sp)
    8000268c:	0b813c03          	ld	s8,184(sp)
    80002690:	0c013c83          	ld	s9,192(sp)
    80002694:	0c813d03          	ld	s10,200(sp)
    80002698:	0d013d83          	ld	s11,208(sp)
    8000269c:	0d813e03          	ld	t3,216(sp)
    800026a0:	0e013e83          	ld	t4,224(sp)
    800026a4:	0e813f03          	ld	t5,232(sp)
    800026a8:	0f013f83          	ld	t6,240(sp)
    800026ac:	10010113          	addi	sp,sp,256
    800026b0:	10200073          	sret
    800026b4:	00000013          	nop
    800026b8:	00000013          	nop
    800026bc:	00000013          	nop

00000000800026c0 <timervec>:
    800026c0:	34051573          	csrrw	a0,mscratch,a0
    800026c4:	00b53023          	sd	a1,0(a0)
    800026c8:	00c53423          	sd	a2,8(a0)
    800026cc:	00d53823          	sd	a3,16(a0)
    800026d0:	01853583          	ld	a1,24(a0)
    800026d4:	02053603          	ld	a2,32(a0)
    800026d8:	0005b683          	ld	a3,0(a1)
    800026dc:	00c686b3          	add	a3,a3,a2
    800026e0:	00d5b023          	sd	a3,0(a1)
    800026e4:	00200593          	li	a1,2
    800026e8:	14459073          	csrw	sip,a1
    800026ec:	01053683          	ld	a3,16(a0)
    800026f0:	00853603          	ld	a2,8(a0)
    800026f4:	00053583          	ld	a1,0(a0)
    800026f8:	34051573          	csrrw	a0,mscratch,a0
    800026fc:	30200073          	mret

0000000080002700 <plicinit>:
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00813423          	sd	s0,8(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	00813403          	ld	s0,8(sp)
    80002710:	0c0007b7          	lui	a5,0xc000
    80002714:	00100713          	li	a4,1
    80002718:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000271c:	00e7a223          	sw	a4,4(a5)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <plicinithart>:
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	a48080e7          	jalr	-1464(ra) # 80002180 <cpuid>
    80002740:	0085171b          	slliw	a4,a0,0x8
    80002744:	0c0027b7          	lui	a5,0xc002
    80002748:	00e787b3          	add	a5,a5,a4
    8000274c:	40200713          	li	a4,1026
    80002750:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	00d5151b          	slliw	a0,a0,0xd
    80002760:	0c2017b7          	lui	a5,0xc201
    80002764:	00a78533          	add	a0,a5,a0
    80002768:	00052023          	sw	zero,0(a0)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <plic_claim>:
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00000097          	auipc	ra,0x0
    80002788:	9fc080e7          	jalr	-1540(ra) # 80002180 <cpuid>
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	00d5151b          	slliw	a0,a0,0xd
    80002798:	0c2017b7          	lui	a5,0xc201
    8000279c:	00a78533          	add	a0,a5,a0
    800027a0:	00452503          	lw	a0,4(a0)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <plic_complete>:
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00913423          	sd	s1,8(sp)
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00050493          	mv	s1,a0
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	9bc080e7          	jalr	-1604(ra) # 80002180 <cpuid>
    800027cc:	01813083          	ld	ra,24(sp)
    800027d0:	01013403          	ld	s0,16(sp)
    800027d4:	00d5179b          	slliw	a5,a0,0xd
    800027d8:	0c201737          	lui	a4,0xc201
    800027dc:	00f707b3          	add	a5,a4,a5
    800027e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret

00000000800027f0 <consolewrite>:
    800027f0:	fb010113          	addi	sp,sp,-80
    800027f4:	04813023          	sd	s0,64(sp)
    800027f8:	04113423          	sd	ra,72(sp)
    800027fc:	02913c23          	sd	s1,56(sp)
    80002800:	03213823          	sd	s2,48(sp)
    80002804:	03313423          	sd	s3,40(sp)
    80002808:	03413023          	sd	s4,32(sp)
    8000280c:	01513c23          	sd	s5,24(sp)
    80002810:	05010413          	addi	s0,sp,80
    80002814:	06c05c63          	blez	a2,8000288c <consolewrite+0x9c>
    80002818:	00060993          	mv	s3,a2
    8000281c:	00050a13          	mv	s4,a0
    80002820:	00058493          	mv	s1,a1
    80002824:	00000913          	li	s2,0
    80002828:	fff00a93          	li	s5,-1
    8000282c:	01c0006f          	j	80002848 <consolewrite+0x58>
    80002830:	fbf44503          	lbu	a0,-65(s0)
    80002834:	0019091b          	addiw	s2,s2,1
    80002838:	00148493          	addi	s1,s1,1
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	a9c080e7          	jalr	-1380(ra) # 800032d8 <uartputc>
    80002844:	03298063          	beq	s3,s2,80002864 <consolewrite+0x74>
    80002848:	00048613          	mv	a2,s1
    8000284c:	00100693          	li	a3,1
    80002850:	000a0593          	mv	a1,s4
    80002854:	fbf40513          	addi	a0,s0,-65
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	9e0080e7          	jalr	-1568(ra) # 80002238 <either_copyin>
    80002860:	fd5518e3          	bne	a0,s5,80002830 <consolewrite+0x40>
    80002864:	04813083          	ld	ra,72(sp)
    80002868:	04013403          	ld	s0,64(sp)
    8000286c:	03813483          	ld	s1,56(sp)
    80002870:	02813983          	ld	s3,40(sp)
    80002874:	02013a03          	ld	s4,32(sp)
    80002878:	01813a83          	ld	s5,24(sp)
    8000287c:	00090513          	mv	a0,s2
    80002880:	03013903          	ld	s2,48(sp)
    80002884:	05010113          	addi	sp,sp,80
    80002888:	00008067          	ret
    8000288c:	00000913          	li	s2,0
    80002890:	fd5ff06f          	j	80002864 <consolewrite+0x74>

0000000080002894 <consoleread>:
    80002894:	f9010113          	addi	sp,sp,-112
    80002898:	06813023          	sd	s0,96(sp)
    8000289c:	04913c23          	sd	s1,88(sp)
    800028a0:	05213823          	sd	s2,80(sp)
    800028a4:	05313423          	sd	s3,72(sp)
    800028a8:	05413023          	sd	s4,64(sp)
    800028ac:	03513c23          	sd	s5,56(sp)
    800028b0:	03613823          	sd	s6,48(sp)
    800028b4:	03713423          	sd	s7,40(sp)
    800028b8:	03813023          	sd	s8,32(sp)
    800028bc:	06113423          	sd	ra,104(sp)
    800028c0:	01913c23          	sd	s9,24(sp)
    800028c4:	07010413          	addi	s0,sp,112
    800028c8:	00060b93          	mv	s7,a2
    800028cc:	00050913          	mv	s2,a0
    800028d0:	00058c13          	mv	s8,a1
    800028d4:	00060b1b          	sext.w	s6,a2
    800028d8:	00004497          	auipc	s1,0x4
    800028dc:	1a048493          	addi	s1,s1,416 # 80006a78 <cons>
    800028e0:	00400993          	li	s3,4
    800028e4:	fff00a13          	li	s4,-1
    800028e8:	00a00a93          	li	s5,10
    800028ec:	05705e63          	blez	s7,80002948 <consoleread+0xb4>
    800028f0:	09c4a703          	lw	a4,156(s1)
    800028f4:	0984a783          	lw	a5,152(s1)
    800028f8:	0007071b          	sext.w	a4,a4
    800028fc:	08e78463          	beq	a5,a4,80002984 <consoleread+0xf0>
    80002900:	07f7f713          	andi	a4,a5,127
    80002904:	00e48733          	add	a4,s1,a4
    80002908:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000290c:	0017869b          	addiw	a3,a5,1
    80002910:	08d4ac23          	sw	a3,152(s1)
    80002914:	00070c9b          	sext.w	s9,a4
    80002918:	0b370663          	beq	a4,s3,800029c4 <consoleread+0x130>
    8000291c:	00100693          	li	a3,1
    80002920:	f9f40613          	addi	a2,s0,-97
    80002924:	000c0593          	mv	a1,s8
    80002928:	00090513          	mv	a0,s2
    8000292c:	f8e40fa3          	sb	a4,-97(s0)
    80002930:	00000097          	auipc	ra,0x0
    80002934:	8bc080e7          	jalr	-1860(ra) # 800021ec <either_copyout>
    80002938:	01450863          	beq	a0,s4,80002948 <consoleread+0xb4>
    8000293c:	001c0c13          	addi	s8,s8,1
    80002940:	fffb8b9b          	addiw	s7,s7,-1
    80002944:	fb5c94e3          	bne	s9,s5,800028ec <consoleread+0x58>
    80002948:	000b851b          	sext.w	a0,s7
    8000294c:	06813083          	ld	ra,104(sp)
    80002950:	06013403          	ld	s0,96(sp)
    80002954:	05813483          	ld	s1,88(sp)
    80002958:	05013903          	ld	s2,80(sp)
    8000295c:	04813983          	ld	s3,72(sp)
    80002960:	04013a03          	ld	s4,64(sp)
    80002964:	03813a83          	ld	s5,56(sp)
    80002968:	02813b83          	ld	s7,40(sp)
    8000296c:	02013c03          	ld	s8,32(sp)
    80002970:	01813c83          	ld	s9,24(sp)
    80002974:	40ab053b          	subw	a0,s6,a0
    80002978:	03013b03          	ld	s6,48(sp)
    8000297c:	07010113          	addi	sp,sp,112
    80002980:	00008067          	ret
    80002984:	00001097          	auipc	ra,0x1
    80002988:	1d8080e7          	jalr	472(ra) # 80003b5c <push_on>
    8000298c:	0984a703          	lw	a4,152(s1)
    80002990:	09c4a783          	lw	a5,156(s1)
    80002994:	0007879b          	sext.w	a5,a5
    80002998:	fef70ce3          	beq	a4,a5,80002990 <consoleread+0xfc>
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	234080e7          	jalr	564(ra) # 80003bd0 <pop_on>
    800029a4:	0984a783          	lw	a5,152(s1)
    800029a8:	07f7f713          	andi	a4,a5,127
    800029ac:	00e48733          	add	a4,s1,a4
    800029b0:	01874703          	lbu	a4,24(a4)
    800029b4:	0017869b          	addiw	a3,a5,1
    800029b8:	08d4ac23          	sw	a3,152(s1)
    800029bc:	00070c9b          	sext.w	s9,a4
    800029c0:	f5371ee3          	bne	a4,s3,8000291c <consoleread+0x88>
    800029c4:	000b851b          	sext.w	a0,s7
    800029c8:	f96bf2e3          	bgeu	s7,s6,8000294c <consoleread+0xb8>
    800029cc:	08f4ac23          	sw	a5,152(s1)
    800029d0:	f7dff06f          	j	8000294c <consoleread+0xb8>

00000000800029d4 <consputc>:
    800029d4:	10000793          	li	a5,256
    800029d8:	00f50663          	beq	a0,a5,800029e4 <consputc+0x10>
    800029dc:	00001317          	auipc	t1,0x1
    800029e0:	9f430067          	jr	-1548(t1) # 800033d0 <uartputc_sync>
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	00800513          	li	a0,8
    800029f8:	00001097          	auipc	ra,0x1
    800029fc:	9d8080e7          	jalr	-1576(ra) # 800033d0 <uartputc_sync>
    80002a00:	02000513          	li	a0,32
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	9cc080e7          	jalr	-1588(ra) # 800033d0 <uartputc_sync>
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00800513          	li	a0,8
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00001317          	auipc	t1,0x1
    80002a20:	9b430067          	jr	-1612(t1) # 800033d0 <uartputc_sync>

0000000080002a24 <consoleintr>:
    80002a24:	fe010113          	addi	sp,sp,-32
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	02010413          	addi	s0,sp,32
    80002a3c:	00004917          	auipc	s2,0x4
    80002a40:	03c90913          	addi	s2,s2,60 # 80006a78 <cons>
    80002a44:	00050493          	mv	s1,a0
    80002a48:	00090513          	mv	a0,s2
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	e40080e7          	jalr	-448(ra) # 8000388c <acquire>
    80002a54:	02048c63          	beqz	s1,80002a8c <consoleintr+0x68>
    80002a58:	0a092783          	lw	a5,160(s2)
    80002a5c:	09892703          	lw	a4,152(s2)
    80002a60:	07f00693          	li	a3,127
    80002a64:	40e7873b          	subw	a4,a5,a4
    80002a68:	02e6e263          	bltu	a3,a4,80002a8c <consoleintr+0x68>
    80002a6c:	00d00713          	li	a4,13
    80002a70:	04e48063          	beq	s1,a4,80002ab0 <consoleintr+0x8c>
    80002a74:	07f7f713          	andi	a4,a5,127
    80002a78:	00e90733          	add	a4,s2,a4
    80002a7c:	0017879b          	addiw	a5,a5,1
    80002a80:	0af92023          	sw	a5,160(s2)
    80002a84:	00970c23          	sb	s1,24(a4)
    80002a88:	08f92e23          	sw	a5,156(s2)
    80002a8c:	01013403          	ld	s0,16(sp)
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	00013903          	ld	s2,0(sp)
    80002a9c:	00004517          	auipc	a0,0x4
    80002aa0:	fdc50513          	addi	a0,a0,-36 # 80006a78 <cons>
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00001317          	auipc	t1,0x1
    80002aac:	eb030067          	jr	-336(t1) # 80003958 <release>
    80002ab0:	00a00493          	li	s1,10
    80002ab4:	fc1ff06f          	j	80002a74 <consoleintr+0x50>

0000000080002ab8 <consoleinit>:
    80002ab8:	fe010113          	addi	sp,sp,-32
    80002abc:	00113c23          	sd	ra,24(sp)
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	02010413          	addi	s0,sp,32
    80002acc:	00004497          	auipc	s1,0x4
    80002ad0:	fac48493          	addi	s1,s1,-84 # 80006a78 <cons>
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00002597          	auipc	a1,0x2
    80002adc:	6c858593          	addi	a1,a1,1736 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002ae0:	00001097          	auipc	ra,0x1
    80002ae4:	d88080e7          	jalr	-632(ra) # 80003868 <initlock>
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	7ac080e7          	jalr	1964(ra) # 80003294 <uartinit>
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	00000797          	auipc	a5,0x0
    80002afc:	d9c78793          	addi	a5,a5,-612 # 80002894 <consoleread>
    80002b00:	0af4bc23          	sd	a5,184(s1)
    80002b04:	00000797          	auipc	a5,0x0
    80002b08:	cec78793          	addi	a5,a5,-788 # 800027f0 <consolewrite>
    80002b0c:	0cf4b023          	sd	a5,192(s1)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret

0000000080002b1c <console_read>:
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00813423          	sd	s0,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	00004317          	auipc	t1,0x4
    80002b30:	00433303          	ld	t1,4(t1) # 80006b30 <devsw+0x10>
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00030067          	jr	t1

0000000080002b3c <console_write>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	00004317          	auipc	t1,0x4
    80002b50:	fec33303          	ld	t1,-20(t1) # 80006b38 <devsw+0x18>
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00030067          	jr	t1

0000000080002b5c <panic>:
    80002b5c:	fe010113          	addi	sp,sp,-32
    80002b60:	00113c23          	sd	ra,24(sp)
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	02010413          	addi	s0,sp,32
    80002b70:	00050493          	mv	s1,a0
    80002b74:	00002517          	auipc	a0,0x2
    80002b78:	63450513          	addi	a0,a0,1588 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002b7c:	00004797          	auipc	a5,0x4
    80002b80:	0407ae23          	sw	zero,92(a5) # 80006bd8 <pr+0x18>
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	034080e7          	jalr	52(ra) # 80002bb8 <__printf>
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	028080e7          	jalr	40(ra) # 80002bb8 <__printf>
    80002b98:	00002517          	auipc	a0,0x2
    80002b9c:	49850513          	addi	a0,a0,1176 # 80005030 <kvmincrease+0xd10>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	018080e7          	jalr	24(ra) # 80002bb8 <__printf>
    80002ba8:	00100793          	li	a5,1
    80002bac:	00003717          	auipc	a4,0x3
    80002bb0:	d8f72e23          	sw	a5,-612(a4) # 80005948 <panicked>
    80002bb4:	0000006f          	j	80002bb4 <panic+0x58>

0000000080002bb8 <__printf>:
    80002bb8:	f3010113          	addi	sp,sp,-208
    80002bbc:	08813023          	sd	s0,128(sp)
    80002bc0:	07313423          	sd	s3,104(sp)
    80002bc4:	09010413          	addi	s0,sp,144
    80002bc8:	05813023          	sd	s8,64(sp)
    80002bcc:	08113423          	sd	ra,136(sp)
    80002bd0:	06913c23          	sd	s1,120(sp)
    80002bd4:	07213823          	sd	s2,112(sp)
    80002bd8:	07413023          	sd	s4,96(sp)
    80002bdc:	05513c23          	sd	s5,88(sp)
    80002be0:	05613823          	sd	s6,80(sp)
    80002be4:	05713423          	sd	s7,72(sp)
    80002be8:	03913c23          	sd	s9,56(sp)
    80002bec:	03a13823          	sd	s10,48(sp)
    80002bf0:	03b13423          	sd	s11,40(sp)
    80002bf4:	00004317          	auipc	t1,0x4
    80002bf8:	fcc30313          	addi	t1,t1,-52 # 80006bc0 <pr>
    80002bfc:	01832c03          	lw	s8,24(t1)
    80002c00:	00b43423          	sd	a1,8(s0)
    80002c04:	00c43823          	sd	a2,16(s0)
    80002c08:	00d43c23          	sd	a3,24(s0)
    80002c0c:	02e43023          	sd	a4,32(s0)
    80002c10:	02f43423          	sd	a5,40(s0)
    80002c14:	03043823          	sd	a6,48(s0)
    80002c18:	03143c23          	sd	a7,56(s0)
    80002c1c:	00050993          	mv	s3,a0
    80002c20:	4a0c1663          	bnez	s8,800030cc <__printf+0x514>
    80002c24:	60098c63          	beqz	s3,8000323c <__printf+0x684>
    80002c28:	0009c503          	lbu	a0,0(s3)
    80002c2c:	00840793          	addi	a5,s0,8
    80002c30:	f6f43c23          	sd	a5,-136(s0)
    80002c34:	00000493          	li	s1,0
    80002c38:	22050063          	beqz	a0,80002e58 <__printf+0x2a0>
    80002c3c:	00002a37          	lui	s4,0x2
    80002c40:	00018ab7          	lui	s5,0x18
    80002c44:	000f4b37          	lui	s6,0xf4
    80002c48:	00989bb7          	lui	s7,0x989
    80002c4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c5c:	00148c9b          	addiw	s9,s1,1
    80002c60:	02500793          	li	a5,37
    80002c64:	01998933          	add	s2,s3,s9
    80002c68:	38f51263          	bne	a0,a5,80002fec <__printf+0x434>
    80002c6c:	00094783          	lbu	a5,0(s2)
    80002c70:	00078c9b          	sext.w	s9,a5
    80002c74:	1e078263          	beqz	a5,80002e58 <__printf+0x2a0>
    80002c78:	0024849b          	addiw	s1,s1,2
    80002c7c:	07000713          	li	a4,112
    80002c80:	00998933          	add	s2,s3,s1
    80002c84:	38e78a63          	beq	a5,a4,80003018 <__printf+0x460>
    80002c88:	20f76863          	bltu	a4,a5,80002e98 <__printf+0x2e0>
    80002c8c:	42a78863          	beq	a5,a0,800030bc <__printf+0x504>
    80002c90:	06400713          	li	a4,100
    80002c94:	40e79663          	bne	a5,a4,800030a0 <__printf+0x4e8>
    80002c98:	f7843783          	ld	a5,-136(s0)
    80002c9c:	0007a603          	lw	a2,0(a5)
    80002ca0:	00878793          	addi	a5,a5,8
    80002ca4:	f6f43c23          	sd	a5,-136(s0)
    80002ca8:	42064a63          	bltz	a2,800030dc <__printf+0x524>
    80002cac:	00a00713          	li	a4,10
    80002cb0:	02e677bb          	remuw	a5,a2,a4
    80002cb4:	00002d97          	auipc	s11,0x2
    80002cb8:	51cd8d93          	addi	s11,s11,1308 # 800051d0 <digits>
    80002cbc:	00900593          	li	a1,9
    80002cc0:	0006051b          	sext.w	a0,a2
    80002cc4:	00000c93          	li	s9,0
    80002cc8:	02079793          	slli	a5,a5,0x20
    80002ccc:	0207d793          	srli	a5,a5,0x20
    80002cd0:	00fd87b3          	add	a5,s11,a5
    80002cd4:	0007c783          	lbu	a5,0(a5)
    80002cd8:	02e656bb          	divuw	a3,a2,a4
    80002cdc:	f8f40023          	sb	a5,-128(s0)
    80002ce0:	14c5d863          	bge	a1,a2,80002e30 <__printf+0x278>
    80002ce4:	06300593          	li	a1,99
    80002ce8:	00100c93          	li	s9,1
    80002cec:	02e6f7bb          	remuw	a5,a3,a4
    80002cf0:	02079793          	slli	a5,a5,0x20
    80002cf4:	0207d793          	srli	a5,a5,0x20
    80002cf8:	00fd87b3          	add	a5,s11,a5
    80002cfc:	0007c783          	lbu	a5,0(a5)
    80002d00:	02e6d73b          	divuw	a4,a3,a4
    80002d04:	f8f400a3          	sb	a5,-127(s0)
    80002d08:	12a5f463          	bgeu	a1,a0,80002e30 <__printf+0x278>
    80002d0c:	00a00693          	li	a3,10
    80002d10:	00900593          	li	a1,9
    80002d14:	02d777bb          	remuw	a5,a4,a3
    80002d18:	02079793          	slli	a5,a5,0x20
    80002d1c:	0207d793          	srli	a5,a5,0x20
    80002d20:	00fd87b3          	add	a5,s11,a5
    80002d24:	0007c503          	lbu	a0,0(a5)
    80002d28:	02d757bb          	divuw	a5,a4,a3
    80002d2c:	f8a40123          	sb	a0,-126(s0)
    80002d30:	48e5f263          	bgeu	a1,a4,800031b4 <__printf+0x5fc>
    80002d34:	06300513          	li	a0,99
    80002d38:	02d7f5bb          	remuw	a1,a5,a3
    80002d3c:	02059593          	slli	a1,a1,0x20
    80002d40:	0205d593          	srli	a1,a1,0x20
    80002d44:	00bd85b3          	add	a1,s11,a1
    80002d48:	0005c583          	lbu	a1,0(a1)
    80002d4c:	02d7d7bb          	divuw	a5,a5,a3
    80002d50:	f8b401a3          	sb	a1,-125(s0)
    80002d54:	48e57263          	bgeu	a0,a4,800031d8 <__printf+0x620>
    80002d58:	3e700513          	li	a0,999
    80002d5c:	02d7f5bb          	remuw	a1,a5,a3
    80002d60:	02059593          	slli	a1,a1,0x20
    80002d64:	0205d593          	srli	a1,a1,0x20
    80002d68:	00bd85b3          	add	a1,s11,a1
    80002d6c:	0005c583          	lbu	a1,0(a1)
    80002d70:	02d7d7bb          	divuw	a5,a5,a3
    80002d74:	f8b40223          	sb	a1,-124(s0)
    80002d78:	46e57663          	bgeu	a0,a4,800031e4 <__printf+0x62c>
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b402a3          	sb	a1,-123(s0)
    80002d98:	46ea7863          	bgeu	s4,a4,80003208 <__printf+0x650>
    80002d9c:	02d7f5bb          	remuw	a1,a5,a3
    80002da0:	02059593          	slli	a1,a1,0x20
    80002da4:	0205d593          	srli	a1,a1,0x20
    80002da8:	00bd85b3          	add	a1,s11,a1
    80002dac:	0005c583          	lbu	a1,0(a1)
    80002db0:	02d7d7bb          	divuw	a5,a5,a3
    80002db4:	f8b40323          	sb	a1,-122(s0)
    80002db8:	3eeaf863          	bgeu	s5,a4,800031a8 <__printf+0x5f0>
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b403a3          	sb	a1,-121(s0)
    80002dd8:	42eb7e63          	bgeu	s6,a4,80003214 <__printf+0x65c>
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b40423          	sb	a1,-120(s0)
    80002df8:	42ebfc63          	bgeu	s7,a4,80003230 <__printf+0x678>
    80002dfc:	02079793          	slli	a5,a5,0x20
    80002e00:	0207d793          	srli	a5,a5,0x20
    80002e04:	00fd8db3          	add	s11,s11,a5
    80002e08:	000dc703          	lbu	a4,0(s11)
    80002e0c:	00a00793          	li	a5,10
    80002e10:	00900c93          	li	s9,9
    80002e14:	f8e404a3          	sb	a4,-119(s0)
    80002e18:	00065c63          	bgez	a2,80002e30 <__printf+0x278>
    80002e1c:	f9040713          	addi	a4,s0,-112
    80002e20:	00f70733          	add	a4,a4,a5
    80002e24:	02d00693          	li	a3,45
    80002e28:	fed70823          	sb	a3,-16(a4)
    80002e2c:	00078c93          	mv	s9,a5
    80002e30:	f8040793          	addi	a5,s0,-128
    80002e34:	01978cb3          	add	s9,a5,s9
    80002e38:	f7f40d13          	addi	s10,s0,-129
    80002e3c:	000cc503          	lbu	a0,0(s9)
    80002e40:	fffc8c93          	addi	s9,s9,-1
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	b90080e7          	jalr	-1136(ra) # 800029d4 <consputc>
    80002e4c:	ffac98e3          	bne	s9,s10,80002e3c <__printf+0x284>
    80002e50:	00094503          	lbu	a0,0(s2)
    80002e54:	e00514e3          	bnez	a0,80002c5c <__printf+0xa4>
    80002e58:	1a0c1663          	bnez	s8,80003004 <__printf+0x44c>
    80002e5c:	08813083          	ld	ra,136(sp)
    80002e60:	08013403          	ld	s0,128(sp)
    80002e64:	07813483          	ld	s1,120(sp)
    80002e68:	07013903          	ld	s2,112(sp)
    80002e6c:	06813983          	ld	s3,104(sp)
    80002e70:	06013a03          	ld	s4,96(sp)
    80002e74:	05813a83          	ld	s5,88(sp)
    80002e78:	05013b03          	ld	s6,80(sp)
    80002e7c:	04813b83          	ld	s7,72(sp)
    80002e80:	04013c03          	ld	s8,64(sp)
    80002e84:	03813c83          	ld	s9,56(sp)
    80002e88:	03013d03          	ld	s10,48(sp)
    80002e8c:	02813d83          	ld	s11,40(sp)
    80002e90:	0d010113          	addi	sp,sp,208
    80002e94:	00008067          	ret
    80002e98:	07300713          	li	a4,115
    80002e9c:	1ce78a63          	beq	a5,a4,80003070 <__printf+0x4b8>
    80002ea0:	07800713          	li	a4,120
    80002ea4:	1ee79e63          	bne	a5,a4,800030a0 <__printf+0x4e8>
    80002ea8:	f7843783          	ld	a5,-136(s0)
    80002eac:	0007a703          	lw	a4,0(a5)
    80002eb0:	00878793          	addi	a5,a5,8
    80002eb4:	f6f43c23          	sd	a5,-136(s0)
    80002eb8:	28074263          	bltz	a4,8000313c <__printf+0x584>
    80002ebc:	00002d97          	auipc	s11,0x2
    80002ec0:	314d8d93          	addi	s11,s11,788 # 800051d0 <digits>
    80002ec4:	00f77793          	andi	a5,a4,15
    80002ec8:	00fd87b3          	add	a5,s11,a5
    80002ecc:	0007c683          	lbu	a3,0(a5)
    80002ed0:	00f00613          	li	a2,15
    80002ed4:	0007079b          	sext.w	a5,a4
    80002ed8:	f8d40023          	sb	a3,-128(s0)
    80002edc:	0047559b          	srliw	a1,a4,0x4
    80002ee0:	0047569b          	srliw	a3,a4,0x4
    80002ee4:	00000c93          	li	s9,0
    80002ee8:	0ee65063          	bge	a2,a4,80002fc8 <__printf+0x410>
    80002eec:	00f6f693          	andi	a3,a3,15
    80002ef0:	00dd86b3          	add	a3,s11,a3
    80002ef4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ef8:	0087d79b          	srliw	a5,a5,0x8
    80002efc:	00100c93          	li	s9,1
    80002f00:	f8d400a3          	sb	a3,-127(s0)
    80002f04:	0cb67263          	bgeu	a2,a1,80002fc8 <__printf+0x410>
    80002f08:	00f7f693          	andi	a3,a5,15
    80002f0c:	00dd86b3          	add	a3,s11,a3
    80002f10:	0006c583          	lbu	a1,0(a3)
    80002f14:	00f00613          	li	a2,15
    80002f18:	0047d69b          	srliw	a3,a5,0x4
    80002f1c:	f8b40123          	sb	a1,-126(s0)
    80002f20:	0047d593          	srli	a1,a5,0x4
    80002f24:	28f67e63          	bgeu	a2,a5,800031c0 <__printf+0x608>
    80002f28:	00f6f693          	andi	a3,a3,15
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c503          	lbu	a0,0(a3)
    80002f34:	0087d813          	srli	a6,a5,0x8
    80002f38:	0087d69b          	srliw	a3,a5,0x8
    80002f3c:	f8a401a3          	sb	a0,-125(s0)
    80002f40:	28b67663          	bgeu	a2,a1,800031cc <__printf+0x614>
    80002f44:	00f6f693          	andi	a3,a3,15
    80002f48:	00dd86b3          	add	a3,s11,a3
    80002f4c:	0006c583          	lbu	a1,0(a3)
    80002f50:	00c7d513          	srli	a0,a5,0xc
    80002f54:	00c7d69b          	srliw	a3,a5,0xc
    80002f58:	f8b40223          	sb	a1,-124(s0)
    80002f5c:	29067a63          	bgeu	a2,a6,800031f0 <__printf+0x638>
    80002f60:	00f6f693          	andi	a3,a3,15
    80002f64:	00dd86b3          	add	a3,s11,a3
    80002f68:	0006c583          	lbu	a1,0(a3)
    80002f6c:	0107d813          	srli	a6,a5,0x10
    80002f70:	0107d69b          	srliw	a3,a5,0x10
    80002f74:	f8b402a3          	sb	a1,-123(s0)
    80002f78:	28a67263          	bgeu	a2,a0,800031fc <__printf+0x644>
    80002f7c:	00f6f693          	andi	a3,a3,15
    80002f80:	00dd86b3          	add	a3,s11,a3
    80002f84:	0006c683          	lbu	a3,0(a3)
    80002f88:	0147d79b          	srliw	a5,a5,0x14
    80002f8c:	f8d40323          	sb	a3,-122(s0)
    80002f90:	21067663          	bgeu	a2,a6,8000319c <__printf+0x5e4>
    80002f94:	02079793          	slli	a5,a5,0x20
    80002f98:	0207d793          	srli	a5,a5,0x20
    80002f9c:	00fd8db3          	add	s11,s11,a5
    80002fa0:	000dc683          	lbu	a3,0(s11)
    80002fa4:	00800793          	li	a5,8
    80002fa8:	00700c93          	li	s9,7
    80002fac:	f8d403a3          	sb	a3,-121(s0)
    80002fb0:	00075c63          	bgez	a4,80002fc8 <__printf+0x410>
    80002fb4:	f9040713          	addi	a4,s0,-112
    80002fb8:	00f70733          	add	a4,a4,a5
    80002fbc:	02d00693          	li	a3,45
    80002fc0:	fed70823          	sb	a3,-16(a4)
    80002fc4:	00078c93          	mv	s9,a5
    80002fc8:	f8040793          	addi	a5,s0,-128
    80002fcc:	01978cb3          	add	s9,a5,s9
    80002fd0:	f7f40d13          	addi	s10,s0,-129
    80002fd4:	000cc503          	lbu	a0,0(s9)
    80002fd8:	fffc8c93          	addi	s9,s9,-1
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	9f8080e7          	jalr	-1544(ra) # 800029d4 <consputc>
    80002fe4:	ff9d18e3          	bne	s10,s9,80002fd4 <__printf+0x41c>
    80002fe8:	0100006f          	j	80002ff8 <__printf+0x440>
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	9e8080e7          	jalr	-1560(ra) # 800029d4 <consputc>
    80002ff4:	000c8493          	mv	s1,s9
    80002ff8:	00094503          	lbu	a0,0(s2)
    80002ffc:	c60510e3          	bnez	a0,80002c5c <__printf+0xa4>
    80003000:	e40c0ee3          	beqz	s8,80002e5c <__printf+0x2a4>
    80003004:	00004517          	auipc	a0,0x4
    80003008:	bbc50513          	addi	a0,a0,-1092 # 80006bc0 <pr>
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	94c080e7          	jalr	-1716(ra) # 80003958 <release>
    80003014:	e49ff06f          	j	80002e5c <__printf+0x2a4>
    80003018:	f7843783          	ld	a5,-136(s0)
    8000301c:	03000513          	li	a0,48
    80003020:	01000d13          	li	s10,16
    80003024:	00878713          	addi	a4,a5,8
    80003028:	0007bc83          	ld	s9,0(a5)
    8000302c:	f6e43c23          	sd	a4,-136(s0)
    80003030:	00000097          	auipc	ra,0x0
    80003034:	9a4080e7          	jalr	-1628(ra) # 800029d4 <consputc>
    80003038:	07800513          	li	a0,120
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	998080e7          	jalr	-1640(ra) # 800029d4 <consputc>
    80003044:	00002d97          	auipc	s11,0x2
    80003048:	18cd8d93          	addi	s11,s11,396 # 800051d0 <digits>
    8000304c:	03ccd793          	srli	a5,s9,0x3c
    80003050:	00fd87b3          	add	a5,s11,a5
    80003054:	0007c503          	lbu	a0,0(a5)
    80003058:	fffd0d1b          	addiw	s10,s10,-1
    8000305c:	004c9c93          	slli	s9,s9,0x4
    80003060:	00000097          	auipc	ra,0x0
    80003064:	974080e7          	jalr	-1676(ra) # 800029d4 <consputc>
    80003068:	fe0d12e3          	bnez	s10,8000304c <__printf+0x494>
    8000306c:	f8dff06f          	j	80002ff8 <__printf+0x440>
    80003070:	f7843783          	ld	a5,-136(s0)
    80003074:	0007bc83          	ld	s9,0(a5)
    80003078:	00878793          	addi	a5,a5,8
    8000307c:	f6f43c23          	sd	a5,-136(s0)
    80003080:	000c9a63          	bnez	s9,80003094 <__printf+0x4dc>
    80003084:	1080006f          	j	8000318c <__printf+0x5d4>
    80003088:	001c8c93          	addi	s9,s9,1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	948080e7          	jalr	-1720(ra) # 800029d4 <consputc>
    80003094:	000cc503          	lbu	a0,0(s9)
    80003098:	fe0518e3          	bnez	a0,80003088 <__printf+0x4d0>
    8000309c:	f5dff06f          	j	80002ff8 <__printf+0x440>
    800030a0:	02500513          	li	a0,37
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	930080e7          	jalr	-1744(ra) # 800029d4 <consputc>
    800030ac:	000c8513          	mv	a0,s9
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	924080e7          	jalr	-1756(ra) # 800029d4 <consputc>
    800030b8:	f41ff06f          	j	80002ff8 <__printf+0x440>
    800030bc:	02500513          	li	a0,37
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	914080e7          	jalr	-1772(ra) # 800029d4 <consputc>
    800030c8:	f31ff06f          	j	80002ff8 <__printf+0x440>
    800030cc:	00030513          	mv	a0,t1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	7bc080e7          	jalr	1980(ra) # 8000388c <acquire>
    800030d8:	b4dff06f          	j	80002c24 <__printf+0x6c>
    800030dc:	40c0053b          	negw	a0,a2
    800030e0:	00a00713          	li	a4,10
    800030e4:	02e576bb          	remuw	a3,a0,a4
    800030e8:	00002d97          	auipc	s11,0x2
    800030ec:	0e8d8d93          	addi	s11,s11,232 # 800051d0 <digits>
    800030f0:	ff700593          	li	a1,-9
    800030f4:	02069693          	slli	a3,a3,0x20
    800030f8:	0206d693          	srli	a3,a3,0x20
    800030fc:	00dd86b3          	add	a3,s11,a3
    80003100:	0006c683          	lbu	a3,0(a3)
    80003104:	02e557bb          	divuw	a5,a0,a4
    80003108:	f8d40023          	sb	a3,-128(s0)
    8000310c:	10b65e63          	bge	a2,a1,80003228 <__printf+0x670>
    80003110:	06300593          	li	a1,99
    80003114:	02e7f6bb          	remuw	a3,a5,a4
    80003118:	02069693          	slli	a3,a3,0x20
    8000311c:	0206d693          	srli	a3,a3,0x20
    80003120:	00dd86b3          	add	a3,s11,a3
    80003124:	0006c683          	lbu	a3,0(a3)
    80003128:	02e7d73b          	divuw	a4,a5,a4
    8000312c:	00200793          	li	a5,2
    80003130:	f8d400a3          	sb	a3,-127(s0)
    80003134:	bca5ece3          	bltu	a1,a0,80002d0c <__printf+0x154>
    80003138:	ce5ff06f          	j	80002e1c <__printf+0x264>
    8000313c:	40e007bb          	negw	a5,a4
    80003140:	00002d97          	auipc	s11,0x2
    80003144:	090d8d93          	addi	s11,s11,144 # 800051d0 <digits>
    80003148:	00f7f693          	andi	a3,a5,15
    8000314c:	00dd86b3          	add	a3,s11,a3
    80003150:	0006c583          	lbu	a1,0(a3)
    80003154:	ff100613          	li	a2,-15
    80003158:	0047d69b          	srliw	a3,a5,0x4
    8000315c:	f8b40023          	sb	a1,-128(s0)
    80003160:	0047d59b          	srliw	a1,a5,0x4
    80003164:	0ac75e63          	bge	a4,a2,80003220 <__printf+0x668>
    80003168:	00f6f693          	andi	a3,a3,15
    8000316c:	00dd86b3          	add	a3,s11,a3
    80003170:	0006c603          	lbu	a2,0(a3)
    80003174:	00f00693          	li	a3,15
    80003178:	0087d79b          	srliw	a5,a5,0x8
    8000317c:	f8c400a3          	sb	a2,-127(s0)
    80003180:	d8b6e4e3          	bltu	a3,a1,80002f08 <__printf+0x350>
    80003184:	00200793          	li	a5,2
    80003188:	e2dff06f          	j	80002fb4 <__printf+0x3fc>
    8000318c:	00002c97          	auipc	s9,0x2
    80003190:	024c8c93          	addi	s9,s9,36 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    80003194:	02800513          	li	a0,40
    80003198:	ef1ff06f          	j	80003088 <__printf+0x4d0>
    8000319c:	00700793          	li	a5,7
    800031a0:	00600c93          	li	s9,6
    800031a4:	e0dff06f          	j	80002fb0 <__printf+0x3f8>
    800031a8:	00700793          	li	a5,7
    800031ac:	00600c93          	li	s9,6
    800031b0:	c69ff06f          	j	80002e18 <__printf+0x260>
    800031b4:	00300793          	li	a5,3
    800031b8:	00200c93          	li	s9,2
    800031bc:	c5dff06f          	j	80002e18 <__printf+0x260>
    800031c0:	00300793          	li	a5,3
    800031c4:	00200c93          	li	s9,2
    800031c8:	de9ff06f          	j	80002fb0 <__printf+0x3f8>
    800031cc:	00400793          	li	a5,4
    800031d0:	00300c93          	li	s9,3
    800031d4:	dddff06f          	j	80002fb0 <__printf+0x3f8>
    800031d8:	00400793          	li	a5,4
    800031dc:	00300c93          	li	s9,3
    800031e0:	c39ff06f          	j	80002e18 <__printf+0x260>
    800031e4:	00500793          	li	a5,5
    800031e8:	00400c93          	li	s9,4
    800031ec:	c2dff06f          	j	80002e18 <__printf+0x260>
    800031f0:	00500793          	li	a5,5
    800031f4:	00400c93          	li	s9,4
    800031f8:	db9ff06f          	j	80002fb0 <__printf+0x3f8>
    800031fc:	00600793          	li	a5,6
    80003200:	00500c93          	li	s9,5
    80003204:	dadff06f          	j	80002fb0 <__printf+0x3f8>
    80003208:	00600793          	li	a5,6
    8000320c:	00500c93          	li	s9,5
    80003210:	c09ff06f          	j	80002e18 <__printf+0x260>
    80003214:	00800793          	li	a5,8
    80003218:	00700c93          	li	s9,7
    8000321c:	bfdff06f          	j	80002e18 <__printf+0x260>
    80003220:	00100793          	li	a5,1
    80003224:	d91ff06f          	j	80002fb4 <__printf+0x3fc>
    80003228:	00100793          	li	a5,1
    8000322c:	bf1ff06f          	j	80002e1c <__printf+0x264>
    80003230:	00900793          	li	a5,9
    80003234:	00800c93          	li	s9,8
    80003238:	be1ff06f          	j	80002e18 <__printf+0x260>
    8000323c:	00002517          	auipc	a0,0x2
    80003240:	f7c50513          	addi	a0,a0,-132 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    80003244:	00000097          	auipc	ra,0x0
    80003248:	918080e7          	jalr	-1768(ra) # 80002b5c <panic>

000000008000324c <printfinit>:
    8000324c:	fe010113          	addi	sp,sp,-32
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	02010413          	addi	s0,sp,32
    80003260:	00004497          	auipc	s1,0x4
    80003264:	96048493          	addi	s1,s1,-1696 # 80006bc0 <pr>
    80003268:	00048513          	mv	a0,s1
    8000326c:	00002597          	auipc	a1,0x2
    80003270:	f5c58593          	addi	a1,a1,-164 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	5f4080e7          	jalr	1524(ra) # 80003868 <initlock>
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	0004ac23          	sw	zero,24(s1)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret

0000000080003294 <uartinit>:
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	100007b7          	lui	a5,0x10000
    800032a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800032a8:	f8000713          	li	a4,-128
    800032ac:	00e781a3          	sb	a4,3(a5)
    800032b0:	00300713          	li	a4,3
    800032b4:	00e78023          	sb	a4,0(a5)
    800032b8:	000780a3          	sb	zero,1(a5)
    800032bc:	00e781a3          	sb	a4,3(a5)
    800032c0:	00700693          	li	a3,7
    800032c4:	00d78123          	sb	a3,2(a5)
    800032c8:	00e780a3          	sb	a4,1(a5)
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <uartputc>:
    800032d8:	00002797          	auipc	a5,0x2
    800032dc:	6707a783          	lw	a5,1648(a5) # 80005948 <panicked>
    800032e0:	00078463          	beqz	a5,800032e8 <uartputc+0x10>
    800032e4:	0000006f          	j	800032e4 <uartputc+0xc>
    800032e8:	fd010113          	addi	sp,sp,-48
    800032ec:	02813023          	sd	s0,32(sp)
    800032f0:	00913c23          	sd	s1,24(sp)
    800032f4:	01213823          	sd	s2,16(sp)
    800032f8:	01313423          	sd	s3,8(sp)
    800032fc:	02113423          	sd	ra,40(sp)
    80003300:	03010413          	addi	s0,sp,48
    80003304:	00002917          	auipc	s2,0x2
    80003308:	64c90913          	addi	s2,s2,1612 # 80005950 <uart_tx_r>
    8000330c:	00093783          	ld	a5,0(s2)
    80003310:	00002497          	auipc	s1,0x2
    80003314:	64848493          	addi	s1,s1,1608 # 80005958 <uart_tx_w>
    80003318:	0004b703          	ld	a4,0(s1)
    8000331c:	02078693          	addi	a3,a5,32
    80003320:	00050993          	mv	s3,a0
    80003324:	02e69c63          	bne	a3,a4,8000335c <uartputc+0x84>
    80003328:	00001097          	auipc	ra,0x1
    8000332c:	834080e7          	jalr	-1996(ra) # 80003b5c <push_on>
    80003330:	00093783          	ld	a5,0(s2)
    80003334:	0004b703          	ld	a4,0(s1)
    80003338:	02078793          	addi	a5,a5,32
    8000333c:	00e79463          	bne	a5,a4,80003344 <uartputc+0x6c>
    80003340:	0000006f          	j	80003340 <uartputc+0x68>
    80003344:	00001097          	auipc	ra,0x1
    80003348:	88c080e7          	jalr	-1908(ra) # 80003bd0 <pop_on>
    8000334c:	00093783          	ld	a5,0(s2)
    80003350:	0004b703          	ld	a4,0(s1)
    80003354:	02078693          	addi	a3,a5,32
    80003358:	fce688e3          	beq	a3,a4,80003328 <uartputc+0x50>
    8000335c:	01f77693          	andi	a3,a4,31
    80003360:	00004597          	auipc	a1,0x4
    80003364:	88058593          	addi	a1,a1,-1920 # 80006be0 <uart_tx_buf>
    80003368:	00d586b3          	add	a3,a1,a3
    8000336c:	00170713          	addi	a4,a4,1
    80003370:	01368023          	sb	s3,0(a3)
    80003374:	00e4b023          	sd	a4,0(s1)
    80003378:	10000637          	lui	a2,0x10000
    8000337c:	02f71063          	bne	a4,a5,8000339c <uartputc+0xc4>
    80003380:	0340006f          	j	800033b4 <uartputc+0xdc>
    80003384:	00074703          	lbu	a4,0(a4)
    80003388:	00f93023          	sd	a5,0(s2)
    8000338c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003390:	00093783          	ld	a5,0(s2)
    80003394:	0004b703          	ld	a4,0(s1)
    80003398:	00f70e63          	beq	a4,a5,800033b4 <uartputc+0xdc>
    8000339c:	00564683          	lbu	a3,5(a2)
    800033a0:	01f7f713          	andi	a4,a5,31
    800033a4:	00e58733          	add	a4,a1,a4
    800033a8:	0206f693          	andi	a3,a3,32
    800033ac:	00178793          	addi	a5,a5,1
    800033b0:	fc069ae3          	bnez	a3,80003384 <uartputc+0xac>
    800033b4:	02813083          	ld	ra,40(sp)
    800033b8:	02013403          	ld	s0,32(sp)
    800033bc:	01813483          	ld	s1,24(sp)
    800033c0:	01013903          	ld	s2,16(sp)
    800033c4:	00813983          	ld	s3,8(sp)
    800033c8:	03010113          	addi	sp,sp,48
    800033cc:	00008067          	ret

00000000800033d0 <uartputc_sync>:
    800033d0:	ff010113          	addi	sp,sp,-16
    800033d4:	00813423          	sd	s0,8(sp)
    800033d8:	01010413          	addi	s0,sp,16
    800033dc:	00002717          	auipc	a4,0x2
    800033e0:	56c72703          	lw	a4,1388(a4) # 80005948 <panicked>
    800033e4:	02071663          	bnez	a4,80003410 <uartputc_sync+0x40>
    800033e8:	00050793          	mv	a5,a0
    800033ec:	100006b7          	lui	a3,0x10000
    800033f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800033f4:	02077713          	andi	a4,a4,32
    800033f8:	fe070ce3          	beqz	a4,800033f0 <uartputc_sync+0x20>
    800033fc:	0ff7f793          	andi	a5,a5,255
    80003400:	00f68023          	sb	a5,0(a3)
    80003404:	00813403          	ld	s0,8(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret
    80003410:	0000006f          	j	80003410 <uartputc_sync+0x40>

0000000080003414 <uartstart>:
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    80003420:	00002617          	auipc	a2,0x2
    80003424:	53060613          	addi	a2,a2,1328 # 80005950 <uart_tx_r>
    80003428:	00002517          	auipc	a0,0x2
    8000342c:	53050513          	addi	a0,a0,1328 # 80005958 <uart_tx_w>
    80003430:	00063783          	ld	a5,0(a2)
    80003434:	00053703          	ld	a4,0(a0)
    80003438:	04f70263          	beq	a4,a5,8000347c <uartstart+0x68>
    8000343c:	100005b7          	lui	a1,0x10000
    80003440:	00003817          	auipc	a6,0x3
    80003444:	7a080813          	addi	a6,a6,1952 # 80006be0 <uart_tx_buf>
    80003448:	01c0006f          	j	80003464 <uartstart+0x50>
    8000344c:	0006c703          	lbu	a4,0(a3)
    80003450:	00f63023          	sd	a5,0(a2)
    80003454:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003458:	00063783          	ld	a5,0(a2)
    8000345c:	00053703          	ld	a4,0(a0)
    80003460:	00f70e63          	beq	a4,a5,8000347c <uartstart+0x68>
    80003464:	01f7f713          	andi	a4,a5,31
    80003468:	00e806b3          	add	a3,a6,a4
    8000346c:	0055c703          	lbu	a4,5(a1)
    80003470:	00178793          	addi	a5,a5,1
    80003474:	02077713          	andi	a4,a4,32
    80003478:	fc071ae3          	bnez	a4,8000344c <uartstart+0x38>
    8000347c:	00813403          	ld	s0,8(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <uartgetc>:
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00813423          	sd	s0,8(sp)
    80003490:	01010413          	addi	s0,sp,16
    80003494:	10000737          	lui	a4,0x10000
    80003498:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000349c:	0017f793          	andi	a5,a5,1
    800034a0:	00078c63          	beqz	a5,800034b8 <uartgetc+0x30>
    800034a4:	00074503          	lbu	a0,0(a4)
    800034a8:	0ff57513          	andi	a0,a0,255
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret
    800034b8:	fff00513          	li	a0,-1
    800034bc:	ff1ff06f          	j	800034ac <uartgetc+0x24>

00000000800034c0 <uartintr>:
    800034c0:	100007b7          	lui	a5,0x10000
    800034c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034c8:	0017f793          	andi	a5,a5,1
    800034cc:	0a078463          	beqz	a5,80003574 <uartintr+0xb4>
    800034d0:	fe010113          	addi	sp,sp,-32
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	100004b7          	lui	s1,0x10000
    800034e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800034ec:	0ff57513          	andi	a0,a0,255
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	534080e7          	jalr	1332(ra) # 80002a24 <consoleintr>
    800034f8:	0054c783          	lbu	a5,5(s1)
    800034fc:	0017f793          	andi	a5,a5,1
    80003500:	fe0794e3          	bnez	a5,800034e8 <uartintr+0x28>
    80003504:	00002617          	auipc	a2,0x2
    80003508:	44c60613          	addi	a2,a2,1100 # 80005950 <uart_tx_r>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	44c50513          	addi	a0,a0,1100 # 80005958 <uart_tx_w>
    80003514:	00063783          	ld	a5,0(a2)
    80003518:	00053703          	ld	a4,0(a0)
    8000351c:	04f70263          	beq	a4,a5,80003560 <uartintr+0xa0>
    80003520:	100005b7          	lui	a1,0x10000
    80003524:	00003817          	auipc	a6,0x3
    80003528:	6bc80813          	addi	a6,a6,1724 # 80006be0 <uart_tx_buf>
    8000352c:	01c0006f          	j	80003548 <uartintr+0x88>
    80003530:	0006c703          	lbu	a4,0(a3)
    80003534:	00f63023          	sd	a5,0(a2)
    80003538:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000353c:	00063783          	ld	a5,0(a2)
    80003540:	00053703          	ld	a4,0(a0)
    80003544:	00f70e63          	beq	a4,a5,80003560 <uartintr+0xa0>
    80003548:	01f7f713          	andi	a4,a5,31
    8000354c:	00e806b3          	add	a3,a6,a4
    80003550:	0055c703          	lbu	a4,5(a1)
    80003554:	00178793          	addi	a5,a5,1
    80003558:	02077713          	andi	a4,a4,32
    8000355c:	fc071ae3          	bnez	a4,80003530 <uartintr+0x70>
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	02010113          	addi	sp,sp,32
    80003570:	00008067          	ret
    80003574:	00002617          	auipc	a2,0x2
    80003578:	3dc60613          	addi	a2,a2,988 # 80005950 <uart_tx_r>
    8000357c:	00002517          	auipc	a0,0x2
    80003580:	3dc50513          	addi	a0,a0,988 # 80005958 <uart_tx_w>
    80003584:	00063783          	ld	a5,0(a2)
    80003588:	00053703          	ld	a4,0(a0)
    8000358c:	04f70263          	beq	a4,a5,800035d0 <uartintr+0x110>
    80003590:	100005b7          	lui	a1,0x10000
    80003594:	00003817          	auipc	a6,0x3
    80003598:	64c80813          	addi	a6,a6,1612 # 80006be0 <uart_tx_buf>
    8000359c:	01c0006f          	j	800035b8 <uartintr+0xf8>
    800035a0:	0006c703          	lbu	a4,0(a3)
    800035a4:	00f63023          	sd	a5,0(a2)
    800035a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035ac:	00063783          	ld	a5,0(a2)
    800035b0:	00053703          	ld	a4,0(a0)
    800035b4:	02f70063          	beq	a4,a5,800035d4 <uartintr+0x114>
    800035b8:	01f7f713          	andi	a4,a5,31
    800035bc:	00e806b3          	add	a3,a6,a4
    800035c0:	0055c703          	lbu	a4,5(a1)
    800035c4:	00178793          	addi	a5,a5,1
    800035c8:	02077713          	andi	a4,a4,32
    800035cc:	fc071ae3          	bnez	a4,800035a0 <uartintr+0xe0>
    800035d0:	00008067          	ret
    800035d4:	00008067          	ret

00000000800035d8 <kinit>:
    800035d8:	fc010113          	addi	sp,sp,-64
    800035dc:	02913423          	sd	s1,40(sp)
    800035e0:	fffff7b7          	lui	a5,0xfffff
    800035e4:	00004497          	auipc	s1,0x4
    800035e8:	62b48493          	addi	s1,s1,1579 # 80007c0f <end+0xfff>
    800035ec:	02813823          	sd	s0,48(sp)
    800035f0:	01313c23          	sd	s3,24(sp)
    800035f4:	00f4f4b3          	and	s1,s1,a5
    800035f8:	02113c23          	sd	ra,56(sp)
    800035fc:	03213023          	sd	s2,32(sp)
    80003600:	01413823          	sd	s4,16(sp)
    80003604:	01513423          	sd	s5,8(sp)
    80003608:	04010413          	addi	s0,sp,64
    8000360c:	000017b7          	lui	a5,0x1
    80003610:	01100993          	li	s3,17
    80003614:	00f487b3          	add	a5,s1,a5
    80003618:	01b99993          	slli	s3,s3,0x1b
    8000361c:	06f9e063          	bltu	s3,a5,8000367c <kinit+0xa4>
    80003620:	00003a97          	auipc	s5,0x3
    80003624:	5f0a8a93          	addi	s5,s5,1520 # 80006c10 <end>
    80003628:	0754ec63          	bltu	s1,s5,800036a0 <kinit+0xc8>
    8000362c:	0734fa63          	bgeu	s1,s3,800036a0 <kinit+0xc8>
    80003630:	00088a37          	lui	s4,0x88
    80003634:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003638:	00002917          	auipc	s2,0x2
    8000363c:	32890913          	addi	s2,s2,808 # 80005960 <kmem>
    80003640:	00ca1a13          	slli	s4,s4,0xc
    80003644:	0140006f          	j	80003658 <kinit+0x80>
    80003648:	000017b7          	lui	a5,0x1
    8000364c:	00f484b3          	add	s1,s1,a5
    80003650:	0554e863          	bltu	s1,s5,800036a0 <kinit+0xc8>
    80003654:	0534f663          	bgeu	s1,s3,800036a0 <kinit+0xc8>
    80003658:	00001637          	lui	a2,0x1
    8000365c:	00100593          	li	a1,1
    80003660:	00048513          	mv	a0,s1
    80003664:	00000097          	auipc	ra,0x0
    80003668:	5e4080e7          	jalr	1508(ra) # 80003c48 <__memset>
    8000366c:	00093783          	ld	a5,0(s2)
    80003670:	00f4b023          	sd	a5,0(s1)
    80003674:	00993023          	sd	s1,0(s2)
    80003678:	fd4498e3          	bne	s1,s4,80003648 <kinit+0x70>
    8000367c:	03813083          	ld	ra,56(sp)
    80003680:	03013403          	ld	s0,48(sp)
    80003684:	02813483          	ld	s1,40(sp)
    80003688:	02013903          	ld	s2,32(sp)
    8000368c:	01813983          	ld	s3,24(sp)
    80003690:	01013a03          	ld	s4,16(sp)
    80003694:	00813a83          	ld	s5,8(sp)
    80003698:	04010113          	addi	sp,sp,64
    8000369c:	00008067          	ret
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	b4850513          	addi	a0,a0,-1208 # 800051e8 <digits+0x18>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	4b4080e7          	jalr	1204(ra) # 80002b5c <panic>

00000000800036b0 <freerange>:
    800036b0:	fc010113          	addi	sp,sp,-64
    800036b4:	000017b7          	lui	a5,0x1
    800036b8:	02913423          	sd	s1,40(sp)
    800036bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036c0:	009504b3          	add	s1,a0,s1
    800036c4:	fffff537          	lui	a0,0xfffff
    800036c8:	02813823          	sd	s0,48(sp)
    800036cc:	02113c23          	sd	ra,56(sp)
    800036d0:	03213023          	sd	s2,32(sp)
    800036d4:	01313c23          	sd	s3,24(sp)
    800036d8:	01413823          	sd	s4,16(sp)
    800036dc:	01513423          	sd	s5,8(sp)
    800036e0:	01613023          	sd	s6,0(sp)
    800036e4:	04010413          	addi	s0,sp,64
    800036e8:	00a4f4b3          	and	s1,s1,a0
    800036ec:	00f487b3          	add	a5,s1,a5
    800036f0:	06f5e463          	bltu	a1,a5,80003758 <freerange+0xa8>
    800036f4:	00003a97          	auipc	s5,0x3
    800036f8:	51ca8a93          	addi	s5,s5,1308 # 80006c10 <end>
    800036fc:	0954e263          	bltu	s1,s5,80003780 <freerange+0xd0>
    80003700:	01100993          	li	s3,17
    80003704:	01b99993          	slli	s3,s3,0x1b
    80003708:	0734fc63          	bgeu	s1,s3,80003780 <freerange+0xd0>
    8000370c:	00058a13          	mv	s4,a1
    80003710:	00002917          	auipc	s2,0x2
    80003714:	25090913          	addi	s2,s2,592 # 80005960 <kmem>
    80003718:	00002b37          	lui	s6,0x2
    8000371c:	0140006f          	j	80003730 <freerange+0x80>
    80003720:	000017b7          	lui	a5,0x1
    80003724:	00f484b3          	add	s1,s1,a5
    80003728:	0554ec63          	bltu	s1,s5,80003780 <freerange+0xd0>
    8000372c:	0534fa63          	bgeu	s1,s3,80003780 <freerange+0xd0>
    80003730:	00001637          	lui	a2,0x1
    80003734:	00100593          	li	a1,1
    80003738:	00048513          	mv	a0,s1
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	50c080e7          	jalr	1292(ra) # 80003c48 <__memset>
    80003744:	00093703          	ld	a4,0(s2)
    80003748:	016487b3          	add	a5,s1,s6
    8000374c:	00e4b023          	sd	a4,0(s1)
    80003750:	00993023          	sd	s1,0(s2)
    80003754:	fcfa76e3          	bgeu	s4,a5,80003720 <freerange+0x70>
    80003758:	03813083          	ld	ra,56(sp)
    8000375c:	03013403          	ld	s0,48(sp)
    80003760:	02813483          	ld	s1,40(sp)
    80003764:	02013903          	ld	s2,32(sp)
    80003768:	01813983          	ld	s3,24(sp)
    8000376c:	01013a03          	ld	s4,16(sp)
    80003770:	00813a83          	ld	s5,8(sp)
    80003774:	00013b03          	ld	s6,0(sp)
    80003778:	04010113          	addi	sp,sp,64
    8000377c:	00008067          	ret
    80003780:	00002517          	auipc	a0,0x2
    80003784:	a6850513          	addi	a0,a0,-1432 # 800051e8 <digits+0x18>
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	3d4080e7          	jalr	980(ra) # 80002b5c <panic>

0000000080003790 <kfree>:
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00113c23          	sd	ra,24(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	03451793          	slli	a5,a0,0x34
    800037a8:	04079c63          	bnez	a5,80003800 <kfree+0x70>
    800037ac:	00003797          	auipc	a5,0x3
    800037b0:	46478793          	addi	a5,a5,1124 # 80006c10 <end>
    800037b4:	00050493          	mv	s1,a0
    800037b8:	04f56463          	bltu	a0,a5,80003800 <kfree+0x70>
    800037bc:	01100793          	li	a5,17
    800037c0:	01b79793          	slli	a5,a5,0x1b
    800037c4:	02f57e63          	bgeu	a0,a5,80003800 <kfree+0x70>
    800037c8:	00001637          	lui	a2,0x1
    800037cc:	00100593          	li	a1,1
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	478080e7          	jalr	1144(ra) # 80003c48 <__memset>
    800037d8:	00002797          	auipc	a5,0x2
    800037dc:	18878793          	addi	a5,a5,392 # 80005960 <kmem>
    800037e0:	0007b703          	ld	a4,0(a5)
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00e4b023          	sd	a4,0(s1)
    800037f0:	0097b023          	sd	s1,0(a5)
    800037f4:	00813483          	ld	s1,8(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret
    80003800:	00002517          	auipc	a0,0x2
    80003804:	9e850513          	addi	a0,a0,-1560 # 800051e8 <digits+0x18>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	354080e7          	jalr	852(ra) # 80002b5c <panic>

0000000080003810 <kalloc>:
    80003810:	fe010113          	addi	sp,sp,-32
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	00113c23          	sd	ra,24(sp)
    80003820:	02010413          	addi	s0,sp,32
    80003824:	00002797          	auipc	a5,0x2
    80003828:	13c78793          	addi	a5,a5,316 # 80005960 <kmem>
    8000382c:	0007b483          	ld	s1,0(a5)
    80003830:	02048063          	beqz	s1,80003850 <kalloc+0x40>
    80003834:	0004b703          	ld	a4,0(s1)
    80003838:	00001637          	lui	a2,0x1
    8000383c:	00500593          	li	a1,5
    80003840:	00048513          	mv	a0,s1
    80003844:	00e7b023          	sd	a4,0(a5)
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	400080e7          	jalr	1024(ra) # 80003c48 <__memset>
    80003850:	01813083          	ld	ra,24(sp)
    80003854:	01013403          	ld	s0,16(sp)
    80003858:	00048513          	mv	a0,s1
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	02010113          	addi	sp,sp,32
    80003864:	00008067          	ret

0000000080003868 <initlock>:
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00813403          	ld	s0,8(sp)
    80003878:	00b53423          	sd	a1,8(a0)
    8000387c:	00052023          	sw	zero,0(a0)
    80003880:	00053823          	sd	zero,16(a0)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <acquire>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00913423          	sd	s1,8(sp)
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	01213023          	sd	s2,0(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00050493          	mv	s1,a0
    800038a8:	10002973          	csrr	s2,sstatus
    800038ac:	100027f3          	csrr	a5,sstatus
    800038b0:	ffd7f793          	andi	a5,a5,-3
    800038b4:	10079073          	csrw	sstatus,a5
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	8e8080e7          	jalr	-1816(ra) # 800021a0 <mycpu>
    800038c0:	07852783          	lw	a5,120(a0)
    800038c4:	06078e63          	beqz	a5,80003940 <acquire+0xb4>
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	8d8080e7          	jalr	-1832(ra) # 800021a0 <mycpu>
    800038d0:	07852783          	lw	a5,120(a0)
    800038d4:	0004a703          	lw	a4,0(s1)
    800038d8:	0017879b          	addiw	a5,a5,1
    800038dc:	06f52c23          	sw	a5,120(a0)
    800038e0:	04071063          	bnez	a4,80003920 <acquire+0x94>
    800038e4:	00100713          	li	a4,1
    800038e8:	00070793          	mv	a5,a4
    800038ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800038f0:	0007879b          	sext.w	a5,a5
    800038f4:	fe079ae3          	bnez	a5,800038e8 <acquire+0x5c>
    800038f8:	0ff0000f          	fence
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	8a4080e7          	jalr	-1884(ra) # 800021a0 <mycpu>
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00a4b823          	sd	a0,16(s1)
    80003910:	00013903          	ld	s2,0(sp)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	0104b903          	ld	s2,16(s1)
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	87c080e7          	jalr	-1924(ra) # 800021a0 <mycpu>
    8000392c:	faa91ce3          	bne	s2,a0,800038e4 <acquire+0x58>
    80003930:	00002517          	auipc	a0,0x2
    80003934:	8c050513          	addi	a0,a0,-1856 # 800051f0 <digits+0x20>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	224080e7          	jalr	548(ra) # 80002b5c <panic>
    80003940:	00195913          	srli	s2,s2,0x1
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	85c080e7          	jalr	-1956(ra) # 800021a0 <mycpu>
    8000394c:	00197913          	andi	s2,s2,1
    80003950:	07252e23          	sw	s2,124(a0)
    80003954:	f75ff06f          	j	800038c8 <acquire+0x3c>

0000000080003958 <release>:
    80003958:	fe010113          	addi	sp,sp,-32
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00913423          	sd	s1,8(sp)
    80003968:	01213023          	sd	s2,0(sp)
    8000396c:	02010413          	addi	s0,sp,32
    80003970:	00052783          	lw	a5,0(a0)
    80003974:	00079a63          	bnez	a5,80003988 <release+0x30>
    80003978:	00002517          	auipc	a0,0x2
    8000397c:	88050513          	addi	a0,a0,-1920 # 800051f8 <digits+0x28>
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	1dc080e7          	jalr	476(ra) # 80002b5c <panic>
    80003988:	01053903          	ld	s2,16(a0)
    8000398c:	00050493          	mv	s1,a0
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	810080e7          	jalr	-2032(ra) # 800021a0 <mycpu>
    80003998:	fea910e3          	bne	s2,a0,80003978 <release+0x20>
    8000399c:	0004b823          	sd	zero,16(s1)
    800039a0:	0ff0000f          	fence
    800039a4:	0f50000f          	fence	iorw,ow
    800039a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	7f4080e7          	jalr	2036(ra) # 800021a0 <mycpu>
    800039b4:	100027f3          	csrr	a5,sstatus
    800039b8:	0027f793          	andi	a5,a5,2
    800039bc:	04079a63          	bnez	a5,80003a10 <release+0xb8>
    800039c0:	07852783          	lw	a5,120(a0)
    800039c4:	02f05e63          	blez	a5,80003a00 <release+0xa8>
    800039c8:	fff7871b          	addiw	a4,a5,-1
    800039cc:	06e52c23          	sw	a4,120(a0)
    800039d0:	00071c63          	bnez	a4,800039e8 <release+0x90>
    800039d4:	07c52783          	lw	a5,124(a0)
    800039d8:	00078863          	beqz	a5,800039e8 <release+0x90>
    800039dc:	100027f3          	csrr	a5,sstatus
    800039e0:	0027e793          	ori	a5,a5,2
    800039e4:	10079073          	csrw	sstatus,a5
    800039e8:	01813083          	ld	ra,24(sp)
    800039ec:	01013403          	ld	s0,16(sp)
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	00013903          	ld	s2,0(sp)
    800039f8:	02010113          	addi	sp,sp,32
    800039fc:	00008067          	ret
    80003a00:	00002517          	auipc	a0,0x2
    80003a04:	81850513          	addi	a0,a0,-2024 # 80005218 <digits+0x48>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	154080e7          	jalr	340(ra) # 80002b5c <panic>
    80003a10:	00001517          	auipc	a0,0x1
    80003a14:	7f050513          	addi	a0,a0,2032 # 80005200 <digits+0x30>
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	144080e7          	jalr	324(ra) # 80002b5c <panic>

0000000080003a20 <holding>:
    80003a20:	00052783          	lw	a5,0(a0)
    80003a24:	00079663          	bnez	a5,80003a30 <holding+0x10>
    80003a28:	00000513          	li	a0,0
    80003a2c:	00008067          	ret
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	01053483          	ld	s1,16(a0)
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	758080e7          	jalr	1880(ra) # 800021a0 <mycpu>
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	40a48533          	sub	a0,s1,a0
    80003a5c:	00153513          	seqz	a0,a0
    80003a60:	00813483          	ld	s1,8(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret

0000000080003a6c <push_off>:
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00113c23          	sd	ra,24(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	100024f3          	csrr	s1,sstatus
    80003a84:	100027f3          	csrr	a5,sstatus
    80003a88:	ffd7f793          	andi	a5,a5,-3
    80003a8c:	10079073          	csrw	sstatus,a5
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	710080e7          	jalr	1808(ra) # 800021a0 <mycpu>
    80003a98:	07852783          	lw	a5,120(a0)
    80003a9c:	02078663          	beqz	a5,80003ac8 <push_off+0x5c>
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	700080e7          	jalr	1792(ra) # 800021a0 <mycpu>
    80003aa8:	07852783          	lw	a5,120(a0)
    80003aac:	01813083          	ld	ra,24(sp)
    80003ab0:	01013403          	ld	s0,16(sp)
    80003ab4:	0017879b          	addiw	a5,a5,1
    80003ab8:	06f52c23          	sw	a5,120(a0)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret
    80003ac8:	0014d493          	srli	s1,s1,0x1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	6d4080e7          	jalr	1748(ra) # 800021a0 <mycpu>
    80003ad4:	0014f493          	andi	s1,s1,1
    80003ad8:	06952e23          	sw	s1,124(a0)
    80003adc:	fc5ff06f          	j	80003aa0 <push_off+0x34>

0000000080003ae0 <pop_off>:
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00813023          	sd	s0,0(sp)
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	6b0080e7          	jalr	1712(ra) # 800021a0 <mycpu>
    80003af8:	100027f3          	csrr	a5,sstatus
    80003afc:	0027f793          	andi	a5,a5,2
    80003b00:	04079663          	bnez	a5,80003b4c <pop_off+0x6c>
    80003b04:	07852783          	lw	a5,120(a0)
    80003b08:	02f05a63          	blez	a5,80003b3c <pop_off+0x5c>
    80003b0c:	fff7871b          	addiw	a4,a5,-1
    80003b10:	06e52c23          	sw	a4,120(a0)
    80003b14:	00071c63          	bnez	a4,80003b2c <pop_off+0x4c>
    80003b18:	07c52783          	lw	a5,124(a0)
    80003b1c:	00078863          	beqz	a5,80003b2c <pop_off+0x4c>
    80003b20:	100027f3          	csrr	a5,sstatus
    80003b24:	0027e793          	ori	a5,a5,2
    80003b28:	10079073          	csrw	sstatus,a5
    80003b2c:	00813083          	ld	ra,8(sp)
    80003b30:	00013403          	ld	s0,0(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret
    80003b3c:	00001517          	auipc	a0,0x1
    80003b40:	6dc50513          	addi	a0,a0,1756 # 80005218 <digits+0x48>
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	018080e7          	jalr	24(ra) # 80002b5c <panic>
    80003b4c:	00001517          	auipc	a0,0x1
    80003b50:	6b450513          	addi	a0,a0,1716 # 80005200 <digits+0x30>
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	008080e7          	jalr	8(ra) # 80002b5c <panic>

0000000080003b5c <push_on>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00113c23          	sd	ra,24(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	02010413          	addi	s0,sp,32
    80003b70:	100024f3          	csrr	s1,sstatus
    80003b74:	100027f3          	csrr	a5,sstatus
    80003b78:	0027e793          	ori	a5,a5,2
    80003b7c:	10079073          	csrw	sstatus,a5
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	620080e7          	jalr	1568(ra) # 800021a0 <mycpu>
    80003b88:	07852783          	lw	a5,120(a0)
    80003b8c:	02078663          	beqz	a5,80003bb8 <push_on+0x5c>
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	610080e7          	jalr	1552(ra) # 800021a0 <mycpu>
    80003b98:	07852783          	lw	a5,120(a0)
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	0017879b          	addiw	a5,a5,1
    80003ba8:	06f52c23          	sw	a5,120(a0)
    80003bac:	00813483          	ld	s1,8(sp)
    80003bb0:	02010113          	addi	sp,sp,32
    80003bb4:	00008067          	ret
    80003bb8:	0014d493          	srli	s1,s1,0x1
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	5e4080e7          	jalr	1508(ra) # 800021a0 <mycpu>
    80003bc4:	0014f493          	andi	s1,s1,1
    80003bc8:	06952e23          	sw	s1,124(a0)
    80003bcc:	fc5ff06f          	j	80003b90 <push_on+0x34>

0000000080003bd0 <pop_on>:
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	00113423          	sd	ra,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	5c0080e7          	jalr	1472(ra) # 800021a0 <mycpu>
    80003be8:	100027f3          	csrr	a5,sstatus
    80003bec:	0027f793          	andi	a5,a5,2
    80003bf0:	04078463          	beqz	a5,80003c38 <pop_on+0x68>
    80003bf4:	07852783          	lw	a5,120(a0)
    80003bf8:	02f05863          	blez	a5,80003c28 <pop_on+0x58>
    80003bfc:	fff7879b          	addiw	a5,a5,-1
    80003c00:	06f52c23          	sw	a5,120(a0)
    80003c04:	07853783          	ld	a5,120(a0)
    80003c08:	00079863          	bnez	a5,80003c18 <pop_on+0x48>
    80003c0c:	100027f3          	csrr	a5,sstatus
    80003c10:	ffd7f793          	andi	a5,a5,-3
    80003c14:	10079073          	csrw	sstatus,a5
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret
    80003c28:	00001517          	auipc	a0,0x1
    80003c2c:	61850513          	addi	a0,a0,1560 # 80005240 <digits+0x70>
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	f2c080e7          	jalr	-212(ra) # 80002b5c <panic>
    80003c38:	00001517          	auipc	a0,0x1
    80003c3c:	5e850513          	addi	a0,a0,1512 # 80005220 <digits+0x50>
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	f1c080e7          	jalr	-228(ra) # 80002b5c <panic>

0000000080003c48 <__memset>:
    80003c48:	ff010113          	addi	sp,sp,-16
    80003c4c:	00813423          	sd	s0,8(sp)
    80003c50:	01010413          	addi	s0,sp,16
    80003c54:	1a060e63          	beqz	a2,80003e10 <__memset+0x1c8>
    80003c58:	40a007b3          	neg	a5,a0
    80003c5c:	0077f793          	andi	a5,a5,7
    80003c60:	00778693          	addi	a3,a5,7
    80003c64:	00b00813          	li	a6,11
    80003c68:	0ff5f593          	andi	a1,a1,255
    80003c6c:	fff6071b          	addiw	a4,a2,-1
    80003c70:	1b06e663          	bltu	a3,a6,80003e1c <__memset+0x1d4>
    80003c74:	1cd76463          	bltu	a4,a3,80003e3c <__memset+0x1f4>
    80003c78:	1a078e63          	beqz	a5,80003e34 <__memset+0x1ec>
    80003c7c:	00b50023          	sb	a1,0(a0)
    80003c80:	00100713          	li	a4,1
    80003c84:	1ae78463          	beq	a5,a4,80003e2c <__memset+0x1e4>
    80003c88:	00b500a3          	sb	a1,1(a0)
    80003c8c:	00200713          	li	a4,2
    80003c90:	1ae78a63          	beq	a5,a4,80003e44 <__memset+0x1fc>
    80003c94:	00b50123          	sb	a1,2(a0)
    80003c98:	00300713          	li	a4,3
    80003c9c:	18e78463          	beq	a5,a4,80003e24 <__memset+0x1dc>
    80003ca0:	00b501a3          	sb	a1,3(a0)
    80003ca4:	00400713          	li	a4,4
    80003ca8:	1ae78263          	beq	a5,a4,80003e4c <__memset+0x204>
    80003cac:	00b50223          	sb	a1,4(a0)
    80003cb0:	00500713          	li	a4,5
    80003cb4:	1ae78063          	beq	a5,a4,80003e54 <__memset+0x20c>
    80003cb8:	00b502a3          	sb	a1,5(a0)
    80003cbc:	00700713          	li	a4,7
    80003cc0:	18e79e63          	bne	a5,a4,80003e5c <__memset+0x214>
    80003cc4:	00b50323          	sb	a1,6(a0)
    80003cc8:	00700e93          	li	t4,7
    80003ccc:	00859713          	slli	a4,a1,0x8
    80003cd0:	00e5e733          	or	a4,a1,a4
    80003cd4:	01059e13          	slli	t3,a1,0x10
    80003cd8:	01c76e33          	or	t3,a4,t3
    80003cdc:	01859313          	slli	t1,a1,0x18
    80003ce0:	006e6333          	or	t1,t3,t1
    80003ce4:	02059893          	slli	a7,a1,0x20
    80003ce8:	40f60e3b          	subw	t3,a2,a5
    80003cec:	011368b3          	or	a7,t1,a7
    80003cf0:	02859813          	slli	a6,a1,0x28
    80003cf4:	0108e833          	or	a6,a7,a6
    80003cf8:	03059693          	slli	a3,a1,0x30
    80003cfc:	003e589b          	srliw	a7,t3,0x3
    80003d00:	00d866b3          	or	a3,a6,a3
    80003d04:	03859713          	slli	a4,a1,0x38
    80003d08:	00389813          	slli	a6,a7,0x3
    80003d0c:	00f507b3          	add	a5,a0,a5
    80003d10:	00e6e733          	or	a4,a3,a4
    80003d14:	000e089b          	sext.w	a7,t3
    80003d18:	00f806b3          	add	a3,a6,a5
    80003d1c:	00e7b023          	sd	a4,0(a5)
    80003d20:	00878793          	addi	a5,a5,8
    80003d24:	fed79ce3          	bne	a5,a3,80003d1c <__memset+0xd4>
    80003d28:	ff8e7793          	andi	a5,t3,-8
    80003d2c:	0007871b          	sext.w	a4,a5
    80003d30:	01d787bb          	addw	a5,a5,t4
    80003d34:	0ce88e63          	beq	a7,a4,80003e10 <__memset+0x1c8>
    80003d38:	00f50733          	add	a4,a0,a5
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0017871b          	addiw	a4,a5,1
    80003d44:	0cc77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0027871b          	addiw	a4,a5,2
    80003d54:	0ac77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0037871b          	addiw	a4,a5,3
    80003d64:	0ac77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0047871b          	addiw	a4,a5,4
    80003d74:	08c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0057871b          	addiw	a4,a5,5
    80003d84:	08c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0067871b          	addiw	a4,a5,6
    80003d94:	06c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0077871b          	addiw	a4,a5,7
    80003da4:	06c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0087871b          	addiw	a4,a5,8
    80003db4:	04c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0097871b          	addiw	a4,a5,9
    80003dc4:	04c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	00a7871b          	addiw	a4,a5,10
    80003dd4:	02c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	00b7871b          	addiw	a4,a5,11
    80003de4:	02c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	00c7871b          	addiw	a4,a5,12
    80003df4:	00c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	00d7879b          	addiw	a5,a5,13
    80003e04:	00c7f663          	bgeu	a5,a2,80003e10 <__memset+0x1c8>
    80003e08:	00f507b3          	add	a5,a0,a5
    80003e0c:	00b78023          	sb	a1,0(a5)
    80003e10:	00813403          	ld	s0,8(sp)
    80003e14:	01010113          	addi	sp,sp,16
    80003e18:	00008067          	ret
    80003e1c:	00b00693          	li	a3,11
    80003e20:	e55ff06f          	j	80003c74 <__memset+0x2c>
    80003e24:	00300e93          	li	t4,3
    80003e28:	ea5ff06f          	j	80003ccc <__memset+0x84>
    80003e2c:	00100e93          	li	t4,1
    80003e30:	e9dff06f          	j	80003ccc <__memset+0x84>
    80003e34:	00000e93          	li	t4,0
    80003e38:	e95ff06f          	j	80003ccc <__memset+0x84>
    80003e3c:	00000793          	li	a5,0
    80003e40:	ef9ff06f          	j	80003d38 <__memset+0xf0>
    80003e44:	00200e93          	li	t4,2
    80003e48:	e85ff06f          	j	80003ccc <__memset+0x84>
    80003e4c:	00400e93          	li	t4,4
    80003e50:	e7dff06f          	j	80003ccc <__memset+0x84>
    80003e54:	00500e93          	li	t4,5
    80003e58:	e75ff06f          	j	80003ccc <__memset+0x84>
    80003e5c:	00600e93          	li	t4,6
    80003e60:	e6dff06f          	j	80003ccc <__memset+0x84>

0000000080003e64 <__memmove>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	0e060863          	beqz	a2,80003f60 <__memmove+0xfc>
    80003e74:	fff6069b          	addiw	a3,a2,-1
    80003e78:	0006881b          	sext.w	a6,a3
    80003e7c:	0ea5e863          	bltu	a1,a0,80003f6c <__memmove+0x108>
    80003e80:	00758713          	addi	a4,a1,7
    80003e84:	00a5e7b3          	or	a5,a1,a0
    80003e88:	40a70733          	sub	a4,a4,a0
    80003e8c:	0077f793          	andi	a5,a5,7
    80003e90:	00f73713          	sltiu	a4,a4,15
    80003e94:	00174713          	xori	a4,a4,1
    80003e98:	0017b793          	seqz	a5,a5
    80003e9c:	00e7f7b3          	and	a5,a5,a4
    80003ea0:	10078863          	beqz	a5,80003fb0 <__memmove+0x14c>
    80003ea4:	00900793          	li	a5,9
    80003ea8:	1107f463          	bgeu	a5,a6,80003fb0 <__memmove+0x14c>
    80003eac:	0036581b          	srliw	a6,a2,0x3
    80003eb0:	fff8081b          	addiw	a6,a6,-1
    80003eb4:	02081813          	slli	a6,a6,0x20
    80003eb8:	01d85893          	srli	a7,a6,0x1d
    80003ebc:	00858813          	addi	a6,a1,8
    80003ec0:	00058793          	mv	a5,a1
    80003ec4:	00050713          	mv	a4,a0
    80003ec8:	01088833          	add	a6,a7,a6
    80003ecc:	0007b883          	ld	a7,0(a5)
    80003ed0:	00878793          	addi	a5,a5,8
    80003ed4:	00870713          	addi	a4,a4,8
    80003ed8:	ff173c23          	sd	a7,-8(a4)
    80003edc:	ff0798e3          	bne	a5,a6,80003ecc <__memmove+0x68>
    80003ee0:	ff867713          	andi	a4,a2,-8
    80003ee4:	02071793          	slli	a5,a4,0x20
    80003ee8:	0207d793          	srli	a5,a5,0x20
    80003eec:	00f585b3          	add	a1,a1,a5
    80003ef0:	40e686bb          	subw	a3,a3,a4
    80003ef4:	00f507b3          	add	a5,a0,a5
    80003ef8:	06e60463          	beq	a2,a4,80003f60 <__memmove+0xfc>
    80003efc:	0005c703          	lbu	a4,0(a1)
    80003f00:	00e78023          	sb	a4,0(a5)
    80003f04:	04068e63          	beqz	a3,80003f60 <__memmove+0xfc>
    80003f08:	0015c603          	lbu	a2,1(a1)
    80003f0c:	00100713          	li	a4,1
    80003f10:	00c780a3          	sb	a2,1(a5)
    80003f14:	04e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f18:	0025c603          	lbu	a2,2(a1)
    80003f1c:	00200713          	li	a4,2
    80003f20:	00c78123          	sb	a2,2(a5)
    80003f24:	02e68e63          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f28:	0035c603          	lbu	a2,3(a1)
    80003f2c:	00300713          	li	a4,3
    80003f30:	00c781a3          	sb	a2,3(a5)
    80003f34:	02e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f38:	0045c603          	lbu	a2,4(a1)
    80003f3c:	00400713          	li	a4,4
    80003f40:	00c78223          	sb	a2,4(a5)
    80003f44:	00e68e63          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f48:	0055c603          	lbu	a2,5(a1)
    80003f4c:	00500713          	li	a4,5
    80003f50:	00c782a3          	sb	a2,5(a5)
    80003f54:	00e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f58:	0065c703          	lbu	a4,6(a1)
    80003f5c:	00e78323          	sb	a4,6(a5)
    80003f60:	00813403          	ld	s0,8(sp)
    80003f64:	01010113          	addi	sp,sp,16
    80003f68:	00008067          	ret
    80003f6c:	02061713          	slli	a4,a2,0x20
    80003f70:	02075713          	srli	a4,a4,0x20
    80003f74:	00e587b3          	add	a5,a1,a4
    80003f78:	f0f574e3          	bgeu	a0,a5,80003e80 <__memmove+0x1c>
    80003f7c:	02069613          	slli	a2,a3,0x20
    80003f80:	02065613          	srli	a2,a2,0x20
    80003f84:	fff64613          	not	a2,a2
    80003f88:	00e50733          	add	a4,a0,a4
    80003f8c:	00c78633          	add	a2,a5,a2
    80003f90:	fff7c683          	lbu	a3,-1(a5)
    80003f94:	fff78793          	addi	a5,a5,-1
    80003f98:	fff70713          	addi	a4,a4,-1
    80003f9c:	00d70023          	sb	a3,0(a4)
    80003fa0:	fec798e3          	bne	a5,a2,80003f90 <__memmove+0x12c>
    80003fa4:	00813403          	ld	s0,8(sp)
    80003fa8:	01010113          	addi	sp,sp,16
    80003fac:	00008067          	ret
    80003fb0:	02069713          	slli	a4,a3,0x20
    80003fb4:	02075713          	srli	a4,a4,0x20
    80003fb8:	00170713          	addi	a4,a4,1
    80003fbc:	00e50733          	add	a4,a0,a4
    80003fc0:	00050793          	mv	a5,a0
    80003fc4:	0005c683          	lbu	a3,0(a1)
    80003fc8:	00178793          	addi	a5,a5,1
    80003fcc:	00158593          	addi	a1,a1,1
    80003fd0:	fed78fa3          	sb	a3,-1(a5)
    80003fd4:	fee798e3          	bne	a5,a4,80003fc4 <__memmove+0x160>
    80003fd8:	f89ff06f          	j	80003f60 <__memmove+0xfc>

0000000080003fdc <__mem_free>:
    80003fdc:	ff010113          	addi	sp,sp,-16
    80003fe0:	00813423          	sd	s0,8(sp)
    80003fe4:	01010413          	addi	s0,sp,16
    80003fe8:	00002597          	auipc	a1,0x2
    80003fec:	98058593          	addi	a1,a1,-1664 # 80005968 <freep>
    80003ff0:	0005b783          	ld	a5,0(a1)
    80003ff4:	ff050693          	addi	a3,a0,-16
    80003ff8:	0007b703          	ld	a4,0(a5)
    80003ffc:	00d7fc63          	bgeu	a5,a3,80004014 <__mem_free+0x38>
    80004000:	00e6ee63          	bltu	a3,a4,8000401c <__mem_free+0x40>
    80004004:	00e7fc63          	bgeu	a5,a4,8000401c <__mem_free+0x40>
    80004008:	00070793          	mv	a5,a4
    8000400c:	0007b703          	ld	a4,0(a5)
    80004010:	fed7e8e3          	bltu	a5,a3,80004000 <__mem_free+0x24>
    80004014:	fee7eae3          	bltu	a5,a4,80004008 <__mem_free+0x2c>
    80004018:	fee6f8e3          	bgeu	a3,a4,80004008 <__mem_free+0x2c>
    8000401c:	ff852803          	lw	a6,-8(a0)
    80004020:	02081613          	slli	a2,a6,0x20
    80004024:	01c65613          	srli	a2,a2,0x1c
    80004028:	00c68633          	add	a2,a3,a2
    8000402c:	02c70a63          	beq	a4,a2,80004060 <__mem_free+0x84>
    80004030:	fee53823          	sd	a4,-16(a0)
    80004034:	0087a503          	lw	a0,8(a5)
    80004038:	02051613          	slli	a2,a0,0x20
    8000403c:	01c65613          	srli	a2,a2,0x1c
    80004040:	00c78633          	add	a2,a5,a2
    80004044:	04c68263          	beq	a3,a2,80004088 <__mem_free+0xac>
    80004048:	00813403          	ld	s0,8(sp)
    8000404c:	00d7b023          	sd	a3,0(a5)
    80004050:	00f5b023          	sd	a5,0(a1)
    80004054:	00000513          	li	a0,0
    80004058:	01010113          	addi	sp,sp,16
    8000405c:	00008067          	ret
    80004060:	00872603          	lw	a2,8(a4)
    80004064:	00073703          	ld	a4,0(a4)
    80004068:	0106083b          	addw	a6,a2,a6
    8000406c:	ff052c23          	sw	a6,-8(a0)
    80004070:	fee53823          	sd	a4,-16(a0)
    80004074:	0087a503          	lw	a0,8(a5)
    80004078:	02051613          	slli	a2,a0,0x20
    8000407c:	01c65613          	srli	a2,a2,0x1c
    80004080:	00c78633          	add	a2,a5,a2
    80004084:	fcc692e3          	bne	a3,a2,80004048 <__mem_free+0x6c>
    80004088:	00813403          	ld	s0,8(sp)
    8000408c:	0105053b          	addw	a0,a0,a6
    80004090:	00a7a423          	sw	a0,8(a5)
    80004094:	00e7b023          	sd	a4,0(a5)
    80004098:	00f5b023          	sd	a5,0(a1)
    8000409c:	00000513          	li	a0,0
    800040a0:	01010113          	addi	sp,sp,16
    800040a4:	00008067          	ret

00000000800040a8 <__mem_alloc>:
    800040a8:	fc010113          	addi	sp,sp,-64
    800040ac:	02813823          	sd	s0,48(sp)
    800040b0:	02913423          	sd	s1,40(sp)
    800040b4:	03213023          	sd	s2,32(sp)
    800040b8:	01513423          	sd	s5,8(sp)
    800040bc:	02113c23          	sd	ra,56(sp)
    800040c0:	01313c23          	sd	s3,24(sp)
    800040c4:	01413823          	sd	s4,16(sp)
    800040c8:	01613023          	sd	s6,0(sp)
    800040cc:	04010413          	addi	s0,sp,64
    800040d0:	00002a97          	auipc	s5,0x2
    800040d4:	898a8a93          	addi	s5,s5,-1896 # 80005968 <freep>
    800040d8:	00f50913          	addi	s2,a0,15
    800040dc:	000ab683          	ld	a3,0(s5)
    800040e0:	00495913          	srli	s2,s2,0x4
    800040e4:	0019049b          	addiw	s1,s2,1
    800040e8:	00048913          	mv	s2,s1
    800040ec:	0c068c63          	beqz	a3,800041c4 <__mem_alloc+0x11c>
    800040f0:	0006b503          	ld	a0,0(a3)
    800040f4:	00852703          	lw	a4,8(a0)
    800040f8:	10977063          	bgeu	a4,s1,800041f8 <__mem_alloc+0x150>
    800040fc:	000017b7          	lui	a5,0x1
    80004100:	0009099b          	sext.w	s3,s2
    80004104:	0af4e863          	bltu	s1,a5,800041b4 <__mem_alloc+0x10c>
    80004108:	02099a13          	slli	s4,s3,0x20
    8000410c:	01ca5a13          	srli	s4,s4,0x1c
    80004110:	fff00b13          	li	s6,-1
    80004114:	0100006f          	j	80004124 <__mem_alloc+0x7c>
    80004118:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000411c:	00852703          	lw	a4,8(a0)
    80004120:	04977463          	bgeu	a4,s1,80004168 <__mem_alloc+0xc0>
    80004124:	00050793          	mv	a5,a0
    80004128:	fea698e3          	bne	a3,a0,80004118 <__mem_alloc+0x70>
    8000412c:	000a0513          	mv	a0,s4
    80004130:	00000097          	auipc	ra,0x0
    80004134:	1f0080e7          	jalr	496(ra) # 80004320 <kvmincrease>
    80004138:	00050793          	mv	a5,a0
    8000413c:	01050513          	addi	a0,a0,16
    80004140:	07678e63          	beq	a5,s6,800041bc <__mem_alloc+0x114>
    80004144:	0137a423          	sw	s3,8(a5)
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	e94080e7          	jalr	-364(ra) # 80003fdc <__mem_free>
    80004150:	000ab783          	ld	a5,0(s5)
    80004154:	06078463          	beqz	a5,800041bc <__mem_alloc+0x114>
    80004158:	0007b503          	ld	a0,0(a5)
    8000415c:	00078693          	mv	a3,a5
    80004160:	00852703          	lw	a4,8(a0)
    80004164:	fc9760e3          	bltu	a4,s1,80004124 <__mem_alloc+0x7c>
    80004168:	08e48263          	beq	s1,a4,800041ec <__mem_alloc+0x144>
    8000416c:	4127073b          	subw	a4,a4,s2
    80004170:	02071693          	slli	a3,a4,0x20
    80004174:	01c6d693          	srli	a3,a3,0x1c
    80004178:	00e52423          	sw	a4,8(a0)
    8000417c:	00d50533          	add	a0,a0,a3
    80004180:	01252423          	sw	s2,8(a0)
    80004184:	00fab023          	sd	a5,0(s5)
    80004188:	01050513          	addi	a0,a0,16
    8000418c:	03813083          	ld	ra,56(sp)
    80004190:	03013403          	ld	s0,48(sp)
    80004194:	02813483          	ld	s1,40(sp)
    80004198:	02013903          	ld	s2,32(sp)
    8000419c:	01813983          	ld	s3,24(sp)
    800041a0:	01013a03          	ld	s4,16(sp)
    800041a4:	00813a83          	ld	s5,8(sp)
    800041a8:	00013b03          	ld	s6,0(sp)
    800041ac:	04010113          	addi	sp,sp,64
    800041b0:	00008067          	ret
    800041b4:	000019b7          	lui	s3,0x1
    800041b8:	f51ff06f          	j	80004108 <__mem_alloc+0x60>
    800041bc:	00000513          	li	a0,0
    800041c0:	fcdff06f          	j	8000418c <__mem_alloc+0xe4>
    800041c4:	00003797          	auipc	a5,0x3
    800041c8:	a3c78793          	addi	a5,a5,-1476 # 80006c00 <base>
    800041cc:	00078513          	mv	a0,a5
    800041d0:	00fab023          	sd	a5,0(s5)
    800041d4:	00f7b023          	sd	a5,0(a5)
    800041d8:	00000713          	li	a4,0
    800041dc:	00003797          	auipc	a5,0x3
    800041e0:	a207a623          	sw	zero,-1492(a5) # 80006c08 <base+0x8>
    800041e4:	00050693          	mv	a3,a0
    800041e8:	f11ff06f          	j	800040f8 <__mem_alloc+0x50>
    800041ec:	00053703          	ld	a4,0(a0)
    800041f0:	00e7b023          	sd	a4,0(a5)
    800041f4:	f91ff06f          	j	80004184 <__mem_alloc+0xdc>
    800041f8:	00068793          	mv	a5,a3
    800041fc:	f6dff06f          	j	80004168 <__mem_alloc+0xc0>

0000000080004200 <__putc>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050793          	mv	a5,a0
    80004214:	fef40593          	addi	a1,s0,-17
    80004218:	00100613          	li	a2,1
    8000421c:	00000513          	li	a0,0
    80004220:	fef407a3          	sb	a5,-17(s0)
    80004224:	fffff097          	auipc	ra,0xfffff
    80004228:	918080e7          	jalr	-1768(ra) # 80002b3c <console_write>
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <__getc>:
    8000423c:	fe010113          	addi	sp,sp,-32
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00113c23          	sd	ra,24(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	fe840593          	addi	a1,s0,-24
    80004250:	00100613          	li	a2,1
    80004254:	00000513          	li	a0,0
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	8c4080e7          	jalr	-1852(ra) # 80002b1c <console_read>
    80004260:	fe844503          	lbu	a0,-24(s0)
    80004264:	01813083          	ld	ra,24(sp)
    80004268:	01013403          	ld	s0,16(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret

0000000080004274 <console_handler>:
    80004274:	fe010113          	addi	sp,sp,-32
    80004278:	00813823          	sd	s0,16(sp)
    8000427c:	00113c23          	sd	ra,24(sp)
    80004280:	00913423          	sd	s1,8(sp)
    80004284:	02010413          	addi	s0,sp,32
    80004288:	14202773          	csrr	a4,scause
    8000428c:	100027f3          	csrr	a5,sstatus
    80004290:	0027f793          	andi	a5,a5,2
    80004294:	06079e63          	bnez	a5,80004310 <console_handler+0x9c>
    80004298:	00074c63          	bltz	a4,800042b0 <console_handler+0x3c>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret
    800042b0:	0ff77713          	andi	a4,a4,255
    800042b4:	00900793          	li	a5,9
    800042b8:	fef712e3          	bne	a4,a5,8000429c <console_handler+0x28>
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	4b8080e7          	jalr	1208(ra) # 80002774 <plic_claim>
    800042c4:	00a00793          	li	a5,10
    800042c8:	00050493          	mv	s1,a0
    800042cc:	02f50c63          	beq	a0,a5,80004304 <console_handler+0x90>
    800042d0:	fc0506e3          	beqz	a0,8000429c <console_handler+0x28>
    800042d4:	00050593          	mv	a1,a0
    800042d8:	00001517          	auipc	a0,0x1
    800042dc:	e7050513          	addi	a0,a0,-400 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800042e0:	fffff097          	auipc	ra,0xfffff
    800042e4:	8d8080e7          	jalr	-1832(ra) # 80002bb8 <__printf>
    800042e8:	01013403          	ld	s0,16(sp)
    800042ec:	01813083          	ld	ra,24(sp)
    800042f0:	00048513          	mv	a0,s1
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	ffffe317          	auipc	t1,0xffffe
    80004300:	4b030067          	jr	1200(t1) # 800027ac <plic_complete>
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	1bc080e7          	jalr	444(ra) # 800034c0 <uartintr>
    8000430c:	fddff06f          	j	800042e8 <console_handler+0x74>
    80004310:	00001517          	auipc	a0,0x1
    80004314:	f3850513          	addi	a0,a0,-200 # 80005248 <digits+0x78>
    80004318:	fffff097          	auipc	ra,0xfffff
    8000431c:	844080e7          	jalr	-1980(ra) # 80002b5c <panic>

0000000080004320 <kvmincrease>:
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	01213023          	sd	s2,0(sp)
    80004328:	00001937          	lui	s2,0x1
    8000432c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004330:	00813823          	sd	s0,16(sp)
    80004334:	00113c23          	sd	ra,24(sp)
    80004338:	00913423          	sd	s1,8(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	01250933          	add	s2,a0,s2
    80004344:	00c95913          	srli	s2,s2,0xc
    80004348:	02090863          	beqz	s2,80004378 <kvmincrease+0x58>
    8000434c:	00000493          	li	s1,0
    80004350:	00148493          	addi	s1,s1,1
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	4bc080e7          	jalr	1212(ra) # 80003810 <kalloc>
    8000435c:	fe991ae3          	bne	s2,s1,80004350 <kvmincrease+0x30>
    80004360:	01813083          	ld	ra,24(sp)
    80004364:	01013403          	ld	s0,16(sp)
    80004368:	00813483          	ld	s1,8(sp)
    8000436c:	00013903          	ld	s2,0(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	00013903          	ld	s2,0(sp)
    80004388:	00000513          	li	a0,0
    8000438c:	02010113          	addi	sp,sp,32
    80004390:	00008067          	ret
	...

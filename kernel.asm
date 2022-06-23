
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8e013103          	ld	sp,-1824(sp) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5cd010ef          	jal	ra,80001de8 <start>

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
    80001080:	34d000ef          	jal	ra,80001bcc <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001124:	fd010113          	addi	sp,sp,-48
    80001128:	02113423          	sd	ra,40(sp)
    8000112c:	02813023          	sd	s0,32(sp)
    80001130:	00913c23          	sd	s1,24(sp)
    80001134:	01213823          	sd	s2,16(sp)
    80001138:	01313423          	sd	s3,8(sp)
    8000113c:	03010413          	addi	s0,sp,48
    80001140:	00050493          	mv	s1,a0
    80001144:	00060993          	mv	s3,a2
    80001148:	00068913          	mv	s2,a3
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
        context({(uint64)&threadWrapper,
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
                }),
        timeSlice(timeSlice),
        finished(false)
    8000114c:	00b53023          	sd	a1,0(a0)
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    80001150:	06058c63          	beqz	a1,800011c8 <_ZN7_threadC1EPFvPvEmS0_+0xa4>
    80001154:	00008537          	lui	a0,0x8
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	66c080e7          	jalr	1644(ra) # 800017c4 <_Znam>
        finished(false)
    80001160:	00a4b423          	sd	a0,8(s1)
    80001164:	00000797          	auipc	a5,0x0
    80001168:	0c878793          	addi	a5,a5,200 # 8000122c <_ZN7_thread13threadWrapperEv>
    8000116c:	00f4b823          	sd	a5,16(s1)
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001170:	06050063          	beqz	a0,800011d0 <_ZN7_threadC1EPFvPvEmS0_+0xac>
    80001174:	000087b7          	lui	a5,0x8
    80001178:	00f50533          	add	a0,a0,a5
        finished(false)
    8000117c:	00a4bc23          	sd	a0,24(s1)
    80001180:	0334b023          	sd	s3,32(s1)
    80001184:	02048423          	sb	zero,40(s1)
{
    status = Status::NEW;
    80001188:	00100793          	li	a5,1
    8000118c:	04f4a023          	sw	a5,64(s1)
    id = globalId++;
    80001190:	00004717          	auipc	a4,0x4
    80001194:	7b070713          	addi	a4,a4,1968 # 80005940 <_ZN7_thread8globalIdE>
    80001198:	00073783          	ld	a5,0(a4)
    8000119c:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    800011a0:	00d73023          	sd	a3,0(a4)
    800011a4:	02f4bc23          	sd	a5,56(s1)
    this->arg=arg;
    800011a8:	0324b823          	sd	s2,48(s1)
}
    800011ac:	02813083          	ld	ra,40(sp)
    800011b0:	02013403          	ld	s0,32(sp)
    800011b4:	01813483          	ld	s1,24(sp)
    800011b8:	01013903          	ld	s2,16(sp)
    800011bc:	00813983          	ld	s3,8(sp)
    800011c0:	03010113          	addi	sp,sp,48
    800011c4:	00008067          	ret
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    800011c8:	00000513          	li	a0,0
    800011cc:	f95ff06f          	j	80001160 <_ZN7_threadC1EPFvPvEmS0_+0x3c>
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    800011d0:	00000513          	li	a0,0
    800011d4:	fa9ff06f          	j	8000117c <_ZN7_threadC1EPFvPvEmS0_+0x58>

00000000800011d8 <_ZN7_thread5startEv>:

void _thread::start() {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00113423          	sd	ra,8(sp)
    800011e0:	00813023          	sd	s0,0(sp)
    800011e4:	01010413          	addi	s0,sp,16
//    if(status==Status::FINISHED)return;
//    if(status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    status=Status::READY;
    Scheduler::put(this);
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	514080e7          	jalr	1300(ra) # 800016fc <_ZN9Scheduler3putEP7_thread>
}
    800011f0:	00813083          	ld	ra,8(sp)
    800011f4:	00013403          	ld	s0,0(sp)
    800011f8:	01010113          	addi	sp,sp,16
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
    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    80001240:	00001097          	auipc	ra,0x1
    80001244:	96c080e7          	jalr	-1684(ra) # 80001bac <_ZN5Riscv10popSppSpieEv>
    running->body(&running->arg);   //call the function with argument arg
    80001248:	00004497          	auipc	s1,0x4
    8000124c:	6f848493          	addi	s1,s1,1784 # 80005940 <_ZN7_thread8globalIdE>
    80001250:	0084b503          	ld	a0,8(s1)
    80001254:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80001258:	03050513          	addi	a0,a0,48
    8000125c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001260:	0084b783          	ld	a5,8(s1)
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001264:	00100713          	li	a4,1
    80001268:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	f94080e7          	jalr	-108(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001274:	01813083          	ld	ra,24(sp)
    80001278:	01013403          	ld	s0,16(sp)
    8000127c:	00813483          	ld	s1,8(sp)
    80001280:	02010113          	addi	sp,sp,32
    80001284:	00008067          	ret

0000000080001288 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001288:	fe010113          	addi	sp,sp,-32
    8000128c:	00113c23          	sd	ra,24(sp)
    80001290:	00813823          	sd	s0,16(sp)
    80001294:	00913423          	sd	s1,8(sp)
    80001298:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000129c:	00004497          	auipc	s1,0x4
    800012a0:	6ac4b483          	ld	s1,1708(s1) # 80005948 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    800012a4:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a8:	02078c63          	beqz	a5,800012e0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	3e8080e7          	jalr	1000(ra) # 80001694 <_ZN9Scheduler3getEv>
    800012b4:	00004797          	auipc	a5,0x4
    800012b8:	68a7ba23          	sd	a0,1684(a5) # 80005948 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    800012bc:	01050593          	addi	a1,a0,16
    800012c0:	01048513          	addi	a0,s1,16
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	e4c080e7          	jalr	-436(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012cc:	01813083          	ld	ra,24(sp)
    800012d0:	01013403          	ld	s0,16(sp)
    800012d4:	00813483          	ld	s1,8(sp)
    800012d8:	02010113          	addi	sp,sp,32
    800012dc:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012e0:	00048513          	mv	a0,s1
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	418080e7          	jalr	1048(ra) # 800016fc <_ZN9Scheduler3putEP7_thread>
    800012ec:	fc1ff06f          	j	800012ac <_ZN7_thread8dispatchEv+0x24>

00000000800012f0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001300:	00001097          	auipc	ra,0x1
    80001304:	96c080e7          	jalr	-1684(ra) # 80001c6c <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001328:	00001097          	auipc	ra,0x1
    8000132c:	944080e7          	jalr	-1724(ra) # 80001c6c <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001350:	00001097          	auipc	ra,0x1
    80001354:	944080e7          	jalr	-1724(ra) # 80001c94 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_ZN7_thread12createThreadEPFvPvES0_>:
_thread* _thread::createThread(Body body, void* arg) {
    80001368:	fd010113          	addi	sp,sp,-48
    8000136c:	02113423          	sd	ra,40(sp)
    80001370:	02813023          	sd	s0,32(sp)
    80001374:	00913c23          	sd	s1,24(sp)
    80001378:	01213823          	sd	s2,16(sp)
    8000137c:	01313423          	sd	s3,8(sp)
    80001380:	03010413          	addi	s0,sp,48
    80001384:	00050913          	mv	s2,a0
    80001388:	00058993          	mv	s3,a1
    return new _thread(body, DEFAULT_TIME_SLICE, arg);
    8000138c:	04800513          	li	a0,72
    80001390:	00000097          	auipc	ra,0x0
    80001394:	f60080e7          	jalr	-160(ra) # 800012f0 <_ZN7_threadnwEm>
    80001398:	00050493          	mv	s1,a0
    8000139c:	00098693          	mv	a3,s3
    800013a0:	00200613          	li	a2,2
    800013a4:	00090593          	mv	a1,s2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	d7c080e7          	jalr	-644(ra) # 80001124 <_ZN7_threadC1EPFvPvEmS0_>
    800013b0:	0200006f          	j	800013d0 <_ZN7_thread12createThreadEPFvPvES0_+0x68>
    800013b4:	00050913          	mv	s2,a0
    800013b8:	00048513          	mv	a0,s1
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	f84080e7          	jalr	-124(ra) # 80001340 <_ZN7_threaddlEPv>
    800013c4:	00090513          	mv	a0,s2
    800013c8:	00005097          	auipc	ra,0x5
    800013cc:	670080e7          	jalr	1648(ra) # 80006a38 <_Unwind_Resume>
}
    800013d0:	00048513          	mv	a0,s1
    800013d4:	02813083          	ld	ra,40(sp)
    800013d8:	02013403          	ld	s0,32(sp)
    800013dc:	01813483          	ld	s1,24(sp)
    800013e0:	01013903          	ld	s2,16(sp)
    800013e4:	00813983          	ld	s3,8(sp)
    800013e8:	03010113          	addi	sp,sp,48
    800013ec:	00008067          	ret

00000000800013f0 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00113423          	sd	ra,8(sp)
    800013f8:	00813023          	sd	s0,0(sp)
    800013fc:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001400:	00001097          	auipc	ra,0x1
    80001404:	894080e7          	jalr	-1900(ra) # 80001c94 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00813423          	sd	s0,8(sp)
    80001420:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001424:	00053603          	ld	a2,0(a0)
    uint64 arg1 = arg->a1;
    80001428:	00853683          	ld	a3,8(a0)
    uint64 arg2 = arg->a2;
    8000142c:	01053703          	ld	a4,16(a0)
    uint64 arg3 = arg->a3;
    80001430:	01853783          	ld	a5,24(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001434:	00060513          	mv	a0,a2
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001438:	00068593          	mv	a1,a3
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    8000143c:	00070613          	mv	a2,a4
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001440:	00078693          	mv	a3,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001444:	00000073          	ecall


}
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001454:	fd010113          	addi	sp,sp,-48
    80001458:	02113423          	sd	ra,40(sp)
    8000145c:	02813023          	sd	s0,32(sp)
    80001460:	03010413          	addi	s0,sp,48
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    80001464:	00100793          	li	a5,1
    80001468:	fcf43823          	sd	a5,-48(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    8000146c:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001470:	03f57513          	andi	a0,a0,63
    80001474:	00050463          	beqz	a0,8000147c <_Z9mem_allocm+0x28>
    80001478:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    8000147c:	fcf43c23          	sd	a5,-40(s0)

    syscall(&arg);
    80001480:	fd040513          	addi	a0,s0,-48
    80001484:	00000097          	auipc	ra,0x0
    80001488:	f94080e7          	jalr	-108(ra) # 80001418 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000148c:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001490:	02813083          	ld	ra,40(sp)
    80001494:	02013403          	ld	s0,32(sp)
    80001498:	03010113          	addi	sp,sp,48
    8000149c:	00008067          	ret

00000000800014a0 <_Z8mem_freePv>:

int mem_free (void* p){
    800014a0:	fd010113          	addi	sp,sp,-48
    800014a4:	02113423          	sd	ra,40(sp)
    800014a8:	02813023          	sd	s0,32(sp)
    800014ac:	03010413          	addi	s0,sp,48
    args arg;
    arg.a0=0x02;
    800014b0:	00200793          	li	a5,2
    800014b4:	fcf43823          	sd	a5,-48(s0)
    arg.a1=(uint64)p;
    800014b8:	fca43c23          	sd	a0,-40(s0)

    syscall(&arg);
    800014bc:	fd040513          	addi	a0,s0,-48
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	f58080e7          	jalr	-168(ra) # 80001418 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014c8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	02813083          	ld	ra,40(sp)
    800014d4:	02013403          	ld	s0,32(sp)
    800014d8:	03010113          	addi	sp,sp,48
    800014dc:	00008067          	ret

00000000800014e0 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014e0:	fd010113          	addi	sp,sp,-48
    800014e4:	02113423          	sd	ra,40(sp)
    800014e8:	02813023          	sd	s0,32(sp)
    800014ec:	03010413          	addi	s0,sp,48
    args myArgs;
    myArgs.a0=0x11;
    800014f0:	01100793          	li	a5,17
    800014f4:	fcf43823          	sd	a5,-48(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    800014f8:	fca43c23          	sd	a0,-40(s0)
    myArgs.a2=(uint64)start_routine;
    800014fc:	feb43023          	sd	a1,-32(s0)
    myArgs.a3=(uint64)arg;
    80001500:	fec43423          	sd	a2,-24(s0)

    syscall(&myArgs);
    80001504:	fd040513          	addi	a0,s0,-48
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	f10080e7          	jalr	-240(ra) # 80001418 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001510:	00050793          	mv	a5,a0
    if((thread_t*)ret != nullptr){
    80001514:	00078c63          	beqz	a5,8000152c <_Z13thread_createPP7_threadPFvPvES2_+0x4c>
        handle = (thread_t*)&ret;
        return 0;
    80001518:	00000513          	li	a0,0
    }
    else{
        return -1;
    }
    return (int)ret;
}
    8000151c:	02813083          	ld	ra,40(sp)
    80001520:	02013403          	ld	s0,32(sp)
    80001524:	03010113          	addi	sp,sp,48
    80001528:	00008067          	ret
        return -1;
    8000152c:	fff00513          	li	a0,-1
    80001530:	fedff06f          	j	8000151c <_Z13thread_createPP7_threadPFvPvES2_+0x3c>

0000000080001534 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    80001534:	fd010113          	addi	sp,sp,-48
    80001538:	02113423          	sd	ra,40(sp)
    8000153c:	02813023          	sd	s0,32(sp)
    80001540:	03010413          	addi	s0,sp,48

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001544:	00004797          	auipc	a5,0x4
    80001548:	3847b783          	ld	a5,900(a5) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000154c:	10579073          	csrw	stvec,a5
//        printString("not freed \n");
//    }

    _thread* threads[3];
    _thread* ptr;
    if(!thread_create(&ptr, nullptr, nullptr)){
    80001550:	00000613          	li	a2,0
    80001554:	00000593          	li	a1,0
    80001558:	fd040513          	addi	a0,s0,-48
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	f84080e7          	jalr	-124(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    80001564:	0a051a63          	bnez	a0,80001618 <main+0xe4>
        printString("main created \n");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	a9850513          	addi	a0,a0,-1384 # 80005000 <kvmincrease+0xe10>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	74c080e7          	jalr	1868(ra) # 80001cbc <_Z11printStringPKc>
    } else{
        printString("error main\n");

    }
    int x=2;
    printInteger(x);
    80001578:	00200513          	li	a0,2
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	7b0080e7          	jalr	1968(ra) # 80001d2c <_Z12printIntegerm>

    _thread::running=ptr;
    80001584:	fd043503          	ld	a0,-48(s0)
    80001588:	00004797          	auipc	a5,0x4
    8000158c:	3387b783          	ld	a5,824(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001590:	00a7b023          	sd	a0,0(a5)
    ptr->start();
    80001594:	00000097          	auipc	ra,0x0
    80001598:	c44080e7          	jalr	-956(ra) # 800011d8 <_ZN7_thread5startEv>
    //doesnt load thread adress to handle!!!

    if(!thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr)){
    8000159c:	00000613          	li	a2,0
    800015a0:	00004597          	auipc	a1,0x4
    800015a4:	3385b583          	ld	a1,824(a1) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015a8:	fe040513          	addi	a0,s0,-32
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	f34080e7          	jalr	-204(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    800015b4:	06051c63          	bnez	a0,8000162c <main+0xf8>
        printString("thread created \n");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	a6850513          	addi	a0,a0,-1432 # 80005020 <kvmincrease+0xe30>
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	6fc080e7          	jalr	1788(ra) # 80001cbc <_Z11printStringPKc>

    } else{
        printString("error worker a\n");
    }

    threads[1]->start();
    800015c8:	fe043503          	ld	a0,-32(s0)
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	c0c080e7          	jalr	-1012(ra) # 800011d8 <_ZN7_thread5startEv>

    if(!thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr)){
    800015d4:	00000613          	li	a2,0
    800015d8:	00004597          	auipc	a1,0x4
    800015dc:	2f85b583          	ld	a1,760(a1) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015e0:	fe840513          	addi	a0,s0,-24
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	efc080e7          	jalr	-260(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    800015ec:	04051a63          	bnez	a0,80001640 <main+0x10c>
        printString("thread created \n");
    800015f0:	00004517          	auipc	a0,0x4
    800015f4:	a3050513          	addi	a0,a0,-1488 # 80005020 <kvmincrease+0xe30>
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	6c4080e7          	jalr	1732(ra) # 80001cbc <_Z11printStringPKc>

    } else{
        printString("error worker a\n");

    }
    threads[2]->start();
    80001600:	fe843503          	ld	a0,-24(s0)
    80001604:	00000097          	auipc	ra,0x0
    80001608:	bd4080e7          	jalr	-1068(ra) # 800011d8 <_ZN7_thread5startEv>

    while (true)
    {
        _thread::yield();   //u uposlenom cekanju radimo yield
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	bf4080e7          	jalr	-1036(ra) # 80001200 <_ZN7_thread5yieldEv>
    80001614:	ff9ff06f          	j	8000160c <main+0xd8>
        printString("error main\n");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	9f850513          	addi	a0,a0,-1544 # 80005010 <kvmincrease+0xe20>
    80001620:	00000097          	auipc	ra,0x0
    80001624:	69c080e7          	jalr	1692(ra) # 80001cbc <_Z11printStringPKc>
    80001628:	f51ff06f          	j	80001578 <main+0x44>
        printString("error worker a\n");
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	a0c50513          	addi	a0,a0,-1524 # 80005038 <kvmincrease+0xe48>
    80001634:	00000097          	auipc	ra,0x0
    80001638:	688080e7          	jalr	1672(ra) # 80001cbc <_Z11printStringPKc>
    8000163c:	f8dff06f          	j	800015c8 <main+0x94>
        printString("error worker a\n");
    80001640:	00004517          	auipc	a0,0x4
    80001644:	9f850513          	addi	a0,a0,-1544 # 80005038 <kvmincrease+0xe48>
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	674080e7          	jalr	1652(ra) # 80001cbc <_Z11printStringPKc>
    80001650:	fb1ff06f          	j	80001600 <main+0xcc>

0000000080001654 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    80001660:	00100793          	li	a5,1
    80001664:	00f50863          	beq	a0,a5,80001674 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret
    80001674:	000107b7          	lui	a5,0x10
    80001678:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000167c:	fef596e3          	bne	a1,a5,80001668 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001680:	00004797          	auipc	a5,0x4
    80001684:	2d878793          	addi	a5,a5,728 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    80001688:	0007b023          	sd	zero,0(a5)
    8000168c:	0007b423          	sd	zero,8(a5)
    80001690:	fd9ff06f          	j	80001668 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001694 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001694:	fe010113          	addi	sp,sp,-32
    80001698:	00113c23          	sd	ra,24(sp)
    8000169c:	00813823          	sd	s0,16(sp)
    800016a0:	00913423          	sd	s1,8(sp)
    800016a4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	2b053503          	ld	a0,688(a0) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    800016b0:	04050263          	beqz	a0,800016f4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800016b4:	00853783          	ld	a5,8(a0)
    800016b8:	00004717          	auipc	a4,0x4
    800016bc:	2af73023          	sd	a5,672(a4) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800016c0:	02078463          	beqz	a5,800016e8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800016c4:	00053483          	ld	s1,0(a0)
        delete elem;
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	124080e7          	jalr	292(ra) # 800017ec <_ZdlPv>
}
    800016d0:	00048513          	mv	a0,s1
    800016d4:	01813083          	ld	ra,24(sp)
    800016d8:	01013403          	ld	s0,16(sp)
    800016dc:	00813483          	ld	s1,8(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret
        if (!head) { tail = 0; }
    800016e8:	00004797          	auipc	a5,0x4
    800016ec:	2607bc23          	sd	zero,632(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800016f0:	fd5ff06f          	j	800016c4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800016f4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800016f8:	fd9ff06f          	j	800016d0 <_ZN9Scheduler3getEv+0x3c>

00000000800016fc <_ZN9Scheduler3putEP7_thread>:
{
    800016fc:	fe010113          	addi	sp,sp,-32
    80001700:	00113c23          	sd	ra,24(sp)
    80001704:	00813823          	sd	s0,16(sp)
    80001708:	00913423          	sd	s1,8(sp)
    8000170c:	02010413          	addi	s0,sp,32
    80001710:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001714:	01000513          	li	a0,16
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	084080e7          	jalr	132(ra) # 8000179c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001720:	00953023          	sd	s1,0(a0)
    80001724:	00053423          	sd	zero,8(a0)
        if (tail)
    80001728:	00004797          	auipc	a5,0x4
    8000172c:	2387b783          	ld	a5,568(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001730:	02078263          	beqz	a5,80001754 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001734:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001738:	00004797          	auipc	a5,0x4
    8000173c:	22a7b423          	sd	a0,552(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001740:	01813083          	ld	ra,24(sp)
    80001744:	01013403          	ld	s0,16(sp)
    80001748:	00813483          	ld	s1,8(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret
            head = tail = elem;
    80001754:	00004797          	auipc	a5,0x4
    80001758:	20478793          	addi	a5,a5,516 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    8000175c:	00a7b423          	sd	a0,8(a5)
    80001760:	00a7b023          	sd	a0,0(a5)
    80001764:	fddff06f          	j	80001740 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001768 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00113423          	sd	ra,8(sp)
    80001770:	00813023          	sd	s0,0(sp)
    80001774:	01010413          	addi	s0,sp,16
    80001778:	000105b7          	lui	a1,0x10
    8000177c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001780:	00100513          	li	a0,1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	ed0080e7          	jalr	-304(ra) # 80001654 <_Z41__static_initialization_and_destruction_0ii>
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	ca8080e7          	jalr	-856(ra) # 80001454 <_Z9mem_allocm>
}
    800017b4:	00813083          	ld	ra,8(sp)
    800017b8:	00013403          	ld	s0,0(sp)
    800017bc:	01010113          	addi	sp,sp,16
    800017c0:	00008067          	ret

00000000800017c4 <_Znam>:

void* operator new[](size_t n){
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	c80080e7          	jalr	-896(ra) # 80001454 <_Z9mem_allocm>
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_ZdlPv>:

void operator delete(void* p) noexcept{
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	00813023          	sd	s0,0(sp)
    800017f8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	ca4080e7          	jalr	-860(ra) # 800014a0 <_Z8mem_freePv>
}
    80001804:	00813083          	ld	ra,8(sp)
    80001808:	00013403          	ld	s0,0(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001824:	00000097          	auipc	ra,0x0
    80001828:	c7c080e7          	jalr	-900(ra) # 800014a0 <_Z8mem_freePv>

}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret

000000008000183c <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	01213023          	sd	s2,0(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001858:	00100793          	li	a5,1
    8000185c:	02a7f663          	bgeu	a5,a0,80001888 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    80001860:	00357793          	andi	a5,a0,3
    80001864:	02078e63          	beqz	a5,800018a0 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001868:	fff48513          	addi	a0,s1,-1
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	fd0080e7          	jalr	-48(ra) # 8000183c <_ZL9fibonaccim>
    80001874:	00050913          	mv	s2,a0
    80001878:	ffe48513          	addi	a0,s1,-2
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	fc0080e7          	jalr	-64(ra) # 8000183c <_ZL9fibonaccim>
    80001884:	00a90533          	add	a0,s2,a0
}
    80001888:	01813083          	ld	ra,24(sp)
    8000188c:	01013403          	ld	s0,16(sp)
    80001890:	00813483          	ld	s1,8(sp)
    80001894:	00013903          	ld	s2,0(sp)
    80001898:	02010113          	addi	sp,sp,32
    8000189c:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	960080e7          	jalr	-1696(ra) # 80001200 <_ZN7_thread5yieldEv>
    800018a8:	fc1ff06f          	j	80001868 <_ZL9fibonaccim+0x2c>

00000000800018ac <_Z11workerBodyAv>:

void workerBodyA()
{
    800018ac:	fe010113          	addi	sp,sp,-32
    800018b0:	00113c23          	sd	ra,24(sp)
    800018b4:	00813823          	sd	s0,16(sp)
    800018b8:	00913423          	sd	s1,8(sp)
    800018bc:	01213023          	sd	s2,0(sp)
    800018c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018c4:	00000493          	li	s1,0
    800018c8:	0380006f          	j	80001900 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018cc:	00003517          	auipc	a0,0x3
    800018d0:	77c50513          	addi	a0,a0,1916 # 80005048 <kvmincrease+0xe58>
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	3e8080e7          	jalr	1000(ra) # 80001cbc <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	44c080e7          	jalr	1100(ra) # 80001d2c <_Z12printIntegerm>
        printString("\n");
    800018e8:	00003517          	auipc	a0,0x3
    800018ec:	77050513          	addi	a0,a0,1904 # 80005058 <kvmincrease+0xe68>
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	3cc080e7          	jalr	972(ra) # 80001cbc <_Z11printStringPKc>
    for (; i < 3; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00200793          	li	a5,2
    80001904:	fc97f4e3          	bgeu	a5,s1,800018cc <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	74850513          	addi	a0,a0,1864 # 80005050 <kvmincrease+0xe60>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	3ac080e7          	jalr	940(ra) # 80001cbc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001918:	00700313          	li	t1,7
    _thread::yield();
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	8e4080e7          	jalr	-1820(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001924:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	73850513          	addi	a0,a0,1848 # 80005060 <kvmincrease+0xe70>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	38c080e7          	jalr	908(ra) # 80001cbc <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	3f0080e7          	jalr	1008(ra) # 80001d2c <_Z12printIntegerm>
    printString("\n");
    80001944:	00003517          	auipc	a0,0x3
    80001948:	71450513          	addi	a0,a0,1812 # 80005058 <kvmincrease+0xe68>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	370080e7          	jalr	880(ra) # 80001cbc <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	70450513          	addi	a0,a0,1796 # 80005068 <kvmincrease+0xe78>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	350080e7          	jalr	848(ra) # 80001cbc <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	3b4080e7          	jalr	948(ra) # 80001d2c <_Z12printIntegerm>
    printString("\n");
    80001980:	00003517          	auipc	a0,0x3
    80001984:	6d850513          	addi	a0,a0,1752 # 80005058 <kvmincrease+0xe68>
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	334080e7          	jalr	820(ra) # 80001cbc <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	6b450513          	addi	a0,a0,1716 # 80005048 <kvmincrease+0xe58>
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	320080e7          	jalr	800(ra) # 80001cbc <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	384080e7          	jalr	900(ra) # 80001d2c <_Z12printIntegerm>
        printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	6a850513          	addi	a0,a0,1704 # 80005058 <kvmincrease+0xe68>
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	304080e7          	jalr	772(ra) # 80001cbc <_Z11printStringPKc>
    for (; i < 6; i++)
    800019c0:	0014849b          	addiw	s1,s1,1
    800019c4:	0ff4f493          	andi	s1,s1,255
    800019c8:	00500793          	li	a5,5
    800019cc:	fc97f4e3          	bgeu	a5,s1,80001994 <_Z11workerBodyAv+0xe8>
    }

    _thread::running->setFinished(true);
    800019d0:	00004797          	auipc	a5,0x4
    800019d4:	ef07b783          	ld	a5,-272(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019d8:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800019dc:	00100713          	li	a4,1
    800019e0:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	81c080e7          	jalr	-2020(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	00013903          	ld	s2,0(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret

0000000080001a04 <_Z11workerBodyBv>:

void workerBodyB()
{
    80001a04:	fe010113          	addi	sp,sp,-32
    80001a08:	00113c23          	sd	ra,24(sp)
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00913423          	sd	s1,8(sp)
    80001a14:	01213023          	sd	s2,0(sp)
    80001a18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a1c:	00a00493          	li	s1,10
    80001a20:	0380006f          	j	80001a58 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a24:	00003517          	auipc	a0,0x3
    80001a28:	65450513          	addi	a0,a0,1620 # 80005078 <kvmincrease+0xe88>
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	290080e7          	jalr	656(ra) # 80001cbc <_Z11printStringPKc>
        printInteger(i);
    80001a34:	00048513          	mv	a0,s1
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	2f4080e7          	jalr	756(ra) # 80001d2c <_Z12printIntegerm>
        printString("\n");
    80001a40:	00003517          	auipc	a0,0x3
    80001a44:	61850513          	addi	a0,a0,1560 # 80005058 <kvmincrease+0xe68>
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	274080e7          	jalr	628(ra) # 80001cbc <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a50:	0014849b          	addiw	s1,s1,1
    80001a54:	0ff4f493          	andi	s1,s1,255
    80001a58:	00c00793          	li	a5,12
    80001a5c:	fc97f4e3          	bgeu	a5,s1,80001a24 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    80001a60:	00003517          	auipc	a0,0x3
    80001a64:	62050513          	addi	a0,a0,1568 # 80005080 <kvmincrease+0xe90>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	254080e7          	jalr	596(ra) # 80001cbc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a70:	00500313          	li	t1,5
    _thread::yield();
    80001a74:	fffff097          	auipc	ra,0xfffff
    80001a78:	78c080e7          	jalr	1932(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001a7c:	01700513          	li	a0,23
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	dbc080e7          	jalr	-580(ra) # 8000183c <_ZL9fibonaccim>
    80001a88:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001a8c:	00003517          	auipc	a0,0x3
    80001a90:	5dc50513          	addi	a0,a0,1500 # 80005068 <kvmincrease+0xe78>
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	228080e7          	jalr	552(ra) # 80001cbc <_Z11printStringPKc>
    printInteger(result);
    80001a9c:	00090513          	mv	a0,s2
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	28c080e7          	jalr	652(ra) # 80001d2c <_Z12printIntegerm>
    printString("\n");
    80001aa8:	00003517          	auipc	a0,0x3
    80001aac:	5b050513          	addi	a0,a0,1456 # 80005058 <kvmincrease+0xe68>
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	20c080e7          	jalr	524(ra) # 80001cbc <_Z11printStringPKc>
    80001ab8:	0380006f          	j	80001af0 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001abc:	00003517          	auipc	a0,0x3
    80001ac0:	5bc50513          	addi	a0,a0,1468 # 80005078 <kvmincrease+0xe88>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	1f8080e7          	jalr	504(ra) # 80001cbc <_Z11printStringPKc>
        printInteger(i);
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	25c080e7          	jalr	604(ra) # 80001d2c <_Z12printIntegerm>
        printString("\n");
    80001ad8:	00003517          	auipc	a0,0x3
    80001adc:	58050513          	addi	a0,a0,1408 # 80005058 <kvmincrease+0xe68>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	1dc080e7          	jalr	476(ra) # 80001cbc <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ae8:	0014849b          	addiw	s1,s1,1
    80001aec:	0ff4f493          	andi	s1,s1,255
    80001af0:	00f00793          	li	a5,15
    80001af4:	fc97f4e3          	bgeu	a5,s1,80001abc <_Z11workerBodyBv+0xb8>
    }

    _thread::running->setFinished(true);
    80001af8:	00004797          	auipc	a5,0x4
    80001afc:	dc87b783          	ld	a5,-568(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b00:	0007b783          	ld	a5,0(a5)
    80001b04:	00100713          	li	a4,1
    80001b08:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b0c:	fffff097          	auipc	ra,0xfffff
    80001b10:	6f4080e7          	jalr	1780(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001b14:	01813083          	ld	ra,24(sp)
    80001b18:	01013403          	ld	s0,16(sp)
    80001b1c:	00813483          	ld	s1,8(sp)
    80001b20:	00013903          	ld	s2,0(sp)
    80001b24:	02010113          	addi	sp,sp,32
    80001b28:	00008067          	ret

0000000080001b2c <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b3c:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b40:	00100713          	li	a4,1
    80001b44:	02e78263          	beq	a5,a4,80001b68 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001b48:	00200713          	li	a4,2
    80001b4c:	02e78863          	beq	a5,a4,80001b7c <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001b50:	01100713          	li	a4,17
    80001b54:	02e78e63          	beq	a5,a4,80001b90 <_ZN5Riscv14syscallHandlerEv+0x64>



    }

}
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001b68:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	100080e7          	jalr	256(ra) # 80001c6c <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b74:	00050513          	mv	a0,a0
    80001b78:	fe1ff06f          	j	80001b58 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001b7c:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	114080e7          	jalr	276(ra) # 80001c94 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b88:	00050513          	mv	a0,a0
    80001b8c:	fcdff06f          	j	80001b58 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001b90:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001b94:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001b98:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	7cc080e7          	jalr	1996(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001ba4:	00050513          	mv	a0,a0
}
    80001ba8:	fb1ff06f          	j	80001b58 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001bac <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813423          	sd	s0,8(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001bb8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001bbc:	10200073          	sret
}
    80001bc0:	00813403          	ld	s0,8(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001bcc:	fc010113          	addi	sp,sp,-64
    80001bd0:	02113c23          	sd	ra,56(sp)
    80001bd4:	02813823          	sd	s0,48(sp)
    80001bd8:	02913423          	sd	s1,40(sp)
    80001bdc:	03213023          	sd	s2,32(sp)
    80001be0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001be4:	142027f3          	csrr	a5,scause
    80001be8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001bec:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001bf0:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001bf4:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001bf8:	ff87879b          	addiw	a5,a5,-8
    80001bfc:	00100713          	li	a4,1
    80001c00:	00f77e63          	bgeu	a4,a5,80001c1c <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001c04:	03813083          	ld	ra,56(sp)
    80001c08:	03013403          	ld	s0,48(sp)
    80001c0c:	02813483          	ld	s1,40(sp)
    80001c10:	02013903          	ld	s2,32(sp)
    80001c14:	04010113          	addi	sp,sp,64
    80001c18:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c1c:	141027f3          	csrr	a5,sepc
    80001c20:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c24:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001c28:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c2c:	100027f3          	csrr	a5,sstatus
    80001c30:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001c34:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001c38:	00400793          	li	a5,4
    80001c3c:	00f68c63          	beq	a3,a5,80001c54 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	eec080e7          	jalr	-276(ra) # 80001b2c <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c48:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c4c:	14149073          	csrw	sepc,s1
}
    80001c50:	fb5ff06f          	j	80001c04 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    80001c54:	00004797          	auipc	a5,0x4
    80001c58:	c947b783          	ld	a5,-876(a5) # 800058e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c5c:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	628080e7          	jalr	1576(ra) # 80001288 <_ZN7_thread8dispatchEv>
    80001c68:	fe1ff06f          	j	80001c48 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

0000000080001c6c <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00113423          	sd	ra,8(sp)
    80001c74:	00813023          	sd	s0,0(sp)
    80001c78:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001c7c:	00002097          	auipc	ra,0x2
    80001c80:	2fc080e7          	jalr	764(ra) # 80003f78 <__mem_alloc>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001ca4:	00002097          	auipc	ra,0x2
    80001ca8:	208080e7          	jalr	520(ra) # 80003eac <__mem_free>
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001cbc:	fd010113          	addi	sp,sp,-48
    80001cc0:	02113423          	sd	ra,40(sp)
    80001cc4:	02813023          	sd	s0,32(sp)
    80001cc8:	00913c23          	sd	s1,24(sp)
    80001ccc:	01213823          	sd	s2,16(sp)
    80001cd0:	03010413          	addi	s0,sp,48
    80001cd4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cd8:	100027f3          	csrr	a5,sstatus
    80001cdc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001ce0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ce4:	00200793          	li	a5,2
    80001ce8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001cec:	0004c503          	lbu	a0,0(s1)
    80001cf0:	00050a63          	beqz	a0,80001d04 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001cf4:	00002097          	auipc	ra,0x2
    80001cf8:	3dc080e7          	jalr	988(ra) # 800040d0 <__putc>
        string++;
    80001cfc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d00:	fedff06f          	j	80001cec <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001d04:	0009091b          	sext.w	s2,s2
    80001d08:	00297913          	andi	s2,s2,2
    80001d0c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d10:	10092073          	csrs	sstatus,s2
}
    80001d14:	02813083          	ld	ra,40(sp)
    80001d18:	02013403          	ld	s0,32(sp)
    80001d1c:	01813483          	ld	s1,24(sp)
    80001d20:	01013903          	ld	s2,16(sp)
    80001d24:	03010113          	addi	sp,sp,48
    80001d28:	00008067          	ret

0000000080001d2c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001d2c:	fc010113          	addi	sp,sp,-64
    80001d30:	02113c23          	sd	ra,56(sp)
    80001d34:	02813823          	sd	s0,48(sp)
    80001d38:	02913423          	sd	s1,40(sp)
    80001d3c:	03213023          	sd	s2,32(sp)
    80001d40:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d44:	100027f3          	csrr	a5,sstatus
    80001d48:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d4c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d50:	00200793          	li	a5,2
    80001d54:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d58:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d5c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d60:	00a00613          	li	a2,10
    80001d64:	02c5773b          	remuw	a4,a0,a2
    80001d68:	02071693          	slli	a3,a4,0x20
    80001d6c:	0206d693          	srli	a3,a3,0x20
    80001d70:	00003717          	auipc	a4,0x3
    80001d74:	32070713          	addi	a4,a4,800 # 80005090 <_ZZ12printIntegermE6digits>
    80001d78:	00d70733          	add	a4,a4,a3
    80001d7c:	00074703          	lbu	a4,0(a4)
    80001d80:	fe040693          	addi	a3,s0,-32
    80001d84:	009687b3          	add	a5,a3,s1
    80001d88:	0014849b          	addiw	s1,s1,1
    80001d8c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d90:	0005071b          	sext.w	a4,a0
    80001d94:	02c5553b          	divuw	a0,a0,a2
    80001d98:	00900793          	li	a5,9
    80001d9c:	fce7e2e3          	bltu	a5,a4,80001d60 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001da0:	fff4849b          	addiw	s1,s1,-1
    80001da4:	0004ce63          	bltz	s1,80001dc0 <_Z12printIntegerm+0x94>
    80001da8:	fe040793          	addi	a5,s0,-32
    80001dac:	009787b3          	add	a5,a5,s1
    80001db0:	ff07c503          	lbu	a0,-16(a5)
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	31c080e7          	jalr	796(ra) # 800040d0 <__putc>
    80001dbc:	fe5ff06f          	j	80001da0 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001dc0:	0009091b          	sext.w	s2,s2
    80001dc4:	00297913          	andi	s2,s2,2
    80001dc8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001dcc:	10092073          	csrs	sstatus,s2
}
    80001dd0:	03813083          	ld	ra,56(sp)
    80001dd4:	03013403          	ld	s0,48(sp)
    80001dd8:	02813483          	ld	s1,40(sp)
    80001ddc:	02013903          	ld	s2,32(sp)
    80001de0:	04010113          	addi	sp,sp,64
    80001de4:	00008067          	ret

0000000080001de8 <start>:
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	300027f3          	csrr	a5,mstatus
    80001df8:	ffffe737          	lui	a4,0xffffe
    80001dfc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c1f>
    80001e00:	00e7f7b3          	and	a5,a5,a4
    80001e04:	00001737          	lui	a4,0x1
    80001e08:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e0c:	00e7e7b3          	or	a5,a5,a4
    80001e10:	30079073          	csrw	mstatus,a5
    80001e14:	00000797          	auipc	a5,0x0
    80001e18:	16078793          	addi	a5,a5,352 # 80001f74 <system_main>
    80001e1c:	34179073          	csrw	mepc,a5
    80001e20:	00000793          	li	a5,0
    80001e24:	18079073          	csrw	satp,a5
    80001e28:	000107b7          	lui	a5,0x10
    80001e2c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e30:	30279073          	csrw	medeleg,a5
    80001e34:	30379073          	csrw	mideleg,a5
    80001e38:	104027f3          	csrr	a5,sie
    80001e3c:	2227e793          	ori	a5,a5,546
    80001e40:	10479073          	csrw	sie,a5
    80001e44:	fff00793          	li	a5,-1
    80001e48:	00a7d793          	srli	a5,a5,0xa
    80001e4c:	3b079073          	csrw	pmpaddr0,a5
    80001e50:	00f00793          	li	a5,15
    80001e54:	3a079073          	csrw	pmpcfg0,a5
    80001e58:	f14027f3          	csrr	a5,mhartid
    80001e5c:	0200c737          	lui	a4,0x200c
    80001e60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e64:	0007869b          	sext.w	a3,a5
    80001e68:	00269713          	slli	a4,a3,0x2
    80001e6c:	000f4637          	lui	a2,0xf4
    80001e70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e74:	00d70733          	add	a4,a4,a3
    80001e78:	0037979b          	slliw	a5,a5,0x3
    80001e7c:	020046b7          	lui	a3,0x2004
    80001e80:	00d787b3          	add	a5,a5,a3
    80001e84:	00c585b3          	add	a1,a1,a2
    80001e88:	00371693          	slli	a3,a4,0x3
    80001e8c:	00004717          	auipc	a4,0x4
    80001e90:	ae470713          	addi	a4,a4,-1308 # 80005970 <timer_scratch>
    80001e94:	00b7b023          	sd	a1,0(a5)
    80001e98:	00d70733          	add	a4,a4,a3
    80001e9c:	00f73c23          	sd	a5,24(a4)
    80001ea0:	02c73023          	sd	a2,32(a4)
    80001ea4:	34071073          	csrw	mscratch,a4
    80001ea8:	00000797          	auipc	a5,0x0
    80001eac:	6e878793          	addi	a5,a5,1768 # 80002590 <timervec>
    80001eb0:	30579073          	csrw	mtvec,a5
    80001eb4:	300027f3          	csrr	a5,mstatus
    80001eb8:	0087e793          	ori	a5,a5,8
    80001ebc:	30079073          	csrw	mstatus,a5
    80001ec0:	304027f3          	csrr	a5,mie
    80001ec4:	0807e793          	ori	a5,a5,128
    80001ec8:	30479073          	csrw	mie,a5
    80001ecc:	f14027f3          	csrr	a5,mhartid
    80001ed0:	0007879b          	sext.w	a5,a5
    80001ed4:	00078213          	mv	tp,a5
    80001ed8:	30200073          	mret
    80001edc:	00813403          	ld	s0,8(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <timerinit>:
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	f14027f3          	csrr	a5,mhartid
    80001ef8:	0200c737          	lui	a4,0x200c
    80001efc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f00:	0007869b          	sext.w	a3,a5
    80001f04:	00269713          	slli	a4,a3,0x2
    80001f08:	000f4637          	lui	a2,0xf4
    80001f0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f10:	00d70733          	add	a4,a4,a3
    80001f14:	0037979b          	slliw	a5,a5,0x3
    80001f18:	020046b7          	lui	a3,0x2004
    80001f1c:	00d787b3          	add	a5,a5,a3
    80001f20:	00c585b3          	add	a1,a1,a2
    80001f24:	00371693          	slli	a3,a4,0x3
    80001f28:	00004717          	auipc	a4,0x4
    80001f2c:	a4870713          	addi	a4,a4,-1464 # 80005970 <timer_scratch>
    80001f30:	00b7b023          	sd	a1,0(a5)
    80001f34:	00d70733          	add	a4,a4,a3
    80001f38:	00f73c23          	sd	a5,24(a4)
    80001f3c:	02c73023          	sd	a2,32(a4)
    80001f40:	34071073          	csrw	mscratch,a4
    80001f44:	00000797          	auipc	a5,0x0
    80001f48:	64c78793          	addi	a5,a5,1612 # 80002590 <timervec>
    80001f4c:	30579073          	csrw	mtvec,a5
    80001f50:	300027f3          	csrr	a5,mstatus
    80001f54:	0087e793          	ori	a5,a5,8
    80001f58:	30079073          	csrw	mstatus,a5
    80001f5c:	304027f3          	csrr	a5,mie
    80001f60:	0807e793          	ori	a5,a5,128
    80001f64:	30479073          	csrw	mie,a5
    80001f68:	00813403          	ld	s0,8(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <system_main>:
    80001f74:	fe010113          	addi	sp,sp,-32
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	02010413          	addi	s0,sp,32
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	0c4080e7          	jalr	196(ra) # 8000204c <cpuid>
    80001f90:	00004497          	auipc	s1,0x4
    80001f94:	98048493          	addi	s1,s1,-1664 # 80005910 <started>
    80001f98:	02050263          	beqz	a0,80001fbc <system_main+0x48>
    80001f9c:	0004a783          	lw	a5,0(s1)
    80001fa0:	0007879b          	sext.w	a5,a5
    80001fa4:	fe078ce3          	beqz	a5,80001f9c <system_main+0x28>
    80001fa8:	0ff0000f          	fence
    80001fac:	00003517          	auipc	a0,0x3
    80001fb0:	12450513          	addi	a0,a0,292 # 800050d0 <_ZZ12printIntegermE6digits+0x40>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	a78080e7          	jalr	-1416(ra) # 80002a2c <panic>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	9cc080e7          	jalr	-1588(ra) # 80002988 <consoleinit>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	158080e7          	jalr	344(ra) # 8000311c <printfinit>
    80001fcc:	00003517          	auipc	a0,0x3
    80001fd0:	08c50513          	addi	a0,a0,140 # 80005058 <kvmincrease+0xe68>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	ab4080e7          	jalr	-1356(ra) # 80002a88 <__printf>
    80001fdc:	00003517          	auipc	a0,0x3
    80001fe0:	0c450513          	addi	a0,a0,196 # 800050a0 <_ZZ12printIntegermE6digits+0x10>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	aa4080e7          	jalr	-1372(ra) # 80002a88 <__printf>
    80001fec:	00003517          	auipc	a0,0x3
    80001ff0:	06c50513          	addi	a0,a0,108 # 80005058 <kvmincrease+0xe68>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	a94080e7          	jalr	-1388(ra) # 80002a88 <__printf>
    80001ffc:	00001097          	auipc	ra,0x1
    80002000:	4ac080e7          	jalr	1196(ra) # 800034a8 <kinit>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	148080e7          	jalr	328(ra) # 8000214c <trapinit>
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	16c080e7          	jalr	364(ra) # 80002178 <trapinithart>
    80002014:	00000097          	auipc	ra,0x0
    80002018:	5bc080e7          	jalr	1468(ra) # 800025d0 <plicinit>
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	5dc080e7          	jalr	1500(ra) # 800025f8 <plicinithart>
    80002024:	00000097          	auipc	ra,0x0
    80002028:	078080e7          	jalr	120(ra) # 8000209c <userinit>
    8000202c:	0ff0000f          	fence
    80002030:	00100793          	li	a5,1
    80002034:	00003517          	auipc	a0,0x3
    80002038:	08450513          	addi	a0,a0,132 # 800050b8 <_ZZ12printIntegermE6digits+0x28>
    8000203c:	00f4a023          	sw	a5,0(s1)
    80002040:	00001097          	auipc	ra,0x1
    80002044:	a48080e7          	jalr	-1464(ra) # 80002a88 <__printf>
    80002048:	0000006f          	j	80002048 <system_main+0xd4>

000000008000204c <cpuid>:
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	00020513          	mv	a0,tp
    8000205c:	00813403          	ld	s0,8(sp)
    80002060:	0005051b          	sext.w	a0,a0
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <mycpu>:
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	00020793          	mv	a5,tp
    8000207c:	00813403          	ld	s0,8(sp)
    80002080:	0007879b          	sext.w	a5,a5
    80002084:	00779793          	slli	a5,a5,0x7
    80002088:	00005517          	auipc	a0,0x5
    8000208c:	91850513          	addi	a0,a0,-1768 # 800069a0 <cpus>
    80002090:	00f50533          	add	a0,a0,a5
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <userinit>:
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    800020a8:	00813403          	ld	s0,8(sp)
    800020ac:	01010113          	addi	sp,sp,16
    800020b0:	fffff317          	auipc	t1,0xfffff
    800020b4:	48430067          	jr	1156(t1) # 80001534 <main>

00000000800020b8 <either_copyout>:
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813023          	sd	s0,0(sp)
    800020c0:	00113423          	sd	ra,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	02051663          	bnez	a0,800020f4 <either_copyout+0x3c>
    800020cc:	00058513          	mv	a0,a1
    800020d0:	00060593          	mv	a1,a2
    800020d4:	0006861b          	sext.w	a2,a3
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	c5c080e7          	jalr	-932(ra) # 80003d34 <__memmove>
    800020e0:	00813083          	ld	ra,8(sp)
    800020e4:	00013403          	ld	s0,0(sp)
    800020e8:	00000513          	li	a0,0
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret
    800020f4:	00003517          	auipc	a0,0x3
    800020f8:	00450513          	addi	a0,a0,4 # 800050f8 <_ZZ12printIntegermE6digits+0x68>
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	930080e7          	jalr	-1744(ra) # 80002a2c <panic>

0000000080002104 <either_copyin>:
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	00113423          	sd	ra,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    80002114:	02059463          	bnez	a1,8000213c <either_copyin+0x38>
    80002118:	00060593          	mv	a1,a2
    8000211c:	0006861b          	sext.w	a2,a3
    80002120:	00002097          	auipc	ra,0x2
    80002124:	c14080e7          	jalr	-1004(ra) # 80003d34 <__memmove>
    80002128:	00813083          	ld	ra,8(sp)
    8000212c:	00013403          	ld	s0,0(sp)
    80002130:	00000513          	li	a0,0
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret
    8000213c:	00003517          	auipc	a0,0x3
    80002140:	fe450513          	addi	a0,a0,-28 # 80005120 <_ZZ12printIntegermE6digits+0x90>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	8e8080e7          	jalr	-1816(ra) # 80002a2c <panic>

000000008000214c <trapinit>:
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	00003597          	auipc	a1,0x3
    80002160:	fec58593          	addi	a1,a1,-20 # 80005148 <_ZZ12printIntegermE6digits+0xb8>
    80002164:	00005517          	auipc	a0,0x5
    80002168:	8bc50513          	addi	a0,a0,-1860 # 80006a20 <tickslock>
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00001317          	auipc	t1,0x1
    80002174:	5c830067          	jr	1480(t1) # 80003738 <initlock>

0000000080002178 <trapinithart>:
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	00000797          	auipc	a5,0x0
    80002188:	2fc78793          	addi	a5,a5,764 # 80002480 <kernelvec>
    8000218c:	10579073          	csrw	stvec,a5
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <usertrap>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <usertrapret>:
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00813423          	sd	s0,8(sp)
    800021bc:	01010413          	addi	s0,sp,16
    800021c0:	00813403          	ld	s0,8(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <kerneltrap>:
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	142025f3          	csrr	a1,scause
    800021e4:	100027f3          	csrr	a5,sstatus
    800021e8:	0027f793          	andi	a5,a5,2
    800021ec:	10079c63          	bnez	a5,80002304 <kerneltrap+0x138>
    800021f0:	142027f3          	csrr	a5,scause
    800021f4:	0207ce63          	bltz	a5,80002230 <kerneltrap+0x64>
    800021f8:	00003517          	auipc	a0,0x3
    800021fc:	f9850513          	addi	a0,a0,-104 # 80005190 <_ZZ12printIntegermE6digits+0x100>
    80002200:	00001097          	auipc	ra,0x1
    80002204:	888080e7          	jalr	-1912(ra) # 80002a88 <__printf>
    80002208:	141025f3          	csrr	a1,sepc
    8000220c:	14302673          	csrr	a2,stval
    80002210:	00003517          	auipc	a0,0x3
    80002214:	f9050513          	addi	a0,a0,-112 # 800051a0 <_ZZ12printIntegermE6digits+0x110>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	870080e7          	jalr	-1936(ra) # 80002a88 <__printf>
    80002220:	00003517          	auipc	a0,0x3
    80002224:	f9850513          	addi	a0,a0,-104 # 800051b8 <_ZZ12printIntegermE6digits+0x128>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	804080e7          	jalr	-2044(ra) # 80002a2c <panic>
    80002230:	0ff7f713          	andi	a4,a5,255
    80002234:	00900693          	li	a3,9
    80002238:	04d70063          	beq	a4,a3,80002278 <kerneltrap+0xac>
    8000223c:	fff00713          	li	a4,-1
    80002240:	03f71713          	slli	a4,a4,0x3f
    80002244:	00170713          	addi	a4,a4,1
    80002248:	fae798e3          	bne	a5,a4,800021f8 <kerneltrap+0x2c>
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	e00080e7          	jalr	-512(ra) # 8000204c <cpuid>
    80002254:	06050663          	beqz	a0,800022c0 <kerneltrap+0xf4>
    80002258:	144027f3          	csrr	a5,sip
    8000225c:	ffd7f793          	andi	a5,a5,-3
    80002260:	14479073          	csrw	sip,a5
    80002264:	01813083          	ld	ra,24(sp)
    80002268:	01013403          	ld	s0,16(sp)
    8000226c:	00813483          	ld	s1,8(sp)
    80002270:	02010113          	addi	sp,sp,32
    80002274:	00008067          	ret
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	3cc080e7          	jalr	972(ra) # 80002644 <plic_claim>
    80002280:	00a00793          	li	a5,10
    80002284:	00050493          	mv	s1,a0
    80002288:	06f50863          	beq	a0,a5,800022f8 <kerneltrap+0x12c>
    8000228c:	fc050ce3          	beqz	a0,80002264 <kerneltrap+0x98>
    80002290:	00050593          	mv	a1,a0
    80002294:	00003517          	auipc	a0,0x3
    80002298:	edc50513          	addi	a0,a0,-292 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	7ec080e7          	jalr	2028(ra) # 80002a88 <__printf>
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00813483          	ld	s1,8(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00000317          	auipc	t1,0x0
    800022bc:	3c430067          	jr	964(t1) # 8000267c <plic_complete>
    800022c0:	00004517          	auipc	a0,0x4
    800022c4:	76050513          	addi	a0,a0,1888 # 80006a20 <tickslock>
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	494080e7          	jalr	1172(ra) # 8000375c <acquire>
    800022d0:	00003717          	auipc	a4,0x3
    800022d4:	64470713          	addi	a4,a4,1604 # 80005914 <ticks>
    800022d8:	00072783          	lw	a5,0(a4)
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	74450513          	addi	a0,a0,1860 # 80006a20 <tickslock>
    800022e4:	0017879b          	addiw	a5,a5,1
    800022e8:	00f72023          	sw	a5,0(a4)
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	53c080e7          	jalr	1340(ra) # 80003828 <release>
    800022f4:	f65ff06f          	j	80002258 <kerneltrap+0x8c>
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	098080e7          	jalr	152(ra) # 80003390 <uartintr>
    80002300:	fa5ff06f          	j	800022a4 <kerneltrap+0xd8>
    80002304:	00003517          	auipc	a0,0x3
    80002308:	e4c50513          	addi	a0,a0,-436 # 80005150 <_ZZ12printIntegermE6digits+0xc0>
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	720080e7          	jalr	1824(ra) # 80002a2c <panic>

0000000080002314 <clockintr>:
    80002314:	fe010113          	addi	sp,sp,-32
    80002318:	00813823          	sd	s0,16(sp)
    8000231c:	00913423          	sd	s1,8(sp)
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	02010413          	addi	s0,sp,32
    80002328:	00004497          	auipc	s1,0x4
    8000232c:	6f848493          	addi	s1,s1,1784 # 80006a20 <tickslock>
    80002330:	00048513          	mv	a0,s1
    80002334:	00001097          	auipc	ra,0x1
    80002338:	428080e7          	jalr	1064(ra) # 8000375c <acquire>
    8000233c:	00003717          	auipc	a4,0x3
    80002340:	5d870713          	addi	a4,a4,1496 # 80005914 <ticks>
    80002344:	00072783          	lw	a5,0(a4)
    80002348:	01013403          	ld	s0,16(sp)
    8000234c:	01813083          	ld	ra,24(sp)
    80002350:	00048513          	mv	a0,s1
    80002354:	0017879b          	addiw	a5,a5,1
    80002358:	00813483          	ld	s1,8(sp)
    8000235c:	00f72023          	sw	a5,0(a4)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00001317          	auipc	t1,0x1
    80002368:	4c430067          	jr	1220(t1) # 80003828 <release>

000000008000236c <devintr>:
    8000236c:	142027f3          	csrr	a5,scause
    80002370:	00000513          	li	a0,0
    80002374:	0007c463          	bltz	a5,8000237c <devintr+0x10>
    80002378:	00008067          	ret
    8000237c:	fe010113          	addi	sp,sp,-32
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00913423          	sd	s1,8(sp)
    8000238c:	02010413          	addi	s0,sp,32
    80002390:	0ff7f713          	andi	a4,a5,255
    80002394:	00900693          	li	a3,9
    80002398:	04d70c63          	beq	a4,a3,800023f0 <devintr+0x84>
    8000239c:	fff00713          	li	a4,-1
    800023a0:	03f71713          	slli	a4,a4,0x3f
    800023a4:	00170713          	addi	a4,a4,1
    800023a8:	00e78c63          	beq	a5,a4,800023c0 <devintr+0x54>
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00008067          	ret
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	c8c080e7          	jalr	-884(ra) # 8000204c <cpuid>
    800023c8:	06050663          	beqz	a0,80002434 <devintr+0xc8>
    800023cc:	144027f3          	csrr	a5,sip
    800023d0:	ffd7f793          	andi	a5,a5,-3
    800023d4:	14479073          	csrw	sip,a5
    800023d8:	01813083          	ld	ra,24(sp)
    800023dc:	01013403          	ld	s0,16(sp)
    800023e0:	00813483          	ld	s1,8(sp)
    800023e4:	00200513          	li	a0,2
    800023e8:	02010113          	addi	sp,sp,32
    800023ec:	00008067          	ret
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	254080e7          	jalr	596(ra) # 80002644 <plic_claim>
    800023f8:	00a00793          	li	a5,10
    800023fc:	00050493          	mv	s1,a0
    80002400:	06f50663          	beq	a0,a5,8000246c <devintr+0x100>
    80002404:	00100513          	li	a0,1
    80002408:	fa0482e3          	beqz	s1,800023ac <devintr+0x40>
    8000240c:	00048593          	mv	a1,s1
    80002410:	00003517          	auipc	a0,0x3
    80002414:	d6050513          	addi	a0,a0,-672 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	670080e7          	jalr	1648(ra) # 80002a88 <__printf>
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	258080e7          	jalr	600(ra) # 8000267c <plic_complete>
    8000242c:	00100513          	li	a0,1
    80002430:	f7dff06f          	j	800023ac <devintr+0x40>
    80002434:	00004517          	auipc	a0,0x4
    80002438:	5ec50513          	addi	a0,a0,1516 # 80006a20 <tickslock>
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	320080e7          	jalr	800(ra) # 8000375c <acquire>
    80002444:	00003717          	auipc	a4,0x3
    80002448:	4d070713          	addi	a4,a4,1232 # 80005914 <ticks>
    8000244c:	00072783          	lw	a5,0(a4)
    80002450:	00004517          	auipc	a0,0x4
    80002454:	5d050513          	addi	a0,a0,1488 # 80006a20 <tickslock>
    80002458:	0017879b          	addiw	a5,a5,1
    8000245c:	00f72023          	sw	a5,0(a4)
    80002460:	00001097          	auipc	ra,0x1
    80002464:	3c8080e7          	jalr	968(ra) # 80003828 <release>
    80002468:	f65ff06f          	j	800023cc <devintr+0x60>
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	f24080e7          	jalr	-220(ra) # 80003390 <uartintr>
    80002474:	fadff06f          	j	80002420 <devintr+0xb4>
	...

0000000080002480 <kernelvec>:
    80002480:	f0010113          	addi	sp,sp,-256
    80002484:	00113023          	sd	ra,0(sp)
    80002488:	00213423          	sd	sp,8(sp)
    8000248c:	00313823          	sd	gp,16(sp)
    80002490:	00413c23          	sd	tp,24(sp)
    80002494:	02513023          	sd	t0,32(sp)
    80002498:	02613423          	sd	t1,40(sp)
    8000249c:	02713823          	sd	t2,48(sp)
    800024a0:	02813c23          	sd	s0,56(sp)
    800024a4:	04913023          	sd	s1,64(sp)
    800024a8:	04a13423          	sd	a0,72(sp)
    800024ac:	04b13823          	sd	a1,80(sp)
    800024b0:	04c13c23          	sd	a2,88(sp)
    800024b4:	06d13023          	sd	a3,96(sp)
    800024b8:	06e13423          	sd	a4,104(sp)
    800024bc:	06f13823          	sd	a5,112(sp)
    800024c0:	07013c23          	sd	a6,120(sp)
    800024c4:	09113023          	sd	a7,128(sp)
    800024c8:	09213423          	sd	s2,136(sp)
    800024cc:	09313823          	sd	s3,144(sp)
    800024d0:	09413c23          	sd	s4,152(sp)
    800024d4:	0b513023          	sd	s5,160(sp)
    800024d8:	0b613423          	sd	s6,168(sp)
    800024dc:	0b713823          	sd	s7,176(sp)
    800024e0:	0b813c23          	sd	s8,184(sp)
    800024e4:	0d913023          	sd	s9,192(sp)
    800024e8:	0da13423          	sd	s10,200(sp)
    800024ec:	0db13823          	sd	s11,208(sp)
    800024f0:	0dc13c23          	sd	t3,216(sp)
    800024f4:	0fd13023          	sd	t4,224(sp)
    800024f8:	0fe13423          	sd	t5,232(sp)
    800024fc:	0ff13823          	sd	t6,240(sp)
    80002500:	ccdff0ef          	jal	ra,800021cc <kerneltrap>
    80002504:	00013083          	ld	ra,0(sp)
    80002508:	00813103          	ld	sp,8(sp)
    8000250c:	01013183          	ld	gp,16(sp)
    80002510:	02013283          	ld	t0,32(sp)
    80002514:	02813303          	ld	t1,40(sp)
    80002518:	03013383          	ld	t2,48(sp)
    8000251c:	03813403          	ld	s0,56(sp)
    80002520:	04013483          	ld	s1,64(sp)
    80002524:	04813503          	ld	a0,72(sp)
    80002528:	05013583          	ld	a1,80(sp)
    8000252c:	05813603          	ld	a2,88(sp)
    80002530:	06013683          	ld	a3,96(sp)
    80002534:	06813703          	ld	a4,104(sp)
    80002538:	07013783          	ld	a5,112(sp)
    8000253c:	07813803          	ld	a6,120(sp)
    80002540:	08013883          	ld	a7,128(sp)
    80002544:	08813903          	ld	s2,136(sp)
    80002548:	09013983          	ld	s3,144(sp)
    8000254c:	09813a03          	ld	s4,152(sp)
    80002550:	0a013a83          	ld	s5,160(sp)
    80002554:	0a813b03          	ld	s6,168(sp)
    80002558:	0b013b83          	ld	s7,176(sp)
    8000255c:	0b813c03          	ld	s8,184(sp)
    80002560:	0c013c83          	ld	s9,192(sp)
    80002564:	0c813d03          	ld	s10,200(sp)
    80002568:	0d013d83          	ld	s11,208(sp)
    8000256c:	0d813e03          	ld	t3,216(sp)
    80002570:	0e013e83          	ld	t4,224(sp)
    80002574:	0e813f03          	ld	t5,232(sp)
    80002578:	0f013f83          	ld	t6,240(sp)
    8000257c:	10010113          	addi	sp,sp,256
    80002580:	10200073          	sret
    80002584:	00000013          	nop
    80002588:	00000013          	nop
    8000258c:	00000013          	nop

0000000080002590 <timervec>:
    80002590:	34051573          	csrrw	a0,mscratch,a0
    80002594:	00b53023          	sd	a1,0(a0)
    80002598:	00c53423          	sd	a2,8(a0)
    8000259c:	00d53823          	sd	a3,16(a0)
    800025a0:	01853583          	ld	a1,24(a0)
    800025a4:	02053603          	ld	a2,32(a0)
    800025a8:	0005b683          	ld	a3,0(a1)
    800025ac:	00c686b3          	add	a3,a3,a2
    800025b0:	00d5b023          	sd	a3,0(a1)
    800025b4:	00200593          	li	a1,2
    800025b8:	14459073          	csrw	sip,a1
    800025bc:	01053683          	ld	a3,16(a0)
    800025c0:	00853603          	ld	a2,8(a0)
    800025c4:	00053583          	ld	a1,0(a0)
    800025c8:	34051573          	csrrw	a0,mscratch,a0
    800025cc:	30200073          	mret

00000000800025d0 <plicinit>:
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00813423          	sd	s0,8(sp)
    800025d8:	01010413          	addi	s0,sp,16
    800025dc:	00813403          	ld	s0,8(sp)
    800025e0:	0c0007b7          	lui	a5,0xc000
    800025e4:	00100713          	li	a4,1
    800025e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800025ec:	00e7a223          	sw	a4,4(a5)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <plicinithart>:
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	00113423          	sd	ra,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	a44080e7          	jalr	-1468(ra) # 8000204c <cpuid>
    80002610:	0085171b          	slliw	a4,a0,0x8
    80002614:	0c0027b7          	lui	a5,0xc002
    80002618:	00e787b3          	add	a5,a5,a4
    8000261c:	40200713          	li	a4,1026
    80002620:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002624:	00813083          	ld	ra,8(sp)
    80002628:	00013403          	ld	s0,0(sp)
    8000262c:	00d5151b          	slliw	a0,a0,0xd
    80002630:	0c2017b7          	lui	a5,0xc201
    80002634:	00a78533          	add	a0,a5,a0
    80002638:	00052023          	sw	zero,0(a0)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <plic_claim>:
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    80002654:	00000097          	auipc	ra,0x0
    80002658:	9f8080e7          	jalr	-1544(ra) # 8000204c <cpuid>
    8000265c:	00813083          	ld	ra,8(sp)
    80002660:	00013403          	ld	s0,0(sp)
    80002664:	00d5151b          	slliw	a0,a0,0xd
    80002668:	0c2017b7          	lui	a5,0xc201
    8000266c:	00a78533          	add	a0,a5,a0
    80002670:	00452503          	lw	a0,4(a0)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <plic_complete>:
    8000267c:	fe010113          	addi	sp,sp,-32
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	02010413          	addi	s0,sp,32
    80002690:	00050493          	mv	s1,a0
    80002694:	00000097          	auipc	ra,0x0
    80002698:	9b8080e7          	jalr	-1608(ra) # 8000204c <cpuid>
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00d5179b          	slliw	a5,a0,0xd
    800026a8:	0c201737          	lui	a4,0xc201
    800026ac:	00f707b3          	add	a5,a4,a5
    800026b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	02010113          	addi	sp,sp,32
    800026bc:	00008067          	ret

00000000800026c0 <consolewrite>:
    800026c0:	fb010113          	addi	sp,sp,-80
    800026c4:	04813023          	sd	s0,64(sp)
    800026c8:	04113423          	sd	ra,72(sp)
    800026cc:	02913c23          	sd	s1,56(sp)
    800026d0:	03213823          	sd	s2,48(sp)
    800026d4:	03313423          	sd	s3,40(sp)
    800026d8:	03413023          	sd	s4,32(sp)
    800026dc:	01513c23          	sd	s5,24(sp)
    800026e0:	05010413          	addi	s0,sp,80
    800026e4:	06c05c63          	blez	a2,8000275c <consolewrite+0x9c>
    800026e8:	00060993          	mv	s3,a2
    800026ec:	00050a13          	mv	s4,a0
    800026f0:	00058493          	mv	s1,a1
    800026f4:	00000913          	li	s2,0
    800026f8:	fff00a93          	li	s5,-1
    800026fc:	01c0006f          	j	80002718 <consolewrite+0x58>
    80002700:	fbf44503          	lbu	a0,-65(s0)
    80002704:	0019091b          	addiw	s2,s2,1
    80002708:	00148493          	addi	s1,s1,1
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	a9c080e7          	jalr	-1380(ra) # 800031a8 <uartputc>
    80002714:	03298063          	beq	s3,s2,80002734 <consolewrite+0x74>
    80002718:	00048613          	mv	a2,s1
    8000271c:	00100693          	li	a3,1
    80002720:	000a0593          	mv	a1,s4
    80002724:	fbf40513          	addi	a0,s0,-65
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	9dc080e7          	jalr	-1572(ra) # 80002104 <either_copyin>
    80002730:	fd5518e3          	bne	a0,s5,80002700 <consolewrite+0x40>
    80002734:	04813083          	ld	ra,72(sp)
    80002738:	04013403          	ld	s0,64(sp)
    8000273c:	03813483          	ld	s1,56(sp)
    80002740:	02813983          	ld	s3,40(sp)
    80002744:	02013a03          	ld	s4,32(sp)
    80002748:	01813a83          	ld	s5,24(sp)
    8000274c:	00090513          	mv	a0,s2
    80002750:	03013903          	ld	s2,48(sp)
    80002754:	05010113          	addi	sp,sp,80
    80002758:	00008067          	ret
    8000275c:	00000913          	li	s2,0
    80002760:	fd5ff06f          	j	80002734 <consolewrite+0x74>

0000000080002764 <consoleread>:
    80002764:	f9010113          	addi	sp,sp,-112
    80002768:	06813023          	sd	s0,96(sp)
    8000276c:	04913c23          	sd	s1,88(sp)
    80002770:	05213823          	sd	s2,80(sp)
    80002774:	05313423          	sd	s3,72(sp)
    80002778:	05413023          	sd	s4,64(sp)
    8000277c:	03513c23          	sd	s5,56(sp)
    80002780:	03613823          	sd	s6,48(sp)
    80002784:	03713423          	sd	s7,40(sp)
    80002788:	03813023          	sd	s8,32(sp)
    8000278c:	06113423          	sd	ra,104(sp)
    80002790:	01913c23          	sd	s9,24(sp)
    80002794:	07010413          	addi	s0,sp,112
    80002798:	00060b93          	mv	s7,a2
    8000279c:	00050913          	mv	s2,a0
    800027a0:	00058c13          	mv	s8,a1
    800027a4:	00060b1b          	sext.w	s6,a2
    800027a8:	00004497          	auipc	s1,0x4
    800027ac:	2a048493          	addi	s1,s1,672 # 80006a48 <cons>
    800027b0:	00400993          	li	s3,4
    800027b4:	fff00a13          	li	s4,-1
    800027b8:	00a00a93          	li	s5,10
    800027bc:	05705e63          	blez	s7,80002818 <consoleread+0xb4>
    800027c0:	09c4a703          	lw	a4,156(s1)
    800027c4:	0984a783          	lw	a5,152(s1)
    800027c8:	0007071b          	sext.w	a4,a4
    800027cc:	08e78463          	beq	a5,a4,80002854 <consoleread+0xf0>
    800027d0:	07f7f713          	andi	a4,a5,127
    800027d4:	00e48733          	add	a4,s1,a4
    800027d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800027dc:	0017869b          	addiw	a3,a5,1
    800027e0:	08d4ac23          	sw	a3,152(s1)
    800027e4:	00070c9b          	sext.w	s9,a4
    800027e8:	0b370663          	beq	a4,s3,80002894 <consoleread+0x130>
    800027ec:	00100693          	li	a3,1
    800027f0:	f9f40613          	addi	a2,s0,-97
    800027f4:	000c0593          	mv	a1,s8
    800027f8:	00090513          	mv	a0,s2
    800027fc:	f8e40fa3          	sb	a4,-97(s0)
    80002800:	00000097          	auipc	ra,0x0
    80002804:	8b8080e7          	jalr	-1864(ra) # 800020b8 <either_copyout>
    80002808:	01450863          	beq	a0,s4,80002818 <consoleread+0xb4>
    8000280c:	001c0c13          	addi	s8,s8,1
    80002810:	fffb8b9b          	addiw	s7,s7,-1
    80002814:	fb5c94e3          	bne	s9,s5,800027bc <consoleread+0x58>
    80002818:	000b851b          	sext.w	a0,s7
    8000281c:	06813083          	ld	ra,104(sp)
    80002820:	06013403          	ld	s0,96(sp)
    80002824:	05813483          	ld	s1,88(sp)
    80002828:	05013903          	ld	s2,80(sp)
    8000282c:	04813983          	ld	s3,72(sp)
    80002830:	04013a03          	ld	s4,64(sp)
    80002834:	03813a83          	ld	s5,56(sp)
    80002838:	02813b83          	ld	s7,40(sp)
    8000283c:	02013c03          	ld	s8,32(sp)
    80002840:	01813c83          	ld	s9,24(sp)
    80002844:	40ab053b          	subw	a0,s6,a0
    80002848:	03013b03          	ld	s6,48(sp)
    8000284c:	07010113          	addi	sp,sp,112
    80002850:	00008067          	ret
    80002854:	00001097          	auipc	ra,0x1
    80002858:	1d8080e7          	jalr	472(ra) # 80003a2c <push_on>
    8000285c:	0984a703          	lw	a4,152(s1)
    80002860:	09c4a783          	lw	a5,156(s1)
    80002864:	0007879b          	sext.w	a5,a5
    80002868:	fef70ce3          	beq	a4,a5,80002860 <consoleread+0xfc>
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	234080e7          	jalr	564(ra) # 80003aa0 <pop_on>
    80002874:	0984a783          	lw	a5,152(s1)
    80002878:	07f7f713          	andi	a4,a5,127
    8000287c:	00e48733          	add	a4,s1,a4
    80002880:	01874703          	lbu	a4,24(a4)
    80002884:	0017869b          	addiw	a3,a5,1
    80002888:	08d4ac23          	sw	a3,152(s1)
    8000288c:	00070c9b          	sext.w	s9,a4
    80002890:	f5371ee3          	bne	a4,s3,800027ec <consoleread+0x88>
    80002894:	000b851b          	sext.w	a0,s7
    80002898:	f96bf2e3          	bgeu	s7,s6,8000281c <consoleread+0xb8>
    8000289c:	08f4ac23          	sw	a5,152(s1)
    800028a0:	f7dff06f          	j	8000281c <consoleread+0xb8>

00000000800028a4 <consputc>:
    800028a4:	10000793          	li	a5,256
    800028a8:	00f50663          	beq	a0,a5,800028b4 <consputc+0x10>
    800028ac:	00001317          	auipc	t1,0x1
    800028b0:	9f430067          	jr	-1548(t1) # 800032a0 <uartputc_sync>
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
    800028c4:	00800513          	li	a0,8
    800028c8:	00001097          	auipc	ra,0x1
    800028cc:	9d8080e7          	jalr	-1576(ra) # 800032a0 <uartputc_sync>
    800028d0:	02000513          	li	a0,32
    800028d4:	00001097          	auipc	ra,0x1
    800028d8:	9cc080e7          	jalr	-1588(ra) # 800032a0 <uartputc_sync>
    800028dc:	00013403          	ld	s0,0(sp)
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00800513          	li	a0,8
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00001317          	auipc	t1,0x1
    800028f0:	9b430067          	jr	-1612(t1) # 800032a0 <uartputc_sync>

00000000800028f4 <consoleintr>:
    800028f4:	fe010113          	addi	sp,sp,-32
    800028f8:	00813823          	sd	s0,16(sp)
    800028fc:	00913423          	sd	s1,8(sp)
    80002900:	01213023          	sd	s2,0(sp)
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	02010413          	addi	s0,sp,32
    8000290c:	00004917          	auipc	s2,0x4
    80002910:	13c90913          	addi	s2,s2,316 # 80006a48 <cons>
    80002914:	00050493          	mv	s1,a0
    80002918:	00090513          	mv	a0,s2
    8000291c:	00001097          	auipc	ra,0x1
    80002920:	e40080e7          	jalr	-448(ra) # 8000375c <acquire>
    80002924:	02048c63          	beqz	s1,8000295c <consoleintr+0x68>
    80002928:	0a092783          	lw	a5,160(s2)
    8000292c:	09892703          	lw	a4,152(s2)
    80002930:	07f00693          	li	a3,127
    80002934:	40e7873b          	subw	a4,a5,a4
    80002938:	02e6e263          	bltu	a3,a4,8000295c <consoleintr+0x68>
    8000293c:	00d00713          	li	a4,13
    80002940:	04e48063          	beq	s1,a4,80002980 <consoleintr+0x8c>
    80002944:	07f7f713          	andi	a4,a5,127
    80002948:	00e90733          	add	a4,s2,a4
    8000294c:	0017879b          	addiw	a5,a5,1
    80002950:	0af92023          	sw	a5,160(s2)
    80002954:	00970c23          	sb	s1,24(a4)
    80002958:	08f92e23          	sw	a5,156(s2)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	00013903          	ld	s2,0(sp)
    8000296c:	00004517          	auipc	a0,0x4
    80002970:	0dc50513          	addi	a0,a0,220 # 80006a48 <cons>
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00001317          	auipc	t1,0x1
    8000297c:	eb030067          	jr	-336(t1) # 80003828 <release>
    80002980:	00a00493          	li	s1,10
    80002984:	fc1ff06f          	j	80002944 <consoleintr+0x50>

0000000080002988 <consoleinit>:
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	02010413          	addi	s0,sp,32
    8000299c:	00004497          	auipc	s1,0x4
    800029a0:	0ac48493          	addi	s1,s1,172 # 80006a48 <cons>
    800029a4:	00048513          	mv	a0,s1
    800029a8:	00003597          	auipc	a1,0x3
    800029ac:	82058593          	addi	a1,a1,-2016 # 800051c8 <_ZZ12printIntegermE6digits+0x138>
    800029b0:	00001097          	auipc	ra,0x1
    800029b4:	d88080e7          	jalr	-632(ra) # 80003738 <initlock>
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	7ac080e7          	jalr	1964(ra) # 80003164 <uartinit>
    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00000797          	auipc	a5,0x0
    800029cc:	d9c78793          	addi	a5,a5,-612 # 80002764 <consoleread>
    800029d0:	0af4bc23          	sd	a5,184(s1)
    800029d4:	00000797          	auipc	a5,0x0
    800029d8:	cec78793          	addi	a5,a5,-788 # 800026c0 <consolewrite>
    800029dc:	0cf4b023          	sd	a5,192(s1)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	02010113          	addi	sp,sp,32
    800029e8:	00008067          	ret

00000000800029ec <console_read>:
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00813423          	sd	s0,8(sp)
    800029f4:	01010413          	addi	s0,sp,16
    800029f8:	00813403          	ld	s0,8(sp)
    800029fc:	00004317          	auipc	t1,0x4
    80002a00:	10433303          	ld	t1,260(t1) # 80006b00 <devsw+0x10>
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00030067          	jr	t1

0000000080002a0c <console_write>:
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    80002a18:	00813403          	ld	s0,8(sp)
    80002a1c:	00004317          	auipc	t1,0x4
    80002a20:	0ec33303          	ld	t1,236(t1) # 80006b08 <devsw+0x18>
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00030067          	jr	t1

0000000080002a2c <panic>:
    80002a2c:	fe010113          	addi	sp,sp,-32
    80002a30:	00113c23          	sd	ra,24(sp)
    80002a34:	00813823          	sd	s0,16(sp)
    80002a38:	00913423          	sd	s1,8(sp)
    80002a3c:	02010413          	addi	s0,sp,32
    80002a40:	00050493          	mv	s1,a0
    80002a44:	00002517          	auipc	a0,0x2
    80002a48:	78c50513          	addi	a0,a0,1932 # 800051d0 <_ZZ12printIntegermE6digits+0x140>
    80002a4c:	00004797          	auipc	a5,0x4
    80002a50:	1407ae23          	sw	zero,348(a5) # 80006ba8 <pr+0x18>
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	034080e7          	jalr	52(ra) # 80002a88 <__printf>
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	028080e7          	jalr	40(ra) # 80002a88 <__printf>
    80002a68:	00002517          	auipc	a0,0x2
    80002a6c:	5f050513          	addi	a0,a0,1520 # 80005058 <kvmincrease+0xe68>
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	018080e7          	jalr	24(ra) # 80002a88 <__printf>
    80002a78:	00100793          	li	a5,1
    80002a7c:	00003717          	auipc	a4,0x3
    80002a80:	e8f72e23          	sw	a5,-356(a4) # 80005918 <panicked>
    80002a84:	0000006f          	j	80002a84 <panic+0x58>

0000000080002a88 <__printf>:
    80002a88:	f3010113          	addi	sp,sp,-208
    80002a8c:	08813023          	sd	s0,128(sp)
    80002a90:	07313423          	sd	s3,104(sp)
    80002a94:	09010413          	addi	s0,sp,144
    80002a98:	05813023          	sd	s8,64(sp)
    80002a9c:	08113423          	sd	ra,136(sp)
    80002aa0:	06913c23          	sd	s1,120(sp)
    80002aa4:	07213823          	sd	s2,112(sp)
    80002aa8:	07413023          	sd	s4,96(sp)
    80002aac:	05513c23          	sd	s5,88(sp)
    80002ab0:	05613823          	sd	s6,80(sp)
    80002ab4:	05713423          	sd	s7,72(sp)
    80002ab8:	03913c23          	sd	s9,56(sp)
    80002abc:	03a13823          	sd	s10,48(sp)
    80002ac0:	03b13423          	sd	s11,40(sp)
    80002ac4:	00004317          	auipc	t1,0x4
    80002ac8:	0cc30313          	addi	t1,t1,204 # 80006b90 <pr>
    80002acc:	01832c03          	lw	s8,24(t1)
    80002ad0:	00b43423          	sd	a1,8(s0)
    80002ad4:	00c43823          	sd	a2,16(s0)
    80002ad8:	00d43c23          	sd	a3,24(s0)
    80002adc:	02e43023          	sd	a4,32(s0)
    80002ae0:	02f43423          	sd	a5,40(s0)
    80002ae4:	03043823          	sd	a6,48(s0)
    80002ae8:	03143c23          	sd	a7,56(s0)
    80002aec:	00050993          	mv	s3,a0
    80002af0:	4a0c1663          	bnez	s8,80002f9c <__printf+0x514>
    80002af4:	60098c63          	beqz	s3,8000310c <__printf+0x684>
    80002af8:	0009c503          	lbu	a0,0(s3)
    80002afc:	00840793          	addi	a5,s0,8
    80002b00:	f6f43c23          	sd	a5,-136(s0)
    80002b04:	00000493          	li	s1,0
    80002b08:	22050063          	beqz	a0,80002d28 <__printf+0x2a0>
    80002b0c:	00002a37          	lui	s4,0x2
    80002b10:	00018ab7          	lui	s5,0x18
    80002b14:	000f4b37          	lui	s6,0xf4
    80002b18:	00989bb7          	lui	s7,0x989
    80002b1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b2c:	00148c9b          	addiw	s9,s1,1
    80002b30:	02500793          	li	a5,37
    80002b34:	01998933          	add	s2,s3,s9
    80002b38:	38f51263          	bne	a0,a5,80002ebc <__printf+0x434>
    80002b3c:	00094783          	lbu	a5,0(s2)
    80002b40:	00078c9b          	sext.w	s9,a5
    80002b44:	1e078263          	beqz	a5,80002d28 <__printf+0x2a0>
    80002b48:	0024849b          	addiw	s1,s1,2
    80002b4c:	07000713          	li	a4,112
    80002b50:	00998933          	add	s2,s3,s1
    80002b54:	38e78a63          	beq	a5,a4,80002ee8 <__printf+0x460>
    80002b58:	20f76863          	bltu	a4,a5,80002d68 <__printf+0x2e0>
    80002b5c:	42a78863          	beq	a5,a0,80002f8c <__printf+0x504>
    80002b60:	06400713          	li	a4,100
    80002b64:	40e79663          	bne	a5,a4,80002f70 <__printf+0x4e8>
    80002b68:	f7843783          	ld	a5,-136(s0)
    80002b6c:	0007a603          	lw	a2,0(a5)
    80002b70:	00878793          	addi	a5,a5,8
    80002b74:	f6f43c23          	sd	a5,-136(s0)
    80002b78:	42064a63          	bltz	a2,80002fac <__printf+0x524>
    80002b7c:	00a00713          	li	a4,10
    80002b80:	02e677bb          	remuw	a5,a2,a4
    80002b84:	00002d97          	auipc	s11,0x2
    80002b88:	674d8d93          	addi	s11,s11,1652 # 800051f8 <digits>
    80002b8c:	00900593          	li	a1,9
    80002b90:	0006051b          	sext.w	a0,a2
    80002b94:	00000c93          	li	s9,0
    80002b98:	02079793          	slli	a5,a5,0x20
    80002b9c:	0207d793          	srli	a5,a5,0x20
    80002ba0:	00fd87b3          	add	a5,s11,a5
    80002ba4:	0007c783          	lbu	a5,0(a5)
    80002ba8:	02e656bb          	divuw	a3,a2,a4
    80002bac:	f8f40023          	sb	a5,-128(s0)
    80002bb0:	14c5d863          	bge	a1,a2,80002d00 <__printf+0x278>
    80002bb4:	06300593          	li	a1,99
    80002bb8:	00100c93          	li	s9,1
    80002bbc:	02e6f7bb          	remuw	a5,a3,a4
    80002bc0:	02079793          	slli	a5,a5,0x20
    80002bc4:	0207d793          	srli	a5,a5,0x20
    80002bc8:	00fd87b3          	add	a5,s11,a5
    80002bcc:	0007c783          	lbu	a5,0(a5)
    80002bd0:	02e6d73b          	divuw	a4,a3,a4
    80002bd4:	f8f400a3          	sb	a5,-127(s0)
    80002bd8:	12a5f463          	bgeu	a1,a0,80002d00 <__printf+0x278>
    80002bdc:	00a00693          	li	a3,10
    80002be0:	00900593          	li	a1,9
    80002be4:	02d777bb          	remuw	a5,a4,a3
    80002be8:	02079793          	slli	a5,a5,0x20
    80002bec:	0207d793          	srli	a5,a5,0x20
    80002bf0:	00fd87b3          	add	a5,s11,a5
    80002bf4:	0007c503          	lbu	a0,0(a5)
    80002bf8:	02d757bb          	divuw	a5,a4,a3
    80002bfc:	f8a40123          	sb	a0,-126(s0)
    80002c00:	48e5f263          	bgeu	a1,a4,80003084 <__printf+0x5fc>
    80002c04:	06300513          	li	a0,99
    80002c08:	02d7f5bb          	remuw	a1,a5,a3
    80002c0c:	02059593          	slli	a1,a1,0x20
    80002c10:	0205d593          	srli	a1,a1,0x20
    80002c14:	00bd85b3          	add	a1,s11,a1
    80002c18:	0005c583          	lbu	a1,0(a1)
    80002c1c:	02d7d7bb          	divuw	a5,a5,a3
    80002c20:	f8b401a3          	sb	a1,-125(s0)
    80002c24:	48e57263          	bgeu	a0,a4,800030a8 <__printf+0x620>
    80002c28:	3e700513          	li	a0,999
    80002c2c:	02d7f5bb          	remuw	a1,a5,a3
    80002c30:	02059593          	slli	a1,a1,0x20
    80002c34:	0205d593          	srli	a1,a1,0x20
    80002c38:	00bd85b3          	add	a1,s11,a1
    80002c3c:	0005c583          	lbu	a1,0(a1)
    80002c40:	02d7d7bb          	divuw	a5,a5,a3
    80002c44:	f8b40223          	sb	a1,-124(s0)
    80002c48:	46e57663          	bgeu	a0,a4,800030b4 <__printf+0x62c>
    80002c4c:	02d7f5bb          	remuw	a1,a5,a3
    80002c50:	02059593          	slli	a1,a1,0x20
    80002c54:	0205d593          	srli	a1,a1,0x20
    80002c58:	00bd85b3          	add	a1,s11,a1
    80002c5c:	0005c583          	lbu	a1,0(a1)
    80002c60:	02d7d7bb          	divuw	a5,a5,a3
    80002c64:	f8b402a3          	sb	a1,-123(s0)
    80002c68:	46ea7863          	bgeu	s4,a4,800030d8 <__printf+0x650>
    80002c6c:	02d7f5bb          	remuw	a1,a5,a3
    80002c70:	02059593          	slli	a1,a1,0x20
    80002c74:	0205d593          	srli	a1,a1,0x20
    80002c78:	00bd85b3          	add	a1,s11,a1
    80002c7c:	0005c583          	lbu	a1,0(a1)
    80002c80:	02d7d7bb          	divuw	a5,a5,a3
    80002c84:	f8b40323          	sb	a1,-122(s0)
    80002c88:	3eeaf863          	bgeu	s5,a4,80003078 <__printf+0x5f0>
    80002c8c:	02d7f5bb          	remuw	a1,a5,a3
    80002c90:	02059593          	slli	a1,a1,0x20
    80002c94:	0205d593          	srli	a1,a1,0x20
    80002c98:	00bd85b3          	add	a1,s11,a1
    80002c9c:	0005c583          	lbu	a1,0(a1)
    80002ca0:	02d7d7bb          	divuw	a5,a5,a3
    80002ca4:	f8b403a3          	sb	a1,-121(s0)
    80002ca8:	42eb7e63          	bgeu	s6,a4,800030e4 <__printf+0x65c>
    80002cac:	02d7f5bb          	remuw	a1,a5,a3
    80002cb0:	02059593          	slli	a1,a1,0x20
    80002cb4:	0205d593          	srli	a1,a1,0x20
    80002cb8:	00bd85b3          	add	a1,s11,a1
    80002cbc:	0005c583          	lbu	a1,0(a1)
    80002cc0:	02d7d7bb          	divuw	a5,a5,a3
    80002cc4:	f8b40423          	sb	a1,-120(s0)
    80002cc8:	42ebfc63          	bgeu	s7,a4,80003100 <__printf+0x678>
    80002ccc:	02079793          	slli	a5,a5,0x20
    80002cd0:	0207d793          	srli	a5,a5,0x20
    80002cd4:	00fd8db3          	add	s11,s11,a5
    80002cd8:	000dc703          	lbu	a4,0(s11)
    80002cdc:	00a00793          	li	a5,10
    80002ce0:	00900c93          	li	s9,9
    80002ce4:	f8e404a3          	sb	a4,-119(s0)
    80002ce8:	00065c63          	bgez	a2,80002d00 <__printf+0x278>
    80002cec:	f9040713          	addi	a4,s0,-112
    80002cf0:	00f70733          	add	a4,a4,a5
    80002cf4:	02d00693          	li	a3,45
    80002cf8:	fed70823          	sb	a3,-16(a4)
    80002cfc:	00078c93          	mv	s9,a5
    80002d00:	f8040793          	addi	a5,s0,-128
    80002d04:	01978cb3          	add	s9,a5,s9
    80002d08:	f7f40d13          	addi	s10,s0,-129
    80002d0c:	000cc503          	lbu	a0,0(s9)
    80002d10:	fffc8c93          	addi	s9,s9,-1
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	b90080e7          	jalr	-1136(ra) # 800028a4 <consputc>
    80002d1c:	ffac98e3          	bne	s9,s10,80002d0c <__printf+0x284>
    80002d20:	00094503          	lbu	a0,0(s2)
    80002d24:	e00514e3          	bnez	a0,80002b2c <__printf+0xa4>
    80002d28:	1a0c1663          	bnez	s8,80002ed4 <__printf+0x44c>
    80002d2c:	08813083          	ld	ra,136(sp)
    80002d30:	08013403          	ld	s0,128(sp)
    80002d34:	07813483          	ld	s1,120(sp)
    80002d38:	07013903          	ld	s2,112(sp)
    80002d3c:	06813983          	ld	s3,104(sp)
    80002d40:	06013a03          	ld	s4,96(sp)
    80002d44:	05813a83          	ld	s5,88(sp)
    80002d48:	05013b03          	ld	s6,80(sp)
    80002d4c:	04813b83          	ld	s7,72(sp)
    80002d50:	04013c03          	ld	s8,64(sp)
    80002d54:	03813c83          	ld	s9,56(sp)
    80002d58:	03013d03          	ld	s10,48(sp)
    80002d5c:	02813d83          	ld	s11,40(sp)
    80002d60:	0d010113          	addi	sp,sp,208
    80002d64:	00008067          	ret
    80002d68:	07300713          	li	a4,115
    80002d6c:	1ce78a63          	beq	a5,a4,80002f40 <__printf+0x4b8>
    80002d70:	07800713          	li	a4,120
    80002d74:	1ee79e63          	bne	a5,a4,80002f70 <__printf+0x4e8>
    80002d78:	f7843783          	ld	a5,-136(s0)
    80002d7c:	0007a703          	lw	a4,0(a5)
    80002d80:	00878793          	addi	a5,a5,8
    80002d84:	f6f43c23          	sd	a5,-136(s0)
    80002d88:	28074263          	bltz	a4,8000300c <__printf+0x584>
    80002d8c:	00002d97          	auipc	s11,0x2
    80002d90:	46cd8d93          	addi	s11,s11,1132 # 800051f8 <digits>
    80002d94:	00f77793          	andi	a5,a4,15
    80002d98:	00fd87b3          	add	a5,s11,a5
    80002d9c:	0007c683          	lbu	a3,0(a5)
    80002da0:	00f00613          	li	a2,15
    80002da4:	0007079b          	sext.w	a5,a4
    80002da8:	f8d40023          	sb	a3,-128(s0)
    80002dac:	0047559b          	srliw	a1,a4,0x4
    80002db0:	0047569b          	srliw	a3,a4,0x4
    80002db4:	00000c93          	li	s9,0
    80002db8:	0ee65063          	bge	a2,a4,80002e98 <__printf+0x410>
    80002dbc:	00f6f693          	andi	a3,a3,15
    80002dc0:	00dd86b3          	add	a3,s11,a3
    80002dc4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002dc8:	0087d79b          	srliw	a5,a5,0x8
    80002dcc:	00100c93          	li	s9,1
    80002dd0:	f8d400a3          	sb	a3,-127(s0)
    80002dd4:	0cb67263          	bgeu	a2,a1,80002e98 <__printf+0x410>
    80002dd8:	00f7f693          	andi	a3,a5,15
    80002ddc:	00dd86b3          	add	a3,s11,a3
    80002de0:	0006c583          	lbu	a1,0(a3)
    80002de4:	00f00613          	li	a2,15
    80002de8:	0047d69b          	srliw	a3,a5,0x4
    80002dec:	f8b40123          	sb	a1,-126(s0)
    80002df0:	0047d593          	srli	a1,a5,0x4
    80002df4:	28f67e63          	bgeu	a2,a5,80003090 <__printf+0x608>
    80002df8:	00f6f693          	andi	a3,a3,15
    80002dfc:	00dd86b3          	add	a3,s11,a3
    80002e00:	0006c503          	lbu	a0,0(a3)
    80002e04:	0087d813          	srli	a6,a5,0x8
    80002e08:	0087d69b          	srliw	a3,a5,0x8
    80002e0c:	f8a401a3          	sb	a0,-125(s0)
    80002e10:	28b67663          	bgeu	a2,a1,8000309c <__printf+0x614>
    80002e14:	00f6f693          	andi	a3,a3,15
    80002e18:	00dd86b3          	add	a3,s11,a3
    80002e1c:	0006c583          	lbu	a1,0(a3)
    80002e20:	00c7d513          	srli	a0,a5,0xc
    80002e24:	00c7d69b          	srliw	a3,a5,0xc
    80002e28:	f8b40223          	sb	a1,-124(s0)
    80002e2c:	29067a63          	bgeu	a2,a6,800030c0 <__printf+0x638>
    80002e30:	00f6f693          	andi	a3,a3,15
    80002e34:	00dd86b3          	add	a3,s11,a3
    80002e38:	0006c583          	lbu	a1,0(a3)
    80002e3c:	0107d813          	srli	a6,a5,0x10
    80002e40:	0107d69b          	srliw	a3,a5,0x10
    80002e44:	f8b402a3          	sb	a1,-123(s0)
    80002e48:	28a67263          	bgeu	a2,a0,800030cc <__printf+0x644>
    80002e4c:	00f6f693          	andi	a3,a3,15
    80002e50:	00dd86b3          	add	a3,s11,a3
    80002e54:	0006c683          	lbu	a3,0(a3)
    80002e58:	0147d79b          	srliw	a5,a5,0x14
    80002e5c:	f8d40323          	sb	a3,-122(s0)
    80002e60:	21067663          	bgeu	a2,a6,8000306c <__printf+0x5e4>
    80002e64:	02079793          	slli	a5,a5,0x20
    80002e68:	0207d793          	srli	a5,a5,0x20
    80002e6c:	00fd8db3          	add	s11,s11,a5
    80002e70:	000dc683          	lbu	a3,0(s11)
    80002e74:	00800793          	li	a5,8
    80002e78:	00700c93          	li	s9,7
    80002e7c:	f8d403a3          	sb	a3,-121(s0)
    80002e80:	00075c63          	bgez	a4,80002e98 <__printf+0x410>
    80002e84:	f9040713          	addi	a4,s0,-112
    80002e88:	00f70733          	add	a4,a4,a5
    80002e8c:	02d00693          	li	a3,45
    80002e90:	fed70823          	sb	a3,-16(a4)
    80002e94:	00078c93          	mv	s9,a5
    80002e98:	f8040793          	addi	a5,s0,-128
    80002e9c:	01978cb3          	add	s9,a5,s9
    80002ea0:	f7f40d13          	addi	s10,s0,-129
    80002ea4:	000cc503          	lbu	a0,0(s9)
    80002ea8:	fffc8c93          	addi	s9,s9,-1
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	9f8080e7          	jalr	-1544(ra) # 800028a4 <consputc>
    80002eb4:	ff9d18e3          	bne	s10,s9,80002ea4 <__printf+0x41c>
    80002eb8:	0100006f          	j	80002ec8 <__printf+0x440>
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	9e8080e7          	jalr	-1560(ra) # 800028a4 <consputc>
    80002ec4:	000c8493          	mv	s1,s9
    80002ec8:	00094503          	lbu	a0,0(s2)
    80002ecc:	c60510e3          	bnez	a0,80002b2c <__printf+0xa4>
    80002ed0:	e40c0ee3          	beqz	s8,80002d2c <__printf+0x2a4>
    80002ed4:	00004517          	auipc	a0,0x4
    80002ed8:	cbc50513          	addi	a0,a0,-836 # 80006b90 <pr>
    80002edc:	00001097          	auipc	ra,0x1
    80002ee0:	94c080e7          	jalr	-1716(ra) # 80003828 <release>
    80002ee4:	e49ff06f          	j	80002d2c <__printf+0x2a4>
    80002ee8:	f7843783          	ld	a5,-136(s0)
    80002eec:	03000513          	li	a0,48
    80002ef0:	01000d13          	li	s10,16
    80002ef4:	00878713          	addi	a4,a5,8
    80002ef8:	0007bc83          	ld	s9,0(a5)
    80002efc:	f6e43c23          	sd	a4,-136(s0)
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	9a4080e7          	jalr	-1628(ra) # 800028a4 <consputc>
    80002f08:	07800513          	li	a0,120
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	998080e7          	jalr	-1640(ra) # 800028a4 <consputc>
    80002f14:	00002d97          	auipc	s11,0x2
    80002f18:	2e4d8d93          	addi	s11,s11,740 # 800051f8 <digits>
    80002f1c:	03ccd793          	srli	a5,s9,0x3c
    80002f20:	00fd87b3          	add	a5,s11,a5
    80002f24:	0007c503          	lbu	a0,0(a5)
    80002f28:	fffd0d1b          	addiw	s10,s10,-1
    80002f2c:	004c9c93          	slli	s9,s9,0x4
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	974080e7          	jalr	-1676(ra) # 800028a4 <consputc>
    80002f38:	fe0d12e3          	bnez	s10,80002f1c <__printf+0x494>
    80002f3c:	f8dff06f          	j	80002ec8 <__printf+0x440>
    80002f40:	f7843783          	ld	a5,-136(s0)
    80002f44:	0007bc83          	ld	s9,0(a5)
    80002f48:	00878793          	addi	a5,a5,8
    80002f4c:	f6f43c23          	sd	a5,-136(s0)
    80002f50:	000c9a63          	bnez	s9,80002f64 <__printf+0x4dc>
    80002f54:	1080006f          	j	8000305c <__printf+0x5d4>
    80002f58:	001c8c93          	addi	s9,s9,1
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	948080e7          	jalr	-1720(ra) # 800028a4 <consputc>
    80002f64:	000cc503          	lbu	a0,0(s9)
    80002f68:	fe0518e3          	bnez	a0,80002f58 <__printf+0x4d0>
    80002f6c:	f5dff06f          	j	80002ec8 <__printf+0x440>
    80002f70:	02500513          	li	a0,37
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	930080e7          	jalr	-1744(ra) # 800028a4 <consputc>
    80002f7c:	000c8513          	mv	a0,s9
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	924080e7          	jalr	-1756(ra) # 800028a4 <consputc>
    80002f88:	f41ff06f          	j	80002ec8 <__printf+0x440>
    80002f8c:	02500513          	li	a0,37
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	914080e7          	jalr	-1772(ra) # 800028a4 <consputc>
    80002f98:	f31ff06f          	j	80002ec8 <__printf+0x440>
    80002f9c:	00030513          	mv	a0,t1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	7bc080e7          	jalr	1980(ra) # 8000375c <acquire>
    80002fa8:	b4dff06f          	j	80002af4 <__printf+0x6c>
    80002fac:	40c0053b          	negw	a0,a2
    80002fb0:	00a00713          	li	a4,10
    80002fb4:	02e576bb          	remuw	a3,a0,a4
    80002fb8:	00002d97          	auipc	s11,0x2
    80002fbc:	240d8d93          	addi	s11,s11,576 # 800051f8 <digits>
    80002fc0:	ff700593          	li	a1,-9
    80002fc4:	02069693          	slli	a3,a3,0x20
    80002fc8:	0206d693          	srli	a3,a3,0x20
    80002fcc:	00dd86b3          	add	a3,s11,a3
    80002fd0:	0006c683          	lbu	a3,0(a3)
    80002fd4:	02e557bb          	divuw	a5,a0,a4
    80002fd8:	f8d40023          	sb	a3,-128(s0)
    80002fdc:	10b65e63          	bge	a2,a1,800030f8 <__printf+0x670>
    80002fe0:	06300593          	li	a1,99
    80002fe4:	02e7f6bb          	remuw	a3,a5,a4
    80002fe8:	02069693          	slli	a3,a3,0x20
    80002fec:	0206d693          	srli	a3,a3,0x20
    80002ff0:	00dd86b3          	add	a3,s11,a3
    80002ff4:	0006c683          	lbu	a3,0(a3)
    80002ff8:	02e7d73b          	divuw	a4,a5,a4
    80002ffc:	00200793          	li	a5,2
    80003000:	f8d400a3          	sb	a3,-127(s0)
    80003004:	bca5ece3          	bltu	a1,a0,80002bdc <__printf+0x154>
    80003008:	ce5ff06f          	j	80002cec <__printf+0x264>
    8000300c:	40e007bb          	negw	a5,a4
    80003010:	00002d97          	auipc	s11,0x2
    80003014:	1e8d8d93          	addi	s11,s11,488 # 800051f8 <digits>
    80003018:	00f7f693          	andi	a3,a5,15
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c583          	lbu	a1,0(a3)
    80003024:	ff100613          	li	a2,-15
    80003028:	0047d69b          	srliw	a3,a5,0x4
    8000302c:	f8b40023          	sb	a1,-128(s0)
    80003030:	0047d59b          	srliw	a1,a5,0x4
    80003034:	0ac75e63          	bge	a4,a2,800030f0 <__printf+0x668>
    80003038:	00f6f693          	andi	a3,a3,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c603          	lbu	a2,0(a3)
    80003044:	00f00693          	li	a3,15
    80003048:	0087d79b          	srliw	a5,a5,0x8
    8000304c:	f8c400a3          	sb	a2,-127(s0)
    80003050:	d8b6e4e3          	bltu	a3,a1,80002dd8 <__printf+0x350>
    80003054:	00200793          	li	a5,2
    80003058:	e2dff06f          	j	80002e84 <__printf+0x3fc>
    8000305c:	00002c97          	auipc	s9,0x2
    80003060:	17cc8c93          	addi	s9,s9,380 # 800051d8 <_ZZ12printIntegermE6digits+0x148>
    80003064:	02800513          	li	a0,40
    80003068:	ef1ff06f          	j	80002f58 <__printf+0x4d0>
    8000306c:	00700793          	li	a5,7
    80003070:	00600c93          	li	s9,6
    80003074:	e0dff06f          	j	80002e80 <__printf+0x3f8>
    80003078:	00700793          	li	a5,7
    8000307c:	00600c93          	li	s9,6
    80003080:	c69ff06f          	j	80002ce8 <__printf+0x260>
    80003084:	00300793          	li	a5,3
    80003088:	00200c93          	li	s9,2
    8000308c:	c5dff06f          	j	80002ce8 <__printf+0x260>
    80003090:	00300793          	li	a5,3
    80003094:	00200c93          	li	s9,2
    80003098:	de9ff06f          	j	80002e80 <__printf+0x3f8>
    8000309c:	00400793          	li	a5,4
    800030a0:	00300c93          	li	s9,3
    800030a4:	dddff06f          	j	80002e80 <__printf+0x3f8>
    800030a8:	00400793          	li	a5,4
    800030ac:	00300c93          	li	s9,3
    800030b0:	c39ff06f          	j	80002ce8 <__printf+0x260>
    800030b4:	00500793          	li	a5,5
    800030b8:	00400c93          	li	s9,4
    800030bc:	c2dff06f          	j	80002ce8 <__printf+0x260>
    800030c0:	00500793          	li	a5,5
    800030c4:	00400c93          	li	s9,4
    800030c8:	db9ff06f          	j	80002e80 <__printf+0x3f8>
    800030cc:	00600793          	li	a5,6
    800030d0:	00500c93          	li	s9,5
    800030d4:	dadff06f          	j	80002e80 <__printf+0x3f8>
    800030d8:	00600793          	li	a5,6
    800030dc:	00500c93          	li	s9,5
    800030e0:	c09ff06f          	j	80002ce8 <__printf+0x260>
    800030e4:	00800793          	li	a5,8
    800030e8:	00700c93          	li	s9,7
    800030ec:	bfdff06f          	j	80002ce8 <__printf+0x260>
    800030f0:	00100793          	li	a5,1
    800030f4:	d91ff06f          	j	80002e84 <__printf+0x3fc>
    800030f8:	00100793          	li	a5,1
    800030fc:	bf1ff06f          	j	80002cec <__printf+0x264>
    80003100:	00900793          	li	a5,9
    80003104:	00800c93          	li	s9,8
    80003108:	be1ff06f          	j	80002ce8 <__printf+0x260>
    8000310c:	00002517          	auipc	a0,0x2
    80003110:	0d450513          	addi	a0,a0,212 # 800051e0 <_ZZ12printIntegermE6digits+0x150>
    80003114:	00000097          	auipc	ra,0x0
    80003118:	918080e7          	jalr	-1768(ra) # 80002a2c <panic>

000000008000311c <printfinit>:
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00813823          	sd	s0,16(sp)
    80003124:	00913423          	sd	s1,8(sp)
    80003128:	00113c23          	sd	ra,24(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00004497          	auipc	s1,0x4
    80003134:	a6048493          	addi	s1,s1,-1440 # 80006b90 <pr>
    80003138:	00048513          	mv	a0,s1
    8000313c:	00002597          	auipc	a1,0x2
    80003140:	0b458593          	addi	a1,a1,180 # 800051f0 <_ZZ12printIntegermE6digits+0x160>
    80003144:	00000097          	auipc	ra,0x0
    80003148:	5f4080e7          	jalr	1524(ra) # 80003738 <initlock>
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	0004ac23          	sw	zero,24(s1)
    80003158:	00813483          	ld	s1,8(sp)
    8000315c:	02010113          	addi	sp,sp,32
    80003160:	00008067          	ret

0000000080003164 <uartinit>:
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813423          	sd	s0,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	100007b7          	lui	a5,0x10000
    80003174:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003178:	f8000713          	li	a4,-128
    8000317c:	00e781a3          	sb	a4,3(a5)
    80003180:	00300713          	li	a4,3
    80003184:	00e78023          	sb	a4,0(a5)
    80003188:	000780a3          	sb	zero,1(a5)
    8000318c:	00e781a3          	sb	a4,3(a5)
    80003190:	00700693          	li	a3,7
    80003194:	00d78123          	sb	a3,2(a5)
    80003198:	00e780a3          	sb	a4,1(a5)
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <uartputc>:
    800031a8:	00002797          	auipc	a5,0x2
    800031ac:	7707a783          	lw	a5,1904(a5) # 80005918 <panicked>
    800031b0:	00078463          	beqz	a5,800031b8 <uartputc+0x10>
    800031b4:	0000006f          	j	800031b4 <uartputc+0xc>
    800031b8:	fd010113          	addi	sp,sp,-48
    800031bc:	02813023          	sd	s0,32(sp)
    800031c0:	00913c23          	sd	s1,24(sp)
    800031c4:	01213823          	sd	s2,16(sp)
    800031c8:	01313423          	sd	s3,8(sp)
    800031cc:	02113423          	sd	ra,40(sp)
    800031d0:	03010413          	addi	s0,sp,48
    800031d4:	00002917          	auipc	s2,0x2
    800031d8:	74c90913          	addi	s2,s2,1868 # 80005920 <uart_tx_r>
    800031dc:	00093783          	ld	a5,0(s2)
    800031e0:	00002497          	auipc	s1,0x2
    800031e4:	74848493          	addi	s1,s1,1864 # 80005928 <uart_tx_w>
    800031e8:	0004b703          	ld	a4,0(s1)
    800031ec:	02078693          	addi	a3,a5,32
    800031f0:	00050993          	mv	s3,a0
    800031f4:	02e69c63          	bne	a3,a4,8000322c <uartputc+0x84>
    800031f8:	00001097          	auipc	ra,0x1
    800031fc:	834080e7          	jalr	-1996(ra) # 80003a2c <push_on>
    80003200:	00093783          	ld	a5,0(s2)
    80003204:	0004b703          	ld	a4,0(s1)
    80003208:	02078793          	addi	a5,a5,32
    8000320c:	00e79463          	bne	a5,a4,80003214 <uartputc+0x6c>
    80003210:	0000006f          	j	80003210 <uartputc+0x68>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	88c080e7          	jalr	-1908(ra) # 80003aa0 <pop_on>
    8000321c:	00093783          	ld	a5,0(s2)
    80003220:	0004b703          	ld	a4,0(s1)
    80003224:	02078693          	addi	a3,a5,32
    80003228:	fce688e3          	beq	a3,a4,800031f8 <uartputc+0x50>
    8000322c:	01f77693          	andi	a3,a4,31
    80003230:	00004597          	auipc	a1,0x4
    80003234:	98058593          	addi	a1,a1,-1664 # 80006bb0 <uart_tx_buf>
    80003238:	00d586b3          	add	a3,a1,a3
    8000323c:	00170713          	addi	a4,a4,1
    80003240:	01368023          	sb	s3,0(a3)
    80003244:	00e4b023          	sd	a4,0(s1)
    80003248:	10000637          	lui	a2,0x10000
    8000324c:	02f71063          	bne	a4,a5,8000326c <uartputc+0xc4>
    80003250:	0340006f          	j	80003284 <uartputc+0xdc>
    80003254:	00074703          	lbu	a4,0(a4)
    80003258:	00f93023          	sd	a5,0(s2)
    8000325c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003260:	00093783          	ld	a5,0(s2)
    80003264:	0004b703          	ld	a4,0(s1)
    80003268:	00f70e63          	beq	a4,a5,80003284 <uartputc+0xdc>
    8000326c:	00564683          	lbu	a3,5(a2)
    80003270:	01f7f713          	andi	a4,a5,31
    80003274:	00e58733          	add	a4,a1,a4
    80003278:	0206f693          	andi	a3,a3,32
    8000327c:	00178793          	addi	a5,a5,1
    80003280:	fc069ae3          	bnez	a3,80003254 <uartputc+0xac>
    80003284:	02813083          	ld	ra,40(sp)
    80003288:	02013403          	ld	s0,32(sp)
    8000328c:	01813483          	ld	s1,24(sp)
    80003290:	01013903          	ld	s2,16(sp)
    80003294:	00813983          	ld	s3,8(sp)
    80003298:	03010113          	addi	sp,sp,48
    8000329c:	00008067          	ret

00000000800032a0 <uartputc_sync>:
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00813423          	sd	s0,8(sp)
    800032a8:	01010413          	addi	s0,sp,16
    800032ac:	00002717          	auipc	a4,0x2
    800032b0:	66c72703          	lw	a4,1644(a4) # 80005918 <panicked>
    800032b4:	02071663          	bnez	a4,800032e0 <uartputc_sync+0x40>
    800032b8:	00050793          	mv	a5,a0
    800032bc:	100006b7          	lui	a3,0x10000
    800032c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800032c4:	02077713          	andi	a4,a4,32
    800032c8:	fe070ce3          	beqz	a4,800032c0 <uartputc_sync+0x20>
    800032cc:	0ff7f793          	andi	a5,a5,255
    800032d0:	00f68023          	sb	a5,0(a3)
    800032d4:	00813403          	ld	s0,8(sp)
    800032d8:	01010113          	addi	sp,sp,16
    800032dc:	00008067          	ret
    800032e0:	0000006f          	j	800032e0 <uartputc_sync+0x40>

00000000800032e4 <uartstart>:
    800032e4:	ff010113          	addi	sp,sp,-16
    800032e8:	00813423          	sd	s0,8(sp)
    800032ec:	01010413          	addi	s0,sp,16
    800032f0:	00002617          	auipc	a2,0x2
    800032f4:	63060613          	addi	a2,a2,1584 # 80005920 <uart_tx_r>
    800032f8:	00002517          	auipc	a0,0x2
    800032fc:	63050513          	addi	a0,a0,1584 # 80005928 <uart_tx_w>
    80003300:	00063783          	ld	a5,0(a2)
    80003304:	00053703          	ld	a4,0(a0)
    80003308:	04f70263          	beq	a4,a5,8000334c <uartstart+0x68>
    8000330c:	100005b7          	lui	a1,0x10000
    80003310:	00004817          	auipc	a6,0x4
    80003314:	8a080813          	addi	a6,a6,-1888 # 80006bb0 <uart_tx_buf>
    80003318:	01c0006f          	j	80003334 <uartstart+0x50>
    8000331c:	0006c703          	lbu	a4,0(a3)
    80003320:	00f63023          	sd	a5,0(a2)
    80003324:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003328:	00063783          	ld	a5,0(a2)
    8000332c:	00053703          	ld	a4,0(a0)
    80003330:	00f70e63          	beq	a4,a5,8000334c <uartstart+0x68>
    80003334:	01f7f713          	andi	a4,a5,31
    80003338:	00e806b3          	add	a3,a6,a4
    8000333c:	0055c703          	lbu	a4,5(a1)
    80003340:	00178793          	addi	a5,a5,1
    80003344:	02077713          	andi	a4,a4,32
    80003348:	fc071ae3          	bnez	a4,8000331c <uartstart+0x38>
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <uartgetc>:
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
    80003364:	10000737          	lui	a4,0x10000
    80003368:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000336c:	0017f793          	andi	a5,a5,1
    80003370:	00078c63          	beqz	a5,80003388 <uartgetc+0x30>
    80003374:	00074503          	lbu	a0,0(a4)
    80003378:	0ff57513          	andi	a0,a0,255
    8000337c:	00813403          	ld	s0,8(sp)
    80003380:	01010113          	addi	sp,sp,16
    80003384:	00008067          	ret
    80003388:	fff00513          	li	a0,-1
    8000338c:	ff1ff06f          	j	8000337c <uartgetc+0x24>

0000000080003390 <uartintr>:
    80003390:	100007b7          	lui	a5,0x10000
    80003394:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003398:	0017f793          	andi	a5,a5,1
    8000339c:	0a078463          	beqz	a5,80003444 <uartintr+0xb4>
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	100004b7          	lui	s1,0x10000
    800033b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800033bc:	0ff57513          	andi	a0,a0,255
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	534080e7          	jalr	1332(ra) # 800028f4 <consoleintr>
    800033c8:	0054c783          	lbu	a5,5(s1)
    800033cc:	0017f793          	andi	a5,a5,1
    800033d0:	fe0794e3          	bnez	a5,800033b8 <uartintr+0x28>
    800033d4:	00002617          	auipc	a2,0x2
    800033d8:	54c60613          	addi	a2,a2,1356 # 80005920 <uart_tx_r>
    800033dc:	00002517          	auipc	a0,0x2
    800033e0:	54c50513          	addi	a0,a0,1356 # 80005928 <uart_tx_w>
    800033e4:	00063783          	ld	a5,0(a2)
    800033e8:	00053703          	ld	a4,0(a0)
    800033ec:	04f70263          	beq	a4,a5,80003430 <uartintr+0xa0>
    800033f0:	100005b7          	lui	a1,0x10000
    800033f4:	00003817          	auipc	a6,0x3
    800033f8:	7bc80813          	addi	a6,a6,1980 # 80006bb0 <uart_tx_buf>
    800033fc:	01c0006f          	j	80003418 <uartintr+0x88>
    80003400:	0006c703          	lbu	a4,0(a3)
    80003404:	00f63023          	sd	a5,0(a2)
    80003408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000340c:	00063783          	ld	a5,0(a2)
    80003410:	00053703          	ld	a4,0(a0)
    80003414:	00f70e63          	beq	a4,a5,80003430 <uartintr+0xa0>
    80003418:	01f7f713          	andi	a4,a5,31
    8000341c:	00e806b3          	add	a3,a6,a4
    80003420:	0055c703          	lbu	a4,5(a1)
    80003424:	00178793          	addi	a5,a5,1
    80003428:	02077713          	andi	a4,a4,32
    8000342c:	fc071ae3          	bnez	a4,80003400 <uartintr+0x70>
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret
    80003444:	00002617          	auipc	a2,0x2
    80003448:	4dc60613          	addi	a2,a2,1244 # 80005920 <uart_tx_r>
    8000344c:	00002517          	auipc	a0,0x2
    80003450:	4dc50513          	addi	a0,a0,1244 # 80005928 <uart_tx_w>
    80003454:	00063783          	ld	a5,0(a2)
    80003458:	00053703          	ld	a4,0(a0)
    8000345c:	04f70263          	beq	a4,a5,800034a0 <uartintr+0x110>
    80003460:	100005b7          	lui	a1,0x10000
    80003464:	00003817          	auipc	a6,0x3
    80003468:	74c80813          	addi	a6,a6,1868 # 80006bb0 <uart_tx_buf>
    8000346c:	01c0006f          	j	80003488 <uartintr+0xf8>
    80003470:	0006c703          	lbu	a4,0(a3)
    80003474:	00f63023          	sd	a5,0(a2)
    80003478:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000347c:	00063783          	ld	a5,0(a2)
    80003480:	00053703          	ld	a4,0(a0)
    80003484:	02f70063          	beq	a4,a5,800034a4 <uartintr+0x114>
    80003488:	01f7f713          	andi	a4,a5,31
    8000348c:	00e806b3          	add	a3,a6,a4
    80003490:	0055c703          	lbu	a4,5(a1)
    80003494:	00178793          	addi	a5,a5,1
    80003498:	02077713          	andi	a4,a4,32
    8000349c:	fc071ae3          	bnez	a4,80003470 <uartintr+0xe0>
    800034a0:	00008067          	ret
    800034a4:	00008067          	ret

00000000800034a8 <kinit>:
    800034a8:	fc010113          	addi	sp,sp,-64
    800034ac:	02913423          	sd	s1,40(sp)
    800034b0:	fffff7b7          	lui	a5,0xfffff
    800034b4:	00004497          	auipc	s1,0x4
    800034b8:	72b48493          	addi	s1,s1,1835 # 80007bdf <end+0xfff>
    800034bc:	02813823          	sd	s0,48(sp)
    800034c0:	01313c23          	sd	s3,24(sp)
    800034c4:	00f4f4b3          	and	s1,s1,a5
    800034c8:	02113c23          	sd	ra,56(sp)
    800034cc:	03213023          	sd	s2,32(sp)
    800034d0:	01413823          	sd	s4,16(sp)
    800034d4:	01513423          	sd	s5,8(sp)
    800034d8:	04010413          	addi	s0,sp,64
    800034dc:	000017b7          	lui	a5,0x1
    800034e0:	01100993          	li	s3,17
    800034e4:	00f487b3          	add	a5,s1,a5
    800034e8:	01b99993          	slli	s3,s3,0x1b
    800034ec:	06f9e063          	bltu	s3,a5,8000354c <kinit+0xa4>
    800034f0:	00003a97          	auipc	s5,0x3
    800034f4:	6f0a8a93          	addi	s5,s5,1776 # 80006be0 <end>
    800034f8:	0754ec63          	bltu	s1,s5,80003570 <kinit+0xc8>
    800034fc:	0734fa63          	bgeu	s1,s3,80003570 <kinit+0xc8>
    80003500:	00088a37          	lui	s4,0x88
    80003504:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003508:	00002917          	auipc	s2,0x2
    8000350c:	42890913          	addi	s2,s2,1064 # 80005930 <kmem>
    80003510:	00ca1a13          	slli	s4,s4,0xc
    80003514:	0140006f          	j	80003528 <kinit+0x80>
    80003518:	000017b7          	lui	a5,0x1
    8000351c:	00f484b3          	add	s1,s1,a5
    80003520:	0554e863          	bltu	s1,s5,80003570 <kinit+0xc8>
    80003524:	0534f663          	bgeu	s1,s3,80003570 <kinit+0xc8>
    80003528:	00001637          	lui	a2,0x1
    8000352c:	00100593          	li	a1,1
    80003530:	00048513          	mv	a0,s1
    80003534:	00000097          	auipc	ra,0x0
    80003538:	5e4080e7          	jalr	1508(ra) # 80003b18 <__memset>
    8000353c:	00093783          	ld	a5,0(s2)
    80003540:	00f4b023          	sd	a5,0(s1)
    80003544:	00993023          	sd	s1,0(s2)
    80003548:	fd4498e3          	bne	s1,s4,80003518 <kinit+0x70>
    8000354c:	03813083          	ld	ra,56(sp)
    80003550:	03013403          	ld	s0,48(sp)
    80003554:	02813483          	ld	s1,40(sp)
    80003558:	02013903          	ld	s2,32(sp)
    8000355c:	01813983          	ld	s3,24(sp)
    80003560:	01013a03          	ld	s4,16(sp)
    80003564:	00813a83          	ld	s5,8(sp)
    80003568:	04010113          	addi	sp,sp,64
    8000356c:	00008067          	ret
    80003570:	00002517          	auipc	a0,0x2
    80003574:	ca050513          	addi	a0,a0,-864 # 80005210 <digits+0x18>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	4b4080e7          	jalr	1204(ra) # 80002a2c <panic>

0000000080003580 <freerange>:
    80003580:	fc010113          	addi	sp,sp,-64
    80003584:	000017b7          	lui	a5,0x1
    80003588:	02913423          	sd	s1,40(sp)
    8000358c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003590:	009504b3          	add	s1,a0,s1
    80003594:	fffff537          	lui	a0,0xfffff
    80003598:	02813823          	sd	s0,48(sp)
    8000359c:	02113c23          	sd	ra,56(sp)
    800035a0:	03213023          	sd	s2,32(sp)
    800035a4:	01313c23          	sd	s3,24(sp)
    800035a8:	01413823          	sd	s4,16(sp)
    800035ac:	01513423          	sd	s5,8(sp)
    800035b0:	01613023          	sd	s6,0(sp)
    800035b4:	04010413          	addi	s0,sp,64
    800035b8:	00a4f4b3          	and	s1,s1,a0
    800035bc:	00f487b3          	add	a5,s1,a5
    800035c0:	06f5e463          	bltu	a1,a5,80003628 <freerange+0xa8>
    800035c4:	00003a97          	auipc	s5,0x3
    800035c8:	61ca8a93          	addi	s5,s5,1564 # 80006be0 <end>
    800035cc:	0954e263          	bltu	s1,s5,80003650 <freerange+0xd0>
    800035d0:	01100993          	li	s3,17
    800035d4:	01b99993          	slli	s3,s3,0x1b
    800035d8:	0734fc63          	bgeu	s1,s3,80003650 <freerange+0xd0>
    800035dc:	00058a13          	mv	s4,a1
    800035e0:	00002917          	auipc	s2,0x2
    800035e4:	35090913          	addi	s2,s2,848 # 80005930 <kmem>
    800035e8:	00002b37          	lui	s6,0x2
    800035ec:	0140006f          	j	80003600 <freerange+0x80>
    800035f0:	000017b7          	lui	a5,0x1
    800035f4:	00f484b3          	add	s1,s1,a5
    800035f8:	0554ec63          	bltu	s1,s5,80003650 <freerange+0xd0>
    800035fc:	0534fa63          	bgeu	s1,s3,80003650 <freerange+0xd0>
    80003600:	00001637          	lui	a2,0x1
    80003604:	00100593          	li	a1,1
    80003608:	00048513          	mv	a0,s1
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	50c080e7          	jalr	1292(ra) # 80003b18 <__memset>
    80003614:	00093703          	ld	a4,0(s2)
    80003618:	016487b3          	add	a5,s1,s6
    8000361c:	00e4b023          	sd	a4,0(s1)
    80003620:	00993023          	sd	s1,0(s2)
    80003624:	fcfa76e3          	bgeu	s4,a5,800035f0 <freerange+0x70>
    80003628:	03813083          	ld	ra,56(sp)
    8000362c:	03013403          	ld	s0,48(sp)
    80003630:	02813483          	ld	s1,40(sp)
    80003634:	02013903          	ld	s2,32(sp)
    80003638:	01813983          	ld	s3,24(sp)
    8000363c:	01013a03          	ld	s4,16(sp)
    80003640:	00813a83          	ld	s5,8(sp)
    80003644:	00013b03          	ld	s6,0(sp)
    80003648:	04010113          	addi	sp,sp,64
    8000364c:	00008067          	ret
    80003650:	00002517          	auipc	a0,0x2
    80003654:	bc050513          	addi	a0,a0,-1088 # 80005210 <digits+0x18>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	3d4080e7          	jalr	980(ra) # 80002a2c <panic>

0000000080003660 <kfree>:
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00813823          	sd	s0,16(sp)
    80003668:	00113c23          	sd	ra,24(sp)
    8000366c:	00913423          	sd	s1,8(sp)
    80003670:	02010413          	addi	s0,sp,32
    80003674:	03451793          	slli	a5,a0,0x34
    80003678:	04079c63          	bnez	a5,800036d0 <kfree+0x70>
    8000367c:	00003797          	auipc	a5,0x3
    80003680:	56478793          	addi	a5,a5,1380 # 80006be0 <end>
    80003684:	00050493          	mv	s1,a0
    80003688:	04f56463          	bltu	a0,a5,800036d0 <kfree+0x70>
    8000368c:	01100793          	li	a5,17
    80003690:	01b79793          	slli	a5,a5,0x1b
    80003694:	02f57e63          	bgeu	a0,a5,800036d0 <kfree+0x70>
    80003698:	00001637          	lui	a2,0x1
    8000369c:	00100593          	li	a1,1
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	478080e7          	jalr	1144(ra) # 80003b18 <__memset>
    800036a8:	00002797          	auipc	a5,0x2
    800036ac:	28878793          	addi	a5,a5,648 # 80005930 <kmem>
    800036b0:	0007b703          	ld	a4,0(a5)
    800036b4:	01813083          	ld	ra,24(sp)
    800036b8:	01013403          	ld	s0,16(sp)
    800036bc:	00e4b023          	sd	a4,0(s1)
    800036c0:	0097b023          	sd	s1,0(a5)
    800036c4:	00813483          	ld	s1,8(sp)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00008067          	ret
    800036d0:	00002517          	auipc	a0,0x2
    800036d4:	b4050513          	addi	a0,a0,-1216 # 80005210 <digits+0x18>
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	354080e7          	jalr	852(ra) # 80002a2c <panic>

00000000800036e0 <kalloc>:
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00813823          	sd	s0,16(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	02010413          	addi	s0,sp,32
    800036f4:	00002797          	auipc	a5,0x2
    800036f8:	23c78793          	addi	a5,a5,572 # 80005930 <kmem>
    800036fc:	0007b483          	ld	s1,0(a5)
    80003700:	02048063          	beqz	s1,80003720 <kalloc+0x40>
    80003704:	0004b703          	ld	a4,0(s1)
    80003708:	00001637          	lui	a2,0x1
    8000370c:	00500593          	li	a1,5
    80003710:	00048513          	mv	a0,s1
    80003714:	00e7b023          	sd	a4,0(a5)
    80003718:	00000097          	auipc	ra,0x0
    8000371c:	400080e7          	jalr	1024(ra) # 80003b18 <__memset>
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00048513          	mv	a0,s1
    8000372c:	00813483          	ld	s1,8(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret

0000000080003738 <initlock>:
    80003738:	ff010113          	addi	sp,sp,-16
    8000373c:	00813423          	sd	s0,8(sp)
    80003740:	01010413          	addi	s0,sp,16
    80003744:	00813403          	ld	s0,8(sp)
    80003748:	00b53423          	sd	a1,8(a0)
    8000374c:	00052023          	sw	zero,0(a0)
    80003750:	00053823          	sd	zero,16(a0)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <acquire>:
    8000375c:	fe010113          	addi	sp,sp,-32
    80003760:	00813823          	sd	s0,16(sp)
    80003764:	00913423          	sd	s1,8(sp)
    80003768:	00113c23          	sd	ra,24(sp)
    8000376c:	01213023          	sd	s2,0(sp)
    80003770:	02010413          	addi	s0,sp,32
    80003774:	00050493          	mv	s1,a0
    80003778:	10002973          	csrr	s2,sstatus
    8000377c:	100027f3          	csrr	a5,sstatus
    80003780:	ffd7f793          	andi	a5,a5,-3
    80003784:	10079073          	csrw	sstatus,a5
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	8e4080e7          	jalr	-1820(ra) # 8000206c <mycpu>
    80003790:	07852783          	lw	a5,120(a0)
    80003794:	06078e63          	beqz	a5,80003810 <acquire+0xb4>
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	8d4080e7          	jalr	-1836(ra) # 8000206c <mycpu>
    800037a0:	07852783          	lw	a5,120(a0)
    800037a4:	0004a703          	lw	a4,0(s1)
    800037a8:	0017879b          	addiw	a5,a5,1
    800037ac:	06f52c23          	sw	a5,120(a0)
    800037b0:	04071063          	bnez	a4,800037f0 <acquire+0x94>
    800037b4:	00100713          	li	a4,1
    800037b8:	00070793          	mv	a5,a4
    800037bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800037c0:	0007879b          	sext.w	a5,a5
    800037c4:	fe079ae3          	bnez	a5,800037b8 <acquire+0x5c>
    800037c8:	0ff0000f          	fence
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	8a0080e7          	jalr	-1888(ra) # 8000206c <mycpu>
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00a4b823          	sd	a0,16(s1)
    800037e0:	00013903          	ld	s2,0(sp)
    800037e4:	00813483          	ld	s1,8(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret
    800037f0:	0104b903          	ld	s2,16(s1)
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	878080e7          	jalr	-1928(ra) # 8000206c <mycpu>
    800037fc:	faa91ce3          	bne	s2,a0,800037b4 <acquire+0x58>
    80003800:	00002517          	auipc	a0,0x2
    80003804:	a1850513          	addi	a0,a0,-1512 # 80005218 <digits+0x20>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	224080e7          	jalr	548(ra) # 80002a2c <panic>
    80003810:	00195913          	srli	s2,s2,0x1
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	858080e7          	jalr	-1960(ra) # 8000206c <mycpu>
    8000381c:	00197913          	andi	s2,s2,1
    80003820:	07252e23          	sw	s2,124(a0)
    80003824:	f75ff06f          	j	80003798 <acquire+0x3c>

0000000080003828 <release>:
    80003828:	fe010113          	addi	sp,sp,-32
    8000382c:	00813823          	sd	s0,16(sp)
    80003830:	00113c23          	sd	ra,24(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	01213023          	sd	s2,0(sp)
    8000383c:	02010413          	addi	s0,sp,32
    80003840:	00052783          	lw	a5,0(a0)
    80003844:	00079a63          	bnez	a5,80003858 <release+0x30>
    80003848:	00002517          	auipc	a0,0x2
    8000384c:	9d850513          	addi	a0,a0,-1576 # 80005220 <digits+0x28>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	1dc080e7          	jalr	476(ra) # 80002a2c <panic>
    80003858:	01053903          	ld	s2,16(a0)
    8000385c:	00050493          	mv	s1,a0
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	80c080e7          	jalr	-2036(ra) # 8000206c <mycpu>
    80003868:	fea910e3          	bne	s2,a0,80003848 <release+0x20>
    8000386c:	0004b823          	sd	zero,16(s1)
    80003870:	0ff0000f          	fence
    80003874:	0f50000f          	fence	iorw,ow
    80003878:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	7f0080e7          	jalr	2032(ra) # 8000206c <mycpu>
    80003884:	100027f3          	csrr	a5,sstatus
    80003888:	0027f793          	andi	a5,a5,2
    8000388c:	04079a63          	bnez	a5,800038e0 <release+0xb8>
    80003890:	07852783          	lw	a5,120(a0)
    80003894:	02f05e63          	blez	a5,800038d0 <release+0xa8>
    80003898:	fff7871b          	addiw	a4,a5,-1
    8000389c:	06e52c23          	sw	a4,120(a0)
    800038a0:	00071c63          	bnez	a4,800038b8 <release+0x90>
    800038a4:	07c52783          	lw	a5,124(a0)
    800038a8:	00078863          	beqz	a5,800038b8 <release+0x90>
    800038ac:	100027f3          	csrr	a5,sstatus
    800038b0:	0027e793          	ori	a5,a5,2
    800038b4:	10079073          	csrw	sstatus,a5
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	00013903          	ld	s2,0(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret
    800038d0:	00002517          	auipc	a0,0x2
    800038d4:	97050513          	addi	a0,a0,-1680 # 80005240 <digits+0x48>
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	154080e7          	jalr	340(ra) # 80002a2c <panic>
    800038e0:	00002517          	auipc	a0,0x2
    800038e4:	94850513          	addi	a0,a0,-1720 # 80005228 <digits+0x30>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	144080e7          	jalr	324(ra) # 80002a2c <panic>

00000000800038f0 <holding>:
    800038f0:	00052783          	lw	a5,0(a0)
    800038f4:	00079663          	bnez	a5,80003900 <holding+0x10>
    800038f8:	00000513          	li	a0,0
    800038fc:	00008067          	ret
    80003900:	fe010113          	addi	sp,sp,-32
    80003904:	00813823          	sd	s0,16(sp)
    80003908:	00913423          	sd	s1,8(sp)
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	02010413          	addi	s0,sp,32
    80003914:	01053483          	ld	s1,16(a0)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	754080e7          	jalr	1876(ra) # 8000206c <mycpu>
    80003920:	01813083          	ld	ra,24(sp)
    80003924:	01013403          	ld	s0,16(sp)
    80003928:	40a48533          	sub	a0,s1,a0
    8000392c:	00153513          	seqz	a0,a0
    80003930:	00813483          	ld	s1,8(sp)
    80003934:	02010113          	addi	sp,sp,32
    80003938:	00008067          	ret

000000008000393c <push_off>:
    8000393c:	fe010113          	addi	sp,sp,-32
    80003940:	00813823          	sd	s0,16(sp)
    80003944:	00113c23          	sd	ra,24(sp)
    80003948:	00913423          	sd	s1,8(sp)
    8000394c:	02010413          	addi	s0,sp,32
    80003950:	100024f3          	csrr	s1,sstatus
    80003954:	100027f3          	csrr	a5,sstatus
    80003958:	ffd7f793          	andi	a5,a5,-3
    8000395c:	10079073          	csrw	sstatus,a5
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	70c080e7          	jalr	1804(ra) # 8000206c <mycpu>
    80003968:	07852783          	lw	a5,120(a0)
    8000396c:	02078663          	beqz	a5,80003998 <push_off+0x5c>
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	6fc080e7          	jalr	1788(ra) # 8000206c <mycpu>
    80003978:	07852783          	lw	a5,120(a0)
    8000397c:	01813083          	ld	ra,24(sp)
    80003980:	01013403          	ld	s0,16(sp)
    80003984:	0017879b          	addiw	a5,a5,1
    80003988:	06f52c23          	sw	a5,120(a0)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret
    80003998:	0014d493          	srli	s1,s1,0x1
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	6d0080e7          	jalr	1744(ra) # 8000206c <mycpu>
    800039a4:	0014f493          	andi	s1,s1,1
    800039a8:	06952e23          	sw	s1,124(a0)
    800039ac:	fc5ff06f          	j	80003970 <push_off+0x34>

00000000800039b0 <pop_off>:
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00813023          	sd	s0,0(sp)
    800039b8:	00113423          	sd	ra,8(sp)
    800039bc:	01010413          	addi	s0,sp,16
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	6ac080e7          	jalr	1708(ra) # 8000206c <mycpu>
    800039c8:	100027f3          	csrr	a5,sstatus
    800039cc:	0027f793          	andi	a5,a5,2
    800039d0:	04079663          	bnez	a5,80003a1c <pop_off+0x6c>
    800039d4:	07852783          	lw	a5,120(a0)
    800039d8:	02f05a63          	blez	a5,80003a0c <pop_off+0x5c>
    800039dc:	fff7871b          	addiw	a4,a5,-1
    800039e0:	06e52c23          	sw	a4,120(a0)
    800039e4:	00071c63          	bnez	a4,800039fc <pop_off+0x4c>
    800039e8:	07c52783          	lw	a5,124(a0)
    800039ec:	00078863          	beqz	a5,800039fc <pop_off+0x4c>
    800039f0:	100027f3          	csrr	a5,sstatus
    800039f4:	0027e793          	ori	a5,a5,2
    800039f8:	10079073          	csrw	sstatus,a5
    800039fc:	00813083          	ld	ra,8(sp)
    80003a00:	00013403          	ld	s0,0(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret
    80003a0c:	00002517          	auipc	a0,0x2
    80003a10:	83450513          	addi	a0,a0,-1996 # 80005240 <digits+0x48>
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	018080e7          	jalr	24(ra) # 80002a2c <panic>
    80003a1c:	00002517          	auipc	a0,0x2
    80003a20:	80c50513          	addi	a0,a0,-2036 # 80005228 <digits+0x30>
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	008080e7          	jalr	8(ra) # 80002a2c <panic>

0000000080003a2c <push_on>:
    80003a2c:	fe010113          	addi	sp,sp,-32
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00113c23          	sd	ra,24(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	100024f3          	csrr	s1,sstatus
    80003a44:	100027f3          	csrr	a5,sstatus
    80003a48:	0027e793          	ori	a5,a5,2
    80003a4c:	10079073          	csrw	sstatus,a5
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	61c080e7          	jalr	1564(ra) # 8000206c <mycpu>
    80003a58:	07852783          	lw	a5,120(a0)
    80003a5c:	02078663          	beqz	a5,80003a88 <push_on+0x5c>
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	60c080e7          	jalr	1548(ra) # 8000206c <mycpu>
    80003a68:	07852783          	lw	a5,120(a0)
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	0017879b          	addiw	a5,a5,1
    80003a78:	06f52c23          	sw	a5,120(a0)
    80003a7c:	00813483          	ld	s1,8(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret
    80003a88:	0014d493          	srli	s1,s1,0x1
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	5e0080e7          	jalr	1504(ra) # 8000206c <mycpu>
    80003a94:	0014f493          	andi	s1,s1,1
    80003a98:	06952e23          	sw	s1,124(a0)
    80003a9c:	fc5ff06f          	j	80003a60 <push_on+0x34>

0000000080003aa0 <pop_on>:
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813023          	sd	s0,0(sp)
    80003aa8:	00113423          	sd	ra,8(sp)
    80003aac:	01010413          	addi	s0,sp,16
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	5bc080e7          	jalr	1468(ra) # 8000206c <mycpu>
    80003ab8:	100027f3          	csrr	a5,sstatus
    80003abc:	0027f793          	andi	a5,a5,2
    80003ac0:	04078463          	beqz	a5,80003b08 <pop_on+0x68>
    80003ac4:	07852783          	lw	a5,120(a0)
    80003ac8:	02f05863          	blez	a5,80003af8 <pop_on+0x58>
    80003acc:	fff7879b          	addiw	a5,a5,-1
    80003ad0:	06f52c23          	sw	a5,120(a0)
    80003ad4:	07853783          	ld	a5,120(a0)
    80003ad8:	00079863          	bnez	a5,80003ae8 <pop_on+0x48>
    80003adc:	100027f3          	csrr	a5,sstatus
    80003ae0:	ffd7f793          	andi	a5,a5,-3
    80003ae4:	10079073          	csrw	sstatus,a5
    80003ae8:	00813083          	ld	ra,8(sp)
    80003aec:	00013403          	ld	s0,0(sp)
    80003af0:	01010113          	addi	sp,sp,16
    80003af4:	00008067          	ret
    80003af8:	00001517          	auipc	a0,0x1
    80003afc:	77050513          	addi	a0,a0,1904 # 80005268 <digits+0x70>
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	f2c080e7          	jalr	-212(ra) # 80002a2c <panic>
    80003b08:	00001517          	auipc	a0,0x1
    80003b0c:	74050513          	addi	a0,a0,1856 # 80005248 <digits+0x50>
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	f1c080e7          	jalr	-228(ra) # 80002a2c <panic>

0000000080003b18 <__memset>:
    80003b18:	ff010113          	addi	sp,sp,-16
    80003b1c:	00813423          	sd	s0,8(sp)
    80003b20:	01010413          	addi	s0,sp,16
    80003b24:	1a060e63          	beqz	a2,80003ce0 <__memset+0x1c8>
    80003b28:	40a007b3          	neg	a5,a0
    80003b2c:	0077f793          	andi	a5,a5,7
    80003b30:	00778693          	addi	a3,a5,7
    80003b34:	00b00813          	li	a6,11
    80003b38:	0ff5f593          	andi	a1,a1,255
    80003b3c:	fff6071b          	addiw	a4,a2,-1
    80003b40:	1b06e663          	bltu	a3,a6,80003cec <__memset+0x1d4>
    80003b44:	1cd76463          	bltu	a4,a3,80003d0c <__memset+0x1f4>
    80003b48:	1a078e63          	beqz	a5,80003d04 <__memset+0x1ec>
    80003b4c:	00b50023          	sb	a1,0(a0)
    80003b50:	00100713          	li	a4,1
    80003b54:	1ae78463          	beq	a5,a4,80003cfc <__memset+0x1e4>
    80003b58:	00b500a3          	sb	a1,1(a0)
    80003b5c:	00200713          	li	a4,2
    80003b60:	1ae78a63          	beq	a5,a4,80003d14 <__memset+0x1fc>
    80003b64:	00b50123          	sb	a1,2(a0)
    80003b68:	00300713          	li	a4,3
    80003b6c:	18e78463          	beq	a5,a4,80003cf4 <__memset+0x1dc>
    80003b70:	00b501a3          	sb	a1,3(a0)
    80003b74:	00400713          	li	a4,4
    80003b78:	1ae78263          	beq	a5,a4,80003d1c <__memset+0x204>
    80003b7c:	00b50223          	sb	a1,4(a0)
    80003b80:	00500713          	li	a4,5
    80003b84:	1ae78063          	beq	a5,a4,80003d24 <__memset+0x20c>
    80003b88:	00b502a3          	sb	a1,5(a0)
    80003b8c:	00700713          	li	a4,7
    80003b90:	18e79e63          	bne	a5,a4,80003d2c <__memset+0x214>
    80003b94:	00b50323          	sb	a1,6(a0)
    80003b98:	00700e93          	li	t4,7
    80003b9c:	00859713          	slli	a4,a1,0x8
    80003ba0:	00e5e733          	or	a4,a1,a4
    80003ba4:	01059e13          	slli	t3,a1,0x10
    80003ba8:	01c76e33          	or	t3,a4,t3
    80003bac:	01859313          	slli	t1,a1,0x18
    80003bb0:	006e6333          	or	t1,t3,t1
    80003bb4:	02059893          	slli	a7,a1,0x20
    80003bb8:	40f60e3b          	subw	t3,a2,a5
    80003bbc:	011368b3          	or	a7,t1,a7
    80003bc0:	02859813          	slli	a6,a1,0x28
    80003bc4:	0108e833          	or	a6,a7,a6
    80003bc8:	03059693          	slli	a3,a1,0x30
    80003bcc:	003e589b          	srliw	a7,t3,0x3
    80003bd0:	00d866b3          	or	a3,a6,a3
    80003bd4:	03859713          	slli	a4,a1,0x38
    80003bd8:	00389813          	slli	a6,a7,0x3
    80003bdc:	00f507b3          	add	a5,a0,a5
    80003be0:	00e6e733          	or	a4,a3,a4
    80003be4:	000e089b          	sext.w	a7,t3
    80003be8:	00f806b3          	add	a3,a6,a5
    80003bec:	00e7b023          	sd	a4,0(a5)
    80003bf0:	00878793          	addi	a5,a5,8
    80003bf4:	fed79ce3          	bne	a5,a3,80003bec <__memset+0xd4>
    80003bf8:	ff8e7793          	andi	a5,t3,-8
    80003bfc:	0007871b          	sext.w	a4,a5
    80003c00:	01d787bb          	addw	a5,a5,t4
    80003c04:	0ce88e63          	beq	a7,a4,80003ce0 <__memset+0x1c8>
    80003c08:	00f50733          	add	a4,a0,a5
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0017871b          	addiw	a4,a5,1
    80003c14:	0cc77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0027871b          	addiw	a4,a5,2
    80003c24:	0ac77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0037871b          	addiw	a4,a5,3
    80003c34:	0ac77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0047871b          	addiw	a4,a5,4
    80003c44:	08c77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0057871b          	addiw	a4,a5,5
    80003c54:	08c77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0067871b          	addiw	a4,a5,6
    80003c64:	06c77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0077871b          	addiw	a4,a5,7
    80003c74:	06c77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0087871b          	addiw	a4,a5,8
    80003c84:	04c77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0097871b          	addiw	a4,a5,9
    80003c94:	04c77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	00a7871b          	addiw	a4,a5,10
    80003ca4:	02c77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	00b7871b          	addiw	a4,a5,11
    80003cb4:	02c77663          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	00c7871b          	addiw	a4,a5,12
    80003cc4:	00c77e63          	bgeu	a4,a2,80003ce0 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	00d7879b          	addiw	a5,a5,13
    80003cd4:	00c7f663          	bgeu	a5,a2,80003ce0 <__memset+0x1c8>
    80003cd8:	00f507b3          	add	a5,a0,a5
    80003cdc:	00b78023          	sb	a1,0(a5)
    80003ce0:	00813403          	ld	s0,8(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret
    80003cec:	00b00693          	li	a3,11
    80003cf0:	e55ff06f          	j	80003b44 <__memset+0x2c>
    80003cf4:	00300e93          	li	t4,3
    80003cf8:	ea5ff06f          	j	80003b9c <__memset+0x84>
    80003cfc:	00100e93          	li	t4,1
    80003d00:	e9dff06f          	j	80003b9c <__memset+0x84>
    80003d04:	00000e93          	li	t4,0
    80003d08:	e95ff06f          	j	80003b9c <__memset+0x84>
    80003d0c:	00000793          	li	a5,0
    80003d10:	ef9ff06f          	j	80003c08 <__memset+0xf0>
    80003d14:	00200e93          	li	t4,2
    80003d18:	e85ff06f          	j	80003b9c <__memset+0x84>
    80003d1c:	00400e93          	li	t4,4
    80003d20:	e7dff06f          	j	80003b9c <__memset+0x84>
    80003d24:	00500e93          	li	t4,5
    80003d28:	e75ff06f          	j	80003b9c <__memset+0x84>
    80003d2c:	00600e93          	li	t4,6
    80003d30:	e6dff06f          	j	80003b9c <__memset+0x84>

0000000080003d34 <__memmove>:
    80003d34:	ff010113          	addi	sp,sp,-16
    80003d38:	00813423          	sd	s0,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	0e060863          	beqz	a2,80003e30 <__memmove+0xfc>
    80003d44:	fff6069b          	addiw	a3,a2,-1
    80003d48:	0006881b          	sext.w	a6,a3
    80003d4c:	0ea5e863          	bltu	a1,a0,80003e3c <__memmove+0x108>
    80003d50:	00758713          	addi	a4,a1,7
    80003d54:	00a5e7b3          	or	a5,a1,a0
    80003d58:	40a70733          	sub	a4,a4,a0
    80003d5c:	0077f793          	andi	a5,a5,7
    80003d60:	00f73713          	sltiu	a4,a4,15
    80003d64:	00174713          	xori	a4,a4,1
    80003d68:	0017b793          	seqz	a5,a5
    80003d6c:	00e7f7b3          	and	a5,a5,a4
    80003d70:	10078863          	beqz	a5,80003e80 <__memmove+0x14c>
    80003d74:	00900793          	li	a5,9
    80003d78:	1107f463          	bgeu	a5,a6,80003e80 <__memmove+0x14c>
    80003d7c:	0036581b          	srliw	a6,a2,0x3
    80003d80:	fff8081b          	addiw	a6,a6,-1
    80003d84:	02081813          	slli	a6,a6,0x20
    80003d88:	01d85893          	srli	a7,a6,0x1d
    80003d8c:	00858813          	addi	a6,a1,8
    80003d90:	00058793          	mv	a5,a1
    80003d94:	00050713          	mv	a4,a0
    80003d98:	01088833          	add	a6,a7,a6
    80003d9c:	0007b883          	ld	a7,0(a5)
    80003da0:	00878793          	addi	a5,a5,8
    80003da4:	00870713          	addi	a4,a4,8
    80003da8:	ff173c23          	sd	a7,-8(a4)
    80003dac:	ff0798e3          	bne	a5,a6,80003d9c <__memmove+0x68>
    80003db0:	ff867713          	andi	a4,a2,-8
    80003db4:	02071793          	slli	a5,a4,0x20
    80003db8:	0207d793          	srli	a5,a5,0x20
    80003dbc:	00f585b3          	add	a1,a1,a5
    80003dc0:	40e686bb          	subw	a3,a3,a4
    80003dc4:	00f507b3          	add	a5,a0,a5
    80003dc8:	06e60463          	beq	a2,a4,80003e30 <__memmove+0xfc>
    80003dcc:	0005c703          	lbu	a4,0(a1)
    80003dd0:	00e78023          	sb	a4,0(a5)
    80003dd4:	04068e63          	beqz	a3,80003e30 <__memmove+0xfc>
    80003dd8:	0015c603          	lbu	a2,1(a1)
    80003ddc:	00100713          	li	a4,1
    80003de0:	00c780a3          	sb	a2,1(a5)
    80003de4:	04e68663          	beq	a3,a4,80003e30 <__memmove+0xfc>
    80003de8:	0025c603          	lbu	a2,2(a1)
    80003dec:	00200713          	li	a4,2
    80003df0:	00c78123          	sb	a2,2(a5)
    80003df4:	02e68e63          	beq	a3,a4,80003e30 <__memmove+0xfc>
    80003df8:	0035c603          	lbu	a2,3(a1)
    80003dfc:	00300713          	li	a4,3
    80003e00:	00c781a3          	sb	a2,3(a5)
    80003e04:	02e68663          	beq	a3,a4,80003e30 <__memmove+0xfc>
    80003e08:	0045c603          	lbu	a2,4(a1)
    80003e0c:	00400713          	li	a4,4
    80003e10:	00c78223          	sb	a2,4(a5)
    80003e14:	00e68e63          	beq	a3,a4,80003e30 <__memmove+0xfc>
    80003e18:	0055c603          	lbu	a2,5(a1)
    80003e1c:	00500713          	li	a4,5
    80003e20:	00c782a3          	sb	a2,5(a5)
    80003e24:	00e68663          	beq	a3,a4,80003e30 <__memmove+0xfc>
    80003e28:	0065c703          	lbu	a4,6(a1)
    80003e2c:	00e78323          	sb	a4,6(a5)
    80003e30:	00813403          	ld	s0,8(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret
    80003e3c:	02061713          	slli	a4,a2,0x20
    80003e40:	02075713          	srli	a4,a4,0x20
    80003e44:	00e587b3          	add	a5,a1,a4
    80003e48:	f0f574e3          	bgeu	a0,a5,80003d50 <__memmove+0x1c>
    80003e4c:	02069613          	slli	a2,a3,0x20
    80003e50:	02065613          	srli	a2,a2,0x20
    80003e54:	fff64613          	not	a2,a2
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00c78633          	add	a2,a5,a2
    80003e60:	fff7c683          	lbu	a3,-1(a5)
    80003e64:	fff78793          	addi	a5,a5,-1
    80003e68:	fff70713          	addi	a4,a4,-1
    80003e6c:	00d70023          	sb	a3,0(a4)
    80003e70:	fec798e3          	bne	a5,a2,80003e60 <__memmove+0x12c>
    80003e74:	00813403          	ld	s0,8(sp)
    80003e78:	01010113          	addi	sp,sp,16
    80003e7c:	00008067          	ret
    80003e80:	02069713          	slli	a4,a3,0x20
    80003e84:	02075713          	srli	a4,a4,0x20
    80003e88:	00170713          	addi	a4,a4,1
    80003e8c:	00e50733          	add	a4,a0,a4
    80003e90:	00050793          	mv	a5,a0
    80003e94:	0005c683          	lbu	a3,0(a1)
    80003e98:	00178793          	addi	a5,a5,1
    80003e9c:	00158593          	addi	a1,a1,1
    80003ea0:	fed78fa3          	sb	a3,-1(a5)
    80003ea4:	fee798e3          	bne	a5,a4,80003e94 <__memmove+0x160>
    80003ea8:	f89ff06f          	j	80003e30 <__memmove+0xfc>

0000000080003eac <__mem_free>:
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00813423          	sd	s0,8(sp)
    80003eb4:	01010413          	addi	s0,sp,16
    80003eb8:	00002597          	auipc	a1,0x2
    80003ebc:	a8058593          	addi	a1,a1,-1408 # 80005938 <freep>
    80003ec0:	0005b783          	ld	a5,0(a1)
    80003ec4:	ff050693          	addi	a3,a0,-16
    80003ec8:	0007b703          	ld	a4,0(a5)
    80003ecc:	00d7fc63          	bgeu	a5,a3,80003ee4 <__mem_free+0x38>
    80003ed0:	00e6ee63          	bltu	a3,a4,80003eec <__mem_free+0x40>
    80003ed4:	00e7fc63          	bgeu	a5,a4,80003eec <__mem_free+0x40>
    80003ed8:	00070793          	mv	a5,a4
    80003edc:	0007b703          	ld	a4,0(a5)
    80003ee0:	fed7e8e3          	bltu	a5,a3,80003ed0 <__mem_free+0x24>
    80003ee4:	fee7eae3          	bltu	a5,a4,80003ed8 <__mem_free+0x2c>
    80003ee8:	fee6f8e3          	bgeu	a3,a4,80003ed8 <__mem_free+0x2c>
    80003eec:	ff852803          	lw	a6,-8(a0)
    80003ef0:	02081613          	slli	a2,a6,0x20
    80003ef4:	01c65613          	srli	a2,a2,0x1c
    80003ef8:	00c68633          	add	a2,a3,a2
    80003efc:	02c70a63          	beq	a4,a2,80003f30 <__mem_free+0x84>
    80003f00:	fee53823          	sd	a4,-16(a0)
    80003f04:	0087a503          	lw	a0,8(a5)
    80003f08:	02051613          	slli	a2,a0,0x20
    80003f0c:	01c65613          	srli	a2,a2,0x1c
    80003f10:	00c78633          	add	a2,a5,a2
    80003f14:	04c68263          	beq	a3,a2,80003f58 <__mem_free+0xac>
    80003f18:	00813403          	ld	s0,8(sp)
    80003f1c:	00d7b023          	sd	a3,0(a5)
    80003f20:	00f5b023          	sd	a5,0(a1)
    80003f24:	00000513          	li	a0,0
    80003f28:	01010113          	addi	sp,sp,16
    80003f2c:	00008067          	ret
    80003f30:	00872603          	lw	a2,8(a4)
    80003f34:	00073703          	ld	a4,0(a4)
    80003f38:	0106083b          	addw	a6,a2,a6
    80003f3c:	ff052c23          	sw	a6,-8(a0)
    80003f40:	fee53823          	sd	a4,-16(a0)
    80003f44:	0087a503          	lw	a0,8(a5)
    80003f48:	02051613          	slli	a2,a0,0x20
    80003f4c:	01c65613          	srli	a2,a2,0x1c
    80003f50:	00c78633          	add	a2,a5,a2
    80003f54:	fcc692e3          	bne	a3,a2,80003f18 <__mem_free+0x6c>
    80003f58:	00813403          	ld	s0,8(sp)
    80003f5c:	0105053b          	addw	a0,a0,a6
    80003f60:	00a7a423          	sw	a0,8(a5)
    80003f64:	00e7b023          	sd	a4,0(a5)
    80003f68:	00f5b023          	sd	a5,0(a1)
    80003f6c:	00000513          	li	a0,0
    80003f70:	01010113          	addi	sp,sp,16
    80003f74:	00008067          	ret

0000000080003f78 <__mem_alloc>:
    80003f78:	fc010113          	addi	sp,sp,-64
    80003f7c:	02813823          	sd	s0,48(sp)
    80003f80:	02913423          	sd	s1,40(sp)
    80003f84:	03213023          	sd	s2,32(sp)
    80003f88:	01513423          	sd	s5,8(sp)
    80003f8c:	02113c23          	sd	ra,56(sp)
    80003f90:	01313c23          	sd	s3,24(sp)
    80003f94:	01413823          	sd	s4,16(sp)
    80003f98:	01613023          	sd	s6,0(sp)
    80003f9c:	04010413          	addi	s0,sp,64
    80003fa0:	00002a97          	auipc	s5,0x2
    80003fa4:	998a8a93          	addi	s5,s5,-1640 # 80005938 <freep>
    80003fa8:	00f50913          	addi	s2,a0,15
    80003fac:	000ab683          	ld	a3,0(s5)
    80003fb0:	00495913          	srli	s2,s2,0x4
    80003fb4:	0019049b          	addiw	s1,s2,1
    80003fb8:	00048913          	mv	s2,s1
    80003fbc:	0c068c63          	beqz	a3,80004094 <__mem_alloc+0x11c>
    80003fc0:	0006b503          	ld	a0,0(a3)
    80003fc4:	00852703          	lw	a4,8(a0)
    80003fc8:	10977063          	bgeu	a4,s1,800040c8 <__mem_alloc+0x150>
    80003fcc:	000017b7          	lui	a5,0x1
    80003fd0:	0009099b          	sext.w	s3,s2
    80003fd4:	0af4e863          	bltu	s1,a5,80004084 <__mem_alloc+0x10c>
    80003fd8:	02099a13          	slli	s4,s3,0x20
    80003fdc:	01ca5a13          	srli	s4,s4,0x1c
    80003fe0:	fff00b13          	li	s6,-1
    80003fe4:	0100006f          	j	80003ff4 <__mem_alloc+0x7c>
    80003fe8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003fec:	00852703          	lw	a4,8(a0)
    80003ff0:	04977463          	bgeu	a4,s1,80004038 <__mem_alloc+0xc0>
    80003ff4:	00050793          	mv	a5,a0
    80003ff8:	fea698e3          	bne	a3,a0,80003fe8 <__mem_alloc+0x70>
    80003ffc:	000a0513          	mv	a0,s4
    80004000:	00000097          	auipc	ra,0x0
    80004004:	1f0080e7          	jalr	496(ra) # 800041f0 <kvmincrease>
    80004008:	00050793          	mv	a5,a0
    8000400c:	01050513          	addi	a0,a0,16
    80004010:	07678e63          	beq	a5,s6,8000408c <__mem_alloc+0x114>
    80004014:	0137a423          	sw	s3,8(a5)
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	e94080e7          	jalr	-364(ra) # 80003eac <__mem_free>
    80004020:	000ab783          	ld	a5,0(s5)
    80004024:	06078463          	beqz	a5,8000408c <__mem_alloc+0x114>
    80004028:	0007b503          	ld	a0,0(a5)
    8000402c:	00078693          	mv	a3,a5
    80004030:	00852703          	lw	a4,8(a0)
    80004034:	fc9760e3          	bltu	a4,s1,80003ff4 <__mem_alloc+0x7c>
    80004038:	08e48263          	beq	s1,a4,800040bc <__mem_alloc+0x144>
    8000403c:	4127073b          	subw	a4,a4,s2
    80004040:	02071693          	slli	a3,a4,0x20
    80004044:	01c6d693          	srli	a3,a3,0x1c
    80004048:	00e52423          	sw	a4,8(a0)
    8000404c:	00d50533          	add	a0,a0,a3
    80004050:	01252423          	sw	s2,8(a0)
    80004054:	00fab023          	sd	a5,0(s5)
    80004058:	01050513          	addi	a0,a0,16
    8000405c:	03813083          	ld	ra,56(sp)
    80004060:	03013403          	ld	s0,48(sp)
    80004064:	02813483          	ld	s1,40(sp)
    80004068:	02013903          	ld	s2,32(sp)
    8000406c:	01813983          	ld	s3,24(sp)
    80004070:	01013a03          	ld	s4,16(sp)
    80004074:	00813a83          	ld	s5,8(sp)
    80004078:	00013b03          	ld	s6,0(sp)
    8000407c:	04010113          	addi	sp,sp,64
    80004080:	00008067          	ret
    80004084:	000019b7          	lui	s3,0x1
    80004088:	f51ff06f          	j	80003fd8 <__mem_alloc+0x60>
    8000408c:	00000513          	li	a0,0
    80004090:	fcdff06f          	j	8000405c <__mem_alloc+0xe4>
    80004094:	00003797          	auipc	a5,0x3
    80004098:	b3c78793          	addi	a5,a5,-1220 # 80006bd0 <base>
    8000409c:	00078513          	mv	a0,a5
    800040a0:	00fab023          	sd	a5,0(s5)
    800040a4:	00f7b023          	sd	a5,0(a5)
    800040a8:	00000713          	li	a4,0
    800040ac:	00003797          	auipc	a5,0x3
    800040b0:	b207a623          	sw	zero,-1236(a5) # 80006bd8 <base+0x8>
    800040b4:	00050693          	mv	a3,a0
    800040b8:	f11ff06f          	j	80003fc8 <__mem_alloc+0x50>
    800040bc:	00053703          	ld	a4,0(a0)
    800040c0:	00e7b023          	sd	a4,0(a5)
    800040c4:	f91ff06f          	j	80004054 <__mem_alloc+0xdc>
    800040c8:	00068793          	mv	a5,a3
    800040cc:	f6dff06f          	j	80004038 <__mem_alloc+0xc0>

00000000800040d0 <__putc>:
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00813823          	sd	s0,16(sp)
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	02010413          	addi	s0,sp,32
    800040e0:	00050793          	mv	a5,a0
    800040e4:	fef40593          	addi	a1,s0,-17
    800040e8:	00100613          	li	a2,1
    800040ec:	00000513          	li	a0,0
    800040f0:	fef407a3          	sb	a5,-17(s0)
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	918080e7          	jalr	-1768(ra) # 80002a0c <console_write>
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	02010113          	addi	sp,sp,32
    80004108:	00008067          	ret

000000008000410c <__getc>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00113c23          	sd	ra,24(sp)
    80004118:	02010413          	addi	s0,sp,32
    8000411c:	fe840593          	addi	a1,s0,-24
    80004120:	00100613          	li	a2,1
    80004124:	00000513          	li	a0,0
    80004128:	fffff097          	auipc	ra,0xfffff
    8000412c:	8c4080e7          	jalr	-1852(ra) # 800029ec <console_read>
    80004130:	fe844503          	lbu	a0,-24(s0)
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	02010113          	addi	sp,sp,32
    80004140:	00008067          	ret

0000000080004144 <console_handler>:
    80004144:	fe010113          	addi	sp,sp,-32
    80004148:	00813823          	sd	s0,16(sp)
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00913423          	sd	s1,8(sp)
    80004154:	02010413          	addi	s0,sp,32
    80004158:	14202773          	csrr	a4,scause
    8000415c:	100027f3          	csrr	a5,sstatus
    80004160:	0027f793          	andi	a5,a5,2
    80004164:	06079e63          	bnez	a5,800041e0 <console_handler+0x9c>
    80004168:	00074c63          	bltz	a4,80004180 <console_handler+0x3c>
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	02010113          	addi	sp,sp,32
    8000417c:	00008067          	ret
    80004180:	0ff77713          	andi	a4,a4,255
    80004184:	00900793          	li	a5,9
    80004188:	fef712e3          	bne	a4,a5,8000416c <console_handler+0x28>
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	4b8080e7          	jalr	1208(ra) # 80002644 <plic_claim>
    80004194:	00a00793          	li	a5,10
    80004198:	00050493          	mv	s1,a0
    8000419c:	02f50c63          	beq	a0,a5,800041d4 <console_handler+0x90>
    800041a0:	fc0506e3          	beqz	a0,8000416c <console_handler+0x28>
    800041a4:	00050593          	mv	a1,a0
    800041a8:	00001517          	auipc	a0,0x1
    800041ac:	fc850513          	addi	a0,a0,-56 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	8d8080e7          	jalr	-1832(ra) # 80002a88 <__printf>
    800041b8:	01013403          	ld	s0,16(sp)
    800041bc:	01813083          	ld	ra,24(sp)
    800041c0:	00048513          	mv	a0,s1
    800041c4:	00813483          	ld	s1,8(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	ffffe317          	auipc	t1,0xffffe
    800041d0:	4b030067          	jr	1200(t1) # 8000267c <plic_complete>
    800041d4:	fffff097          	auipc	ra,0xfffff
    800041d8:	1bc080e7          	jalr	444(ra) # 80003390 <uartintr>
    800041dc:	fddff06f          	j	800041b8 <console_handler+0x74>
    800041e0:	00001517          	auipc	a0,0x1
    800041e4:	09050513          	addi	a0,a0,144 # 80005270 <digits+0x78>
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	844080e7          	jalr	-1980(ra) # 80002a2c <panic>

00000000800041f0 <kvmincrease>:
    800041f0:	fe010113          	addi	sp,sp,-32
    800041f4:	01213023          	sd	s2,0(sp)
    800041f8:	00001937          	lui	s2,0x1
    800041fc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00113c23          	sd	ra,24(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	01250933          	add	s2,a0,s2
    80004214:	00c95913          	srli	s2,s2,0xc
    80004218:	02090863          	beqz	s2,80004248 <kvmincrease+0x58>
    8000421c:	00000493          	li	s1,0
    80004220:	00148493          	addi	s1,s1,1
    80004224:	fffff097          	auipc	ra,0xfffff
    80004228:	4bc080e7          	jalr	1212(ra) # 800036e0 <kalloc>
    8000422c:	fe991ae3          	bne	s2,s1,80004220 <kvmincrease+0x30>
    80004230:	01813083          	ld	ra,24(sp)
    80004234:	01013403          	ld	s0,16(sp)
    80004238:	00813483          	ld	s1,8(sp)
    8000423c:	00013903          	ld	s2,0(sp)
    80004240:	02010113          	addi	sp,sp,32
    80004244:	00008067          	ret
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	01013403          	ld	s0,16(sp)
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	00013903          	ld	s2,0(sp)
    80004258:	00000513          	li	a0,0
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret
	...

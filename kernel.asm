
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8d013103          	ld	sp,-1840(sp) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	725010ef          	jal	ra,80001f40 <start>

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
    80001080:	329000ef          	jal	ra,80001ba8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000113c:	00000097          	auipc	ra,0x0
    80001140:	61c080e7          	jalr	1564(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
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
    80001180:	08c78793          	addi	a5,a5,140 # 80001208 <_ZN7_thread13threadWrapperEv>
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
    800011a0:	00004717          	auipc	a4,0x4
    800011a4:	7a070713          	addi	a4,a4,1952 # 80005940 <_ZN7_thread8globalIdE>
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
//    uint64 a0reg;
//    __asm__ volatile("mv %0, a0" : "=r" (a0reg));

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800011f0:	00400793          	li	a5,4
    800011f4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011f8:	00000073          	ecall

    //restore a0 value
//    __asm__ volatile("mv a0, %0" : : "r" (a0reg));

}
    800011fc:	00813403          	ld	s0,8(sp)
    80001200:	01010113          	addi	sp,sp,16
    80001204:	00008067          	ret

0000000080001208 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001208:	fe010113          	addi	sp,sp,-32
    8000120c:	00113c23          	sd	ra,24(sp)
    80001210:	00813823          	sd	s0,16(sp)
    80001214:	00913423          	sd	s1,8(sp)
    80001218:	02010413          	addi	s0,sp,32
//    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    8000121c:	00004497          	auipc	s1,0x4
    80001220:	72448493          	addi	s1,s1,1828 # 80005940 <_ZN7_thread8globalIdE>
    80001224:	0084b783          	ld	a5,8(s1)
    80001228:	0007b703          	ld	a4,0(a5)
    8000122c:	0307b503          	ld	a0,48(a5)
    80001230:	000700e7          	jalr	a4
    running->setFinished(true);
    80001234:	0084b783          	ld	a5,8(s1)
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001238:	00100713          	li	a4,1
    8000123c:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    80001240:	00000097          	auipc	ra,0x0
    80001244:	fa4080e7          	jalr	-92(ra) # 800011e4 <_ZN7_thread5yieldEv>
}
    80001248:	01813083          	ld	ra,24(sp)
    8000124c:	01013403          	ld	s0,16(sp)
    80001250:	00813483          	ld	s1,8(sp)
    80001254:	02010113          	addi	sp,sp,32
    80001258:	00008067          	ret

000000008000125c <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    8000125c:	fe010113          	addi	sp,sp,-32
    80001260:	00113c23          	sd	ra,24(sp)
    80001264:	00813823          	sd	s0,16(sp)
    80001268:	00913423          	sd	s1,8(sp)
    8000126c:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001270:	00004497          	auipc	s1,0x4
    80001274:	6d84b483          	ld	s1,1752(s1) # 80005948 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001278:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    8000127c:	02078c63          	beqz	a5,800012b4 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001280:	00000097          	auipc	ra,0x0
    80001284:	470080e7          	jalr	1136(ra) # 800016f0 <_ZN9Scheduler3getEv>
    80001288:	00004797          	auipc	a5,0x4
    8000128c:	6ca7b023          	sd	a0,1728(a5) # 80005948 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    80001290:	01050593          	addi	a1,a0,16
    80001294:	01048513          	addi	a0,s1,16
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	e78080e7          	jalr	-392(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012a0:	01813083          	ld	ra,24(sp)
    800012a4:	01013403          	ld	s0,16(sp)
    800012a8:	00813483          	ld	s1,8(sp)
    800012ac:	02010113          	addi	sp,sp,32
    800012b0:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012b4:	00048513          	mv	a0,s1
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	4a0080e7          	jalr	1184(ra) # 80001758 <_ZN9Scheduler3putEP7_thread>
    800012c0:	fc1ff06f          	j	80001280 <_ZN7_thread8dispatchEv+0x24>

00000000800012c4 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012c4:	ff010113          	addi	sp,sp,-16
    800012c8:	00113423          	sd	ra,8(sp)
    800012cc:	00813023          	sd	s0,0(sp)
    800012d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012d4:	00001097          	auipc	ra,0x1
    800012d8:	af0080e7          	jalr	-1296(ra) # 80001dc4 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012dc:	00813083          	ld	ra,8(sp)
    800012e0:	00013403          	ld	s0,0(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00113423          	sd	ra,8(sp)
    800012f4:	00813023          	sd	s0,0(sp)
    800012f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	ac8080e7          	jalr	-1336(ra) # 80001dc4 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001304:	00813083          	ld	ra,8(sp)
    80001308:	00013403          	ld	s0,0(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00113423          	sd	ra,8(sp)
    8000131c:	00813023          	sd	s0,0(sp)
    80001320:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001324:	00001097          	auipc	ra,0x1
    80001328:	ac8080e7          	jalr	-1336(ra) # 80001dec <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000132c:	00813083          	ld	ra,8(sp)
    80001330:	00013403          	ld	s0,0(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_ZN7_thread12createThreadEPFvPvES0_Pm>:
_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    8000133c:	fd010113          	addi	sp,sp,-48
    80001340:	02113423          	sd	ra,40(sp)
    80001344:	02813023          	sd	s0,32(sp)
    80001348:	00913c23          	sd	s1,24(sp)
    8000134c:	01213823          	sd	s2,16(sp)
    80001350:	01313423          	sd	s3,8(sp)
    80001354:	01413023          	sd	s4,0(sp)
    80001358:	03010413          	addi	s0,sp,48
    8000135c:	00050913          	mv	s2,a0
    80001360:	00058993          	mv	s3,a1
    80001364:	00060a13          	mv	s4,a2
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
    80001368:	04800513          	li	a0,72
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	f58080e7          	jalr	-168(ra) # 800012c4 <_ZN7_threadnwEm>
    80001374:	00050493          	mv	s1,a0
    80001378:	000a0713          	mv	a4,s4
    8000137c:	00098693          	mv	a3,s3
    80001380:	00200613          	li	a2,2
    80001384:	00090593          	mv	a1,s2
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	dd0080e7          	jalr	-560(ra) # 80001158 <_ZN7_threadC1EPFvPvEmS0_Pm>
    80001390:	0200006f          	j	800013b0 <_ZN7_thread12createThreadEPFvPvES0_Pm+0x74>
    80001394:	00050913          	mv	s2,a0
    80001398:	00048513          	mv	a0,s1
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	f78080e7          	jalr	-136(ra) # 80001314 <_ZN7_threaddlEPv>
    800013a4:	00090513          	mv	a0,s2
    800013a8:	00005097          	auipc	ra,0x5
    800013ac:	690080e7          	jalr	1680(ra) # 80006a38 <_Unwind_Resume>
}
    800013b0:	00048513          	mv	a0,s1
    800013b4:	02813083          	ld	ra,40(sp)
    800013b8:	02013403          	ld	s0,32(sp)
    800013bc:	01813483          	ld	s1,24(sp)
    800013c0:	01013903          	ld	s2,16(sp)
    800013c4:	00813983          	ld	s3,8(sp)
    800013c8:	00013a03          	ld	s4,0(sp)
    800013cc:	03010113          	addi	sp,sp,48
    800013d0:	00008067          	ret

00000000800013d4 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013e4:	00001097          	auipc	ra,0x1
    800013e8:	a08080e7          	jalr	-1528(ra) # 80001dec <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013ec:	00813083          	ld	ra,8(sp)
    800013f0:	00013403          	ld	s0,0(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_Z7syscallP4args>:
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001408:	00053583          	ld	a1,0(a0)
    uint64 arg1 = arg->a1;
    8000140c:	00853603          	ld	a2,8(a0)
    uint64 arg2 = arg->a2;
    80001410:	01053683          	ld	a3,16(a0)
    uint64 arg3 = arg->a3;
    80001414:	01853703          	ld	a4,24(a0)
    uint64 arg4 = arg->a4;
    80001418:	02053783          	ld	a5,32(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    8000141c:	00058513          	mv	a0,a1
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001420:	00060593          	mv	a1,a2
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001424:	00068613          	mv	a2,a3
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001428:	00070693          	mv	a3,a4
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    8000142c:	00078713          	mv	a4,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001430:	00000073          	ecall


}
    80001434:	00813403          	ld	s0,8(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001440:	fc010113          	addi	sp,sp,-64
    80001444:	02113c23          	sd	ra,56(sp)
    80001448:	02813823          	sd	s0,48(sp)
    8000144c:	04010413          	addi	s0,sp,64
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    80001450:	00100793          	li	a5,1
    80001454:	fcf43423          	sd	a5,-56(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001458:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    8000145c:	03f57513          	andi	a0,a0,63
    80001460:	00050463          	beqz	a0,80001468 <_Z9mem_allocm+0x28>
    80001464:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    80001468:	fcf43823          	sd	a5,-48(s0)

    syscall(&arg);
    8000146c:	fc840513          	addi	a0,s0,-56
    80001470:	00000097          	auipc	ra,0x0
    80001474:	f8c080e7          	jalr	-116(ra) # 800013fc <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001478:	00050513          	mv	a0,a0

    return (void*)ret;
}
    8000147c:	03813083          	ld	ra,56(sp)
    80001480:	03013403          	ld	s0,48(sp)
    80001484:	04010113          	addi	sp,sp,64
    80001488:	00008067          	ret

000000008000148c <_Z8mem_freePv>:

int mem_free (void* p){
    8000148c:	fc010113          	addi	sp,sp,-64
    80001490:	02113c23          	sd	ra,56(sp)
    80001494:	02813823          	sd	s0,48(sp)
    80001498:	04010413          	addi	s0,sp,64
    args arg;
    arg.a0=0x02;
    8000149c:	00200793          	li	a5,2
    800014a0:	fcf43423          	sd	a5,-56(s0)
    arg.a1=(uint64)p;
    800014a4:	fca43823          	sd	a0,-48(s0)

    syscall(&arg);
    800014a8:	fc840513          	addi	a0,s0,-56
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	f50080e7          	jalr	-176(ra) # 800013fc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014b4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014b8:	0005051b          	sext.w	a0,a0
    800014bc:	03813083          	ld	ra,56(sp)
    800014c0:	03013403          	ld	s0,48(sp)
    800014c4:	04010113          	addi	sp,sp,64
    800014c8:	00008067          	ret

00000000800014cc <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014cc:	fa010113          	addi	sp,sp,-96
    800014d0:	04113c23          	sd	ra,88(sp)
    800014d4:	04813823          	sd	s0,80(sp)
    800014d8:	04913423          	sd	s1,72(sp)
    800014dc:	05213023          	sd	s2,64(sp)
    800014e0:	03313c23          	sd	s3,56(sp)
    800014e4:	06010413          	addi	s0,sp,96
    800014e8:	00050993          	mv	s3,a0
    800014ec:	00058913          	mv	s2,a1
    800014f0:	00060493          	mv	s1,a2

    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    800014f4:	00008537          	lui	a0,0x8
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	f48080e7          	jalr	-184(ra) # 80001440 <_Z9mem_allocm>
    args myArgs;
    myArgs.a0=0x11;
    80001500:	01100793          	li	a5,17
    80001504:	faf43423          	sd	a5,-88(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    80001508:	fb343823          	sd	s3,-80(s0)
    myArgs.a2=(uint64)start_routine;
    8000150c:	fb243c23          	sd	s2,-72(s0)
    myArgs.a3=(uint64)arg;
    80001510:	fc943023          	sd	s1,-64(s0)
    myArgs.a4=(uint64)stack;
    80001514:	fca43423          	sd	a0,-56(s0)

    syscall(&myArgs);
    80001518:	fa840513          	addi	a0,s0,-88
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	ee0080e7          	jalr	-288(ra) # 800013fc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle
    80001524:	00050513          	mv	a0,a0

    return ret;


}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	05813083          	ld	ra,88(sp)
    80001530:	05013403          	ld	s0,80(sp)
    80001534:	04813483          	ld	s1,72(sp)
    80001538:	04013903          	ld	s2,64(sp)
    8000153c:	03813983          	ld	s3,56(sp)
    80001540:	06010113          	addi	sp,sp,96
    80001544:	00008067          	ret

0000000080001548 <_Z11thread_exitv>:

int thread_exit (){
    80001548:	fc010113          	addi	sp,sp,-64
    8000154c:	02113c23          	sd	ra,56(sp)
    80001550:	02813823          	sd	s0,48(sp)
    80001554:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x12;
    80001558:	01200793          	li	a5,18
    8000155c:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    80001560:	fc840513          	addi	a0,s0,-56
    80001564:	00000097          	auipc	ra,0x0
    80001568:	e98080e7          	jalr	-360(ra) # 800013fc <_Z7syscallP4args>

    return 0;
}
    8000156c:	00000513          	li	a0,0
    80001570:	03813083          	ld	ra,56(sp)
    80001574:	03013403          	ld	s0,48(sp)
    80001578:	04010113          	addi	sp,sp,64
    8000157c:	00008067          	ret

0000000080001580 <_Z15thread_dispatchv>:


void thread_dispatch (){
    80001580:	fc010113          	addi	sp,sp,-64
    80001584:	02113c23          	sd	ra,56(sp)
    80001588:	02813823          	sd	s0,48(sp)
    8000158c:	04010413          	addi	s0,sp,64
    args myArgs;
    myArgs.a0=0x13;
    80001590:	01300793          	li	a5,19
    80001594:	fcf43423          	sd	a5,-56(s0)

    syscall(&myArgs);
    80001598:	fc840513          	addi	a0,s0,-56
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	e60080e7          	jalr	-416(ra) # 800013fc <_Z7syscallP4args>


}
    800015a4:	03813083          	ld	ra,56(sp)
    800015a8:	03013403          	ld	s0,48(sp)
    800015ac:	04010113          	addi	sp,sp,64
    800015b0:	00008067          	ret

00000000800015b4 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    800015b4:	fd010113          	addi	sp,sp,-48
    800015b8:	02113423          	sd	ra,40(sp)
    800015bc:	02813023          	sd	s0,32(sp)
    800015c0:	03010413          	addi	s0,sp,48


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    800015c4:	00004797          	auipc	a5,0x4
    800015c8:	3047b783          	ld	a5,772(a5) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015cc:	10579073          	csrw	stvec,a5

    _thread* threads[3];

    if(!thread_create(&threads[0], nullptr, nullptr)){
    800015d0:	00000613          	li	a2,0
    800015d4:	00000593          	li	a1,0
    800015d8:	fd840513          	addi	a0,s0,-40
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	ef0080e7          	jalr	-272(ra) # 800014cc <_Z13thread_createPP7_threadPFvPvES2_>
    800015e4:	06050063          	beqz	a0,80001644 <main+0x90>
        printString("thread created");
    }
//    threads[0]->start();
    _thread::running=threads[0];
    800015e8:	fd843703          	ld	a4,-40(s0)
    800015ec:	00004797          	auipc	a5,0x4
    800015f0:	2d47b783          	ld	a5,724(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015f4:	00e7b023          	sd	a4,0(a5)

    if(!thread_create(&threads[1], workerBodyA, nullptr)){
    800015f8:	00000613          	li	a2,0
    800015fc:	00004597          	auipc	a1,0x4
    80001600:	2dc5b583          	ld	a1,732(a1) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001604:	fe040513          	addi	a0,s0,-32
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	ec4080e7          	jalr	-316(ra) # 800014cc <_Z13thread_createPP7_threadPFvPvES2_>
    80001610:	04050463          	beqz	a0,80001658 <main+0xa4>
        printString("thread created");
    }
//    threads[1]->start();

    if(!thread_create(&threads[2], workerBodyB, nullptr)){
    80001614:	00000613          	li	a2,0
    80001618:	00004597          	auipc	a1,0x4
    8000161c:	2c85b583          	ld	a1,712(a1) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001620:	fe840513          	addi	a0,s0,-24
    80001624:	00000097          	auipc	ra,0x0
    80001628:	ea8080e7          	jalr	-344(ra) # 800014cc <_Z13thread_createPP7_threadPFvPvES2_>
    8000162c:	04051463          	bnez	a0,80001674 <main+0xc0>
        printString("thread created");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	9d050513          	addi	a0,a0,-1584 # 80005000 <kvmincrease+0xcc0>
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	7dc080e7          	jalr	2012(ra) # 80001e14 <_Z11printStringPKc>
    80001640:	0340006f          	j	80001674 <main+0xc0>
        printString("thread created");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	9bc50513          	addi	a0,a0,-1604 # 80005000 <kvmincrease+0xcc0>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	7c8080e7          	jalr	1992(ra) # 80001e14 <_Z11printStringPKc>
    80001654:	f95ff06f          	j	800015e8 <main+0x34>
        printString("thread created");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	9a850513          	addi	a0,a0,-1624 # 80005000 <kvmincrease+0xcc0>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	7b4080e7          	jalr	1972(ra) # 80001e14 <_Z11printStringPKc>
    80001668:	fadff06f          	j	80001614 <main+0x60>
    }
//    threads[2]->start();

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	b78080e7          	jalr	-1160(ra) # 800011e4 <_ZN7_thread5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001674:	fe043783          	ld	a5,-32(s0)
    80001678:	0287c783          	lbu	a5,40(a5)
    8000167c:	fe0788e3          	beqz	a5,8000166c <main+0xb8>
    80001680:	fe843783          	ld	a5,-24(s0)
    80001684:	0287c783          	lbu	a5,40(a5)
    80001688:	fe0782e3          	beqz	a5,8000166c <main+0xb8>
    }


    printString("finished \n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	98450513          	addi	a0,a0,-1660 # 80005010 <kvmincrease+0xcd0>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	780080e7          	jalr	1920(ra) # 80001e14 <_Z11printStringPKc>

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
    800016e0:	27c78793          	addi	a5,a5,636 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
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
    80001708:	25453503          	ld	a0,596(a0) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    8000170c:	04050263          	beqz	a0,80001750 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001710:	00853783          	ld	a5,8(a0)
    80001714:	00004717          	auipc	a4,0x4
    80001718:	24f73223          	sd	a5,580(a4) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000171c:	02078463          	beqz	a5,80001744 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001720:	00053483          	ld	s1,0(a0)
        MemoryAllocator::kmem_free(elem);
    80001724:	00000097          	auipc	ra,0x0
    80001728:	6c8080e7          	jalr	1736(ra) # 80001dec <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000172c:	00048513          	mv	a0,s1
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret
        if (!head) { tail = 0; }
    80001744:	00004797          	auipc	a5,0x4
    80001748:	2007be23          	sd	zero,540(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001778:	650080e7          	jalr	1616(ra) # 80001dc4 <_ZN15MemoryAllocator10kmem_allocEm>
        elem->data=data;
    8000177c:	00953023          	sd	s1,0(a0)
        elem->next=0;
    80001780:	00053423          	sd	zero,8(a0)
        if (tail)
    80001784:	00004797          	auipc	a5,0x4
    80001788:	1dc7b783          	ld	a5,476(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000178c:	02078263          	beqz	a5,800017b0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001790:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001794:	00004797          	auipc	a5,0x4
    80001798:	1ca7b623          	sd	a0,460(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret
            head = tail = elem;
    800017b0:	00004797          	auipc	a5,0x4
    800017b4:	1a878793          	addi	a5,a5,424 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
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
    8000180c:	c38080e7          	jalr	-968(ra) # 80001440 <_Z9mem_allocm>
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
    80001834:	c10080e7          	jalr	-1008(ra) # 80001440 <_Z9mem_allocm>
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
    8000185c:	c34080e7          	jalr	-972(ra) # 8000148c <_Z8mem_freePv>
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
    80001884:	c0c080e7          	jalr	-1012(ra) # 8000148c <_Z8mem_freePv>

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
    80001900:	8e8080e7          	jalr	-1816(ra) # 800011e4 <_ZN7_thread5yieldEv>
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
    8000192c:	6f850513          	addi	a0,a0,1784 # 80005020 <kvmincrease+0xce0>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	4e4080e7          	jalr	1252(ra) # 80001e14 <_Z11printStringPKc>
        printInteger(i);
    80001938:	00048513          	mv	a0,s1
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	548080e7          	jalr	1352(ra) # 80001e84 <_Z12printIntegerm>
        printString("\n");
    80001944:	00003517          	auipc	a0,0x3
    80001948:	6ec50513          	addi	a0,a0,1772 # 80005030 <kvmincrease+0xcf0>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	4c8080e7          	jalr	1224(ra) # 80001e14 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001954:	0014849b          	addiw	s1,s1,1
    80001958:	0ff4f493          	andi	s1,s1,255
    8000195c:	00200793          	li	a5,2
    80001960:	fc97f4e3          	bgeu	a5,s1,80001928 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6c450513          	addi	a0,a0,1732 # 80005028 <kvmincrease+0xce8>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	4a8080e7          	jalr	1192(ra) # 80001e14 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001974:	00700313          	li	t1,7
    _thread::yield();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	86c080e7          	jalr	-1940(ra) # 800011e4 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001980:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6b450513          	addi	a0,a0,1716 # 80005038 <kvmincrease+0xcf8>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	488080e7          	jalr	1160(ra) # 80001e14 <_Z11printStringPKc>
    printInteger(t1);
    80001994:	00090513          	mv	a0,s2
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	4ec080e7          	jalr	1260(ra) # 80001e84 <_Z12printIntegerm>
    printString("\n");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	69050513          	addi	a0,a0,1680 # 80005030 <kvmincrease+0xcf0>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	46c080e7          	jalr	1132(ra) # 80001e14 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800019b0:	01400513          	li	a0,20
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	ee4080e7          	jalr	-284(ra) # 80001898 <_ZL9fibonaccim>
    800019bc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	68050513          	addi	a0,a0,1664 # 80005040 <kvmincrease+0xd00>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	44c080e7          	jalr	1100(ra) # 80001e14 <_Z11printStringPKc>
    printInteger(result);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	4b0080e7          	jalr	1200(ra) # 80001e84 <_Z12printIntegerm>
    printString("\n");
    800019dc:	00003517          	auipc	a0,0x3
    800019e0:	65450513          	addi	a0,a0,1620 # 80005030 <kvmincrease+0xcf0>
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	430080e7          	jalr	1072(ra) # 80001e14 <_Z11printStringPKc>
    800019ec:	0380006f          	j	80001a24 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800019f0:	00003517          	auipc	a0,0x3
    800019f4:	63050513          	addi	a0,a0,1584 # 80005020 <kvmincrease+0xce0>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	41c080e7          	jalr	1052(ra) # 80001e14 <_Z11printStringPKc>
        printInteger(i);
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	480080e7          	jalr	1152(ra) # 80001e84 <_Z12printIntegerm>
        printString("\n");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	62450513          	addi	a0,a0,1572 # 80005030 <kvmincrease+0xcf0>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	400080e7          	jalr	1024(ra) # 80001e14 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001a1c:	0014849b          	addiw	s1,s1,1
    80001a20:	0ff4f493          	andi	s1,s1,255
    80001a24:	00500793          	li	a5,5
    80001a28:	fc97f4e3          	bgeu	a5,s1,800019f0 <_Z11workerBodyAPv+0xe8>
    }

    _thread::running->setFinished(true);
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	e947b783          	ld	a5,-364(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a34:	0007b783          	ld	a5,0(a5)

    uint64 getTimeSlice() const { return timeSlice; }
    80001a38:	00100713          	li	a4,1
    80001a3c:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001a40:	fffff097          	auipc	ra,0xfffff
    80001a44:	7a4080e7          	jalr	1956(ra) # 800011e4 <_ZN7_thread5yieldEv>
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
    80001a84:	5d050513          	addi	a0,a0,1488 # 80005050 <kvmincrease+0xd10>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	38c080e7          	jalr	908(ra) # 80001e14 <_Z11printStringPKc>
        printInteger(i);
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	3f0080e7          	jalr	1008(ra) # 80001e84 <_Z12printIntegerm>
        printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	59450513          	addi	a0,a0,1428 # 80005030 <kvmincrease+0xcf0>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	370080e7          	jalr	880(ra) # 80001e14 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001aac:	0014849b          	addiw	s1,s1,1
    80001ab0:	0ff4f493          	andi	s1,s1,255
    80001ab4:	00c00793          	li	a5,12
    80001ab8:	fc97f4e3          	bgeu	a5,s1,80001a80 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001abc:	00003517          	auipc	a0,0x3
    80001ac0:	59c50513          	addi	a0,a0,1436 # 80005058 <kvmincrease+0xd18>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	350080e7          	jalr	848(ra) # 80001e14 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001acc:	00500313          	li	t1,5
    _thread::yield();
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	714080e7          	jalr	1812(ra) # 800011e4 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001ad8:	01700513          	li	a0,23
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	dbc080e7          	jalr	-580(ra) # 80001898 <_ZL9fibonaccim>
    80001ae4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	55850513          	addi	a0,a0,1368 # 80005040 <kvmincrease+0xd00>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	324080e7          	jalr	804(ra) # 80001e14 <_Z11printStringPKc>
    printInteger(result);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	388080e7          	jalr	904(ra) # 80001e84 <_Z12printIntegerm>
    printString("\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	52c50513          	addi	a0,a0,1324 # 80005030 <kvmincrease+0xcf0>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	308080e7          	jalr	776(ra) # 80001e14 <_Z11printStringPKc>
    80001b14:	0380006f          	j	80001b4c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	53850513          	addi	a0,a0,1336 # 80005050 <kvmincrease+0xd10>
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	2f4080e7          	jalr	756(ra) # 80001e14 <_Z11printStringPKc>
        printInteger(i);
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	358080e7          	jalr	856(ra) # 80001e84 <_Z12printIntegerm>
        printString("\n");
    80001b34:	00003517          	auipc	a0,0x3
    80001b38:	4fc50513          	addi	a0,a0,1276 # 80005030 <kvmincrease+0xcf0>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	2d8080e7          	jalr	728(ra) # 80001e14 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b44:	0014849b          	addiw	s1,s1,1
    80001b48:	0ff4f493          	andi	s1,s1,255
    80001b4c:	00f00793          	li	a5,15
    80001b50:	fc97f4e3          	bgeu	a5,s1,80001b18 <_Z11workerBodyBPv+0xb8>
    }

    _thread::running->setFinished(true);
    80001b54:	00004797          	auipc	a5,0x4
    80001b58:	d6c7b783          	ld	a5,-660(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b5c:	0007b783          	ld	a5,0(a5)
    80001b60:	00100713          	li	a4,1
    80001b64:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001b68:	fffff097          	auipc	ra,0xfffff
    80001b6c:	67c080e7          	jalr	1660(ra) # 800011e4 <_ZN7_thread5yieldEv>
}
    80001b70:	01813083          	ld	ra,24(sp)
    80001b74:	01013403          	ld	s0,16(sp)
    80001b78:	00813483          	ld	s1,8(sp)
    80001b7c:	00013903          	ld	s2,0(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret

0000000080001b88 <_ZN5Riscv10popSppSpieEv>:




void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00813423          	sd	s0,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b94:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001b98:	10200073          	sret
}
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001ba8:	f6010113          	addi	sp,sp,-160
    80001bac:	08113c23          	sd	ra,152(sp)
    80001bb0:	08813823          	sd	s0,144(sp)
    80001bb4:	08913423          	sd	s1,136(sp)
    80001bb8:	09213023          	sd	s2,128(sp)
    80001bbc:	07313c23          	sd	s3,120(sp)
    80001bc0:	07413823          	sd	s4,112(sp)
    80001bc4:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bc8:	142027f3          	csrr	a5,scause
    80001bcc:	f6f43423          	sd	a5,-152(s0)
    return scause;
    80001bd0:	f6843783          	ld	a5,-152(s0)
    uint scause = r_scause();
    80001bd4:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
//    uint64 arg0;
    uint64 arg1;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001bd8:	00050493          	mv	s1,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001bdc:	ff87879b          	addiw	a5,a5,-8
    80001be0:	00100713          	li	a4,1
    80001be4:	02f77263          	bgeu	a4,a5,80001c08 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001be8:	09813083          	ld	ra,152(sp)
    80001bec:	09013403          	ld	s0,144(sp)
    80001bf0:	08813483          	ld	s1,136(sp)
    80001bf4:	08013903          	ld	s2,128(sp)
    80001bf8:	07813983          	ld	s3,120(sp)
    80001bfc:	07013a03          	ld	s4,112(sp)
    80001c00:	0a010113          	addi	sp,sp,160
    80001c04:	00008067          	ret
        if(a0reg==0x04){
    80001c08:	00400793          	li	a5,4
    80001c0c:	04f48e63          	beq	s1,a5,80001c68 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        else if(a0reg==0x11){
    80001c10:	01100793          	li	a5,17
    80001c14:	08f48863          	beq	s1,a5,80001ca4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        if(a0reg== 0x01 ){
    80001c18:	00100793          	li	a5,1
    80001c1c:	0ef48863          	beq	s1,a5,80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if(a0reg==0x02){
    80001c20:	00200793          	li	a5,2
    80001c24:	12f48263          	beq	s1,a5,80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if(a0reg==0x12){
    80001c28:	01200793          	li	a5,18
    80001c2c:	14f48a63          	beq	s1,a5,80001d80 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if(a0reg == 0x13){
    80001c30:	01300793          	li	a5,19
    80001c34:	faf49ae3          	bne	s1,a5,80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c38:	141027f3          	csrr	a5,sepc
    80001c3c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c40:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c44:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c48:	100027f3          	csrr	a5,sstatus
    80001c4c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001c50:	fc043903          	ld	s2,-64(s0)
            _thread::dispatch();
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	608080e7          	jalr	1544(ra) # 8000125c <_ZN7_thread8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c5c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c60:	14149073          	csrw	sepc,s1
}
    80001c64:	f85ff06f          	j	80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c68:	141027f3          	csrr	a5,sepc
    80001c6c:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80001c70:	f7843903          	ld	s2,-136(s0)
            uint64 sepc = r_sepc() + 4;
    80001c74:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c78:	100027f3          	csrr	a5,sstatus
    80001c7c:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80001c80:	f7043983          	ld	s3,-144(s0)
            _thread::timeSliceCounter = 0;
    80001c84:	00004797          	auipc	a5,0x4
    80001c88:	c647b783          	ld	a5,-924(a5) # 800058e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c8c:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5cc080e7          	jalr	1484(ra) # 8000125c <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c98:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c9c:	14191073          	csrw	sepc,s2
}
    80001ca0:	f79ff06f          	j	80001c18 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ca4:	141027f3          	csrr	a5,sepc
    80001ca8:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001cac:	f8843903          	ld	s2,-120(s0)
            uint64 sepc = r_sepc() + 4;
    80001cb0:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cb4:	100027f3          	csrr	a5,sstatus
    80001cb8:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001cbc:	f8043983          	ld	s3,-128(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    80001cc0:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    80001cc4:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    80001cc8:	06843683          	ld	a3,104(s0)
            __asm__ volatile("ld a4, 14*8(fp)"); //a4
    80001ccc:	07043703          	ld	a4,112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001cd0:	00058a13          	mv	s4,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    80001cd4:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    80001cd8:	00068593          	mv	a1,a3
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack
    80001cdc:	00070613          	mv	a2,a4
            _thread* t = _thread::createThread(arg2,  (void*)arg3, arg4);    //t je thread_t
    80001ce0:	fffff097          	auipc	ra,0xfffff
    80001ce4:	65c080e7          	jalr	1628(ra) # 8000133c <_ZN7_thread12createThreadEPFvPvES0_Pm>
            *arg1=t;
    80001ce8:	00aa3023          	sd	a0,0(s4)
            if(t!= nullptr)ret=0;
    80001cec:	00050c63          	beqz	a0,80001d04 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    80001cf0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001cf4:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cf8:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cfc:	14191073          	csrw	sepc,s2
}
    80001d00:	f19ff06f          	j	80001c18 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            else ret =-1;
    80001d04:	fff00793          	li	a5,-1
    80001d08:	fedff06f          	j	80001cf4 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d0c:	141027f3          	csrr	a5,sepc
    80001d10:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80001d14:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = r_sepc() + 4;
    80001d18:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d1c:	100027f3          	csrr	a5,sstatus
    80001d20:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80001d24:	f9043903          	ld	s2,-112(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001d28:	00058513          	mv	a0,a1
            uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1*MEM_BLOCK_SIZE);
    80001d2c:	00651513          	slli	a0,a0,0x6
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	094080e7          	jalr	148(ra) # 80001dc4 <_ZN15MemoryAllocator10kmem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001d38:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d3c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d40:	14149073          	csrw	sepc,s1
}
    80001d44:	ea5ff06f          	j	80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d48:	141027f3          	csrr	a5,sepc
    80001d4c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001d50:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001d54:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d58:	100027f3          	csrr	a5,sstatus
    80001d5c:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001d60:	fa043903          	ld	s2,-96(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001d64:	00058513          	mv	a0,a1
            int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	084080e7          	jalr	132(ra) # 80001dec <_ZN15MemoryAllocator9kmem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001d70:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d74:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d78:	14149073          	csrw	sepc,s1
}
    80001d7c:	e6dff06f          	j	80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d80:	141027f3          	csrr	a5,sepc
    80001d84:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d88:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    80001d8c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d90:	100027f3          	csrr	a5,sstatus
    80001d94:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001d98:	fb043903          	ld	s2,-80(s0)
            _thread::running->finished=true;
    80001d9c:	00004797          	auipc	a5,0x4
    80001da0:	b247b783          	ld	a5,-1244(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001da4:	0007b783          	ld	a5,0(a5)
    80001da8:	00100713          	li	a4,1
    80001dac:	02e78423          	sb	a4,40(a5)
            _thread::dispatch();
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	4ac080e7          	jalr	1196(ra) # 8000125c <_ZN7_thread8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001db8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dbc:	14149073          	csrw	sepc,s1
}
    80001dc0:	e29ff06f          	j	80001be8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>

0000000080001dc4 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00113423          	sd	ra,8(sp)
    80001dcc:	00813023          	sd	s0,0(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001dd4:	00002097          	auipc	ra,0x2
    80001dd8:	2f4080e7          	jalr	756(ra) # 800040c8 <__mem_alloc>
}
    80001ddc:	00813083          	ld	ra,8(sp)
    80001de0:	00013403          	ld	s0,0(sp)
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret

0000000080001dec <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001dfc:	00002097          	auipc	ra,0x2
    80001e00:	200080e7          	jalr	512(ra) # 80003ffc <__mem_free>
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e14:	fd010113          	addi	sp,sp,-48
    80001e18:	02113423          	sd	ra,40(sp)
    80001e1c:	02813023          	sd	s0,32(sp)
    80001e20:	00913c23          	sd	s1,24(sp)
    80001e24:	01213823          	sd	s2,16(sp)
    80001e28:	03010413          	addi	s0,sp,48
    80001e2c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e30:	100027f3          	csrr	a5,sstatus
    80001e34:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e38:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e3c:	00200793          	li	a5,2
    80001e40:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001e44:	0004c503          	lbu	a0,0(s1)
    80001e48:	00050a63          	beqz	a0,80001e5c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e4c:	00002097          	auipc	ra,0x2
    80001e50:	3d4080e7          	jalr	980(ra) # 80004220 <__putc>
        string++;
    80001e54:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e58:	fedff06f          	j	80001e44 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001e5c:	0009091b          	sext.w	s2,s2
    80001e60:	00297913          	andi	s2,s2,2
    80001e64:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e68:	10092073          	csrs	sstatus,s2
}
    80001e6c:	02813083          	ld	ra,40(sp)
    80001e70:	02013403          	ld	s0,32(sp)
    80001e74:	01813483          	ld	s1,24(sp)
    80001e78:	01013903          	ld	s2,16(sp)
    80001e7c:	03010113          	addi	sp,sp,48
    80001e80:	00008067          	ret

0000000080001e84 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e84:	fc010113          	addi	sp,sp,-64
    80001e88:	02113c23          	sd	ra,56(sp)
    80001e8c:	02813823          	sd	s0,48(sp)
    80001e90:	02913423          	sd	s1,40(sp)
    80001e94:	03213023          	sd	s2,32(sp)
    80001e98:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e9c:	100027f3          	csrr	a5,sstatus
    80001ea0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ea4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ea8:	00200793          	li	a5,2
    80001eac:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001eb0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001eb4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001eb8:	00a00613          	li	a2,10
    80001ebc:	02c5773b          	remuw	a4,a0,a2
    80001ec0:	02071693          	slli	a3,a4,0x20
    80001ec4:	0206d693          	srli	a3,a3,0x20
    80001ec8:	00003717          	auipc	a4,0x3
    80001ecc:	1a070713          	addi	a4,a4,416 # 80005068 <_ZZ12printIntegermE6digits>
    80001ed0:	00d70733          	add	a4,a4,a3
    80001ed4:	00074703          	lbu	a4,0(a4)
    80001ed8:	fe040693          	addi	a3,s0,-32
    80001edc:	009687b3          	add	a5,a3,s1
    80001ee0:	0014849b          	addiw	s1,s1,1
    80001ee4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ee8:	0005071b          	sext.w	a4,a0
    80001eec:	02c5553b          	divuw	a0,a0,a2
    80001ef0:	00900793          	li	a5,9
    80001ef4:	fce7e2e3          	bltu	a5,a4,80001eb8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001ef8:	fff4849b          	addiw	s1,s1,-1
    80001efc:	0004ce63          	bltz	s1,80001f18 <_Z12printIntegerm+0x94>
    80001f00:	fe040793          	addi	a5,s0,-32
    80001f04:	009787b3          	add	a5,a5,s1
    80001f08:	ff07c503          	lbu	a0,-16(a5)
    80001f0c:	00002097          	auipc	ra,0x2
    80001f10:	314080e7          	jalr	788(ra) # 80004220 <__putc>
    80001f14:	fe5ff06f          	j	80001ef8 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f18:	0009091b          	sext.w	s2,s2
    80001f1c:	00297913          	andi	s2,s2,2
    80001f20:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f24:	10092073          	csrs	sstatus,s2
}
    80001f28:	03813083          	ld	ra,56(sp)
    80001f2c:	03013403          	ld	s0,48(sp)
    80001f30:	02813483          	ld	s1,40(sp)
    80001f34:	02013903          	ld	s2,32(sp)
    80001f38:	04010113          	addi	sp,sp,64
    80001f3c:	00008067          	ret

0000000080001f40 <start>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	300027f3          	csrr	a5,mstatus
    80001f50:	ffffe737          	lui	a4,0xffffe
    80001f54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c1f>
    80001f58:	00e7f7b3          	and	a5,a5,a4
    80001f5c:	00001737          	lui	a4,0x1
    80001f60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f64:	00e7e7b3          	or	a5,a5,a4
    80001f68:	30079073          	csrw	mstatus,a5
    80001f6c:	00000797          	auipc	a5,0x0
    80001f70:	16078793          	addi	a5,a5,352 # 800020cc <system_main>
    80001f74:	34179073          	csrw	mepc,a5
    80001f78:	00000793          	li	a5,0
    80001f7c:	18079073          	csrw	satp,a5
    80001f80:	000107b7          	lui	a5,0x10
    80001f84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f88:	30279073          	csrw	medeleg,a5
    80001f8c:	30379073          	csrw	mideleg,a5
    80001f90:	104027f3          	csrr	a5,sie
    80001f94:	2227e793          	ori	a5,a5,546
    80001f98:	10479073          	csrw	sie,a5
    80001f9c:	fff00793          	li	a5,-1
    80001fa0:	00a7d793          	srli	a5,a5,0xa
    80001fa4:	3b079073          	csrw	pmpaddr0,a5
    80001fa8:	00f00793          	li	a5,15
    80001fac:	3a079073          	csrw	pmpcfg0,a5
    80001fb0:	f14027f3          	csrr	a5,mhartid
    80001fb4:	0200c737          	lui	a4,0x200c
    80001fb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fbc:	0007869b          	sext.w	a3,a5
    80001fc0:	00269713          	slli	a4,a3,0x2
    80001fc4:	000f4637          	lui	a2,0xf4
    80001fc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fcc:	00d70733          	add	a4,a4,a3
    80001fd0:	0037979b          	slliw	a5,a5,0x3
    80001fd4:	020046b7          	lui	a3,0x2004
    80001fd8:	00d787b3          	add	a5,a5,a3
    80001fdc:	00c585b3          	add	a1,a1,a2
    80001fe0:	00371693          	slli	a3,a4,0x3
    80001fe4:	00004717          	auipc	a4,0x4
    80001fe8:	98c70713          	addi	a4,a4,-1652 # 80005970 <timer_scratch>
    80001fec:	00b7b023          	sd	a1,0(a5)
    80001ff0:	00d70733          	add	a4,a4,a3
    80001ff4:	00f73c23          	sd	a5,24(a4)
    80001ff8:	02c73023          	sd	a2,32(a4)
    80001ffc:	34071073          	csrw	mscratch,a4
    80002000:	00000797          	auipc	a5,0x0
    80002004:	6e078793          	addi	a5,a5,1760 # 800026e0 <timervec>
    80002008:	30579073          	csrw	mtvec,a5
    8000200c:	300027f3          	csrr	a5,mstatus
    80002010:	0087e793          	ori	a5,a5,8
    80002014:	30079073          	csrw	mstatus,a5
    80002018:	304027f3          	csrr	a5,mie
    8000201c:	0807e793          	ori	a5,a5,128
    80002020:	30479073          	csrw	mie,a5
    80002024:	f14027f3          	csrr	a5,mhartid
    80002028:	0007879b          	sext.w	a5,a5
    8000202c:	00078213          	mv	tp,a5
    80002030:	30200073          	mret
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <timerinit>:
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    8000204c:	f14027f3          	csrr	a5,mhartid
    80002050:	0200c737          	lui	a4,0x200c
    80002054:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002058:	0007869b          	sext.w	a3,a5
    8000205c:	00269713          	slli	a4,a3,0x2
    80002060:	000f4637          	lui	a2,0xf4
    80002064:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002068:	00d70733          	add	a4,a4,a3
    8000206c:	0037979b          	slliw	a5,a5,0x3
    80002070:	020046b7          	lui	a3,0x2004
    80002074:	00d787b3          	add	a5,a5,a3
    80002078:	00c585b3          	add	a1,a1,a2
    8000207c:	00371693          	slli	a3,a4,0x3
    80002080:	00004717          	auipc	a4,0x4
    80002084:	8f070713          	addi	a4,a4,-1808 # 80005970 <timer_scratch>
    80002088:	00b7b023          	sd	a1,0(a5)
    8000208c:	00d70733          	add	a4,a4,a3
    80002090:	00f73c23          	sd	a5,24(a4)
    80002094:	02c73023          	sd	a2,32(a4)
    80002098:	34071073          	csrw	mscratch,a4
    8000209c:	00000797          	auipc	a5,0x0
    800020a0:	64478793          	addi	a5,a5,1604 # 800026e0 <timervec>
    800020a4:	30579073          	csrw	mtvec,a5
    800020a8:	300027f3          	csrr	a5,mstatus
    800020ac:	0087e793          	ori	a5,a5,8
    800020b0:	30079073          	csrw	mstatus,a5
    800020b4:	304027f3          	csrr	a5,mie
    800020b8:	0807e793          	ori	a5,a5,128
    800020bc:	30479073          	csrw	mie,a5
    800020c0:	00813403          	ld	s0,8(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <system_main>:
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00813823          	sd	s0,16(sp)
    800020d4:	00913423          	sd	s1,8(sp)
    800020d8:	00113c23          	sd	ra,24(sp)
    800020dc:	02010413          	addi	s0,sp,32
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	0c4080e7          	jalr	196(ra) # 800021a4 <cpuid>
    800020e8:	00004497          	auipc	s1,0x4
    800020ec:	82848493          	addi	s1,s1,-2008 # 80005910 <started>
    800020f0:	02050263          	beqz	a0,80002114 <system_main+0x48>
    800020f4:	0004a783          	lw	a5,0(s1)
    800020f8:	0007879b          	sext.w	a5,a5
    800020fc:	fe078ce3          	beqz	a5,800020f4 <system_main+0x28>
    80002100:	0ff0000f          	fence
    80002104:	00003517          	auipc	a0,0x3
    80002108:	fa450513          	addi	a0,a0,-92 # 800050a8 <_ZZ12printIntegermE6digits+0x40>
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	a70080e7          	jalr	-1424(ra) # 80002b7c <panic>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	9c4080e7          	jalr	-1596(ra) # 80002ad8 <consoleinit>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	150080e7          	jalr	336(ra) # 8000326c <printfinit>
    80002124:	00003517          	auipc	a0,0x3
    80002128:	f0c50513          	addi	a0,a0,-244 # 80005030 <kvmincrease+0xcf0>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	aac080e7          	jalr	-1364(ra) # 80002bd8 <__printf>
    80002134:	00003517          	auipc	a0,0x3
    80002138:	f4450513          	addi	a0,a0,-188 # 80005078 <_ZZ12printIntegermE6digits+0x10>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	a9c080e7          	jalr	-1380(ra) # 80002bd8 <__printf>
    80002144:	00003517          	auipc	a0,0x3
    80002148:	eec50513          	addi	a0,a0,-276 # 80005030 <kvmincrease+0xcf0>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	a8c080e7          	jalr	-1396(ra) # 80002bd8 <__printf>
    80002154:	00001097          	auipc	ra,0x1
    80002158:	4a4080e7          	jalr	1188(ra) # 800035f8 <kinit>
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	148080e7          	jalr	328(ra) # 800022a4 <trapinit>
    80002164:	00000097          	auipc	ra,0x0
    80002168:	16c080e7          	jalr	364(ra) # 800022d0 <trapinithart>
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	5b4080e7          	jalr	1460(ra) # 80002720 <plicinit>
    80002174:	00000097          	auipc	ra,0x0
    80002178:	5d4080e7          	jalr	1492(ra) # 80002748 <plicinithart>
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	078080e7          	jalr	120(ra) # 800021f4 <userinit>
    80002184:	0ff0000f          	fence
    80002188:	00100793          	li	a5,1
    8000218c:	00003517          	auipc	a0,0x3
    80002190:	f0450513          	addi	a0,a0,-252 # 80005090 <_ZZ12printIntegermE6digits+0x28>
    80002194:	00f4a023          	sw	a5,0(s1)
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	a40080e7          	jalr	-1472(ra) # 80002bd8 <__printf>
    800021a0:	0000006f          	j	800021a0 <system_main+0xd4>

00000000800021a4 <cpuid>:
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00813423          	sd	s0,8(sp)
    800021ac:	01010413          	addi	s0,sp,16
    800021b0:	00020513          	mv	a0,tp
    800021b4:	00813403          	ld	s0,8(sp)
    800021b8:	0005051b          	sext.w	a0,a0
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <mycpu>:
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00813423          	sd	s0,8(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	00020793          	mv	a5,tp
    800021d4:	00813403          	ld	s0,8(sp)
    800021d8:	0007879b          	sext.w	a5,a5
    800021dc:	00779793          	slli	a5,a5,0x7
    800021e0:	00004517          	auipc	a0,0x4
    800021e4:	7c050513          	addi	a0,a0,1984 # 800069a0 <cpus>
    800021e8:	00f50533          	add	a0,a0,a5
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <userinit>:
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813423          	sd	s0,8(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	fffff317          	auipc	t1,0xfffff
    8000220c:	3ac30067          	jr	940(t1) # 800015b4 <main>

0000000080002210 <either_copyout>:
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	01010413          	addi	s0,sp,16
    80002220:	02051663          	bnez	a0,8000224c <either_copyout+0x3c>
    80002224:	00058513          	mv	a0,a1
    80002228:	00060593          	mv	a1,a2
    8000222c:	0006861b          	sext.w	a2,a3
    80002230:	00002097          	auipc	ra,0x2
    80002234:	c54080e7          	jalr	-940(ra) # 80003e84 <__memmove>
    80002238:	00813083          	ld	ra,8(sp)
    8000223c:	00013403          	ld	s0,0(sp)
    80002240:	00000513          	li	a0,0
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	e8450513          	addi	a0,a0,-380 # 800050d0 <_ZZ12printIntegermE6digits+0x68>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	928080e7          	jalr	-1752(ra) # 80002b7c <panic>

000000008000225c <either_copyin>:
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	02059463          	bnez	a1,80002294 <either_copyin+0x38>
    80002270:	00060593          	mv	a1,a2
    80002274:	0006861b          	sext.w	a2,a3
    80002278:	00002097          	auipc	ra,0x2
    8000227c:	c0c080e7          	jalr	-1012(ra) # 80003e84 <__memmove>
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	00000513          	li	a0,0
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret
    80002294:	00003517          	auipc	a0,0x3
    80002298:	e6450513          	addi	a0,a0,-412 # 800050f8 <_ZZ12printIntegermE6digits+0x90>
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	8e0080e7          	jalr	-1824(ra) # 80002b7c <panic>

00000000800022a4 <trapinit>:
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813423          	sd	s0,8(sp)
    800022ac:	01010413          	addi	s0,sp,16
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	00003597          	auipc	a1,0x3
    800022b8:	e6c58593          	addi	a1,a1,-404 # 80005120 <_ZZ12printIntegermE6digits+0xb8>
    800022bc:	00004517          	auipc	a0,0x4
    800022c0:	76450513          	addi	a0,a0,1892 # 80006a20 <tickslock>
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00001317          	auipc	t1,0x1
    800022cc:	5c030067          	jr	1472(t1) # 80003888 <initlock>

00000000800022d0 <trapinithart>:
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00000797          	auipc	a5,0x0
    800022e0:	2f478793          	addi	a5,a5,756 # 800025d0 <kernelvec>
    800022e4:	10579073          	csrw	stvec,a5
    800022e8:	00813403          	ld	s0,8(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <usertrap>:
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    80002300:	00813403          	ld	s0,8(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <usertrapret>:
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <kerneltrap>:
    80002324:	fe010113          	addi	sp,sp,-32
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00113c23          	sd	ra,24(sp)
    80002330:	00913423          	sd	s1,8(sp)
    80002334:	02010413          	addi	s0,sp,32
    80002338:	142025f3          	csrr	a1,scause
    8000233c:	100027f3          	csrr	a5,sstatus
    80002340:	0027f793          	andi	a5,a5,2
    80002344:	10079c63          	bnez	a5,8000245c <kerneltrap+0x138>
    80002348:	142027f3          	csrr	a5,scause
    8000234c:	0207ce63          	bltz	a5,80002388 <kerneltrap+0x64>
    80002350:	00003517          	auipc	a0,0x3
    80002354:	e1850513          	addi	a0,a0,-488 # 80005168 <_ZZ12printIntegermE6digits+0x100>
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	880080e7          	jalr	-1920(ra) # 80002bd8 <__printf>
    80002360:	141025f3          	csrr	a1,sepc
    80002364:	14302673          	csrr	a2,stval
    80002368:	00003517          	auipc	a0,0x3
    8000236c:	e1050513          	addi	a0,a0,-496 # 80005178 <_ZZ12printIntegermE6digits+0x110>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	868080e7          	jalr	-1944(ra) # 80002bd8 <__printf>
    80002378:	00003517          	auipc	a0,0x3
    8000237c:	e1850513          	addi	a0,a0,-488 # 80005190 <_ZZ12printIntegermE6digits+0x128>
    80002380:	00000097          	auipc	ra,0x0
    80002384:	7fc080e7          	jalr	2044(ra) # 80002b7c <panic>
    80002388:	0ff7f713          	andi	a4,a5,255
    8000238c:	00900693          	li	a3,9
    80002390:	04d70063          	beq	a4,a3,800023d0 <kerneltrap+0xac>
    80002394:	fff00713          	li	a4,-1
    80002398:	03f71713          	slli	a4,a4,0x3f
    8000239c:	00170713          	addi	a4,a4,1
    800023a0:	fae798e3          	bne	a5,a4,80002350 <kerneltrap+0x2c>
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	e00080e7          	jalr	-512(ra) # 800021a4 <cpuid>
    800023ac:	06050663          	beqz	a0,80002418 <kerneltrap+0xf4>
    800023b0:	144027f3          	csrr	a5,sip
    800023b4:	ffd7f793          	andi	a5,a5,-3
    800023b8:	14479073          	csrw	sip,a5
    800023bc:	01813083          	ld	ra,24(sp)
    800023c0:	01013403          	ld	s0,16(sp)
    800023c4:	00813483          	ld	s1,8(sp)
    800023c8:	02010113          	addi	sp,sp,32
    800023cc:	00008067          	ret
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	3c4080e7          	jalr	964(ra) # 80002794 <plic_claim>
    800023d8:	00a00793          	li	a5,10
    800023dc:	00050493          	mv	s1,a0
    800023e0:	06f50863          	beq	a0,a5,80002450 <kerneltrap+0x12c>
    800023e4:	fc050ce3          	beqz	a0,800023bc <kerneltrap+0x98>
    800023e8:	00050593          	mv	a1,a0
    800023ec:	00003517          	auipc	a0,0x3
    800023f0:	d5c50513          	addi	a0,a0,-676 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	7e4080e7          	jalr	2020(ra) # 80002bd8 <__printf>
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	01813083          	ld	ra,24(sp)
    80002404:	00048513          	mv	a0,s1
    80002408:	00813483          	ld	s1,8(sp)
    8000240c:	02010113          	addi	sp,sp,32
    80002410:	00000317          	auipc	t1,0x0
    80002414:	3bc30067          	jr	956(t1) # 800027cc <plic_complete>
    80002418:	00004517          	auipc	a0,0x4
    8000241c:	60850513          	addi	a0,a0,1544 # 80006a20 <tickslock>
    80002420:	00001097          	auipc	ra,0x1
    80002424:	48c080e7          	jalr	1164(ra) # 800038ac <acquire>
    80002428:	00003717          	auipc	a4,0x3
    8000242c:	4ec70713          	addi	a4,a4,1260 # 80005914 <ticks>
    80002430:	00072783          	lw	a5,0(a4)
    80002434:	00004517          	auipc	a0,0x4
    80002438:	5ec50513          	addi	a0,a0,1516 # 80006a20 <tickslock>
    8000243c:	0017879b          	addiw	a5,a5,1
    80002440:	00f72023          	sw	a5,0(a4)
    80002444:	00001097          	auipc	ra,0x1
    80002448:	534080e7          	jalr	1332(ra) # 80003978 <release>
    8000244c:	f65ff06f          	j	800023b0 <kerneltrap+0x8c>
    80002450:	00001097          	auipc	ra,0x1
    80002454:	090080e7          	jalr	144(ra) # 800034e0 <uartintr>
    80002458:	fa5ff06f          	j	800023fc <kerneltrap+0xd8>
    8000245c:	00003517          	auipc	a0,0x3
    80002460:	ccc50513          	addi	a0,a0,-820 # 80005128 <_ZZ12printIntegermE6digits+0xc0>
    80002464:	00000097          	auipc	ra,0x0
    80002468:	718080e7          	jalr	1816(ra) # 80002b7c <panic>

000000008000246c <clockintr>:
    8000246c:	fe010113          	addi	sp,sp,-32
    80002470:	00813823          	sd	s0,16(sp)
    80002474:	00913423          	sd	s1,8(sp)
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	02010413          	addi	s0,sp,32
    80002480:	00004497          	auipc	s1,0x4
    80002484:	5a048493          	addi	s1,s1,1440 # 80006a20 <tickslock>
    80002488:	00048513          	mv	a0,s1
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	420080e7          	jalr	1056(ra) # 800038ac <acquire>
    80002494:	00003717          	auipc	a4,0x3
    80002498:	48070713          	addi	a4,a4,1152 # 80005914 <ticks>
    8000249c:	00072783          	lw	a5,0(a4)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	01813083          	ld	ra,24(sp)
    800024a8:	00048513          	mv	a0,s1
    800024ac:	0017879b          	addiw	a5,a5,1
    800024b0:	00813483          	ld	s1,8(sp)
    800024b4:	00f72023          	sw	a5,0(a4)
    800024b8:	02010113          	addi	sp,sp,32
    800024bc:	00001317          	auipc	t1,0x1
    800024c0:	4bc30067          	jr	1212(t1) # 80003978 <release>

00000000800024c4 <devintr>:
    800024c4:	142027f3          	csrr	a5,scause
    800024c8:	00000513          	li	a0,0
    800024cc:	0007c463          	bltz	a5,800024d4 <devintr+0x10>
    800024d0:	00008067          	ret
    800024d4:	fe010113          	addi	sp,sp,-32
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00113c23          	sd	ra,24(sp)
    800024e0:	00913423          	sd	s1,8(sp)
    800024e4:	02010413          	addi	s0,sp,32
    800024e8:	0ff7f713          	andi	a4,a5,255
    800024ec:	00900693          	li	a3,9
    800024f0:	04d70c63          	beq	a4,a3,80002548 <devintr+0x84>
    800024f4:	fff00713          	li	a4,-1
    800024f8:	03f71713          	slli	a4,a4,0x3f
    800024fc:	00170713          	addi	a4,a4,1
    80002500:	00e78c63          	beq	a5,a4,80002518 <devintr+0x54>
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	01013403          	ld	s0,16(sp)
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	02010113          	addi	sp,sp,32
    80002514:	00008067          	ret
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	c8c080e7          	jalr	-884(ra) # 800021a4 <cpuid>
    80002520:	06050663          	beqz	a0,8000258c <devintr+0xc8>
    80002524:	144027f3          	csrr	a5,sip
    80002528:	ffd7f793          	andi	a5,a5,-3
    8000252c:	14479073          	csrw	sip,a5
    80002530:	01813083          	ld	ra,24(sp)
    80002534:	01013403          	ld	s0,16(sp)
    80002538:	00813483          	ld	s1,8(sp)
    8000253c:	00200513          	li	a0,2
    80002540:	02010113          	addi	sp,sp,32
    80002544:	00008067          	ret
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	24c080e7          	jalr	588(ra) # 80002794 <plic_claim>
    80002550:	00a00793          	li	a5,10
    80002554:	00050493          	mv	s1,a0
    80002558:	06f50663          	beq	a0,a5,800025c4 <devintr+0x100>
    8000255c:	00100513          	li	a0,1
    80002560:	fa0482e3          	beqz	s1,80002504 <devintr+0x40>
    80002564:	00048593          	mv	a1,s1
    80002568:	00003517          	auipc	a0,0x3
    8000256c:	be050513          	addi	a0,a0,-1056 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80002570:	00000097          	auipc	ra,0x0
    80002574:	668080e7          	jalr	1640(ra) # 80002bd8 <__printf>
    80002578:	00048513          	mv	a0,s1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	250080e7          	jalr	592(ra) # 800027cc <plic_complete>
    80002584:	00100513          	li	a0,1
    80002588:	f7dff06f          	j	80002504 <devintr+0x40>
    8000258c:	00004517          	auipc	a0,0x4
    80002590:	49450513          	addi	a0,a0,1172 # 80006a20 <tickslock>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	318080e7          	jalr	792(ra) # 800038ac <acquire>
    8000259c:	00003717          	auipc	a4,0x3
    800025a0:	37870713          	addi	a4,a4,888 # 80005914 <ticks>
    800025a4:	00072783          	lw	a5,0(a4)
    800025a8:	00004517          	auipc	a0,0x4
    800025ac:	47850513          	addi	a0,a0,1144 # 80006a20 <tickslock>
    800025b0:	0017879b          	addiw	a5,a5,1
    800025b4:	00f72023          	sw	a5,0(a4)
    800025b8:	00001097          	auipc	ra,0x1
    800025bc:	3c0080e7          	jalr	960(ra) # 80003978 <release>
    800025c0:	f65ff06f          	j	80002524 <devintr+0x60>
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	f1c080e7          	jalr	-228(ra) # 800034e0 <uartintr>
    800025cc:	fadff06f          	j	80002578 <devintr+0xb4>

00000000800025d0 <kernelvec>:
    800025d0:	f0010113          	addi	sp,sp,-256
    800025d4:	00113023          	sd	ra,0(sp)
    800025d8:	00213423          	sd	sp,8(sp)
    800025dc:	00313823          	sd	gp,16(sp)
    800025e0:	00413c23          	sd	tp,24(sp)
    800025e4:	02513023          	sd	t0,32(sp)
    800025e8:	02613423          	sd	t1,40(sp)
    800025ec:	02713823          	sd	t2,48(sp)
    800025f0:	02813c23          	sd	s0,56(sp)
    800025f4:	04913023          	sd	s1,64(sp)
    800025f8:	04a13423          	sd	a0,72(sp)
    800025fc:	04b13823          	sd	a1,80(sp)
    80002600:	04c13c23          	sd	a2,88(sp)
    80002604:	06d13023          	sd	a3,96(sp)
    80002608:	06e13423          	sd	a4,104(sp)
    8000260c:	06f13823          	sd	a5,112(sp)
    80002610:	07013c23          	sd	a6,120(sp)
    80002614:	09113023          	sd	a7,128(sp)
    80002618:	09213423          	sd	s2,136(sp)
    8000261c:	09313823          	sd	s3,144(sp)
    80002620:	09413c23          	sd	s4,152(sp)
    80002624:	0b513023          	sd	s5,160(sp)
    80002628:	0b613423          	sd	s6,168(sp)
    8000262c:	0b713823          	sd	s7,176(sp)
    80002630:	0b813c23          	sd	s8,184(sp)
    80002634:	0d913023          	sd	s9,192(sp)
    80002638:	0da13423          	sd	s10,200(sp)
    8000263c:	0db13823          	sd	s11,208(sp)
    80002640:	0dc13c23          	sd	t3,216(sp)
    80002644:	0fd13023          	sd	t4,224(sp)
    80002648:	0fe13423          	sd	t5,232(sp)
    8000264c:	0ff13823          	sd	t6,240(sp)
    80002650:	cd5ff0ef          	jal	ra,80002324 <kerneltrap>
    80002654:	00013083          	ld	ra,0(sp)
    80002658:	00813103          	ld	sp,8(sp)
    8000265c:	01013183          	ld	gp,16(sp)
    80002660:	02013283          	ld	t0,32(sp)
    80002664:	02813303          	ld	t1,40(sp)
    80002668:	03013383          	ld	t2,48(sp)
    8000266c:	03813403          	ld	s0,56(sp)
    80002670:	04013483          	ld	s1,64(sp)
    80002674:	04813503          	ld	a0,72(sp)
    80002678:	05013583          	ld	a1,80(sp)
    8000267c:	05813603          	ld	a2,88(sp)
    80002680:	06013683          	ld	a3,96(sp)
    80002684:	06813703          	ld	a4,104(sp)
    80002688:	07013783          	ld	a5,112(sp)
    8000268c:	07813803          	ld	a6,120(sp)
    80002690:	08013883          	ld	a7,128(sp)
    80002694:	08813903          	ld	s2,136(sp)
    80002698:	09013983          	ld	s3,144(sp)
    8000269c:	09813a03          	ld	s4,152(sp)
    800026a0:	0a013a83          	ld	s5,160(sp)
    800026a4:	0a813b03          	ld	s6,168(sp)
    800026a8:	0b013b83          	ld	s7,176(sp)
    800026ac:	0b813c03          	ld	s8,184(sp)
    800026b0:	0c013c83          	ld	s9,192(sp)
    800026b4:	0c813d03          	ld	s10,200(sp)
    800026b8:	0d013d83          	ld	s11,208(sp)
    800026bc:	0d813e03          	ld	t3,216(sp)
    800026c0:	0e013e83          	ld	t4,224(sp)
    800026c4:	0e813f03          	ld	t5,232(sp)
    800026c8:	0f013f83          	ld	t6,240(sp)
    800026cc:	10010113          	addi	sp,sp,256
    800026d0:	10200073          	sret
    800026d4:	00000013          	nop
    800026d8:	00000013          	nop
    800026dc:	00000013          	nop

00000000800026e0 <timervec>:
    800026e0:	34051573          	csrrw	a0,mscratch,a0
    800026e4:	00b53023          	sd	a1,0(a0)
    800026e8:	00c53423          	sd	a2,8(a0)
    800026ec:	00d53823          	sd	a3,16(a0)
    800026f0:	01853583          	ld	a1,24(a0)
    800026f4:	02053603          	ld	a2,32(a0)
    800026f8:	0005b683          	ld	a3,0(a1)
    800026fc:	00c686b3          	add	a3,a3,a2
    80002700:	00d5b023          	sd	a3,0(a1)
    80002704:	00200593          	li	a1,2
    80002708:	14459073          	csrw	sip,a1
    8000270c:	01053683          	ld	a3,16(a0)
    80002710:	00853603          	ld	a2,8(a0)
    80002714:	00053583          	ld	a1,0(a0)
    80002718:	34051573          	csrrw	a0,mscratch,a0
    8000271c:	30200073          	mret

0000000080002720 <plicinit>:
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00813423          	sd	s0,8(sp)
    80002728:	01010413          	addi	s0,sp,16
    8000272c:	00813403          	ld	s0,8(sp)
    80002730:	0c0007b7          	lui	a5,0xc000
    80002734:	00100713          	li	a4,1
    80002738:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000273c:	00e7a223          	sw	a4,4(a5)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret

0000000080002748 <plicinithart>:
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	a4c080e7          	jalr	-1460(ra) # 800021a4 <cpuid>
    80002760:	0085171b          	slliw	a4,a0,0x8
    80002764:	0c0027b7          	lui	a5,0xc002
    80002768:	00e787b3          	add	a5,a5,a4
    8000276c:	40200713          	li	a4,1026
    80002770:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	00d5151b          	slliw	a0,a0,0xd
    80002780:	0c2017b7          	lui	a5,0xc201
    80002784:	00a78533          	add	a0,a5,a0
    80002788:	00052023          	sw	zero,0(a0)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <plic_claim>:
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	01010413          	addi	s0,sp,16
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	a00080e7          	jalr	-1536(ra) # 800021a4 <cpuid>
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	00d5151b          	slliw	a0,a0,0xd
    800027b8:	0c2017b7          	lui	a5,0xc201
    800027bc:	00a78533          	add	a0,a5,a0
    800027c0:	00452503          	lw	a0,4(a0)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <plic_complete>:
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00813823          	sd	s0,16(sp)
    800027d4:	00913423          	sd	s1,8(sp)
    800027d8:	00113c23          	sd	ra,24(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00050493          	mv	s1,a0
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	9c0080e7          	jalr	-1600(ra) # 800021a4 <cpuid>
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00d5179b          	slliw	a5,a0,0xd
    800027f8:	0c201737          	lui	a4,0xc201
    800027fc:	00f707b3          	add	a5,a4,a5
    80002800:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret

0000000080002810 <consolewrite>:
    80002810:	fb010113          	addi	sp,sp,-80
    80002814:	04813023          	sd	s0,64(sp)
    80002818:	04113423          	sd	ra,72(sp)
    8000281c:	02913c23          	sd	s1,56(sp)
    80002820:	03213823          	sd	s2,48(sp)
    80002824:	03313423          	sd	s3,40(sp)
    80002828:	03413023          	sd	s4,32(sp)
    8000282c:	01513c23          	sd	s5,24(sp)
    80002830:	05010413          	addi	s0,sp,80
    80002834:	06c05c63          	blez	a2,800028ac <consolewrite+0x9c>
    80002838:	00060993          	mv	s3,a2
    8000283c:	00050a13          	mv	s4,a0
    80002840:	00058493          	mv	s1,a1
    80002844:	00000913          	li	s2,0
    80002848:	fff00a93          	li	s5,-1
    8000284c:	01c0006f          	j	80002868 <consolewrite+0x58>
    80002850:	fbf44503          	lbu	a0,-65(s0)
    80002854:	0019091b          	addiw	s2,s2,1
    80002858:	00148493          	addi	s1,s1,1
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	a9c080e7          	jalr	-1380(ra) # 800032f8 <uartputc>
    80002864:	03298063          	beq	s3,s2,80002884 <consolewrite+0x74>
    80002868:	00048613          	mv	a2,s1
    8000286c:	00100693          	li	a3,1
    80002870:	000a0593          	mv	a1,s4
    80002874:	fbf40513          	addi	a0,s0,-65
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	9e4080e7          	jalr	-1564(ra) # 8000225c <either_copyin>
    80002880:	fd5518e3          	bne	a0,s5,80002850 <consolewrite+0x40>
    80002884:	04813083          	ld	ra,72(sp)
    80002888:	04013403          	ld	s0,64(sp)
    8000288c:	03813483          	ld	s1,56(sp)
    80002890:	02813983          	ld	s3,40(sp)
    80002894:	02013a03          	ld	s4,32(sp)
    80002898:	01813a83          	ld	s5,24(sp)
    8000289c:	00090513          	mv	a0,s2
    800028a0:	03013903          	ld	s2,48(sp)
    800028a4:	05010113          	addi	sp,sp,80
    800028a8:	00008067          	ret
    800028ac:	00000913          	li	s2,0
    800028b0:	fd5ff06f          	j	80002884 <consolewrite+0x74>

00000000800028b4 <consoleread>:
    800028b4:	f9010113          	addi	sp,sp,-112
    800028b8:	06813023          	sd	s0,96(sp)
    800028bc:	04913c23          	sd	s1,88(sp)
    800028c0:	05213823          	sd	s2,80(sp)
    800028c4:	05313423          	sd	s3,72(sp)
    800028c8:	05413023          	sd	s4,64(sp)
    800028cc:	03513c23          	sd	s5,56(sp)
    800028d0:	03613823          	sd	s6,48(sp)
    800028d4:	03713423          	sd	s7,40(sp)
    800028d8:	03813023          	sd	s8,32(sp)
    800028dc:	06113423          	sd	ra,104(sp)
    800028e0:	01913c23          	sd	s9,24(sp)
    800028e4:	07010413          	addi	s0,sp,112
    800028e8:	00060b93          	mv	s7,a2
    800028ec:	00050913          	mv	s2,a0
    800028f0:	00058c13          	mv	s8,a1
    800028f4:	00060b1b          	sext.w	s6,a2
    800028f8:	00004497          	auipc	s1,0x4
    800028fc:	15048493          	addi	s1,s1,336 # 80006a48 <cons>
    80002900:	00400993          	li	s3,4
    80002904:	fff00a13          	li	s4,-1
    80002908:	00a00a93          	li	s5,10
    8000290c:	05705e63          	blez	s7,80002968 <consoleread+0xb4>
    80002910:	09c4a703          	lw	a4,156(s1)
    80002914:	0984a783          	lw	a5,152(s1)
    80002918:	0007071b          	sext.w	a4,a4
    8000291c:	08e78463          	beq	a5,a4,800029a4 <consoleread+0xf0>
    80002920:	07f7f713          	andi	a4,a5,127
    80002924:	00e48733          	add	a4,s1,a4
    80002928:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000292c:	0017869b          	addiw	a3,a5,1
    80002930:	08d4ac23          	sw	a3,152(s1)
    80002934:	00070c9b          	sext.w	s9,a4
    80002938:	0b370663          	beq	a4,s3,800029e4 <consoleread+0x130>
    8000293c:	00100693          	li	a3,1
    80002940:	f9f40613          	addi	a2,s0,-97
    80002944:	000c0593          	mv	a1,s8
    80002948:	00090513          	mv	a0,s2
    8000294c:	f8e40fa3          	sb	a4,-97(s0)
    80002950:	00000097          	auipc	ra,0x0
    80002954:	8c0080e7          	jalr	-1856(ra) # 80002210 <either_copyout>
    80002958:	01450863          	beq	a0,s4,80002968 <consoleread+0xb4>
    8000295c:	001c0c13          	addi	s8,s8,1
    80002960:	fffb8b9b          	addiw	s7,s7,-1
    80002964:	fb5c94e3          	bne	s9,s5,8000290c <consoleread+0x58>
    80002968:	000b851b          	sext.w	a0,s7
    8000296c:	06813083          	ld	ra,104(sp)
    80002970:	06013403          	ld	s0,96(sp)
    80002974:	05813483          	ld	s1,88(sp)
    80002978:	05013903          	ld	s2,80(sp)
    8000297c:	04813983          	ld	s3,72(sp)
    80002980:	04013a03          	ld	s4,64(sp)
    80002984:	03813a83          	ld	s5,56(sp)
    80002988:	02813b83          	ld	s7,40(sp)
    8000298c:	02013c03          	ld	s8,32(sp)
    80002990:	01813c83          	ld	s9,24(sp)
    80002994:	40ab053b          	subw	a0,s6,a0
    80002998:	03013b03          	ld	s6,48(sp)
    8000299c:	07010113          	addi	sp,sp,112
    800029a0:	00008067          	ret
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	1d8080e7          	jalr	472(ra) # 80003b7c <push_on>
    800029ac:	0984a703          	lw	a4,152(s1)
    800029b0:	09c4a783          	lw	a5,156(s1)
    800029b4:	0007879b          	sext.w	a5,a5
    800029b8:	fef70ce3          	beq	a4,a5,800029b0 <consoleread+0xfc>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	234080e7          	jalr	564(ra) # 80003bf0 <pop_on>
    800029c4:	0984a783          	lw	a5,152(s1)
    800029c8:	07f7f713          	andi	a4,a5,127
    800029cc:	00e48733          	add	a4,s1,a4
    800029d0:	01874703          	lbu	a4,24(a4)
    800029d4:	0017869b          	addiw	a3,a5,1
    800029d8:	08d4ac23          	sw	a3,152(s1)
    800029dc:	00070c9b          	sext.w	s9,a4
    800029e0:	f5371ee3          	bne	a4,s3,8000293c <consoleread+0x88>
    800029e4:	000b851b          	sext.w	a0,s7
    800029e8:	f96bf2e3          	bgeu	s7,s6,8000296c <consoleread+0xb8>
    800029ec:	08f4ac23          	sw	a5,152(s1)
    800029f0:	f7dff06f          	j	8000296c <consoleread+0xb8>

00000000800029f4 <consputc>:
    800029f4:	10000793          	li	a5,256
    800029f8:	00f50663          	beq	a0,a5,80002a04 <consputc+0x10>
    800029fc:	00001317          	auipc	t1,0x1
    80002a00:	9f430067          	jr	-1548(t1) # 800033f0 <uartputc_sync>
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	00800513          	li	a0,8
    80002a18:	00001097          	auipc	ra,0x1
    80002a1c:	9d8080e7          	jalr	-1576(ra) # 800033f0 <uartputc_sync>
    80002a20:	02000513          	li	a0,32
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	9cc080e7          	jalr	-1588(ra) # 800033f0 <uartputc_sync>
    80002a2c:	00013403          	ld	s0,0(sp)
    80002a30:	00813083          	ld	ra,8(sp)
    80002a34:	00800513          	li	a0,8
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00001317          	auipc	t1,0x1
    80002a40:	9b430067          	jr	-1612(t1) # 800033f0 <uartputc_sync>

0000000080002a44 <consoleintr>:
    80002a44:	fe010113          	addi	sp,sp,-32
    80002a48:	00813823          	sd	s0,16(sp)
    80002a4c:	00913423          	sd	s1,8(sp)
    80002a50:	01213023          	sd	s2,0(sp)
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00004917          	auipc	s2,0x4
    80002a60:	fec90913          	addi	s2,s2,-20 # 80006a48 <cons>
    80002a64:	00050493          	mv	s1,a0
    80002a68:	00090513          	mv	a0,s2
    80002a6c:	00001097          	auipc	ra,0x1
    80002a70:	e40080e7          	jalr	-448(ra) # 800038ac <acquire>
    80002a74:	02048c63          	beqz	s1,80002aac <consoleintr+0x68>
    80002a78:	0a092783          	lw	a5,160(s2)
    80002a7c:	09892703          	lw	a4,152(s2)
    80002a80:	07f00693          	li	a3,127
    80002a84:	40e7873b          	subw	a4,a5,a4
    80002a88:	02e6e263          	bltu	a3,a4,80002aac <consoleintr+0x68>
    80002a8c:	00d00713          	li	a4,13
    80002a90:	04e48063          	beq	s1,a4,80002ad0 <consoleintr+0x8c>
    80002a94:	07f7f713          	andi	a4,a5,127
    80002a98:	00e90733          	add	a4,s2,a4
    80002a9c:	0017879b          	addiw	a5,a5,1
    80002aa0:	0af92023          	sw	a5,160(s2)
    80002aa4:	00970c23          	sb	s1,24(a4)
    80002aa8:	08f92e23          	sw	a5,156(s2)
    80002aac:	01013403          	ld	s0,16(sp)
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	00004517          	auipc	a0,0x4
    80002ac0:	f8c50513          	addi	a0,a0,-116 # 80006a48 <cons>
    80002ac4:	02010113          	addi	sp,sp,32
    80002ac8:	00001317          	auipc	t1,0x1
    80002acc:	eb030067          	jr	-336(t1) # 80003978 <release>
    80002ad0:	00a00493          	li	s1,10
    80002ad4:	fc1ff06f          	j	80002a94 <consoleintr+0x50>

0000000080002ad8 <consoleinit>:
    80002ad8:	fe010113          	addi	sp,sp,-32
    80002adc:	00113c23          	sd	ra,24(sp)
    80002ae0:	00813823          	sd	s0,16(sp)
    80002ae4:	00913423          	sd	s1,8(sp)
    80002ae8:	02010413          	addi	s0,sp,32
    80002aec:	00004497          	auipc	s1,0x4
    80002af0:	f5c48493          	addi	s1,s1,-164 # 80006a48 <cons>
    80002af4:	00048513          	mv	a0,s1
    80002af8:	00002597          	auipc	a1,0x2
    80002afc:	6a858593          	addi	a1,a1,1704 # 800051a0 <_ZZ12printIntegermE6digits+0x138>
    80002b00:	00001097          	auipc	ra,0x1
    80002b04:	d88080e7          	jalr	-632(ra) # 80003888 <initlock>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	7ac080e7          	jalr	1964(ra) # 800032b4 <uartinit>
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00000797          	auipc	a5,0x0
    80002b1c:	d9c78793          	addi	a5,a5,-612 # 800028b4 <consoleread>
    80002b20:	0af4bc23          	sd	a5,184(s1)
    80002b24:	00000797          	auipc	a5,0x0
    80002b28:	cec78793          	addi	a5,a5,-788 # 80002810 <consolewrite>
    80002b2c:	0cf4b023          	sd	a5,192(s1)
    80002b30:	00813483          	ld	s1,8(sp)
    80002b34:	02010113          	addi	sp,sp,32
    80002b38:	00008067          	ret

0000000080002b3c <console_read>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	00004317          	auipc	t1,0x4
    80002b50:	fb433303          	ld	t1,-76(t1) # 80006b00 <devsw+0x10>
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00030067          	jr	t1

0000000080002b5c <console_write>:
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00813423          	sd	s0,8(sp)
    80002b64:	01010413          	addi	s0,sp,16
    80002b68:	00813403          	ld	s0,8(sp)
    80002b6c:	00004317          	auipc	t1,0x4
    80002b70:	f9c33303          	ld	t1,-100(t1) # 80006b08 <devsw+0x18>
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00030067          	jr	t1

0000000080002b7c <panic>:
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    80002b90:	00050493          	mv	s1,a0
    80002b94:	00002517          	auipc	a0,0x2
    80002b98:	61450513          	addi	a0,a0,1556 # 800051a8 <_ZZ12printIntegermE6digits+0x140>
    80002b9c:	00004797          	auipc	a5,0x4
    80002ba0:	0007a623          	sw	zero,12(a5) # 80006ba8 <pr+0x18>
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	034080e7          	jalr	52(ra) # 80002bd8 <__printf>
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	028080e7          	jalr	40(ra) # 80002bd8 <__printf>
    80002bb8:	00002517          	auipc	a0,0x2
    80002bbc:	47850513          	addi	a0,a0,1144 # 80005030 <kvmincrease+0xcf0>
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	018080e7          	jalr	24(ra) # 80002bd8 <__printf>
    80002bc8:	00100793          	li	a5,1
    80002bcc:	00003717          	auipc	a4,0x3
    80002bd0:	d4f72623          	sw	a5,-692(a4) # 80005918 <panicked>
    80002bd4:	0000006f          	j	80002bd4 <panic+0x58>

0000000080002bd8 <__printf>:
    80002bd8:	f3010113          	addi	sp,sp,-208
    80002bdc:	08813023          	sd	s0,128(sp)
    80002be0:	07313423          	sd	s3,104(sp)
    80002be4:	09010413          	addi	s0,sp,144
    80002be8:	05813023          	sd	s8,64(sp)
    80002bec:	08113423          	sd	ra,136(sp)
    80002bf0:	06913c23          	sd	s1,120(sp)
    80002bf4:	07213823          	sd	s2,112(sp)
    80002bf8:	07413023          	sd	s4,96(sp)
    80002bfc:	05513c23          	sd	s5,88(sp)
    80002c00:	05613823          	sd	s6,80(sp)
    80002c04:	05713423          	sd	s7,72(sp)
    80002c08:	03913c23          	sd	s9,56(sp)
    80002c0c:	03a13823          	sd	s10,48(sp)
    80002c10:	03b13423          	sd	s11,40(sp)
    80002c14:	00004317          	auipc	t1,0x4
    80002c18:	f7c30313          	addi	t1,t1,-132 # 80006b90 <pr>
    80002c1c:	01832c03          	lw	s8,24(t1)
    80002c20:	00b43423          	sd	a1,8(s0)
    80002c24:	00c43823          	sd	a2,16(s0)
    80002c28:	00d43c23          	sd	a3,24(s0)
    80002c2c:	02e43023          	sd	a4,32(s0)
    80002c30:	02f43423          	sd	a5,40(s0)
    80002c34:	03043823          	sd	a6,48(s0)
    80002c38:	03143c23          	sd	a7,56(s0)
    80002c3c:	00050993          	mv	s3,a0
    80002c40:	4a0c1663          	bnez	s8,800030ec <__printf+0x514>
    80002c44:	60098c63          	beqz	s3,8000325c <__printf+0x684>
    80002c48:	0009c503          	lbu	a0,0(s3)
    80002c4c:	00840793          	addi	a5,s0,8
    80002c50:	f6f43c23          	sd	a5,-136(s0)
    80002c54:	00000493          	li	s1,0
    80002c58:	22050063          	beqz	a0,80002e78 <__printf+0x2a0>
    80002c5c:	00002a37          	lui	s4,0x2
    80002c60:	00018ab7          	lui	s5,0x18
    80002c64:	000f4b37          	lui	s6,0xf4
    80002c68:	00989bb7          	lui	s7,0x989
    80002c6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c7c:	00148c9b          	addiw	s9,s1,1
    80002c80:	02500793          	li	a5,37
    80002c84:	01998933          	add	s2,s3,s9
    80002c88:	38f51263          	bne	a0,a5,8000300c <__printf+0x434>
    80002c8c:	00094783          	lbu	a5,0(s2)
    80002c90:	00078c9b          	sext.w	s9,a5
    80002c94:	1e078263          	beqz	a5,80002e78 <__printf+0x2a0>
    80002c98:	0024849b          	addiw	s1,s1,2
    80002c9c:	07000713          	li	a4,112
    80002ca0:	00998933          	add	s2,s3,s1
    80002ca4:	38e78a63          	beq	a5,a4,80003038 <__printf+0x460>
    80002ca8:	20f76863          	bltu	a4,a5,80002eb8 <__printf+0x2e0>
    80002cac:	42a78863          	beq	a5,a0,800030dc <__printf+0x504>
    80002cb0:	06400713          	li	a4,100
    80002cb4:	40e79663          	bne	a5,a4,800030c0 <__printf+0x4e8>
    80002cb8:	f7843783          	ld	a5,-136(s0)
    80002cbc:	0007a603          	lw	a2,0(a5)
    80002cc0:	00878793          	addi	a5,a5,8
    80002cc4:	f6f43c23          	sd	a5,-136(s0)
    80002cc8:	42064a63          	bltz	a2,800030fc <__printf+0x524>
    80002ccc:	00a00713          	li	a4,10
    80002cd0:	02e677bb          	remuw	a5,a2,a4
    80002cd4:	00002d97          	auipc	s11,0x2
    80002cd8:	4fcd8d93          	addi	s11,s11,1276 # 800051d0 <digits>
    80002cdc:	00900593          	li	a1,9
    80002ce0:	0006051b          	sext.w	a0,a2
    80002ce4:	00000c93          	li	s9,0
    80002ce8:	02079793          	slli	a5,a5,0x20
    80002cec:	0207d793          	srli	a5,a5,0x20
    80002cf0:	00fd87b3          	add	a5,s11,a5
    80002cf4:	0007c783          	lbu	a5,0(a5)
    80002cf8:	02e656bb          	divuw	a3,a2,a4
    80002cfc:	f8f40023          	sb	a5,-128(s0)
    80002d00:	14c5d863          	bge	a1,a2,80002e50 <__printf+0x278>
    80002d04:	06300593          	li	a1,99
    80002d08:	00100c93          	li	s9,1
    80002d0c:	02e6f7bb          	remuw	a5,a3,a4
    80002d10:	02079793          	slli	a5,a5,0x20
    80002d14:	0207d793          	srli	a5,a5,0x20
    80002d18:	00fd87b3          	add	a5,s11,a5
    80002d1c:	0007c783          	lbu	a5,0(a5)
    80002d20:	02e6d73b          	divuw	a4,a3,a4
    80002d24:	f8f400a3          	sb	a5,-127(s0)
    80002d28:	12a5f463          	bgeu	a1,a0,80002e50 <__printf+0x278>
    80002d2c:	00a00693          	li	a3,10
    80002d30:	00900593          	li	a1,9
    80002d34:	02d777bb          	remuw	a5,a4,a3
    80002d38:	02079793          	slli	a5,a5,0x20
    80002d3c:	0207d793          	srli	a5,a5,0x20
    80002d40:	00fd87b3          	add	a5,s11,a5
    80002d44:	0007c503          	lbu	a0,0(a5)
    80002d48:	02d757bb          	divuw	a5,a4,a3
    80002d4c:	f8a40123          	sb	a0,-126(s0)
    80002d50:	48e5f263          	bgeu	a1,a4,800031d4 <__printf+0x5fc>
    80002d54:	06300513          	li	a0,99
    80002d58:	02d7f5bb          	remuw	a1,a5,a3
    80002d5c:	02059593          	slli	a1,a1,0x20
    80002d60:	0205d593          	srli	a1,a1,0x20
    80002d64:	00bd85b3          	add	a1,s11,a1
    80002d68:	0005c583          	lbu	a1,0(a1)
    80002d6c:	02d7d7bb          	divuw	a5,a5,a3
    80002d70:	f8b401a3          	sb	a1,-125(s0)
    80002d74:	48e57263          	bgeu	a0,a4,800031f8 <__printf+0x620>
    80002d78:	3e700513          	li	a0,999
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b40223          	sb	a1,-124(s0)
    80002d98:	46e57663          	bgeu	a0,a4,80003204 <__printf+0x62c>
    80002d9c:	02d7f5bb          	remuw	a1,a5,a3
    80002da0:	02059593          	slli	a1,a1,0x20
    80002da4:	0205d593          	srli	a1,a1,0x20
    80002da8:	00bd85b3          	add	a1,s11,a1
    80002dac:	0005c583          	lbu	a1,0(a1)
    80002db0:	02d7d7bb          	divuw	a5,a5,a3
    80002db4:	f8b402a3          	sb	a1,-123(s0)
    80002db8:	46ea7863          	bgeu	s4,a4,80003228 <__printf+0x650>
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b40323          	sb	a1,-122(s0)
    80002dd8:	3eeaf863          	bgeu	s5,a4,800031c8 <__printf+0x5f0>
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b403a3          	sb	a1,-121(s0)
    80002df8:	42eb7e63          	bgeu	s6,a4,80003234 <__printf+0x65c>
    80002dfc:	02d7f5bb          	remuw	a1,a5,a3
    80002e00:	02059593          	slli	a1,a1,0x20
    80002e04:	0205d593          	srli	a1,a1,0x20
    80002e08:	00bd85b3          	add	a1,s11,a1
    80002e0c:	0005c583          	lbu	a1,0(a1)
    80002e10:	02d7d7bb          	divuw	a5,a5,a3
    80002e14:	f8b40423          	sb	a1,-120(s0)
    80002e18:	42ebfc63          	bgeu	s7,a4,80003250 <__printf+0x678>
    80002e1c:	02079793          	slli	a5,a5,0x20
    80002e20:	0207d793          	srli	a5,a5,0x20
    80002e24:	00fd8db3          	add	s11,s11,a5
    80002e28:	000dc703          	lbu	a4,0(s11)
    80002e2c:	00a00793          	li	a5,10
    80002e30:	00900c93          	li	s9,9
    80002e34:	f8e404a3          	sb	a4,-119(s0)
    80002e38:	00065c63          	bgez	a2,80002e50 <__printf+0x278>
    80002e3c:	f9040713          	addi	a4,s0,-112
    80002e40:	00f70733          	add	a4,a4,a5
    80002e44:	02d00693          	li	a3,45
    80002e48:	fed70823          	sb	a3,-16(a4)
    80002e4c:	00078c93          	mv	s9,a5
    80002e50:	f8040793          	addi	a5,s0,-128
    80002e54:	01978cb3          	add	s9,a5,s9
    80002e58:	f7f40d13          	addi	s10,s0,-129
    80002e5c:	000cc503          	lbu	a0,0(s9)
    80002e60:	fffc8c93          	addi	s9,s9,-1
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	b90080e7          	jalr	-1136(ra) # 800029f4 <consputc>
    80002e6c:	ffac98e3          	bne	s9,s10,80002e5c <__printf+0x284>
    80002e70:	00094503          	lbu	a0,0(s2)
    80002e74:	e00514e3          	bnez	a0,80002c7c <__printf+0xa4>
    80002e78:	1a0c1663          	bnez	s8,80003024 <__printf+0x44c>
    80002e7c:	08813083          	ld	ra,136(sp)
    80002e80:	08013403          	ld	s0,128(sp)
    80002e84:	07813483          	ld	s1,120(sp)
    80002e88:	07013903          	ld	s2,112(sp)
    80002e8c:	06813983          	ld	s3,104(sp)
    80002e90:	06013a03          	ld	s4,96(sp)
    80002e94:	05813a83          	ld	s5,88(sp)
    80002e98:	05013b03          	ld	s6,80(sp)
    80002e9c:	04813b83          	ld	s7,72(sp)
    80002ea0:	04013c03          	ld	s8,64(sp)
    80002ea4:	03813c83          	ld	s9,56(sp)
    80002ea8:	03013d03          	ld	s10,48(sp)
    80002eac:	02813d83          	ld	s11,40(sp)
    80002eb0:	0d010113          	addi	sp,sp,208
    80002eb4:	00008067          	ret
    80002eb8:	07300713          	li	a4,115
    80002ebc:	1ce78a63          	beq	a5,a4,80003090 <__printf+0x4b8>
    80002ec0:	07800713          	li	a4,120
    80002ec4:	1ee79e63          	bne	a5,a4,800030c0 <__printf+0x4e8>
    80002ec8:	f7843783          	ld	a5,-136(s0)
    80002ecc:	0007a703          	lw	a4,0(a5)
    80002ed0:	00878793          	addi	a5,a5,8
    80002ed4:	f6f43c23          	sd	a5,-136(s0)
    80002ed8:	28074263          	bltz	a4,8000315c <__printf+0x584>
    80002edc:	00002d97          	auipc	s11,0x2
    80002ee0:	2f4d8d93          	addi	s11,s11,756 # 800051d0 <digits>
    80002ee4:	00f77793          	andi	a5,a4,15
    80002ee8:	00fd87b3          	add	a5,s11,a5
    80002eec:	0007c683          	lbu	a3,0(a5)
    80002ef0:	00f00613          	li	a2,15
    80002ef4:	0007079b          	sext.w	a5,a4
    80002ef8:	f8d40023          	sb	a3,-128(s0)
    80002efc:	0047559b          	srliw	a1,a4,0x4
    80002f00:	0047569b          	srliw	a3,a4,0x4
    80002f04:	00000c93          	li	s9,0
    80002f08:	0ee65063          	bge	a2,a4,80002fe8 <__printf+0x410>
    80002f0c:	00f6f693          	andi	a3,a3,15
    80002f10:	00dd86b3          	add	a3,s11,a3
    80002f14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002f18:	0087d79b          	srliw	a5,a5,0x8
    80002f1c:	00100c93          	li	s9,1
    80002f20:	f8d400a3          	sb	a3,-127(s0)
    80002f24:	0cb67263          	bgeu	a2,a1,80002fe8 <__printf+0x410>
    80002f28:	00f7f693          	andi	a3,a5,15
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c583          	lbu	a1,0(a3)
    80002f34:	00f00613          	li	a2,15
    80002f38:	0047d69b          	srliw	a3,a5,0x4
    80002f3c:	f8b40123          	sb	a1,-126(s0)
    80002f40:	0047d593          	srli	a1,a5,0x4
    80002f44:	28f67e63          	bgeu	a2,a5,800031e0 <__printf+0x608>
    80002f48:	00f6f693          	andi	a3,a3,15
    80002f4c:	00dd86b3          	add	a3,s11,a3
    80002f50:	0006c503          	lbu	a0,0(a3)
    80002f54:	0087d813          	srli	a6,a5,0x8
    80002f58:	0087d69b          	srliw	a3,a5,0x8
    80002f5c:	f8a401a3          	sb	a0,-125(s0)
    80002f60:	28b67663          	bgeu	a2,a1,800031ec <__printf+0x614>
    80002f64:	00f6f693          	andi	a3,a3,15
    80002f68:	00dd86b3          	add	a3,s11,a3
    80002f6c:	0006c583          	lbu	a1,0(a3)
    80002f70:	00c7d513          	srli	a0,a5,0xc
    80002f74:	00c7d69b          	srliw	a3,a5,0xc
    80002f78:	f8b40223          	sb	a1,-124(s0)
    80002f7c:	29067a63          	bgeu	a2,a6,80003210 <__printf+0x638>
    80002f80:	00f6f693          	andi	a3,a3,15
    80002f84:	00dd86b3          	add	a3,s11,a3
    80002f88:	0006c583          	lbu	a1,0(a3)
    80002f8c:	0107d813          	srli	a6,a5,0x10
    80002f90:	0107d69b          	srliw	a3,a5,0x10
    80002f94:	f8b402a3          	sb	a1,-123(s0)
    80002f98:	28a67263          	bgeu	a2,a0,8000321c <__printf+0x644>
    80002f9c:	00f6f693          	andi	a3,a3,15
    80002fa0:	00dd86b3          	add	a3,s11,a3
    80002fa4:	0006c683          	lbu	a3,0(a3)
    80002fa8:	0147d79b          	srliw	a5,a5,0x14
    80002fac:	f8d40323          	sb	a3,-122(s0)
    80002fb0:	21067663          	bgeu	a2,a6,800031bc <__printf+0x5e4>
    80002fb4:	02079793          	slli	a5,a5,0x20
    80002fb8:	0207d793          	srli	a5,a5,0x20
    80002fbc:	00fd8db3          	add	s11,s11,a5
    80002fc0:	000dc683          	lbu	a3,0(s11)
    80002fc4:	00800793          	li	a5,8
    80002fc8:	00700c93          	li	s9,7
    80002fcc:	f8d403a3          	sb	a3,-121(s0)
    80002fd0:	00075c63          	bgez	a4,80002fe8 <__printf+0x410>
    80002fd4:	f9040713          	addi	a4,s0,-112
    80002fd8:	00f70733          	add	a4,a4,a5
    80002fdc:	02d00693          	li	a3,45
    80002fe0:	fed70823          	sb	a3,-16(a4)
    80002fe4:	00078c93          	mv	s9,a5
    80002fe8:	f8040793          	addi	a5,s0,-128
    80002fec:	01978cb3          	add	s9,a5,s9
    80002ff0:	f7f40d13          	addi	s10,s0,-129
    80002ff4:	000cc503          	lbu	a0,0(s9)
    80002ff8:	fffc8c93          	addi	s9,s9,-1
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	9f8080e7          	jalr	-1544(ra) # 800029f4 <consputc>
    80003004:	ff9d18e3          	bne	s10,s9,80002ff4 <__printf+0x41c>
    80003008:	0100006f          	j	80003018 <__printf+0x440>
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	9e8080e7          	jalr	-1560(ra) # 800029f4 <consputc>
    80003014:	000c8493          	mv	s1,s9
    80003018:	00094503          	lbu	a0,0(s2)
    8000301c:	c60510e3          	bnez	a0,80002c7c <__printf+0xa4>
    80003020:	e40c0ee3          	beqz	s8,80002e7c <__printf+0x2a4>
    80003024:	00004517          	auipc	a0,0x4
    80003028:	b6c50513          	addi	a0,a0,-1172 # 80006b90 <pr>
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	94c080e7          	jalr	-1716(ra) # 80003978 <release>
    80003034:	e49ff06f          	j	80002e7c <__printf+0x2a4>
    80003038:	f7843783          	ld	a5,-136(s0)
    8000303c:	03000513          	li	a0,48
    80003040:	01000d13          	li	s10,16
    80003044:	00878713          	addi	a4,a5,8
    80003048:	0007bc83          	ld	s9,0(a5)
    8000304c:	f6e43c23          	sd	a4,-136(s0)
    80003050:	00000097          	auipc	ra,0x0
    80003054:	9a4080e7          	jalr	-1628(ra) # 800029f4 <consputc>
    80003058:	07800513          	li	a0,120
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	998080e7          	jalr	-1640(ra) # 800029f4 <consputc>
    80003064:	00002d97          	auipc	s11,0x2
    80003068:	16cd8d93          	addi	s11,s11,364 # 800051d0 <digits>
    8000306c:	03ccd793          	srli	a5,s9,0x3c
    80003070:	00fd87b3          	add	a5,s11,a5
    80003074:	0007c503          	lbu	a0,0(a5)
    80003078:	fffd0d1b          	addiw	s10,s10,-1
    8000307c:	004c9c93          	slli	s9,s9,0x4
    80003080:	00000097          	auipc	ra,0x0
    80003084:	974080e7          	jalr	-1676(ra) # 800029f4 <consputc>
    80003088:	fe0d12e3          	bnez	s10,8000306c <__printf+0x494>
    8000308c:	f8dff06f          	j	80003018 <__printf+0x440>
    80003090:	f7843783          	ld	a5,-136(s0)
    80003094:	0007bc83          	ld	s9,0(a5)
    80003098:	00878793          	addi	a5,a5,8
    8000309c:	f6f43c23          	sd	a5,-136(s0)
    800030a0:	000c9a63          	bnez	s9,800030b4 <__printf+0x4dc>
    800030a4:	1080006f          	j	800031ac <__printf+0x5d4>
    800030a8:	001c8c93          	addi	s9,s9,1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	948080e7          	jalr	-1720(ra) # 800029f4 <consputc>
    800030b4:	000cc503          	lbu	a0,0(s9)
    800030b8:	fe0518e3          	bnez	a0,800030a8 <__printf+0x4d0>
    800030bc:	f5dff06f          	j	80003018 <__printf+0x440>
    800030c0:	02500513          	li	a0,37
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	930080e7          	jalr	-1744(ra) # 800029f4 <consputc>
    800030cc:	000c8513          	mv	a0,s9
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	924080e7          	jalr	-1756(ra) # 800029f4 <consputc>
    800030d8:	f41ff06f          	j	80003018 <__printf+0x440>
    800030dc:	02500513          	li	a0,37
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	914080e7          	jalr	-1772(ra) # 800029f4 <consputc>
    800030e8:	f31ff06f          	j	80003018 <__printf+0x440>
    800030ec:	00030513          	mv	a0,t1
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	7bc080e7          	jalr	1980(ra) # 800038ac <acquire>
    800030f8:	b4dff06f          	j	80002c44 <__printf+0x6c>
    800030fc:	40c0053b          	negw	a0,a2
    80003100:	00a00713          	li	a4,10
    80003104:	02e576bb          	remuw	a3,a0,a4
    80003108:	00002d97          	auipc	s11,0x2
    8000310c:	0c8d8d93          	addi	s11,s11,200 # 800051d0 <digits>
    80003110:	ff700593          	li	a1,-9
    80003114:	02069693          	slli	a3,a3,0x20
    80003118:	0206d693          	srli	a3,a3,0x20
    8000311c:	00dd86b3          	add	a3,s11,a3
    80003120:	0006c683          	lbu	a3,0(a3)
    80003124:	02e557bb          	divuw	a5,a0,a4
    80003128:	f8d40023          	sb	a3,-128(s0)
    8000312c:	10b65e63          	bge	a2,a1,80003248 <__printf+0x670>
    80003130:	06300593          	li	a1,99
    80003134:	02e7f6bb          	remuw	a3,a5,a4
    80003138:	02069693          	slli	a3,a3,0x20
    8000313c:	0206d693          	srli	a3,a3,0x20
    80003140:	00dd86b3          	add	a3,s11,a3
    80003144:	0006c683          	lbu	a3,0(a3)
    80003148:	02e7d73b          	divuw	a4,a5,a4
    8000314c:	00200793          	li	a5,2
    80003150:	f8d400a3          	sb	a3,-127(s0)
    80003154:	bca5ece3          	bltu	a1,a0,80002d2c <__printf+0x154>
    80003158:	ce5ff06f          	j	80002e3c <__printf+0x264>
    8000315c:	40e007bb          	negw	a5,a4
    80003160:	00002d97          	auipc	s11,0x2
    80003164:	070d8d93          	addi	s11,s11,112 # 800051d0 <digits>
    80003168:	00f7f693          	andi	a3,a5,15
    8000316c:	00dd86b3          	add	a3,s11,a3
    80003170:	0006c583          	lbu	a1,0(a3)
    80003174:	ff100613          	li	a2,-15
    80003178:	0047d69b          	srliw	a3,a5,0x4
    8000317c:	f8b40023          	sb	a1,-128(s0)
    80003180:	0047d59b          	srliw	a1,a5,0x4
    80003184:	0ac75e63          	bge	a4,a2,80003240 <__printf+0x668>
    80003188:	00f6f693          	andi	a3,a3,15
    8000318c:	00dd86b3          	add	a3,s11,a3
    80003190:	0006c603          	lbu	a2,0(a3)
    80003194:	00f00693          	li	a3,15
    80003198:	0087d79b          	srliw	a5,a5,0x8
    8000319c:	f8c400a3          	sb	a2,-127(s0)
    800031a0:	d8b6e4e3          	bltu	a3,a1,80002f28 <__printf+0x350>
    800031a4:	00200793          	li	a5,2
    800031a8:	e2dff06f          	j	80002fd4 <__printf+0x3fc>
    800031ac:	00002c97          	auipc	s9,0x2
    800031b0:	004c8c93          	addi	s9,s9,4 # 800051b0 <_ZZ12printIntegermE6digits+0x148>
    800031b4:	02800513          	li	a0,40
    800031b8:	ef1ff06f          	j	800030a8 <__printf+0x4d0>
    800031bc:	00700793          	li	a5,7
    800031c0:	00600c93          	li	s9,6
    800031c4:	e0dff06f          	j	80002fd0 <__printf+0x3f8>
    800031c8:	00700793          	li	a5,7
    800031cc:	00600c93          	li	s9,6
    800031d0:	c69ff06f          	j	80002e38 <__printf+0x260>
    800031d4:	00300793          	li	a5,3
    800031d8:	00200c93          	li	s9,2
    800031dc:	c5dff06f          	j	80002e38 <__printf+0x260>
    800031e0:	00300793          	li	a5,3
    800031e4:	00200c93          	li	s9,2
    800031e8:	de9ff06f          	j	80002fd0 <__printf+0x3f8>
    800031ec:	00400793          	li	a5,4
    800031f0:	00300c93          	li	s9,3
    800031f4:	dddff06f          	j	80002fd0 <__printf+0x3f8>
    800031f8:	00400793          	li	a5,4
    800031fc:	00300c93          	li	s9,3
    80003200:	c39ff06f          	j	80002e38 <__printf+0x260>
    80003204:	00500793          	li	a5,5
    80003208:	00400c93          	li	s9,4
    8000320c:	c2dff06f          	j	80002e38 <__printf+0x260>
    80003210:	00500793          	li	a5,5
    80003214:	00400c93          	li	s9,4
    80003218:	db9ff06f          	j	80002fd0 <__printf+0x3f8>
    8000321c:	00600793          	li	a5,6
    80003220:	00500c93          	li	s9,5
    80003224:	dadff06f          	j	80002fd0 <__printf+0x3f8>
    80003228:	00600793          	li	a5,6
    8000322c:	00500c93          	li	s9,5
    80003230:	c09ff06f          	j	80002e38 <__printf+0x260>
    80003234:	00800793          	li	a5,8
    80003238:	00700c93          	li	s9,7
    8000323c:	bfdff06f          	j	80002e38 <__printf+0x260>
    80003240:	00100793          	li	a5,1
    80003244:	d91ff06f          	j	80002fd4 <__printf+0x3fc>
    80003248:	00100793          	li	a5,1
    8000324c:	bf1ff06f          	j	80002e3c <__printf+0x264>
    80003250:	00900793          	li	a5,9
    80003254:	00800c93          	li	s9,8
    80003258:	be1ff06f          	j	80002e38 <__printf+0x260>
    8000325c:	00002517          	auipc	a0,0x2
    80003260:	f5c50513          	addi	a0,a0,-164 # 800051b8 <_ZZ12printIntegermE6digits+0x150>
    80003264:	00000097          	auipc	ra,0x0
    80003268:	918080e7          	jalr	-1768(ra) # 80002b7c <panic>

000000008000326c <printfinit>:
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00813823          	sd	s0,16(sp)
    80003274:	00913423          	sd	s1,8(sp)
    80003278:	00113c23          	sd	ra,24(sp)
    8000327c:	02010413          	addi	s0,sp,32
    80003280:	00004497          	auipc	s1,0x4
    80003284:	91048493          	addi	s1,s1,-1776 # 80006b90 <pr>
    80003288:	00048513          	mv	a0,s1
    8000328c:	00002597          	auipc	a1,0x2
    80003290:	f3c58593          	addi	a1,a1,-196 # 800051c8 <_ZZ12printIntegermE6digits+0x160>
    80003294:	00000097          	auipc	ra,0x0
    80003298:	5f4080e7          	jalr	1524(ra) # 80003888 <initlock>
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	0004ac23          	sw	zero,24(s1)
    800032a8:	00813483          	ld	s1,8(sp)
    800032ac:	02010113          	addi	sp,sp,32
    800032b0:	00008067          	ret

00000000800032b4 <uartinit>:
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	100007b7          	lui	a5,0x10000
    800032c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800032c8:	f8000713          	li	a4,-128
    800032cc:	00e781a3          	sb	a4,3(a5)
    800032d0:	00300713          	li	a4,3
    800032d4:	00e78023          	sb	a4,0(a5)
    800032d8:	000780a3          	sb	zero,1(a5)
    800032dc:	00e781a3          	sb	a4,3(a5)
    800032e0:	00700693          	li	a3,7
    800032e4:	00d78123          	sb	a3,2(a5)
    800032e8:	00e780a3          	sb	a4,1(a5)
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <uartputc>:
    800032f8:	00002797          	auipc	a5,0x2
    800032fc:	6207a783          	lw	a5,1568(a5) # 80005918 <panicked>
    80003300:	00078463          	beqz	a5,80003308 <uartputc+0x10>
    80003304:	0000006f          	j	80003304 <uartputc+0xc>
    80003308:	fd010113          	addi	sp,sp,-48
    8000330c:	02813023          	sd	s0,32(sp)
    80003310:	00913c23          	sd	s1,24(sp)
    80003314:	01213823          	sd	s2,16(sp)
    80003318:	01313423          	sd	s3,8(sp)
    8000331c:	02113423          	sd	ra,40(sp)
    80003320:	03010413          	addi	s0,sp,48
    80003324:	00002917          	auipc	s2,0x2
    80003328:	5fc90913          	addi	s2,s2,1532 # 80005920 <uart_tx_r>
    8000332c:	00093783          	ld	a5,0(s2)
    80003330:	00002497          	auipc	s1,0x2
    80003334:	5f848493          	addi	s1,s1,1528 # 80005928 <uart_tx_w>
    80003338:	0004b703          	ld	a4,0(s1)
    8000333c:	02078693          	addi	a3,a5,32
    80003340:	00050993          	mv	s3,a0
    80003344:	02e69c63          	bne	a3,a4,8000337c <uartputc+0x84>
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	834080e7          	jalr	-1996(ra) # 80003b7c <push_on>
    80003350:	00093783          	ld	a5,0(s2)
    80003354:	0004b703          	ld	a4,0(s1)
    80003358:	02078793          	addi	a5,a5,32
    8000335c:	00e79463          	bne	a5,a4,80003364 <uartputc+0x6c>
    80003360:	0000006f          	j	80003360 <uartputc+0x68>
    80003364:	00001097          	auipc	ra,0x1
    80003368:	88c080e7          	jalr	-1908(ra) # 80003bf0 <pop_on>
    8000336c:	00093783          	ld	a5,0(s2)
    80003370:	0004b703          	ld	a4,0(s1)
    80003374:	02078693          	addi	a3,a5,32
    80003378:	fce688e3          	beq	a3,a4,80003348 <uartputc+0x50>
    8000337c:	01f77693          	andi	a3,a4,31
    80003380:	00004597          	auipc	a1,0x4
    80003384:	83058593          	addi	a1,a1,-2000 # 80006bb0 <uart_tx_buf>
    80003388:	00d586b3          	add	a3,a1,a3
    8000338c:	00170713          	addi	a4,a4,1
    80003390:	01368023          	sb	s3,0(a3)
    80003394:	00e4b023          	sd	a4,0(s1)
    80003398:	10000637          	lui	a2,0x10000
    8000339c:	02f71063          	bne	a4,a5,800033bc <uartputc+0xc4>
    800033a0:	0340006f          	j	800033d4 <uartputc+0xdc>
    800033a4:	00074703          	lbu	a4,0(a4)
    800033a8:	00f93023          	sd	a5,0(s2)
    800033ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800033b0:	00093783          	ld	a5,0(s2)
    800033b4:	0004b703          	ld	a4,0(s1)
    800033b8:	00f70e63          	beq	a4,a5,800033d4 <uartputc+0xdc>
    800033bc:	00564683          	lbu	a3,5(a2)
    800033c0:	01f7f713          	andi	a4,a5,31
    800033c4:	00e58733          	add	a4,a1,a4
    800033c8:	0206f693          	andi	a3,a3,32
    800033cc:	00178793          	addi	a5,a5,1
    800033d0:	fc069ae3          	bnez	a3,800033a4 <uartputc+0xac>
    800033d4:	02813083          	ld	ra,40(sp)
    800033d8:	02013403          	ld	s0,32(sp)
    800033dc:	01813483          	ld	s1,24(sp)
    800033e0:	01013903          	ld	s2,16(sp)
    800033e4:	00813983          	ld	s3,8(sp)
    800033e8:	03010113          	addi	sp,sp,48
    800033ec:	00008067          	ret

00000000800033f0 <uartputc_sync>:
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00813423          	sd	s0,8(sp)
    800033f8:	01010413          	addi	s0,sp,16
    800033fc:	00002717          	auipc	a4,0x2
    80003400:	51c72703          	lw	a4,1308(a4) # 80005918 <panicked>
    80003404:	02071663          	bnez	a4,80003430 <uartputc_sync+0x40>
    80003408:	00050793          	mv	a5,a0
    8000340c:	100006b7          	lui	a3,0x10000
    80003410:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003414:	02077713          	andi	a4,a4,32
    80003418:	fe070ce3          	beqz	a4,80003410 <uartputc_sync+0x20>
    8000341c:	0ff7f793          	andi	a5,a5,255
    80003420:	00f68023          	sb	a5,0(a3)
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret
    80003430:	0000006f          	j	80003430 <uartputc_sync+0x40>

0000000080003434 <uartstart>:
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00813423          	sd	s0,8(sp)
    8000343c:	01010413          	addi	s0,sp,16
    80003440:	00002617          	auipc	a2,0x2
    80003444:	4e060613          	addi	a2,a2,1248 # 80005920 <uart_tx_r>
    80003448:	00002517          	auipc	a0,0x2
    8000344c:	4e050513          	addi	a0,a0,1248 # 80005928 <uart_tx_w>
    80003450:	00063783          	ld	a5,0(a2)
    80003454:	00053703          	ld	a4,0(a0)
    80003458:	04f70263          	beq	a4,a5,8000349c <uartstart+0x68>
    8000345c:	100005b7          	lui	a1,0x10000
    80003460:	00003817          	auipc	a6,0x3
    80003464:	75080813          	addi	a6,a6,1872 # 80006bb0 <uart_tx_buf>
    80003468:	01c0006f          	j	80003484 <uartstart+0x50>
    8000346c:	0006c703          	lbu	a4,0(a3)
    80003470:	00f63023          	sd	a5,0(a2)
    80003474:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003478:	00063783          	ld	a5,0(a2)
    8000347c:	00053703          	ld	a4,0(a0)
    80003480:	00f70e63          	beq	a4,a5,8000349c <uartstart+0x68>
    80003484:	01f7f713          	andi	a4,a5,31
    80003488:	00e806b3          	add	a3,a6,a4
    8000348c:	0055c703          	lbu	a4,5(a1)
    80003490:	00178793          	addi	a5,a5,1
    80003494:	02077713          	andi	a4,a4,32
    80003498:	fc071ae3          	bnez	a4,8000346c <uartstart+0x38>
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret

00000000800034a8 <uartgetc>:
    800034a8:	ff010113          	addi	sp,sp,-16
    800034ac:	00813423          	sd	s0,8(sp)
    800034b0:	01010413          	addi	s0,sp,16
    800034b4:	10000737          	lui	a4,0x10000
    800034b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800034bc:	0017f793          	andi	a5,a5,1
    800034c0:	00078c63          	beqz	a5,800034d8 <uartgetc+0x30>
    800034c4:	00074503          	lbu	a0,0(a4)
    800034c8:	0ff57513          	andi	a0,a0,255
    800034cc:	00813403          	ld	s0,8(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret
    800034d8:	fff00513          	li	a0,-1
    800034dc:	ff1ff06f          	j	800034cc <uartgetc+0x24>

00000000800034e0 <uartintr>:
    800034e0:	100007b7          	lui	a5,0x10000
    800034e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034e8:	0017f793          	andi	a5,a5,1
    800034ec:	0a078463          	beqz	a5,80003594 <uartintr+0xb4>
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00913423          	sd	s1,8(sp)
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	02010413          	addi	s0,sp,32
    80003504:	100004b7          	lui	s1,0x10000
    80003508:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000350c:	0ff57513          	andi	a0,a0,255
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	534080e7          	jalr	1332(ra) # 80002a44 <consoleintr>
    80003518:	0054c783          	lbu	a5,5(s1)
    8000351c:	0017f793          	andi	a5,a5,1
    80003520:	fe0794e3          	bnez	a5,80003508 <uartintr+0x28>
    80003524:	00002617          	auipc	a2,0x2
    80003528:	3fc60613          	addi	a2,a2,1020 # 80005920 <uart_tx_r>
    8000352c:	00002517          	auipc	a0,0x2
    80003530:	3fc50513          	addi	a0,a0,1020 # 80005928 <uart_tx_w>
    80003534:	00063783          	ld	a5,0(a2)
    80003538:	00053703          	ld	a4,0(a0)
    8000353c:	04f70263          	beq	a4,a5,80003580 <uartintr+0xa0>
    80003540:	100005b7          	lui	a1,0x10000
    80003544:	00003817          	auipc	a6,0x3
    80003548:	66c80813          	addi	a6,a6,1644 # 80006bb0 <uart_tx_buf>
    8000354c:	01c0006f          	j	80003568 <uartintr+0x88>
    80003550:	0006c703          	lbu	a4,0(a3)
    80003554:	00f63023          	sd	a5,0(a2)
    80003558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000355c:	00063783          	ld	a5,0(a2)
    80003560:	00053703          	ld	a4,0(a0)
    80003564:	00f70e63          	beq	a4,a5,80003580 <uartintr+0xa0>
    80003568:	01f7f713          	andi	a4,a5,31
    8000356c:	00e806b3          	add	a3,a6,a4
    80003570:	0055c703          	lbu	a4,5(a1)
    80003574:	00178793          	addi	a5,a5,1
    80003578:	02077713          	andi	a4,a4,32
    8000357c:	fc071ae3          	bnez	a4,80003550 <uartintr+0x70>
    80003580:	01813083          	ld	ra,24(sp)
    80003584:	01013403          	ld	s0,16(sp)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	02010113          	addi	sp,sp,32
    80003590:	00008067          	ret
    80003594:	00002617          	auipc	a2,0x2
    80003598:	38c60613          	addi	a2,a2,908 # 80005920 <uart_tx_r>
    8000359c:	00002517          	auipc	a0,0x2
    800035a0:	38c50513          	addi	a0,a0,908 # 80005928 <uart_tx_w>
    800035a4:	00063783          	ld	a5,0(a2)
    800035a8:	00053703          	ld	a4,0(a0)
    800035ac:	04f70263          	beq	a4,a5,800035f0 <uartintr+0x110>
    800035b0:	100005b7          	lui	a1,0x10000
    800035b4:	00003817          	auipc	a6,0x3
    800035b8:	5fc80813          	addi	a6,a6,1532 # 80006bb0 <uart_tx_buf>
    800035bc:	01c0006f          	j	800035d8 <uartintr+0xf8>
    800035c0:	0006c703          	lbu	a4,0(a3)
    800035c4:	00f63023          	sd	a5,0(a2)
    800035c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035cc:	00063783          	ld	a5,0(a2)
    800035d0:	00053703          	ld	a4,0(a0)
    800035d4:	02f70063          	beq	a4,a5,800035f4 <uartintr+0x114>
    800035d8:	01f7f713          	andi	a4,a5,31
    800035dc:	00e806b3          	add	a3,a6,a4
    800035e0:	0055c703          	lbu	a4,5(a1)
    800035e4:	00178793          	addi	a5,a5,1
    800035e8:	02077713          	andi	a4,a4,32
    800035ec:	fc071ae3          	bnez	a4,800035c0 <uartintr+0xe0>
    800035f0:	00008067          	ret
    800035f4:	00008067          	ret

00000000800035f8 <kinit>:
    800035f8:	fc010113          	addi	sp,sp,-64
    800035fc:	02913423          	sd	s1,40(sp)
    80003600:	fffff7b7          	lui	a5,0xfffff
    80003604:	00004497          	auipc	s1,0x4
    80003608:	5db48493          	addi	s1,s1,1499 # 80007bdf <end+0xfff>
    8000360c:	02813823          	sd	s0,48(sp)
    80003610:	01313c23          	sd	s3,24(sp)
    80003614:	00f4f4b3          	and	s1,s1,a5
    80003618:	02113c23          	sd	ra,56(sp)
    8000361c:	03213023          	sd	s2,32(sp)
    80003620:	01413823          	sd	s4,16(sp)
    80003624:	01513423          	sd	s5,8(sp)
    80003628:	04010413          	addi	s0,sp,64
    8000362c:	000017b7          	lui	a5,0x1
    80003630:	01100993          	li	s3,17
    80003634:	00f487b3          	add	a5,s1,a5
    80003638:	01b99993          	slli	s3,s3,0x1b
    8000363c:	06f9e063          	bltu	s3,a5,8000369c <kinit+0xa4>
    80003640:	00003a97          	auipc	s5,0x3
    80003644:	5a0a8a93          	addi	s5,s5,1440 # 80006be0 <end>
    80003648:	0754ec63          	bltu	s1,s5,800036c0 <kinit+0xc8>
    8000364c:	0734fa63          	bgeu	s1,s3,800036c0 <kinit+0xc8>
    80003650:	00088a37          	lui	s4,0x88
    80003654:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003658:	00002917          	auipc	s2,0x2
    8000365c:	2d890913          	addi	s2,s2,728 # 80005930 <kmem>
    80003660:	00ca1a13          	slli	s4,s4,0xc
    80003664:	0140006f          	j	80003678 <kinit+0x80>
    80003668:	000017b7          	lui	a5,0x1
    8000366c:	00f484b3          	add	s1,s1,a5
    80003670:	0554e863          	bltu	s1,s5,800036c0 <kinit+0xc8>
    80003674:	0534f663          	bgeu	s1,s3,800036c0 <kinit+0xc8>
    80003678:	00001637          	lui	a2,0x1
    8000367c:	00100593          	li	a1,1
    80003680:	00048513          	mv	a0,s1
    80003684:	00000097          	auipc	ra,0x0
    80003688:	5e4080e7          	jalr	1508(ra) # 80003c68 <__memset>
    8000368c:	00093783          	ld	a5,0(s2)
    80003690:	00f4b023          	sd	a5,0(s1)
    80003694:	00993023          	sd	s1,0(s2)
    80003698:	fd4498e3          	bne	s1,s4,80003668 <kinit+0x70>
    8000369c:	03813083          	ld	ra,56(sp)
    800036a0:	03013403          	ld	s0,48(sp)
    800036a4:	02813483          	ld	s1,40(sp)
    800036a8:	02013903          	ld	s2,32(sp)
    800036ac:	01813983          	ld	s3,24(sp)
    800036b0:	01013a03          	ld	s4,16(sp)
    800036b4:	00813a83          	ld	s5,8(sp)
    800036b8:	04010113          	addi	sp,sp,64
    800036bc:	00008067          	ret
    800036c0:	00002517          	auipc	a0,0x2
    800036c4:	b2850513          	addi	a0,a0,-1240 # 800051e8 <digits+0x18>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	4b4080e7          	jalr	1204(ra) # 80002b7c <panic>

00000000800036d0 <freerange>:
    800036d0:	fc010113          	addi	sp,sp,-64
    800036d4:	000017b7          	lui	a5,0x1
    800036d8:	02913423          	sd	s1,40(sp)
    800036dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036e0:	009504b3          	add	s1,a0,s1
    800036e4:	fffff537          	lui	a0,0xfffff
    800036e8:	02813823          	sd	s0,48(sp)
    800036ec:	02113c23          	sd	ra,56(sp)
    800036f0:	03213023          	sd	s2,32(sp)
    800036f4:	01313c23          	sd	s3,24(sp)
    800036f8:	01413823          	sd	s4,16(sp)
    800036fc:	01513423          	sd	s5,8(sp)
    80003700:	01613023          	sd	s6,0(sp)
    80003704:	04010413          	addi	s0,sp,64
    80003708:	00a4f4b3          	and	s1,s1,a0
    8000370c:	00f487b3          	add	a5,s1,a5
    80003710:	06f5e463          	bltu	a1,a5,80003778 <freerange+0xa8>
    80003714:	00003a97          	auipc	s5,0x3
    80003718:	4cca8a93          	addi	s5,s5,1228 # 80006be0 <end>
    8000371c:	0954e263          	bltu	s1,s5,800037a0 <freerange+0xd0>
    80003720:	01100993          	li	s3,17
    80003724:	01b99993          	slli	s3,s3,0x1b
    80003728:	0734fc63          	bgeu	s1,s3,800037a0 <freerange+0xd0>
    8000372c:	00058a13          	mv	s4,a1
    80003730:	00002917          	auipc	s2,0x2
    80003734:	20090913          	addi	s2,s2,512 # 80005930 <kmem>
    80003738:	00002b37          	lui	s6,0x2
    8000373c:	0140006f          	j	80003750 <freerange+0x80>
    80003740:	000017b7          	lui	a5,0x1
    80003744:	00f484b3          	add	s1,s1,a5
    80003748:	0554ec63          	bltu	s1,s5,800037a0 <freerange+0xd0>
    8000374c:	0534fa63          	bgeu	s1,s3,800037a0 <freerange+0xd0>
    80003750:	00001637          	lui	a2,0x1
    80003754:	00100593          	li	a1,1
    80003758:	00048513          	mv	a0,s1
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	50c080e7          	jalr	1292(ra) # 80003c68 <__memset>
    80003764:	00093703          	ld	a4,0(s2)
    80003768:	016487b3          	add	a5,s1,s6
    8000376c:	00e4b023          	sd	a4,0(s1)
    80003770:	00993023          	sd	s1,0(s2)
    80003774:	fcfa76e3          	bgeu	s4,a5,80003740 <freerange+0x70>
    80003778:	03813083          	ld	ra,56(sp)
    8000377c:	03013403          	ld	s0,48(sp)
    80003780:	02813483          	ld	s1,40(sp)
    80003784:	02013903          	ld	s2,32(sp)
    80003788:	01813983          	ld	s3,24(sp)
    8000378c:	01013a03          	ld	s4,16(sp)
    80003790:	00813a83          	ld	s5,8(sp)
    80003794:	00013b03          	ld	s6,0(sp)
    80003798:	04010113          	addi	sp,sp,64
    8000379c:	00008067          	ret
    800037a0:	00002517          	auipc	a0,0x2
    800037a4:	a4850513          	addi	a0,a0,-1464 # 800051e8 <digits+0x18>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	3d4080e7          	jalr	980(ra) # 80002b7c <panic>

00000000800037b0 <kfree>:
    800037b0:	fe010113          	addi	sp,sp,-32
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00913423          	sd	s1,8(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	03451793          	slli	a5,a0,0x34
    800037c8:	04079c63          	bnez	a5,80003820 <kfree+0x70>
    800037cc:	00003797          	auipc	a5,0x3
    800037d0:	41478793          	addi	a5,a5,1044 # 80006be0 <end>
    800037d4:	00050493          	mv	s1,a0
    800037d8:	04f56463          	bltu	a0,a5,80003820 <kfree+0x70>
    800037dc:	01100793          	li	a5,17
    800037e0:	01b79793          	slli	a5,a5,0x1b
    800037e4:	02f57e63          	bgeu	a0,a5,80003820 <kfree+0x70>
    800037e8:	00001637          	lui	a2,0x1
    800037ec:	00100593          	li	a1,1
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	478080e7          	jalr	1144(ra) # 80003c68 <__memset>
    800037f8:	00002797          	auipc	a5,0x2
    800037fc:	13878793          	addi	a5,a5,312 # 80005930 <kmem>
    80003800:	0007b703          	ld	a4,0(a5)
    80003804:	01813083          	ld	ra,24(sp)
    80003808:	01013403          	ld	s0,16(sp)
    8000380c:	00e4b023          	sd	a4,0(s1)
    80003810:	0097b023          	sd	s1,0(a5)
    80003814:	00813483          	ld	s1,8(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
    80003820:	00002517          	auipc	a0,0x2
    80003824:	9c850513          	addi	a0,a0,-1592 # 800051e8 <digits+0x18>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	354080e7          	jalr	852(ra) # 80002b7c <panic>

0000000080003830 <kalloc>:
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	00113c23          	sd	ra,24(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00002797          	auipc	a5,0x2
    80003848:	0ec78793          	addi	a5,a5,236 # 80005930 <kmem>
    8000384c:	0007b483          	ld	s1,0(a5)
    80003850:	02048063          	beqz	s1,80003870 <kalloc+0x40>
    80003854:	0004b703          	ld	a4,0(s1)
    80003858:	00001637          	lui	a2,0x1
    8000385c:	00500593          	li	a1,5
    80003860:	00048513          	mv	a0,s1
    80003864:	00e7b023          	sd	a4,0(a5)
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	400080e7          	jalr	1024(ra) # 80003c68 <__memset>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00048513          	mv	a0,s1
    8000387c:	00813483          	ld	s1,8(sp)
    80003880:	02010113          	addi	sp,sp,32
    80003884:	00008067          	ret

0000000080003888 <initlock>:
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00813423          	sd	s0,8(sp)
    80003890:	01010413          	addi	s0,sp,16
    80003894:	00813403          	ld	s0,8(sp)
    80003898:	00b53423          	sd	a1,8(a0)
    8000389c:	00052023          	sw	zero,0(a0)
    800038a0:	00053823          	sd	zero,16(a0)
    800038a4:	01010113          	addi	sp,sp,16
    800038a8:	00008067          	ret

00000000800038ac <acquire>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00913423          	sd	s1,8(sp)
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	01213023          	sd	s2,0(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	00050493          	mv	s1,a0
    800038c8:	10002973          	csrr	s2,sstatus
    800038cc:	100027f3          	csrr	a5,sstatus
    800038d0:	ffd7f793          	andi	a5,a5,-3
    800038d4:	10079073          	csrw	sstatus,a5
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	8ec080e7          	jalr	-1812(ra) # 800021c4 <mycpu>
    800038e0:	07852783          	lw	a5,120(a0)
    800038e4:	06078e63          	beqz	a5,80003960 <acquire+0xb4>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	8dc080e7          	jalr	-1828(ra) # 800021c4 <mycpu>
    800038f0:	07852783          	lw	a5,120(a0)
    800038f4:	0004a703          	lw	a4,0(s1)
    800038f8:	0017879b          	addiw	a5,a5,1
    800038fc:	06f52c23          	sw	a5,120(a0)
    80003900:	04071063          	bnez	a4,80003940 <acquire+0x94>
    80003904:	00100713          	li	a4,1
    80003908:	00070793          	mv	a5,a4
    8000390c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003910:	0007879b          	sext.w	a5,a5
    80003914:	fe079ae3          	bnez	a5,80003908 <acquire+0x5c>
    80003918:	0ff0000f          	fence
    8000391c:	fffff097          	auipc	ra,0xfffff
    80003920:	8a8080e7          	jalr	-1880(ra) # 800021c4 <mycpu>
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00a4b823          	sd	a0,16(s1)
    80003930:	00013903          	ld	s2,0(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret
    80003940:	0104b903          	ld	s2,16(s1)
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	880080e7          	jalr	-1920(ra) # 800021c4 <mycpu>
    8000394c:	faa91ce3          	bne	s2,a0,80003904 <acquire+0x58>
    80003950:	00002517          	auipc	a0,0x2
    80003954:	8a050513          	addi	a0,a0,-1888 # 800051f0 <digits+0x20>
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	224080e7          	jalr	548(ra) # 80002b7c <panic>
    80003960:	00195913          	srli	s2,s2,0x1
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	860080e7          	jalr	-1952(ra) # 800021c4 <mycpu>
    8000396c:	00197913          	andi	s2,s2,1
    80003970:	07252e23          	sw	s2,124(a0)
    80003974:	f75ff06f          	j	800038e8 <acquire+0x3c>

0000000080003978 <release>:
    80003978:	fe010113          	addi	sp,sp,-32
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	01213023          	sd	s2,0(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00052783          	lw	a5,0(a0)
    80003994:	00079a63          	bnez	a5,800039a8 <release+0x30>
    80003998:	00002517          	auipc	a0,0x2
    8000399c:	86050513          	addi	a0,a0,-1952 # 800051f8 <digits+0x28>
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	1dc080e7          	jalr	476(ra) # 80002b7c <panic>
    800039a8:	01053903          	ld	s2,16(a0)
    800039ac:	00050493          	mv	s1,a0
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	814080e7          	jalr	-2028(ra) # 800021c4 <mycpu>
    800039b8:	fea910e3          	bne	s2,a0,80003998 <release+0x20>
    800039bc:	0004b823          	sd	zero,16(s1)
    800039c0:	0ff0000f          	fence
    800039c4:	0f50000f          	fence	iorw,ow
    800039c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	7f8080e7          	jalr	2040(ra) # 800021c4 <mycpu>
    800039d4:	100027f3          	csrr	a5,sstatus
    800039d8:	0027f793          	andi	a5,a5,2
    800039dc:	04079a63          	bnez	a5,80003a30 <release+0xb8>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	02f05e63          	blez	a5,80003a20 <release+0xa8>
    800039e8:	fff7871b          	addiw	a4,a5,-1
    800039ec:	06e52c23          	sw	a4,120(a0)
    800039f0:	00071c63          	bnez	a4,80003a08 <release+0x90>
    800039f4:	07c52783          	lw	a5,124(a0)
    800039f8:	00078863          	beqz	a5,80003a08 <release+0x90>
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	0027e793          	ori	a5,a5,2
    80003a04:	10079073          	csrw	sstatus,a5
    80003a08:	01813083          	ld	ra,24(sp)
    80003a0c:	01013403          	ld	s0,16(sp)
    80003a10:	00813483          	ld	s1,8(sp)
    80003a14:	00013903          	ld	s2,0(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret
    80003a20:	00001517          	auipc	a0,0x1
    80003a24:	7f850513          	addi	a0,a0,2040 # 80005218 <digits+0x48>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	154080e7          	jalr	340(ra) # 80002b7c <panic>
    80003a30:	00001517          	auipc	a0,0x1
    80003a34:	7d050513          	addi	a0,a0,2000 # 80005200 <digits+0x30>
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	144080e7          	jalr	324(ra) # 80002b7c <panic>

0000000080003a40 <holding>:
    80003a40:	00052783          	lw	a5,0(a0)
    80003a44:	00079663          	bnez	a5,80003a50 <holding+0x10>
    80003a48:	00000513          	li	a0,0
    80003a4c:	00008067          	ret
    80003a50:	fe010113          	addi	sp,sp,-32
    80003a54:	00813823          	sd	s0,16(sp)
    80003a58:	00913423          	sd	s1,8(sp)
    80003a5c:	00113c23          	sd	ra,24(sp)
    80003a60:	02010413          	addi	s0,sp,32
    80003a64:	01053483          	ld	s1,16(a0)
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	75c080e7          	jalr	1884(ra) # 800021c4 <mycpu>
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	40a48533          	sub	a0,s1,a0
    80003a7c:	00153513          	seqz	a0,a0
    80003a80:	00813483          	ld	s1,8(sp)
    80003a84:	02010113          	addi	sp,sp,32
    80003a88:	00008067          	ret

0000000080003a8c <push_off>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	100024f3          	csrr	s1,sstatus
    80003aa4:	100027f3          	csrr	a5,sstatus
    80003aa8:	ffd7f793          	andi	a5,a5,-3
    80003aac:	10079073          	csrw	sstatus,a5
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	714080e7          	jalr	1812(ra) # 800021c4 <mycpu>
    80003ab8:	07852783          	lw	a5,120(a0)
    80003abc:	02078663          	beqz	a5,80003ae8 <push_off+0x5c>
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	704080e7          	jalr	1796(ra) # 800021c4 <mycpu>
    80003ac8:	07852783          	lw	a5,120(a0)
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	01013403          	ld	s0,16(sp)
    80003ad4:	0017879b          	addiw	a5,a5,1
    80003ad8:	06f52c23          	sw	a5,120(a0)
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret
    80003ae8:	0014d493          	srli	s1,s1,0x1
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	6d8080e7          	jalr	1752(ra) # 800021c4 <mycpu>
    80003af4:	0014f493          	andi	s1,s1,1
    80003af8:	06952e23          	sw	s1,124(a0)
    80003afc:	fc5ff06f          	j	80003ac0 <push_off+0x34>

0000000080003b00 <pop_off>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813023          	sd	s0,0(sp)
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	6b4080e7          	jalr	1716(ra) # 800021c4 <mycpu>
    80003b18:	100027f3          	csrr	a5,sstatus
    80003b1c:	0027f793          	andi	a5,a5,2
    80003b20:	04079663          	bnez	a5,80003b6c <pop_off+0x6c>
    80003b24:	07852783          	lw	a5,120(a0)
    80003b28:	02f05a63          	blez	a5,80003b5c <pop_off+0x5c>
    80003b2c:	fff7871b          	addiw	a4,a5,-1
    80003b30:	06e52c23          	sw	a4,120(a0)
    80003b34:	00071c63          	bnez	a4,80003b4c <pop_off+0x4c>
    80003b38:	07c52783          	lw	a5,124(a0)
    80003b3c:	00078863          	beqz	a5,80003b4c <pop_off+0x4c>
    80003b40:	100027f3          	csrr	a5,sstatus
    80003b44:	0027e793          	ori	a5,a5,2
    80003b48:	10079073          	csrw	sstatus,a5
    80003b4c:	00813083          	ld	ra,8(sp)
    80003b50:	00013403          	ld	s0,0(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret
    80003b5c:	00001517          	auipc	a0,0x1
    80003b60:	6bc50513          	addi	a0,a0,1724 # 80005218 <digits+0x48>
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	018080e7          	jalr	24(ra) # 80002b7c <panic>
    80003b6c:	00001517          	auipc	a0,0x1
    80003b70:	69450513          	addi	a0,a0,1684 # 80005200 <digits+0x30>
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	008080e7          	jalr	8(ra) # 80002b7c <panic>

0000000080003b7c <push_on>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	100024f3          	csrr	s1,sstatus
    80003b94:	100027f3          	csrr	a5,sstatus
    80003b98:	0027e793          	ori	a5,a5,2
    80003b9c:	10079073          	csrw	sstatus,a5
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	624080e7          	jalr	1572(ra) # 800021c4 <mycpu>
    80003ba8:	07852783          	lw	a5,120(a0)
    80003bac:	02078663          	beqz	a5,80003bd8 <push_on+0x5c>
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	614080e7          	jalr	1556(ra) # 800021c4 <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	0017879b          	addiw	a5,a5,1
    80003bc8:	06f52c23          	sw	a5,120(a0)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret
    80003bd8:	0014d493          	srli	s1,s1,0x1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	5e8080e7          	jalr	1512(ra) # 800021c4 <mycpu>
    80003be4:	0014f493          	andi	s1,s1,1
    80003be8:	06952e23          	sw	s1,124(a0)
    80003bec:	fc5ff06f          	j	80003bb0 <push_on+0x34>

0000000080003bf0 <pop_on>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	5c4080e7          	jalr	1476(ra) # 800021c4 <mycpu>
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	0027f793          	andi	a5,a5,2
    80003c10:	04078463          	beqz	a5,80003c58 <pop_on+0x68>
    80003c14:	07852783          	lw	a5,120(a0)
    80003c18:	02f05863          	blez	a5,80003c48 <pop_on+0x58>
    80003c1c:	fff7879b          	addiw	a5,a5,-1
    80003c20:	06f52c23          	sw	a5,120(a0)
    80003c24:	07853783          	ld	a5,120(a0)
    80003c28:	00079863          	bnez	a5,80003c38 <pop_on+0x48>
    80003c2c:	100027f3          	csrr	a5,sstatus
    80003c30:	ffd7f793          	andi	a5,a5,-3
    80003c34:	10079073          	csrw	sstatus,a5
    80003c38:	00813083          	ld	ra,8(sp)
    80003c3c:	00013403          	ld	s0,0(sp)
    80003c40:	01010113          	addi	sp,sp,16
    80003c44:	00008067          	ret
    80003c48:	00001517          	auipc	a0,0x1
    80003c4c:	5f850513          	addi	a0,a0,1528 # 80005240 <digits+0x70>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	f2c080e7          	jalr	-212(ra) # 80002b7c <panic>
    80003c58:	00001517          	auipc	a0,0x1
    80003c5c:	5c850513          	addi	a0,a0,1480 # 80005220 <digits+0x50>
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	f1c080e7          	jalr	-228(ra) # 80002b7c <panic>

0000000080003c68 <__memset>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	1a060e63          	beqz	a2,80003e30 <__memset+0x1c8>
    80003c78:	40a007b3          	neg	a5,a0
    80003c7c:	0077f793          	andi	a5,a5,7
    80003c80:	00778693          	addi	a3,a5,7
    80003c84:	00b00813          	li	a6,11
    80003c88:	0ff5f593          	andi	a1,a1,255
    80003c8c:	fff6071b          	addiw	a4,a2,-1
    80003c90:	1b06e663          	bltu	a3,a6,80003e3c <__memset+0x1d4>
    80003c94:	1cd76463          	bltu	a4,a3,80003e5c <__memset+0x1f4>
    80003c98:	1a078e63          	beqz	a5,80003e54 <__memset+0x1ec>
    80003c9c:	00b50023          	sb	a1,0(a0)
    80003ca0:	00100713          	li	a4,1
    80003ca4:	1ae78463          	beq	a5,a4,80003e4c <__memset+0x1e4>
    80003ca8:	00b500a3          	sb	a1,1(a0)
    80003cac:	00200713          	li	a4,2
    80003cb0:	1ae78a63          	beq	a5,a4,80003e64 <__memset+0x1fc>
    80003cb4:	00b50123          	sb	a1,2(a0)
    80003cb8:	00300713          	li	a4,3
    80003cbc:	18e78463          	beq	a5,a4,80003e44 <__memset+0x1dc>
    80003cc0:	00b501a3          	sb	a1,3(a0)
    80003cc4:	00400713          	li	a4,4
    80003cc8:	1ae78263          	beq	a5,a4,80003e6c <__memset+0x204>
    80003ccc:	00b50223          	sb	a1,4(a0)
    80003cd0:	00500713          	li	a4,5
    80003cd4:	1ae78063          	beq	a5,a4,80003e74 <__memset+0x20c>
    80003cd8:	00b502a3          	sb	a1,5(a0)
    80003cdc:	00700713          	li	a4,7
    80003ce0:	18e79e63          	bne	a5,a4,80003e7c <__memset+0x214>
    80003ce4:	00b50323          	sb	a1,6(a0)
    80003ce8:	00700e93          	li	t4,7
    80003cec:	00859713          	slli	a4,a1,0x8
    80003cf0:	00e5e733          	or	a4,a1,a4
    80003cf4:	01059e13          	slli	t3,a1,0x10
    80003cf8:	01c76e33          	or	t3,a4,t3
    80003cfc:	01859313          	slli	t1,a1,0x18
    80003d00:	006e6333          	or	t1,t3,t1
    80003d04:	02059893          	slli	a7,a1,0x20
    80003d08:	40f60e3b          	subw	t3,a2,a5
    80003d0c:	011368b3          	or	a7,t1,a7
    80003d10:	02859813          	slli	a6,a1,0x28
    80003d14:	0108e833          	or	a6,a7,a6
    80003d18:	03059693          	slli	a3,a1,0x30
    80003d1c:	003e589b          	srliw	a7,t3,0x3
    80003d20:	00d866b3          	or	a3,a6,a3
    80003d24:	03859713          	slli	a4,a1,0x38
    80003d28:	00389813          	slli	a6,a7,0x3
    80003d2c:	00f507b3          	add	a5,a0,a5
    80003d30:	00e6e733          	or	a4,a3,a4
    80003d34:	000e089b          	sext.w	a7,t3
    80003d38:	00f806b3          	add	a3,a6,a5
    80003d3c:	00e7b023          	sd	a4,0(a5)
    80003d40:	00878793          	addi	a5,a5,8
    80003d44:	fed79ce3          	bne	a5,a3,80003d3c <__memset+0xd4>
    80003d48:	ff8e7793          	andi	a5,t3,-8
    80003d4c:	0007871b          	sext.w	a4,a5
    80003d50:	01d787bb          	addw	a5,a5,t4
    80003d54:	0ce88e63          	beq	a7,a4,80003e30 <__memset+0x1c8>
    80003d58:	00f50733          	add	a4,a0,a5
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0017871b          	addiw	a4,a5,1
    80003d64:	0cc77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0027871b          	addiw	a4,a5,2
    80003d74:	0ac77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0037871b          	addiw	a4,a5,3
    80003d84:	0ac77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0047871b          	addiw	a4,a5,4
    80003d94:	08c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0057871b          	addiw	a4,a5,5
    80003da4:	08c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0067871b          	addiw	a4,a5,6
    80003db4:	06c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0077871b          	addiw	a4,a5,7
    80003dc4:	06c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	0087871b          	addiw	a4,a5,8
    80003dd4:	04c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	0097871b          	addiw	a4,a5,9
    80003de4:	04c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	00a7871b          	addiw	a4,a5,10
    80003df4:	02c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	00b7871b          	addiw	a4,a5,11
    80003e04:	02c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	00c7871b          	addiw	a4,a5,12
    80003e14:	00c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	00d7879b          	addiw	a5,a5,13
    80003e24:	00c7f663          	bgeu	a5,a2,80003e30 <__memset+0x1c8>
    80003e28:	00f507b3          	add	a5,a0,a5
    80003e2c:	00b78023          	sb	a1,0(a5)
    80003e30:	00813403          	ld	s0,8(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret
    80003e3c:	00b00693          	li	a3,11
    80003e40:	e55ff06f          	j	80003c94 <__memset+0x2c>
    80003e44:	00300e93          	li	t4,3
    80003e48:	ea5ff06f          	j	80003cec <__memset+0x84>
    80003e4c:	00100e93          	li	t4,1
    80003e50:	e9dff06f          	j	80003cec <__memset+0x84>
    80003e54:	00000e93          	li	t4,0
    80003e58:	e95ff06f          	j	80003cec <__memset+0x84>
    80003e5c:	00000793          	li	a5,0
    80003e60:	ef9ff06f          	j	80003d58 <__memset+0xf0>
    80003e64:	00200e93          	li	t4,2
    80003e68:	e85ff06f          	j	80003cec <__memset+0x84>
    80003e6c:	00400e93          	li	t4,4
    80003e70:	e7dff06f          	j	80003cec <__memset+0x84>
    80003e74:	00500e93          	li	t4,5
    80003e78:	e75ff06f          	j	80003cec <__memset+0x84>
    80003e7c:	00600e93          	li	t4,6
    80003e80:	e6dff06f          	j	80003cec <__memset+0x84>

0000000080003e84 <__memmove>:
    80003e84:	ff010113          	addi	sp,sp,-16
    80003e88:	00813423          	sd	s0,8(sp)
    80003e8c:	01010413          	addi	s0,sp,16
    80003e90:	0e060863          	beqz	a2,80003f80 <__memmove+0xfc>
    80003e94:	fff6069b          	addiw	a3,a2,-1
    80003e98:	0006881b          	sext.w	a6,a3
    80003e9c:	0ea5e863          	bltu	a1,a0,80003f8c <__memmove+0x108>
    80003ea0:	00758713          	addi	a4,a1,7
    80003ea4:	00a5e7b3          	or	a5,a1,a0
    80003ea8:	40a70733          	sub	a4,a4,a0
    80003eac:	0077f793          	andi	a5,a5,7
    80003eb0:	00f73713          	sltiu	a4,a4,15
    80003eb4:	00174713          	xori	a4,a4,1
    80003eb8:	0017b793          	seqz	a5,a5
    80003ebc:	00e7f7b3          	and	a5,a5,a4
    80003ec0:	10078863          	beqz	a5,80003fd0 <__memmove+0x14c>
    80003ec4:	00900793          	li	a5,9
    80003ec8:	1107f463          	bgeu	a5,a6,80003fd0 <__memmove+0x14c>
    80003ecc:	0036581b          	srliw	a6,a2,0x3
    80003ed0:	fff8081b          	addiw	a6,a6,-1
    80003ed4:	02081813          	slli	a6,a6,0x20
    80003ed8:	01d85893          	srli	a7,a6,0x1d
    80003edc:	00858813          	addi	a6,a1,8
    80003ee0:	00058793          	mv	a5,a1
    80003ee4:	00050713          	mv	a4,a0
    80003ee8:	01088833          	add	a6,a7,a6
    80003eec:	0007b883          	ld	a7,0(a5)
    80003ef0:	00878793          	addi	a5,a5,8
    80003ef4:	00870713          	addi	a4,a4,8
    80003ef8:	ff173c23          	sd	a7,-8(a4)
    80003efc:	ff0798e3          	bne	a5,a6,80003eec <__memmove+0x68>
    80003f00:	ff867713          	andi	a4,a2,-8
    80003f04:	02071793          	slli	a5,a4,0x20
    80003f08:	0207d793          	srli	a5,a5,0x20
    80003f0c:	00f585b3          	add	a1,a1,a5
    80003f10:	40e686bb          	subw	a3,a3,a4
    80003f14:	00f507b3          	add	a5,a0,a5
    80003f18:	06e60463          	beq	a2,a4,80003f80 <__memmove+0xfc>
    80003f1c:	0005c703          	lbu	a4,0(a1)
    80003f20:	00e78023          	sb	a4,0(a5)
    80003f24:	04068e63          	beqz	a3,80003f80 <__memmove+0xfc>
    80003f28:	0015c603          	lbu	a2,1(a1)
    80003f2c:	00100713          	li	a4,1
    80003f30:	00c780a3          	sb	a2,1(a5)
    80003f34:	04e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f38:	0025c603          	lbu	a2,2(a1)
    80003f3c:	00200713          	li	a4,2
    80003f40:	00c78123          	sb	a2,2(a5)
    80003f44:	02e68e63          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f48:	0035c603          	lbu	a2,3(a1)
    80003f4c:	00300713          	li	a4,3
    80003f50:	00c781a3          	sb	a2,3(a5)
    80003f54:	02e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f58:	0045c603          	lbu	a2,4(a1)
    80003f5c:	00400713          	li	a4,4
    80003f60:	00c78223          	sb	a2,4(a5)
    80003f64:	00e68e63          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f68:	0055c603          	lbu	a2,5(a1)
    80003f6c:	00500713          	li	a4,5
    80003f70:	00c782a3          	sb	a2,5(a5)
    80003f74:	00e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f78:	0065c703          	lbu	a4,6(a1)
    80003f7c:	00e78323          	sb	a4,6(a5)
    80003f80:	00813403          	ld	s0,8(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	02061713          	slli	a4,a2,0x20
    80003f90:	02075713          	srli	a4,a4,0x20
    80003f94:	00e587b3          	add	a5,a1,a4
    80003f98:	f0f574e3          	bgeu	a0,a5,80003ea0 <__memmove+0x1c>
    80003f9c:	02069613          	slli	a2,a3,0x20
    80003fa0:	02065613          	srli	a2,a2,0x20
    80003fa4:	fff64613          	not	a2,a2
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00c78633          	add	a2,a5,a2
    80003fb0:	fff7c683          	lbu	a3,-1(a5)
    80003fb4:	fff78793          	addi	a5,a5,-1
    80003fb8:	fff70713          	addi	a4,a4,-1
    80003fbc:	00d70023          	sb	a3,0(a4)
    80003fc0:	fec798e3          	bne	a5,a2,80003fb0 <__memmove+0x12c>
    80003fc4:	00813403          	ld	s0,8(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret
    80003fd0:	02069713          	slli	a4,a3,0x20
    80003fd4:	02075713          	srli	a4,a4,0x20
    80003fd8:	00170713          	addi	a4,a4,1
    80003fdc:	00e50733          	add	a4,a0,a4
    80003fe0:	00050793          	mv	a5,a0
    80003fe4:	0005c683          	lbu	a3,0(a1)
    80003fe8:	00178793          	addi	a5,a5,1
    80003fec:	00158593          	addi	a1,a1,1
    80003ff0:	fed78fa3          	sb	a3,-1(a5)
    80003ff4:	fee798e3          	bne	a5,a4,80003fe4 <__memmove+0x160>
    80003ff8:	f89ff06f          	j	80003f80 <__memmove+0xfc>

0000000080003ffc <__mem_free>:
    80003ffc:	ff010113          	addi	sp,sp,-16
    80004000:	00813423          	sd	s0,8(sp)
    80004004:	01010413          	addi	s0,sp,16
    80004008:	00002597          	auipc	a1,0x2
    8000400c:	93058593          	addi	a1,a1,-1744 # 80005938 <freep>
    80004010:	0005b783          	ld	a5,0(a1)
    80004014:	ff050693          	addi	a3,a0,-16
    80004018:	0007b703          	ld	a4,0(a5)
    8000401c:	00d7fc63          	bgeu	a5,a3,80004034 <__mem_free+0x38>
    80004020:	00e6ee63          	bltu	a3,a4,8000403c <__mem_free+0x40>
    80004024:	00e7fc63          	bgeu	a5,a4,8000403c <__mem_free+0x40>
    80004028:	00070793          	mv	a5,a4
    8000402c:	0007b703          	ld	a4,0(a5)
    80004030:	fed7e8e3          	bltu	a5,a3,80004020 <__mem_free+0x24>
    80004034:	fee7eae3          	bltu	a5,a4,80004028 <__mem_free+0x2c>
    80004038:	fee6f8e3          	bgeu	a3,a4,80004028 <__mem_free+0x2c>
    8000403c:	ff852803          	lw	a6,-8(a0)
    80004040:	02081613          	slli	a2,a6,0x20
    80004044:	01c65613          	srli	a2,a2,0x1c
    80004048:	00c68633          	add	a2,a3,a2
    8000404c:	02c70a63          	beq	a4,a2,80004080 <__mem_free+0x84>
    80004050:	fee53823          	sd	a4,-16(a0)
    80004054:	0087a503          	lw	a0,8(a5)
    80004058:	02051613          	slli	a2,a0,0x20
    8000405c:	01c65613          	srli	a2,a2,0x1c
    80004060:	00c78633          	add	a2,a5,a2
    80004064:	04c68263          	beq	a3,a2,800040a8 <__mem_free+0xac>
    80004068:	00813403          	ld	s0,8(sp)
    8000406c:	00d7b023          	sd	a3,0(a5)
    80004070:	00f5b023          	sd	a5,0(a1)
    80004074:	00000513          	li	a0,0
    80004078:	01010113          	addi	sp,sp,16
    8000407c:	00008067          	ret
    80004080:	00872603          	lw	a2,8(a4)
    80004084:	00073703          	ld	a4,0(a4)
    80004088:	0106083b          	addw	a6,a2,a6
    8000408c:	ff052c23          	sw	a6,-8(a0)
    80004090:	fee53823          	sd	a4,-16(a0)
    80004094:	0087a503          	lw	a0,8(a5)
    80004098:	02051613          	slli	a2,a0,0x20
    8000409c:	01c65613          	srli	a2,a2,0x1c
    800040a0:	00c78633          	add	a2,a5,a2
    800040a4:	fcc692e3          	bne	a3,a2,80004068 <__mem_free+0x6c>
    800040a8:	00813403          	ld	s0,8(sp)
    800040ac:	0105053b          	addw	a0,a0,a6
    800040b0:	00a7a423          	sw	a0,8(a5)
    800040b4:	00e7b023          	sd	a4,0(a5)
    800040b8:	00f5b023          	sd	a5,0(a1)
    800040bc:	00000513          	li	a0,0
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret

00000000800040c8 <__mem_alloc>:
    800040c8:	fc010113          	addi	sp,sp,-64
    800040cc:	02813823          	sd	s0,48(sp)
    800040d0:	02913423          	sd	s1,40(sp)
    800040d4:	03213023          	sd	s2,32(sp)
    800040d8:	01513423          	sd	s5,8(sp)
    800040dc:	02113c23          	sd	ra,56(sp)
    800040e0:	01313c23          	sd	s3,24(sp)
    800040e4:	01413823          	sd	s4,16(sp)
    800040e8:	01613023          	sd	s6,0(sp)
    800040ec:	04010413          	addi	s0,sp,64
    800040f0:	00002a97          	auipc	s5,0x2
    800040f4:	848a8a93          	addi	s5,s5,-1976 # 80005938 <freep>
    800040f8:	00f50913          	addi	s2,a0,15
    800040fc:	000ab683          	ld	a3,0(s5)
    80004100:	00495913          	srli	s2,s2,0x4
    80004104:	0019049b          	addiw	s1,s2,1
    80004108:	00048913          	mv	s2,s1
    8000410c:	0c068c63          	beqz	a3,800041e4 <__mem_alloc+0x11c>
    80004110:	0006b503          	ld	a0,0(a3)
    80004114:	00852703          	lw	a4,8(a0)
    80004118:	10977063          	bgeu	a4,s1,80004218 <__mem_alloc+0x150>
    8000411c:	000017b7          	lui	a5,0x1
    80004120:	0009099b          	sext.w	s3,s2
    80004124:	0af4e863          	bltu	s1,a5,800041d4 <__mem_alloc+0x10c>
    80004128:	02099a13          	slli	s4,s3,0x20
    8000412c:	01ca5a13          	srli	s4,s4,0x1c
    80004130:	fff00b13          	li	s6,-1
    80004134:	0100006f          	j	80004144 <__mem_alloc+0x7c>
    80004138:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000413c:	00852703          	lw	a4,8(a0)
    80004140:	04977463          	bgeu	a4,s1,80004188 <__mem_alloc+0xc0>
    80004144:	00050793          	mv	a5,a0
    80004148:	fea698e3          	bne	a3,a0,80004138 <__mem_alloc+0x70>
    8000414c:	000a0513          	mv	a0,s4
    80004150:	00000097          	auipc	ra,0x0
    80004154:	1f0080e7          	jalr	496(ra) # 80004340 <kvmincrease>
    80004158:	00050793          	mv	a5,a0
    8000415c:	01050513          	addi	a0,a0,16
    80004160:	07678e63          	beq	a5,s6,800041dc <__mem_alloc+0x114>
    80004164:	0137a423          	sw	s3,8(a5)
    80004168:	00000097          	auipc	ra,0x0
    8000416c:	e94080e7          	jalr	-364(ra) # 80003ffc <__mem_free>
    80004170:	000ab783          	ld	a5,0(s5)
    80004174:	06078463          	beqz	a5,800041dc <__mem_alloc+0x114>
    80004178:	0007b503          	ld	a0,0(a5)
    8000417c:	00078693          	mv	a3,a5
    80004180:	00852703          	lw	a4,8(a0)
    80004184:	fc9760e3          	bltu	a4,s1,80004144 <__mem_alloc+0x7c>
    80004188:	08e48263          	beq	s1,a4,8000420c <__mem_alloc+0x144>
    8000418c:	4127073b          	subw	a4,a4,s2
    80004190:	02071693          	slli	a3,a4,0x20
    80004194:	01c6d693          	srli	a3,a3,0x1c
    80004198:	00e52423          	sw	a4,8(a0)
    8000419c:	00d50533          	add	a0,a0,a3
    800041a0:	01252423          	sw	s2,8(a0)
    800041a4:	00fab023          	sd	a5,0(s5)
    800041a8:	01050513          	addi	a0,a0,16
    800041ac:	03813083          	ld	ra,56(sp)
    800041b0:	03013403          	ld	s0,48(sp)
    800041b4:	02813483          	ld	s1,40(sp)
    800041b8:	02013903          	ld	s2,32(sp)
    800041bc:	01813983          	ld	s3,24(sp)
    800041c0:	01013a03          	ld	s4,16(sp)
    800041c4:	00813a83          	ld	s5,8(sp)
    800041c8:	00013b03          	ld	s6,0(sp)
    800041cc:	04010113          	addi	sp,sp,64
    800041d0:	00008067          	ret
    800041d4:	000019b7          	lui	s3,0x1
    800041d8:	f51ff06f          	j	80004128 <__mem_alloc+0x60>
    800041dc:	00000513          	li	a0,0
    800041e0:	fcdff06f          	j	800041ac <__mem_alloc+0xe4>
    800041e4:	00003797          	auipc	a5,0x3
    800041e8:	9ec78793          	addi	a5,a5,-1556 # 80006bd0 <base>
    800041ec:	00078513          	mv	a0,a5
    800041f0:	00fab023          	sd	a5,0(s5)
    800041f4:	00f7b023          	sd	a5,0(a5)
    800041f8:	00000713          	li	a4,0
    800041fc:	00003797          	auipc	a5,0x3
    80004200:	9c07ae23          	sw	zero,-1572(a5) # 80006bd8 <base+0x8>
    80004204:	00050693          	mv	a3,a0
    80004208:	f11ff06f          	j	80004118 <__mem_alloc+0x50>
    8000420c:	00053703          	ld	a4,0(a0)
    80004210:	00e7b023          	sd	a4,0(a5)
    80004214:	f91ff06f          	j	800041a4 <__mem_alloc+0xdc>
    80004218:	00068793          	mv	a5,a3
    8000421c:	f6dff06f          	j	80004188 <__mem_alloc+0xc0>

0000000080004220 <__putc>:
    80004220:	fe010113          	addi	sp,sp,-32
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	02010413          	addi	s0,sp,32
    80004230:	00050793          	mv	a5,a0
    80004234:	fef40593          	addi	a1,s0,-17
    80004238:	00100613          	li	a2,1
    8000423c:	00000513          	li	a0,0
    80004240:	fef407a3          	sb	a5,-17(s0)
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	918080e7          	jalr	-1768(ra) # 80002b5c <console_write>
    8000424c:	01813083          	ld	ra,24(sp)
    80004250:	01013403          	ld	s0,16(sp)
    80004254:	02010113          	addi	sp,sp,32
    80004258:	00008067          	ret

000000008000425c <__getc>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	02010413          	addi	s0,sp,32
    8000426c:	fe840593          	addi	a1,s0,-24
    80004270:	00100613          	li	a2,1
    80004274:	00000513          	li	a0,0
    80004278:	fffff097          	auipc	ra,0xfffff
    8000427c:	8c4080e7          	jalr	-1852(ra) # 80002b3c <console_read>
    80004280:	fe844503          	lbu	a0,-24(s0)
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <console_handler>:
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00813823          	sd	s0,16(sp)
    8000429c:	00113c23          	sd	ra,24(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	14202773          	csrr	a4,scause
    800042ac:	100027f3          	csrr	a5,sstatus
    800042b0:	0027f793          	andi	a5,a5,2
    800042b4:	06079e63          	bnez	a5,80004330 <console_handler+0x9c>
    800042b8:	00074c63          	bltz	a4,800042d0 <console_handler+0x3c>
    800042bc:	01813083          	ld	ra,24(sp)
    800042c0:	01013403          	ld	s0,16(sp)
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret
    800042d0:	0ff77713          	andi	a4,a4,255
    800042d4:	00900793          	li	a5,9
    800042d8:	fef712e3          	bne	a4,a5,800042bc <console_handler+0x28>
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	4b8080e7          	jalr	1208(ra) # 80002794 <plic_claim>
    800042e4:	00a00793          	li	a5,10
    800042e8:	00050493          	mv	s1,a0
    800042ec:	02f50c63          	beq	a0,a5,80004324 <console_handler+0x90>
    800042f0:	fc0506e3          	beqz	a0,800042bc <console_handler+0x28>
    800042f4:	00050593          	mv	a1,a0
    800042f8:	00001517          	auipc	a0,0x1
    800042fc:	e5050513          	addi	a0,a0,-432 # 80005148 <_ZZ12printIntegermE6digits+0xe0>
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	8d8080e7          	jalr	-1832(ra) # 80002bd8 <__printf>
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	01813083          	ld	ra,24(sp)
    80004310:	00048513          	mv	a0,s1
    80004314:	00813483          	ld	s1,8(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	ffffe317          	auipc	t1,0xffffe
    80004320:	4b030067          	jr	1200(t1) # 800027cc <plic_complete>
    80004324:	fffff097          	auipc	ra,0xfffff
    80004328:	1bc080e7          	jalr	444(ra) # 800034e0 <uartintr>
    8000432c:	fddff06f          	j	80004308 <console_handler+0x74>
    80004330:	00001517          	auipc	a0,0x1
    80004334:	f1850513          	addi	a0,a0,-232 # 80005248 <digits+0x78>
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	844080e7          	jalr	-1980(ra) # 80002b7c <panic>

0000000080004340 <kvmincrease>:
    80004340:	fe010113          	addi	sp,sp,-32
    80004344:	01213023          	sd	s2,0(sp)
    80004348:	00001937          	lui	s2,0x1
    8000434c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004350:	00813823          	sd	s0,16(sp)
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	00913423          	sd	s1,8(sp)
    8000435c:	02010413          	addi	s0,sp,32
    80004360:	01250933          	add	s2,a0,s2
    80004364:	00c95913          	srli	s2,s2,0xc
    80004368:	02090863          	beqz	s2,80004398 <kvmincrease+0x58>
    8000436c:	00000493          	li	s1,0
    80004370:	00148493          	addi	s1,s1,1
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	4bc080e7          	jalr	1212(ra) # 80003830 <kalloc>
    8000437c:	fe991ae3          	bne	s2,s1,80004370 <kvmincrease+0x30>
    80004380:	01813083          	ld	ra,24(sp)
    80004384:	01013403          	ld	s0,16(sp)
    80004388:	00813483          	ld	s1,8(sp)
    8000438c:	00013903          	ld	s2,0(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	01013403          	ld	s0,16(sp)
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	00013903          	ld	s2,0(sp)
    800043a8:	00000513          	li	a0,0
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret
	...

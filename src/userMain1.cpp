//
// Created by os on 6/24/22.
//


//#include "../h/List.hpp"
//#include "../h/syscall_c.h"
//#include "../h/Print.hpp"
//#include "../h/workers.hpp"
//#include "../h/_thread.hpp"
//
//void userMain1(){
//    _thread* threads[3];
//    threads[0] = _thread::createThread(nullptr, nullptr);
//    threads[0]->start();
//    _thread::running=threads[0];
//
//    threads[1] = _thread::createThread(workerBodyA, nullptr);
//    threads[1]->start();
//
//    threads[2] = _thread::createThread(workerBodyB, nullptr);
//    threads[2]->start();
//
//    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
//        _thread::yield();
//    }
//
//    printString("finished \n");
//}
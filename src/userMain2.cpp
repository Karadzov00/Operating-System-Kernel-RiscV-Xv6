//
// Created by os on 6/24/22.
//

#include "../h/List.hpp"
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

void userMain2(){

//    if(!thread_create(&threads[0], nullptr, nullptr)){
//        printString("thread created");
//    }
//    else{
//        printString("error");
//    };
//    threads[0]->start();
//    _thread::running=threads[0];
    _thread* threads[3];

    if(!thread_create(&threads[0], workerBodyA, nullptr)){
        printString("thread created");
    }
    threads[0]->start();
    _thread::running=threads[0];

    if(!thread_create(&threads[1], workerBodyB, nullptr)){
        printString("thread created");
    }
    threads[1]->start();

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    }

    printString("finished \n");

}
//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#include "syscall_c.hpp"

void* ::operator new (size_t size){
    return mem_alloc(size);
}
void ::operator delete (void* p){
    mem_free(p);
}

class Thread {
public:
    Thread (void (*body)(void*), void* arg){
        thread_create(&myHandle, body, arg);
    }
    virtual ~Thread (){
        myHandle=0;
        thread_exit();
    }
    int start (){
        if(!myHandle) { thread_create(&myHandle, &wrapper, this); }
    }
    static void dispatch (){
        thread_dispatch();
    }
    static int sleep (time_t);
protected:
    Thread (){
        myHandle=0;
    }
    virtual void run () {}
private:
    static void wrapper(void* arg){
        Thread* t = (Thread*)arg;
        t->run();
    }
    thread_t myHandle;
};

class Semaphore {
public:
    Semaphore (unsigned init = 1){
        sem_open(&myHandle, init);
    }
    virtual ~Semaphore (){
        sem_close(myHandle);
    }
    int wait (){
        sem_wait(myHandle);
    }
    int signal (){
        sem_signal(myHandle);
    }
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
};

class Console {
public:
    static char getc ();
    static void putc (char);
};


#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

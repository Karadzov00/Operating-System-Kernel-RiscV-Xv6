//
// Created by os on 6/27/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "../lib/hw.h"

struct args;

void syscall(args* arg);

void* mem_alloc (size_t size);

int mem_free (void* p);

class _thread;
typedef _thread* thread_t;
extern int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);

int thread_exit ();

void thread_dispatch ();

class KSemaphore;
typedef KSemaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);


char getc ();

void putc (char);

#endif //PROJECT_BASE_V1_1_SYSCALL_C_H



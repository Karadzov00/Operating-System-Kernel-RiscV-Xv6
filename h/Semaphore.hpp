//
// Created by os on 6/25/22.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_HPP
#define PROJECT_BASE_V1_1_SEMAPHORE_HPP


#include "_thread.hpp"

class Semaphore {
public:
    Semaphore(uint64 init=1):val(init){}

    int wait();
    void signal();

    int value() const{return val;}
    typedef Semaphore* sem_t;

    void* operator new(size_t n);

    void* operator new[](size_t n);

    void operator delete(void* p);

    void operator delete[] (void* p);

private:
    int val;
    static List<_thread> blocked;
    friend class Riscv;
};


#endif //PROJECT_BASE_V1_1_SEMAPHORE_HPP

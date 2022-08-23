//
// Created by os on 6/25/22.
//

#ifndef PROJECT_BASE_V1_1_KSEMAPHORE_HPP
#define PROJECT_BASE_V1_1_KSEMAPHORE_HPP


#include "_thread.hpp"
#include "List.hpp"

class KSemaphore {
public:
    KSemaphore(uint64 init=1): val(init){

    }

    int wait();
    void signal();

    int value() const{return val;}
    typedef KSemaphore* sem_t;

    void* operator new(size_t n);

    void* operator new[](size_t n);

    void operator delete(void* p)noexcept;

    void operator delete[] (void* p)noexcept;

    bool opened;

private:
    int val;
    List<_thread> blocked;
    friend class Riscv;
};


#endif //PROJECT_BASE_V1_1_KSEMAPHORE_HPP

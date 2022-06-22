//
// Created by os on 6/18/22.
//

#include "../lib/hw.h"


extern void* mem_alloc(size_t n);
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    return mem_alloc(n);
}

void* operator new[](size_t n){
    return mem_alloc(n);
}

void operator delete(void* p) noexcept{
    mem_free(p);
}

void operator delete[] (void* p)noexcept{
    mem_free(p);

}

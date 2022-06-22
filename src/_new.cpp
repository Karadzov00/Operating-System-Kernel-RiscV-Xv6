//
// Created by os on 6/18/22.
//




#include "../lib/mem.h"
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    return MemoryAllocator::kmem_alloc(n);
}

void* operator new[](size_t n){
    return MemoryAllocator::kmem_alloc(n);
}

void operator delete(void* p) noexcept{
    MemoryAllocator::kmem_free(p);
}

void operator delete[] (void* p)noexcept{
    MemoryAllocator::kmem_free(p);

}

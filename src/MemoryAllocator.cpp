//
// Created by os on 6/20/22.
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    return __mem_alloc(size);
}

int MemoryAllocator::mem_free(void* arg){
    return __mem_free(arg);
}
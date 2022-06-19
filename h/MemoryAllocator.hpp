//
// Created by os on 6/18/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"
#include "../src/_new.cpp"

class MemoryAllocator {
public:
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
        return instance;
    }

    static void* mem_alloc(size_t size);
    static int mem_free(void* arg);

private:
    MemoryAllocator(){}
    MemoryAllocator(MemoryAllocator const&)=delete;
    void operator=(MemoryAllocator const&)=delete;


};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

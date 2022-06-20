//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"

class MemoryAllocator {
public:
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
        return instance;
    }

    void* mem_alloc(size_t size);
    int mem_free(void* arg);
    MemoryAllocator(MemoryAllocator const&)=delete;
    void operator=(MemoryAllocator const&)=delete;

private:
    MemoryAllocator(){}

};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

//
// Created by os on 6/18/22.
//
š
#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"

class MemoryAllocator {
public:
    static void* mem_alloc(size_t size);
    static int mem_free(void* arg);

};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

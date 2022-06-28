//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"
#include "DoublyLinkedList.hpp"


class MemoryAllocator {
public:
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
        return instance;
    }

    static void* kmem_alloc(size_t size);
    static int kmem_free(void* arg);
    MemoryAllocator(MemoryAllocator const&)=delete;
    void operator=(MemoryAllocator const&)=delete;

private:
    MemoryAllocator(){}

//    struct Node {
//        void* startAdress;
//        size_t size; // Size of the free fragment
//    };

    static DoublyLinkedList<size_t> freeList;
    static DoublyLinkedList<size_t> pcbList;


};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"
#include "DoublyLinkedList.hpp"
#include "../lib/hw.h"


class MemoryAllocator {
public:
    typedef DoublyLinkedList<size_t>::Node FreeMem;

    static MemoryAllocator* getInstance(){
        if(instance == nullptr){
            instance = (MemoryAllocator*)HEAP_START_ADDR;

            instance->freeList.head=(FreeMem*)((size_t)HEAP_START_ADDR+sizeof(MemoryAllocator));
            instance->freeList.head->address=(void*)((size_t)HEAP_START_ADDR+sizeof(MemoryAllocator));
            instance->freeList.head->size = (size_t)HEAP_END_ADDR-((size_t)HEAP_START_ADDR+sizeof(MemoryAllocator));
            instance->freeList.head->next= nullptr;
            instance->freeList.head->prev= nullptr;

            instance->pcbList.head= nullptr;
        }
        return instance;
    }


    static void* kmem_alloc(size_t size);
    static int kmem_free(void* arg);
    static int tryToJoin(FreeMem* cur);
    MemoryAllocator(MemoryAllocator const&)=delete;
    void operator=(MemoryAllocator const&)=delete;

private:
    MemoryAllocator();

//    struct Node {
//        void* startAdress;
//        size_t size; // Size of the free fragment
//    };
    static MemoryAllocator* instance;


    DoublyLinkedList<size_t> freeList;
    DoublyLinkedList<size_t> pcbList;

};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

//
// Created by os on 6/20/22.
//

#include "../h/MemoryAllocator.hpp"

DoublyLinkedList<size_t> MemoryAllocator::freeList;
DoublyLinkedList<size_t> MemoryAllocator::pcbList;

typedef DoublyLinkedList<size_t>::Node FreeMem;

void* MemoryAllocator::kmem_alloc(size_t size){
    for(FreeMem* cur = freeList.head; cur!=0; cur=cur->next){
        if(cur->size<size) continue;
        //Found
        if(cur->size-size<=sizeof(FreeMem)){
            //No remaining fragment
            if(cur->prev)cur->prev->next = cur->next;
            else freeList.head = cur->next;
            if(cur->next)cur->next->prev = cur->prev;
            return cur->address;
            //TODO initialize address at HEAP_START_ADRESS at the beginning
            //TODO ubaciti prvi element u listu i postaviti mu adresu na heap start adress
        }
        else{
            FreeMem* newfrgm = (FreeMem*)((char*)cur->address+size);
            if(cur->prev)cur->prev->next = newfrgm;
            else freeList.head = newfrgm;
            if(cur->next) cur->next->prev = newfrgm;
            newfrgm->prev = cur->prev;
            newfrgm->next=cur->next;
            newfrgm->size=cur->size-size;
            return cur->address;
        }
    }
    return nullptr;
}

int MemoryAllocator::kmem_free(void* arg){
    return __mem_free(arg);
}
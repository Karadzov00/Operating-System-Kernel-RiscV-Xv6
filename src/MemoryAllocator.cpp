//
// Created by os on 6/20/22.
//

#include "../h/MemoryAllocator.hpp"




MemoryAllocator* MemoryAllocator::instance= nullptr;


void* MemoryAllocator::kmem_alloc(size_t size){
    MemoryAllocator* ma = getInstance();
    for(FreeMem* cur = ma->freeList.head; cur!=nullptr; cur=cur->next){
        if(cur->size<size) continue;
        //Found
        if(cur->size-size<=sizeof(FreeMem)){
            //No remaining fragment
            if(cur->prev)cur->prev->next = cur->next;
            else ma->freeList.head = cur->next;
            if(cur->next)cur->next->prev = cur->prev;
            return cur->address;

        }
        else{
            FreeMem* newfrgm = (FreeMem*)((size_t)cur->address+size);
            if(cur->prev)cur->prev->next = newfrgm;
            else ma->freeList.head = newfrgm;
            if(cur->next) cur->next->prev = newfrgm;
            newfrgm->prev = cur->prev;
            newfrgm->next=cur->next;
            newfrgm->size=cur->size-size;
            newfrgm->address= (void*)((size_t)cur->address+size);
            return cur->address;
        }
    }
    return nullptr;

    //TODO initialize address at HEAP_START_ADRESS at the beginning
    //TODO ubaciti prvi element u listu i postaviti mu adresu na heap start adress + sizeof(freeMem)
}

int MemoryAllocator::kmem_free(void* arg){
    return __mem_free(arg);
}
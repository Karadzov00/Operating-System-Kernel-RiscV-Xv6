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

            //add process to the end of pcb list
            FreeMem* proc = cur;
            proc->size=size;
            proc->address=cur;
            proc->next= nullptr;
            if (ma->pcbList.head == nullptr)
            {
                ma->pcbList.head = cur;

            } else
            {
                FreeMem* temp;
                for( temp = ma->pcbList.head; temp->next!=nullptr; temp=temp->next);
                temp->next=cur;
            }

            return cur->address;

        }
        else{
            FreeMem * newfrgm = (FreeMem *)((size_t)cur + size + sizeof(FreeMem));
            if(cur->prev)cur->prev->next = newfrgm;
            else ma->freeList.head = newfrgm;
            if(cur->next) cur->next->prev = newfrgm;
            newfrgm->prev = cur->prev;
            newfrgm->next=cur->next;
            newfrgm->size=cur->size-size;
            newfrgm->address= (void*)((size_t)cur + size + sizeof(FreeMem));

            //add process to the end of pcb list
            FreeMem* proc = cur;
            proc->size=size;
            proc->address=cur;
            proc->next= nullptr;
            if (ma->pcbList.head == nullptr)
            {
                ma->pcbList.head = cur;

            } else
            {
                FreeMem* temp;
                for( temp = ma->pcbList.head; temp->next!=nullptr; temp=temp->next);
                temp->next=cur;
            }

            return cur->address;
        }
    }
    return nullptr;

    //initialize address at HEAP_START_ADRESS at the beginning
    //ubaciti prvi element u listu i postaviti mu adresu na heap start adress + sizeof(freeMem)
}

//try to join cur with cur->next segment
int MemoryAllocator::tryToJoin(FreeMem *cur) {
    if(cur== nullptr)return 0;
    if(cur->next && (char*)cur+cur->size==(char*)(cur->next)){
        //remove the cur->next segment
        cur->size+=cur->next->size;
        cur->next = cur->next->next;
        if(cur->next)cur->next->prev=cur;
        return 1;
    }
    else return 0;
}

int MemoryAllocator::kmem_free(void* addr){
    //find size of the process for deallocation
    MemoryAllocator* ma = getInstance();

    size_t size = -1;
    for( FreeMem *temp = ma->pcbList.head; temp!=nullptr; temp=temp->next){
        if(temp->address==addr)
            size = temp->size;
    }
    //size not found
    if(size<0)return -1;

    //find the place where to insert the new free segment (just after cur)
    FreeMem* cur=0;
    if(ma->freeList.head== nullptr)
        cur= nullptr;
    else
        for(cur=ma->freeList.head; cur->next!= nullptr && addr>(char*)(cur->next); cur=cur->next);

    //insert seg after cur
    FreeMem* newSeg = (FreeMem*)addr;
    newSeg->size = size;
    newSeg->prev= cur;
    if(cur)newSeg->next = cur->next;
    else ma->freeList.head = newSeg;


    tryToJoin(newSeg);
    tryToJoin(cur);

    //delete pointer from pcb list
    FreeMem* prev=nullptr;
    for( FreeMem *temp = ma->pcbList.head; temp!=nullptr; temp=temp->next){
        if(temp->address==addr){
            if(prev== nullptr)ma->pcbList.head=temp->next;
            else prev->next=temp->next;
        }
        prev = temp;
    }


    return 0;

}
//
// Created by os on 6/20/22.
//

#include "../h/MemoryAllocator.hpp"




MemoryAllocator* MemoryAllocator::copy= nullptr;


void* MemoryAllocator::kmem_alloc(size_t size){
    MemoryAllocator* ma = getCopy();
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
            void* address = (void*)((size_t)cur+ sizeof(FreeMem));
            return address;

        }
        else{
            FreeMem * newfrgm = (FreeMem *)((size_t)cur + size + sizeof(FreeMem));
            if(cur->prev)cur->prev->next = newfrgm;
            else ma->freeList.head = newfrgm;
            if(cur->next) cur->next->prev = newfrgm;
            newfrgm->prev = cur->prev;
            newfrgm->next=cur->next;
            newfrgm->size=cur->size-size;

            //add process to the end of pcb list
            FreeMem* proc = cur;
            proc->size=size;
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

            void* address = (void*)((size_t)cur+ sizeof(FreeMem));
            return address;
        }
    }
    return nullptr;

    //initialize address at HEAP_START_ADRESS at the beginning
    //ubaciti prvi element u listu i postaviti mu adresu na heap start adress + sizeof(freeMem)
}

//try to join cur with cur->next segment
int MemoryAllocator::tryToJoin(FreeMem *cur) {
    if(cur== nullptr)return 0;
    if(cur->next && (size_t)cur+cur->size+ sizeof(FreeMem)==(size_t)(cur->next)){
        //remove the cur->next segment
        cur->size+=cur->next->size+ sizeof(FreeMem);
        cur->next = cur->next->next;
        if(cur->next)cur->next->prev=cur;
        return 1;
    }
    else return 0;
}

int MemoryAllocator::kmem_free(void* addr){
    //find size of the process for deallocation
    MemoryAllocator* ma = getCopy();

    size_t size = -1;
    bool found = false;
    FreeMem* prev=nullptr;
    for( FreeMem *temp = ma->pcbList.head; temp!=nullptr; temp=temp->next){
        if((size_t)temp+ sizeof(FreeMem)==(size_t)addr) {
            size = temp->size;
            //delete pointer from pcb list
            if(prev== nullptr) {
                //if its first
                ma->pcbList.head = temp->next;
                temp->next= nullptr;
                found=true;
                break;
            }
            else {
                prev->next = temp->next;
                temp->next= nullptr;
                found=true;
                break;
            }
        }
        prev = temp;
    }
    //size not found
    if(found==false)return -1;

    //find the place where to insert the new free segment (just after cur)
    FreeMem* cur=0;
    if(ma->freeList.head== nullptr || (size_t)addr<(size_t)ma->freeList.head)
        cur= nullptr;   //insert as first
    else
        for(cur=ma->freeList.head; cur->next!= nullptr && (size_t)addr>(size_t)(cur->next); cur=cur->next);

    //insert seg after cur
    FreeMem* newSeg = (FreeMem*)((size_t)addr- sizeof(FreeMem));
    newSeg->size = size;    //check this!!
    newSeg->prev= cur;
    if(cur)newSeg->next = cur->next;//link to next
    else newSeg->next=ma->freeList.head;
    if(newSeg->next)newSeg->next->prev=newSeg;
    if(cur)cur->next=newSeg; //link previous
    else ma->freeList.head = newSeg;



    tryToJoin(newSeg);
    tryToJoin(cur);



    return 0;

}
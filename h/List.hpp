//
// Created by os on 6/17/22.
//

#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP

#include "MemoryAllocator.hpp"

template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void* operator new(size_t n){
        return MemoryAllocator::kmem_alloc(n);
    }

    void operator delete(void* p){
        MemoryAllocator::kmem_free(p);
    }

    void addFirst(T *data)
    {
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
        elem->data=data;
        elem->next=head;
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = (Elem*)MemoryAllocator::kmem_alloc(sizeof (Elem));
        elem->data=data;
        elem->next=0;
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        MemoryAllocator::kmem_free(elem);
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        MemoryAllocator::kmem_free(elem);
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //PROJECT_BASE_V1_1_LIST_HPP

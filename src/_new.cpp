//
// Created by os on 6/27/22.
//
#include "../lib/mem.h"

extern void* mem_alloc (size_t size);
int mem_free (void* p);

void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    mem_free(p);
}

void operator delete[](void *p) noexcept
{
    mem_free(p);
}
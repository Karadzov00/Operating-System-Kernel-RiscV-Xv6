//
// Created by os on 6/28/22.
//

#ifndef PROJECT_BASE_V1_1_DOUBLYLINKEDLIST_HPP
#define PROJECT_BASE_V1_1_DOUBLYLINKEDLIST_HPP


template<class T>
class DoublyLinkedList
{
public:
    struct Node
    {
        T size; //start adress
        Node* next;
        Node* prev;
        Node(T val): size(val), next(nullptr), prev(nullptr) {}
    };
    Node *head, *tail;

    DoublyLinkedList(): head(nullptr), tail(nullptr) {}

private:

    DoublyLinkedList(const DoublyLinkedList<T> & dll);
    DoublyLinkedList& operator=(DoublyLinkedList const&);
    friend class MemoryAllocator;
};


#endif //PROJECT_BASE_V1_1_DOUBLYLINKEDLIST_HPP

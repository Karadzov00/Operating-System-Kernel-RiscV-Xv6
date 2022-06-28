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
        void* address;
        Node* next;
        Node* prev;
        Node(T val): size(val), next(nullptr), prev(nullptr) {}
    };
    Node *head, *tail;

public:
    DoublyLinkedList(): head(nullptr), tail(nullptr) {}

    ~DoublyLinkedList()
    {
        Node *tmp = nullptr;
        while (head)
        {
            tmp = head;
            head = head->next;
            delete tmp;
        }
        head = nullptr;
    }



    void insertFront(T val)
    {
        Node *node = new Node(val);
        Node *tmp = head;
        if (head == nullptr)
        {
            head = node;
            tail = node;
        }
        else
        {
            node->next = head;
            head = node;
            node->next->prev = node;
        }
    }

    void insertBack(T val)
    {
        Node *node = new Node(val);
        if(tail->next == nullptr)
        {
            tail->next = node;
            tail = node;
        }
    }

    void deleteVal(T val)
    {
        Node* find = findVal(val);
        Node *tmp = head;

        if(tmp == find)
        {
            head = tmp->next;
        }
        else
        {
            while(find != nullptr)
            {
                if(tmp->next == find)
                {
                    tmp->next = find->next;
                    find->next->prev = tmp;
                    delete find;
                    return;
                }
                tmp = tmp->next;
            }
        }
    }



private:

    Node *findVal(T n) //returns node of the given number
    {
        Node *node = head;
        while(node != nullptr)
        {
            if(node->size == n)
                return node;

            node = node->next;
        }
        return nullptr;
    }
    DoublyLinkedList(const DoublyLinkedList<T> & dll);
    DoublyLinkedList& operator=(DoublyLinkedList const&);
    friend class MemoryAllocator;
};


#endif //PROJECT_BASE_V1_1_DOUBLYLINKEDLIST_HPP

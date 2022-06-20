//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP

#include "List.hpp"

class TCB;

class Scheduler {
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP

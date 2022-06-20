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

    Scheduler(){}

public:
    static TCB *get();

    static void put(TCB *ccb);

    static Scheduler& getInstance(){
        static Scheduler instance;
        return instance;
    }

    Scheduler(Scheduler const&)=delete;
    void operator=(Scheduler const&)=delete;
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP

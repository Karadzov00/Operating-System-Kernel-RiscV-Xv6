//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP

#include "List.hpp"

class _thread;

class Scheduler {
private:
    static List<_thread> readyThreadQueue;

    Scheduler(){}

public:
    static _thread *get();

    static void put(_thread *ccb);

    static Scheduler& getInstance(){
        static Scheduler instance;
        return instance;
    }

    Scheduler(Scheduler const&)=delete;
    void operator=(Scheduler const&)=delete;
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP

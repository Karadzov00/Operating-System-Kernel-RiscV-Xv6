//
// Created by os on 6/26/22.
//

#ifndef PROJECT_BASE_V1_1_KCONSOLE_HPP
#define PROJECT_BASE_V1_1_KCONSOLE_HPP

#include "../lib/console.h"

class KConsole {
public:
    static KConsole& getInstance(){
        static KConsole instance;
        return instance;
    }

    static void putc(char chr);

    static char getc();

    static void kconsole_handler();

    KConsole(KConsole const&)=delete;
    void operator=(KConsole const&)=delete;

private:
    KConsole(){}
};


#endif //PROJECT_BASE_V1_1_KCONSOLE_HPP

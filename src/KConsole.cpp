//
// Created by os on 6/26/22.
//

#include "../h/KConsole.hpp"


char KConsole::getc() {
    return __getc();
}

void KConsole::putc(char chr) {
    __putc(chr);
}

void KConsole::kconsole_handler() {
    console_handler();
}
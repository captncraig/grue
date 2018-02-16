#ifndef main_c_INCLUDED
#define main_c_INCLUDED

#include <inttypes.h>
#include <stdio.h>

#include "interpreter.h"

// 128K is max size of V3 story file
#define STORYSIZE 131072
uint8_t story[STORYSIZE] = {0};

uint8_t read(uint32_t addr){
    return story[addr];
}

uint16_t read16(uint32_t addr){
    return story[addr] << 8 | story[addr+1];
}

void print(char* c){
    printf(c);
}

int main(int argc, char *argv[]){
    char *fname = "games/zork1.z5";
    if (argc > 1){
        fname = argv[1];
    }
    FILE *fp = fopen(fname, "r");
    if (fp != NULL) {
        size_t newLen = fread(story, sizeof(uint8_t), STORYSIZE, fp);
        if (ferror( fp )) {
            debugf("Error reading file");
        }
        
        fclose(fp);
    }

    memory mem;
    mem.read = read;
    mem.read16 = read16;

    console con;
    con.print = print;

    interpreter *i = newInterpreter(&con, &mem);

    while(!step(i));
    destroyInterpreter(i);
}

#endif
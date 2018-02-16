#ifndef inst_0_c_INCLUDED
#define inst_0_c_INCLUDED

#include <string.h>
#include "debug.h"
#include "interpreter.h"

void clear_print_buffer(interpreter *i){
    memset(i->print_buffer,0, PRINT_BUFFER_MAX_SIZE * sizeof(char));
    i->print_buffer_size = 0;
}

int add_to_buffer(interpreter *i, char c){
    if (i->print_buffer_size == PRINT_BUFFER_MAX_SIZE){
        debugf("PRINT BUFFER FULL (%s)\n", i->print_buffer);
        return -1;
    }
    i->print_buffer[i->print_buffer_size] = c;
    i->print_buffer_size++;
    return 0;
}

typedef struct {
    uint8_t nextAlpha;
    uint8_t  zChIdx;
    uint16_t zCh;
    uint8_t abbr_next;
}print_state;
int print_z_char(interpreter *i, print_state *ps, uint8_t v, bool b);

// returns number bytes read from memory
int print_z_string(interpreter *i, uint32_t addr, bool abbr_allowed){
    int n = 0;
    print_state ps = {0};
    while(1){
        uint16_t block = i->memory->read16(addr + n);
        n += 2;
        if(print_z_char(i, &ps, (block >> 10) & 0b11111, abbr_allowed)) return -1;
        if(print_z_char(i, &ps, (block >> 5) & 0b11111, abbr_allowed)) return -1;
        if(print_z_char(i, &ps, block & 0b11111, abbr_allowed)) return -1;
        if (block & 0x8000){
            break;
        }
    }
    return n;
}

char *alphas[]= {
    "abcdefghijklmnopqrstuvwxyz",
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    " \n0123456789.,!?_#'\"/\\-:()"
};

int print_z_char(interpreter *i, print_state *ps, uint8_t v, bool abbr_allowed){
    //debugf("Z CHAR %d\n",v);
    uint8_t thisAlpha = ps->nextAlpha;
    ps -> nextAlpha = 0;
    if (ps->zChIdx == 1){
        ps->zCh = (v << 5);
        ps->zChIdx = 2;
        return 0;
    }
    if (ps->zChIdx == 2){
        ps->zCh |= v;
        ps->zChIdx = 0;
        uint16_t z = ps->zCh;
        if(z >= 32 && z <=126){
            return add_to_buffer(i,(char)z);
        }
        debugf("ZCH NOT IMPL %d\n", ps->zCh);
        return -1;
    }
    if (ps->abbr_next){
        uint8_t z = ps->abbr_next;
        ps->abbr_next = 0;
        uint8_t idx = (32*(z-1)) + v;
        uint32_t addr = get_abbreviation_addr(i, idx);
        //debugf("ABBR %d %x\n", idx, addr);
        int result = print_z_string(i, addr, false);
        if (result == -1){
            return -1;
        }
        return 0;
    }
    if (v == 0){
        return add_to_buffer(i, ' ');
    }
    if (v < 4) {
        if (!abbr_allowed){
             debugf("ABBREVIATION IN ABBREVIATION? BAD STORY!\n");
             return -1;
        }
        ps->abbr_next = v;
        return 0;
    }
    if (v == 4){
        ps -> nextAlpha = 1;
        return 0;
    }
    if (v == 5){
        ps -> nextAlpha = 2;
        return 0;
    }
    if (v == 6 && thisAlpha == 2){
        ps -> zChIdx = 1;
        ps -> zCh = 0;
        return 0;
    }
    return add_to_buffer(i, alphas[thisAlpha][v-6]);
}

int print_literal(interpreter *i){
    clear_print_buffer(i);
    int n = print_z_string(i, i->pc, true);
    if (!n) {
        return n;
    }
    i->pc += n;
    i->console->print(i->print_buffer);
    return 0;
}

#endif
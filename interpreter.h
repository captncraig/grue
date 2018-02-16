#ifndef interface_h_INCLUDED
#define interface_h_INCLUDED

#include <inttypes.h>

#include "debug.h"

#ifdef ARDUINO 
    #define STACKSIZE 1024
#else
    #define STACKSIZE 32*1024
#endif

#define PRINT_BUFFER_MAX_SIZE 500

typedef struct{
    void (*print)(char *);
} console;

typedef struct{
    uint8_t (*read)(uint32_t);
    uint16_t (*read16)(uint32_t);
}memory;

typedef struct{
    console *console;
    memory *memory;

    uint8_t version;
    uint16_t high_mem_base;
    uint16_t pc;
    uint16_t dictionary_addr;
    uint16_t object_table_addr;
    uint16_t globals_addr;
    uint16_t static_mem_base;
    uint16_t abbreviations_addr;
    uint16_t file_length;
    uint16_t file_checksum;
    uint16_t revision_number;

    uint16_t stack[STACKSIZE];
    uint16_t print_buffer_size;
    char print_buffer[PRINT_BUFFER_MAX_SIZE];
} interpreter;

typedef int bool;
#define true 1
#define false 0

interpreter *newInterpreter(console*, memory*);
void destroyInterpreter(interpreter *i);

int step(interpreter *i);

uint32_t get_abbreviation_addr(interpreter *i, uint8_t idx);

#endif
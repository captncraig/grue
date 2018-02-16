#ifndef interface_c_INCLUDED
#define interface_c_INCLUDED

#include <stdlib.h>

#include "interpreter.h"
#include "inst_0OP.h"
#include "inst_1OP.h"
#include "debug.h"

// forward declarations
int execute(interpreter *i, uint8_t opCode, uint8_t opCount, int numArgs, uint8_t *argTypes, uint16_t *argVals);
int execute0OP(interpreter *i, uint8_t opCode);
int execute1OP(interpreter *i, uint8_t opCode, uint8_t opType, uint16_t opVal);

interpreter *newInterpreter(console* con, memory* mem){
    interpreter *i = malloc(sizeof(interpreter));

    i->console = con;
    i->memory = mem;
    i->version = mem -> read(0x00);
    i->high_mem_base = mem -> read16(0x04);
    i->pc = mem -> read16(0x06);
    i->dictionary_addr = mem -> read16(0x08);
    i->object_table_addr = mem -> read16(0x0a);
    i->globals_addr = mem -> read16(0x0c);
    i->static_mem_base = mem -> read16(0x0e);
    i->abbreviations_addr = mem -> read16(0x18);
    i->file_length = mem -> read16(0x1a);
    i->file_checksum = mem -> read16(0x1c);
    i->revision_number = mem -> read16(0x32);

    debugf("Z machine version %d\n", i->version);
    debugf("High Memory Mark: 0x%04x\n", i->high_mem_base);
    debugf("Static Memory Mark: 0x%04x\n", i->static_mem_base);
    debugf("Initial PC: 0x%04x\n", i->pc);
    debugf("Dictionary: 0x%04x\n", i->dictionary_addr);
    debugf("Object Table: 0x%04x\n", i->object_table_addr);
    debugf("Globals: 0x%04x\n", i->globals_addr);
    debugf("Abbreviations: 0x%04x\n", i->abbreviations_addr);
    debugf("File Length: %d\n", i->file_length);
    debugf("Checksum: 0x%04x\n", i->file_checksum);
    debugf("Revision: %d\n", i->revision_number);

    return i;
}

void destroyInterpreter(interpreter *i){
    free(i);
}

#define FORM_MASK 0xC0
#define FORM_VAR 0xC0
#define FORM_SHORT 0x80

#define OC_0OP 0
#define OC_1OP 1
#define OC_2OP 2
#define OC_VAR 3

int step(interpreter *i){
    
    uint8_t inst = i->memory->read(i->pc);
    debugf("Step! PC: 0x%04x Opcode: "BYTE_TO_BINARY_PATTERN"\n", i->pc, BYTE_TO_BINARY(inst));
    i->pc++;
    uint8_t form = inst & FORM_MASK;
    uint8_t opCode;
    uint8_t opCount;
    uint8_t numArgs = 0;
    uint8_t argTypes[8];
    uint16_t argValues[8];

    if (form == FORM_VAR){
        //VARIABLE FORM
        debugf("Variable form instructions not implemented");
        return -1;
    }else if(form == FORM_SHORT){
        // In short form, bits 4 and 5 of the opcode byte give an operand type as above. 
        // If this is $11 then the operand count is 0OP; otherwise, 1OP. 
        // In either case the opcode number is given in the bottom 4 bits.
        opCode = inst & 0x0F;
        argTypes[0] = (inst >> 4) & 0x3;
        if (argTypes[0] != 0x3){
            opCount = OC_1OP;
            numArgs = 1;
        }else{
            opCount = OC_0OP;
            numArgs = 0;
        }
    }else{
        //LONG FORM
        debugf("Long form instructions not implemented");
         return -1;
    }
    for (int idx = 0; idx<numArgs; idx++){
        uint8_t ot = argTypes[idx];
        if (ot == 0){
            argValues[idx] = i->memory->read16(i->pc);
            i->pc +=2;
        }else if (ot == 1){
            argValues[idx] = i->memory->read(i->pc);
            i->pc++;
        }else if (ot == 2){
            uint8_t vNum = i->memory->read(i->pc);
            i->pc++;
            if (vNum == 0) {
                debugf("TOP OF STACK NOT IMPL");
                return -1;
            }else if (vNum <= 0x0f){
                debugf("LOCAL VARS NOT IMPL");
                return -1;
            }else{
                argValues[idx] = read_global(i, vNum - 0xf);
            }
        }else{
            argValues[idx] = 0;
        }
    }
    return execute(i, opCode, opCount, numArgs, argTypes, argValues);
}

int execute(interpreter *i, uint8_t opCode, uint8_t opCount, int numArgs, uint8_t *argTypes, uint16_t *argVals){
    switch (opCount){
        case OC_0OP:
            return execute0OP(i, opCode);
        case OC_1OP:
            return execute1OP(i, opCode, argTypes[0], argVals[0]);
        default:
            debugf("Opcount execution not implemented: %d", opCount);
            return -1;
    }
    return 0;
}

int execute0OP(interpreter *i, uint8_t opCode){
    switch(opCode){
        // case 0x00: //rtrue
        // case 0x01: //rfalse
         case 0x02: //print
            return print_literal(i);
        // case 0x03: //print_ret
        // case 0x04: //nop
        // case 0x05: //save
        // case 0x06: //restore
        // case 0x07: //restart
        // case 0x08: //ret_popped
        // case 0x09: //pop
        // case 0x0A: //quit
        // case 0x0B: //new_line
        // case 0x0C: //show_status
        // case 0x0D: //verify
        // case 0x0E: //extended (V5+)
        // case 0x0F: //piracy (v5+)
        default:
            debugf("0OP Opcode execution not implemented: %02x", opCode);
            return -1;
    }
    return 0;
}

int execute1OP(interpreter *i, uint8_t opCode, uint8_t opType, uint16_t opVal){
    switch(opCode){
        // case 0x00: //jz
        // case 0x01: //get_sibling
        // case 0x02: //get_child
        // case 0x03: //get_parent
        // case 0x04: //get_prop_len
        // case 0x05: //inc
        // case 0x06: //dec
        // case 0x07: //print_addr
        // case 0x08: //call_ls
        // case 0x09: //remove_obj
        // case 0x0A: //print_obj
        // case 0x0B: //ret
        // case 0x0C: //jump
        case 0x0D: //print_paddr
         return print_paddr(i, opVal);
        // case 0x0E: //load
        // case 0x0F: //not
        default:
            debugf("1OP Opcode execution not implemented: %02x", opCode);
            return -1;
    }
    return 0;
}

uint32_t get_abbreviation_addr(interpreter *i, uint8_t idx){
    uint16_t word_addr = i->memory->read16(i->abbreviations_addr + (2 * idx));
    return (uint32_t)word_addr * 2;
}

uint16_t read_global(interpreter *i, uint8_t idx){
    return i->memory->read16(i->globals_addr+(2 *idx));
}

#endif
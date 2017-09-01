package main

import "log"

// codified form of http://inform-fiction.org/zmachine/standards/z1point1/sect14.html
type OpCode struct {
	Store  bool
	Branch bool
	Name   string
	F      func(*Instruction, *Machine) error
}

var opCodes = map[OperandCount]map[uint8]*OpCode{
	OC_0OP: map[uint8]*OpCode{},
	OC_1OP: map[uint8]*OpCode{
		0x00: {false, true, "jz", OP_JZ},
		0x0b: {false, false, "ret", OP_RET},
		0x0c: {false, false, "jump", OP_JUMP},
	},
	OC_2OP: map[uint8]*OpCode{
		0x01: {false, true, "je", OP_JE},
		0x0f: {true, false, "loadw", OP_LOADW},
		0x14: {true, false, "add", OP_ADD},
		0x15: {true, false, "sub", OP_SUB},
	},
	OC_VAR: map[uint8]*OpCode{
		0x00: {true, false, "call", OP_CALL},
		0x01: {false, false, "storew", OP_STOREW},
		0x03: {false, false, "put_prop", OP_PUT_PROP},
	},
}

func OP_ADD(i *Instruction, m *Machine) error {
	m.SetVar(i.StoreVar, i.Operands[0]+i.Operands[1])
	return nil
}
func OP_SUB(i *Instruction, m *Machine) error {
	m.SetVar(i.StoreVar, i.Operands[0]-i.Operands[1])
	return nil
}

func OP_JE(i *Instruction, m *Machine) error {
	return branch(i, m, i.Operands[0] == i.Operands[1])
}
func branch(i *Instruction, m *Machine, cond bool) error {
	if cond == i.BranchCond {
		m.PC = i.BranchAddr
	}
	return nil
}
func OP_JZ(i *Instruction, m *Machine) error {
	return branch(i, m, i.Operands[0] == 0)
}

func OP_JUMP(i *Instruction, m *Machine) error {
	m.PC += i.Operands[0] - 2
	return nil
}

func OP_LOADW(i *Instruction, m *Machine) error {
	m.SetVar(i.StoreVar, m.Read16(i.Operands[0]+2*i.Operands[1]))
	return nil
}
func OP_STOREW(i *Instruction, m *Machine) error {
	m.SetMem16(i.Operands[0]+2*i.Operands[1], i.Operands[2])
	return nil
}

func OP_PUT_PROP(i *Instruction, m *Machine) error {
	m.PrintState()
	log.Fatal(i)
	return nil
}

func OP_CALL(i *Instruction, m *Machine) error {
	addr := i.Operands[0] * 2
	// add data we need to return to stack
	m.Push(m.PC)
	m.Push(uint16(i.StoreVar)) //where to put result?
	m.Push(0)                  //don't discard
	m.Push(m.FP)
	// now go into new routine
	newFrame := m.Stack[m.FP] + 1
	m.FP = uint16(len(m.Stack))
	m.PC = addr
	// Push new Frame idx
	m.Push(newFrame)
	nLoc := uint16(m.ReadPC())
	// push local size
	m.Push(nLoc)
	// push n locals (using args if availible, default value if not)
	for idx := uint16(0); idx < nLoc; idx++ {
		dVal := m.Read16PC()
		if uint16(len(i.Operands)) > 1+idx {
			m.Push(i.Operands[idx+1])
		} else {
			m.Push(dVal)
		}
	}
	return nil
}

func OP_RET(i *Instruction, m *Machine) error {
	m.Stack = m.Stack[:m.FP]
	m.FP = m.Stack[len(m.Stack)-1]
	m.Pop()
	discard := m.Pop() != 0
	storeLoc := uint8(m.Pop())
	m.PC = m.Pop()
	if !discard {
		m.SetVar(storeLoc, i.Operands[0])
	}
	return nil
}

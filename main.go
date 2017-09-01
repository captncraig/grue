package main

import (
	"fmt"
	"io/ioutil"
	"log"
)

func main() {
	data, err := ioutil.ReadFile("z-2.z5")
	if err != nil {
		log.Fatal(err)
	}
	prg := &Machine{mem: data, Header: ParseHdr(data)}
	prg.Push(0) // FRAME 0
	prg.Push(0) // 0 Locals
	log.Printf("Loaded %d bytes", len(data))
	log.Println("Header:\n" + prg.Header.String())

	prg.PC = prg.Header.InitialPC
	prg.PrintState()
	for {
		//fmt.Printf("0x%x\n", prg.PC)
		op := prg.Decode()
		//fmt.Println(op.OpCode.Name)
		op.OpCode.F(op, prg)
		//prg.PrintState()
	}
}

type Machine struct {
	Header Header
	PC     uint16
	mem    []byte
	Stack  []uint16
	FP     uint16
}

func (m *Machine) Push(v uint16) {
	m.Stack = append(m.Stack, v)
}

func (m *Machine) Pop() uint16 {
	nLoc := m.Stack[m.FP+1]
	firstIdx := m.FP + 2 + nLoc
	l := len(m.Stack) - 1
	if l < int(firstIdx) {
		panic("CAN't POP EMPTY STACK!!")
	}
	v := m.Stack[l]
	m.Stack = m.Stack[:l]
	return v
}

func (m *Machine) Local(i uint8) uint16 {
	m.checkLocal(i)
	return m.Stack[m.FP+uint16(i)+1]
}

func (m *Machine) checkLocal(i uint8) {
	nLoc := m.Stack[m.FP+1]
	if uint16(i) > nLoc {
		log.Fatalf("Variable %d does not exist in current frame", i)
	}
}

func (m *Machine) Global(i uint8) uint16 {
	offset := uint16(i-0x10) * 2
	return uint16(m.mem[offset])<<8 | uint16(m.mem[offset+1])
}

func (m *Machine) SetVar(i uint8, v uint16) {
	if i == 0 {
		m.Push(v)
	} else if i < 0x10 {
		m.checkLocal(i)
		m.Stack[m.FP+uint16(i)+1] = v
	} else {
		offset := uint16(i-0x10) * 2
		m.mem[offset] = uint8(v >> 8)
		m.mem[offset+1] = uint8(v)
	}
}

func (m *Machine) ReadPC() uint8 {
	b := m.mem[m.PC]
	m.PC++
	return b
}

func (m *Machine) Read16(addr uint16) uint16 {
	return uint16(m.mem[addr])<<8 | uint16(m.mem[addr+1])
}

func (m *Machine) SetMem16(addr uint16, val uint16) {
	m.mem[addr] = uint8(val >> 8)
	m.mem[addr+1] = uint8(val)
}

func (m *Machine) Read(addr uint16) uint8 {
	return m.mem[addr]
}

func (m *Machine) Read16PC() uint16 {
	return uint16(m.ReadPC())<<8 | uint16(m.ReadPC())
}

//STACK layout
// RETPC
// STOREVAR
// DISCARD?
// RETFP
// FP -> ID
// NLOCALS
// LOCALS
// EvalStack

type Form byte

//Each instruction has a form (long, short, extended or variable) and an operand count (0OP, 1OP, 2OP or VAR).
//If the top two bits of the opcode are $$11 the form is variable; if $$10, the form is short.
//If the opcode is 190 ($BE in hexadecimal) and the version is 5 or later, the form is "extended". Otherwise, the form is "long".
const (
	FormLong  Form = 1
	FormShort Form = 2
	FormVar   Form = 3
)

type Instruction struct {
	Address      uint16
	Form         Form
	NOpCode      uint8
	OpCount      OperandCount
	OperandTypes []OperandType
	RawOperands  []uint16
	Operands     []uint16
	StoreVar     uint8
	BranchCond   bool
	BranchAddr   uint16
	OpCode       *OpCode
}

type OperandType byte

func (o OperandType) String() string {
	switch o {
	case OpLargeConstant:
		return "LConst"
	case OpSmallConstant:
		return "SConst"
	case OpVariable:
		return "Variable"
	default:
		return "?"
	}
}

const (
	OpLargeConstant OperandType = 0
	OpSmallConstant OperandType = 1
	OpVariable      OperandType = 2
	OpOmitted       OperandType = 3
)

type OperandCount byte

func (o OperandCount) String() string {
	switch o {
	case OC_0OP:
		return "0OP"
	case OC_1OP:
		return "1OP"
	case OC_2OP:
		return "2OP"
	case OC_VAR:
		return "VAR"
	default:
		return "?"
	}
}

const (
	OC_0OP OperandCount = iota
	OC_1OP
	OC_2OP
	OC_VAR
	OC_EXT
)

func (m *Machine) Decode() *Instruction {
	ins := &Instruction{Address: m.PC}
	instr0 := m.ReadPC()
	ins.Form = Form(instr0 >> 6)
	if ins.Form == 0 {
		ins.Form = FormLong
	}
	if ins.Form == FormVar {
		ins.NOpCode = instr0 & 0x1f
		ins.OpCount = OC_VAR
		opTypes := m.ReadPC()
		for shift := uint8(6); ; shift -= 2 {
			typ := OperandType((opTypes >> uint8(shift)) & 0x3)
			if typ == OpOmitted {
				break
			}
			ins.OperandTypes = append(ins.OperandTypes, typ)
			if shift == 0 {
				break
			}
		}
	} else if ins.Form == FormShort {
		ins.NOpCode = instr0 & 0x0f
		ins.OpCount = OC_0OP
		typ := OperandType(instr0 >> 4 & 3)
		if typ != OpOmitted {
			ins.OpCount = OC_1OP
			ins.OperandTypes = append(ins.OperandTypes, typ)
		}
	} else if ins.Form == FormLong {
		ins.NOpCode = instr0 & 0x1f
		ins.OpCount = OC_2OP
		ins.OperandTypes = []OperandType{OpSmallConstant, OpSmallConstant}
		if instr0&bit6 != 0 {
			ins.OperandTypes[0] = OpVariable
		}
		if instr0&bit5 != 0 {
			ins.OperandTypes[1] = OpVariable
		}
	} else {
		log.Println(ins)
		panic(fmt.Sprintf("Unimplemented Decode Form: %d", ins.Form))
	}
	for _, ot := range ins.OperandTypes {
		var ornd uint16
		var raw uint16
		switch ot {
		case OpLargeConstant:
			ornd = m.Read16PC()
			raw = ornd
		case OpVariable:
			vNum := m.ReadPC()
			if vNum == 0 {
				ornd = m.Pop()
			} else if vNum < 0x10 {
				//local
				ornd = m.Local(vNum)
			} else {
				ornd = m.Global(vNum)
			}
			raw = uint16(vNum)
		case OpSmallConstant:
			ornd = uint16(m.ReadPC())
			raw = ornd
		default:
			log.Fatalf("Don't know how to get operand type: %d", ot)
		}
		ins.RawOperands = append(ins.RawOperands, raw)
		ins.Operands = append(ins.Operands, ornd)
	}
	// now look it up in opcode maps
	oc := opCodes[ins.OpCount][ins.NOpCode]
	if oc == nil {
		log.Fatalf("Unknown instruction at 0x%x: %v 0x%x %v", ins.Address, ins.OpCount, ins.NOpCode, ins)
	}
	ins.OpCode = oc
	if oc.Store {
		ins.StoreVar = m.ReadPC()
	}
	if oc.Branch {
		b0 := m.ReadPC()
		//If bit 7 of the first byte is 0, a branch occurs when the condition was false; if 1, then branch is on true.
		ins.BranchCond = b0&bit7 != 0
		//If bit 6 is set, then the branch occupies 1 byte only, and the "offset" is in the range 0 to 63,
		//given in the bottom 6 bits.
		//If bit 6 is clear, then the offset is a signed 14-bit number given in bits 0 to 5 of the first byte
		//followed by all 8 of the second.
		branchOff := uint16(b0 & 0x3f)
		if b0&bit6 == 0 {
			branchOff <<= 8
			branchOff |= uint16(m.ReadPC())
		}
		if branchOff == 0 {
			log.Fatal("Branch offset 0 is special case")
		}
		ins.BranchAddr = m.PC + branchOff - 2
	}
	return ins
}

func panicf(f string, args ...interface{}) {
	log.Fatalf(f, args...)
}

func (m *Machine) PrintState() {
	fmt.Println("\n\n")
	log.Printf("PC: 0x%x FP: 0x%x\n", m.PC, m.FP)
	m.PrintStack()
	fmt.Println("\n\n")
}
func (m *Machine) PrintStack() {
	m.printStackRec(m.FP, uint16(len(m.Stack)))
}
func (m *Machine) printStackRec(fp uint16, nextFP uint16) {
	fIdx := m.Stack[fp]
	if fIdx > 0 {
		prevFp := m.Stack[fp-1]
		m.printStackRec(prevFp, fp)
	}
	nLoc := m.Stack[fp+1]
	log.Printf("---------%d (%d locals) (fp %d)---------\n", fIdx, nLoc, fp)
	for i := uint16(0); i < nLoc; i++ {
		v := m.Stack[fp+i+2]
		log.Printf("local%d: 0x%x (%d)\n", i+1, v, v)
	}
	maxStack := nextFP
	printRetInfo := false
	if fp != m.FP {
		maxStack -= 4
		printRetInfo = true
	}
	for i := fp + 2 + nLoc; i < maxStack; i++ {
		v := m.Stack[i]
		log.Printf("s 0x%x (%d)\n", v, v)
	}
	if printRetInfo {
		for i, n := range []string{"RETPC", "STOREVAR", "DISCARD", "RETFP"} {
			v := m.Stack[maxStack+uint16(i)]
			log.Printf("%s: 0x%x (%d)", n, v, v)
		}
	}

}

//STACK layout
// RETPC
// STOREVAR
// DISCARD?
// RETFP
// FP -> ID
// NLOCALS
// LOCALS
// EvalStack

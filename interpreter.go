package grue

import (
	"fmt"
	"log"
)

type Interpreter interface {
	Step() error
}

type interpreter struct {
	mem     []byte
	version byte
	pc      uint32
}

func New(dat []byte) (Interpreter, error) {
	i := &interpreter{
		mem: dat,
	}
	i.version = i.b(0)
	i.pc = uint32(i.read16(0x06))
	fmt.Printf("Z Version %d. Pc: 0x%x\n", i.version, i.pc)
	return i, nil
}

func (i *interpreter) b(addr uint32) byte {
	return i.mem[addr]
}
func (i *interpreter) bAs16(addr uint32) uint16 {
	return uint16(i.b(addr))
}
func (i *interpreter) read16(addr uint32) uint16 {
	return i.bAs16(addr)<<8 | i.bAs16(addr+1)
}

func (i *interpreter) readAtPC() byte {
	b := i.b(i.pc)
	i.pc++
	return b
}

func (i *interpreter) Step() error {
	opcode := i.readAtPC()
	form := opcode >> 6
	count := "0"
	var op byte
	if form == 0x03 {
		log.Fatal("VARIABLE FORM")
	} else if form == 0x02 {
		log.Fatal("SHORT")
	} else {
		count = "2"
		op = opcode & 0x1f
	}
	fmt.Println(opcode, count)
	return nil
}

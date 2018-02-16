package main

import (
	"encoding/binary"
	"flag"
	"fmt"
	"io/ioutil"
	"log"

	"github.com/captncraig/grue/zscii"
)

type interpreter struct {
	mem Story
	pc  uint16

	abbreviations [][]byte
}

func (i *interpreter) read8AtPC() byte {
	d := i.mem[i.pc]
	i.pc++
	return d
}

func (i *interpreter) read16AtPC() uint16 {
	return uint16(i.read8AtPC())<<8 | uint16(i.read8AtPC())
}

func (i *interpreter) readGlobal(idx byte) uint16 {
	var base = binary.BigEndian.Uint16(i.mem[0x0c:])
	return binary.BigEndian.Uint16(i.mem[base+(2*uint16(idx)):])
}

func newInterpreter(s Story) *interpreter {
	i := &interpreter{
		mem:           s,
		pc:            binary.BigEndian.Uint16(s[6:]),
		abbreviations: make([][]byte, 96),
	}
	return i
}

func main() {
	flag.Parse()
	fname := "zork1.z5"
	if flag.NArg() == 1 {
		fname = flag.Arg(0)
	}
	dat, err := ioutil.ReadFile(fname)
	if err != nil {
		log.Fatal(err)
	}
	var s = Story(dat)
	s.PrintHeader()
	i := newInterpreter(s)
	// read abbreviations
	baseAddr := binary.BigEndian.Uint16(i.mem[0x18:])
	for n := uint16(0); n < 96; n++ {
		jumpAddr := binary.BigEndian.Uint16(i.mem[baseAddr+(2*n):])
		s, _ := zscii.ReadZsciiString(i.mem[jumpAddr*2:], nil)
		i.abbreviations[n] = []byte(s)
	}
	for n := 0; n < 2; n++ {
		i.Step()
	}
}

func (i *interpreter) Step() {
	op := i.read8AtPC()
	opCount := "VAR"
	form := ""
	var opCode byte
	var opTypes = []byte{}
	if op&0xc0 == 0xc0 {
		form = "VAR"
		log.Fatal(form)
	} else if op&0x80 == 0x80 {
		form = "SHORT"
		// 4 and 5
		if op&0x30 == 0x30 {
			opCount = "0OP"
		} else {
			opCount = "1OP"
			opTypes = append(opTypes, (op & 0x30 >> 4))
		}
		opCode = op & 0x0f
	} else {
		form = "LONG"
		log.Fatal(form)
	}
	// read arguments
	args := make([]uint16, len(opTypes))
	for n, ot := range opTypes {
		switch ot {
		case 0x00:
			// large
			args[n] = i.read16AtPC()
		case 0x01:
			// small
			args[n] = uint16(i.read8AtPC())
		case 0x02:
			// variable
			varNum := i.read8AtPC()
			if varNum == 0 {
				log.Fatal("Read top of stack")
			} else if varNum <= 0x0f {
				log.Fatal("Read local var")
			} else {
				args[n] = i.readGlobal(varNum - 0x10)
			}
		case 0x03:
			panic("omitted arg?")
		}
	}
	fmt.Printf("%s %s %v %v 0x%02x\n", form, opCount, opTypes, args, opCode)
	i.execute(opCount, opCode, opTypes, args)
}

func (i *interpreter) execute(opCount string, opCode byte, opTypes []byte, args []uint16) {
	switch opCount {
	case "0OP":
		i.execute0OP(opCode)
	case "1OP":
		// TODO: assert lengths
		i.execute1OP(opCode, opTypes[0], args[0])
	default:
		log.Fatalf("Unkown operand count %s", opCount)
	}
}

func (i *interpreter) execute1OP(opCode byte, opType byte, arg uint16) {
	switch opCode {
	// case 0x00: // jz a
	// case 0x01: // get_sibling_object
	// case 0x02: // get_child_object
	// case 0x03: // get_parent_object
	// case 0x04: // get_prop_len
	// case 0x05: // inc
	// case 0x06: // dec
	// case 0x07: // print_addr
	// case 0x08: // call_1s
	// case 0x09: // remove_obj
	// case 0x0a: // print_obj
	// case 0x0b: // ret
	// case 0x0c: // jump
	case 0x0d: // print_paddr
		fmt.Println("PRINT PADDR", opType, arg*2)
		s, _ := zscii.ReadZsciiString(i.mem[int(arg)*2:], i.abbreviations)
		fmt.Println(s)
	// case 0x0e: // load
	// case 0x0f: // not
	default:
		log.Fatalf("Unimplemented 1OP opcode 0x%02x", opCode)
	}
}

func (i *interpreter) execute0OP(opCode byte) {

	switch opCode {
	//case 0x00: // rtrue
	//case 0x01: // rfalse
	case 0x02: // print (literal)
		s, n := zscii.ReadZsciiString(i.mem[i.pc:], i.abbreviations)
		fmt.Println(s)
		i.pc += uint16(n)
	//case 0x03: // print_ret (literal)
	//case 0x04: // nop
	//case 0x05: // save
	//case 0x06: // restore
	//case 0x07: // restart
	//case 0x08: // ret_popped
	//case 0x09: // pop
	//case 0x0a: // quit
	//case 0x0b: // new_line
	//case 0x0c: // show_status
	//case 0x0d: // verify
	default:
		log.Fatalf("Unimplemented 0OP opcode 0x%02x", opCode)
	}
}

package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
)

type Header struct {
	Version            Version
	Flags1             Flags1
	HighMem            uint16
	InitialPC          uint16
	Dictionary         uint16
	ObjectTable        uint16
	Globals            uint16
	StaticMem          uint16
	AbbreviationsTable uint16
	Length             uint16
	Checksum           uint16
}

func ParseHdr(dat []byte) Header {
	//http://inform-fiction.org/zmachine/standards/z1point1/sect11.html
	const (
		aV           uint8 = 0x00
		aFlags1      uint8 = 0x01
		aHighMem     uint8 = 0x04
		aInitPC      uint8 = 0x06
		aDictionary  uint8 = 0x08
		aObjectTable uint8 = 0x0a
		aGlobals     uint8 = 0x0c
		aStaticMem   uint8 = 0x0e
		aAbbrevs     uint8 = 0x18
		aLength      uint8 = 0x1a
		aCheckSum    uint8 = 0x1c
	)
	adr := func(a uint8) uint16 {
		return binary.BigEndian.Uint16(dat[a:])
	}
	v := Version(dat[aV])
	var flags Flags1 = Flags1Old(dat[aFlags1])
	if v > 3 {
		flags = Flags1New(dat[aFlags1])
	}
	return Header{
		Version:     v,
		Flags1:      flags,
		HighMem:     adr(aHighMem),
		InitialPC:   adr(aInitPC),
		Dictionary:  adr(aDictionary),
		ObjectTable: adr(aObjectTable),
		Globals:     adr(aGlobals),
		//TODO: FLAGS2
		StaticMem:          adr(aStaticMem),
		AbbreviationsTable: adr(aAbbrevs),
		Length:             adr(aLength),
		Checksum:           adr(aCheckSum),
	}
}

func (h Header) String() string {
	buf := &bytes.Buffer{}
	p := func(a string, b interface{}) {
		fmt.Fprintln(buf, a, b)
	}
	px := func(a string, b interface{}) {
		fmt.Fprintf(buf, "%s 0x%x (%d)\n", a, b, b)
	}
	p("Version:", h.Version)
	p("Flags1:", h.Flags1)
	px("HighMem:", h.HighMem)
	px("Initial PC:", h.InitialPC)
	px("Dictionary:", h.Dictionary)
	px("Objects:", h.ObjectTable)
	px("Globals:", h.Globals)
	px("Static Mem:", h.StaticMem)
	px("Abbreviations:", h.AbbreviationsTable)
	px("Length:", uint32(h.Length)*2)
	px("CheckSum:", h.Checksum)
	return buf.String()
}

type Version byte

func (v Version) String() string {
	return fmt.Sprintf("V%d", v)
}

const (
	V1 Version = iota + 1
	V2
	V3
	V4
	V5
	V6
)

type Flags1 interface {
	Val() byte
	String() string
}

// flags1 as used in V1-3
type Flags1Old byte

const (
	bit0 byte = 1 << iota
	bit1
	bit2
	bit3
	bit4
	bit5
	bit6
	bit7
)

func (f Flags1Old) Val() byte {
	return byte(f)
}
func (f Flags1Old) String() string {
	v := byte(f)
	statusLineType := "score/moves"
	if v&bit1 != 0 {
		statusLineType = "time"
	}
	flags := ""
	if v&bit2 != 0 {
		flags += " (Story Split)"
	}
	if v&bit4 != 0 {
		flags += " [No Status Line]"
	}
	if v&bit5 != 0 {
		flags += " [Screen Splitting]"
	}
	if v&bit6 != 0 {
		flags += " [Variable Pitch]"
	}
	return fmt.Sprintf("0x%x (statusLine=%s)%s", v, statusLineType, flags)
}

// flags1 as used in V4-6
type Flags1New byte

func (f Flags1New) Val() byte {
	return byte(f)
}
func (f Flags1New) String() string {
	v := byte(f)
	return fmt.Sprintf("%x", v)
}

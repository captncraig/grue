package ztext

import (
	"fmt"
	"io"
)

type ZChar byte

// BinaryToZChars reads a stream of data from the given reader
// and extracts the 5-bit z-characters until the end of the string
func BinaryToZChars(r io.Reader) ([]ZChar, error) {
	buf := make([]byte, 2)
	zchars := []ZChar{}
	for {
		n, err := r.Read(buf)
		if err != nil {
			return nil, err
		}
		if n != 2 {
			return nil, fmt.Errorf("Not 2 bytes read for z character")
		}
		// --first byte-------   --second byte---
		// 7    6 5 4 3 2  1 0   7 6 5  4 3 2 1 0
		// bit  --first--  --second---  --third--
		b16 := uint16(buf[0])<<8 | uint16(buf[1])
		c := ZChar(b16 & 0x1f)
		b := ZChar((b16 >> 5) & 0x1f)
		a := ZChar((b16 >> 10) & 0x1f)
		zchars = append(zchars, a, b, c)
		if buf[0]&0x80 == 0x80 {
			break
		}
	}
	return zchars, nil
}

type Encoding interface {
	Decode([]ZChar) (string, error)
}

type v3 map[byte]string

func V3(abbrevs map[byte]string) Encoding {
	return v3(abbrevs)
}

var v3Alphas = []string{
	"abcdefghijklmnopqrstuvwxyz",
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	" \n0123456789.,!?_#'\"/\\-:()",
}

// A1      ABCDEFGHIJKLMNOPQRSTUVWXYZ
// A2       ^0123456789.,!?_#'"/\-:()
func (v v3) Decode(dat []ZChar) (string, error) {
	i := 0
	s := ""
	nextAlpha := 0
	for i < len(dat) {
		b := dat[i]
		i++
		thisAlpha := nextAlpha
		nextAlpha = 0
		if b == 0 {
			s += " "
		} else if b == 4 {
			nextAlpha = 1
		} else if b == 5 {
			nextAlpha = 2
		} else if b < 4 {
			// abbreviation
			if v == nil {
				return "", fmt.Errorf("Nested Abbreviations not valid")
			}
			if len(dat) < 1 {
				return "", fmt.Errorf("Nor enough z chars to read abbreviation index")
			}
			b2 := dat[i]
			i++
			vNum := byte((32 * (b - 1)) + b2)
			abb, ok := v[vNum]
			if !ok {
				return "", fmt.Errorf("Abbreviation %d doesn't exist", vNum)
			}
			s += abb
		} else if thisAlpha == 2 && b == 6 {
			panic("ODD ENCODING")
		} else {
			s += string(v3Alphas[thisAlpha][b-6])
		}
	}
	return s, nil
}

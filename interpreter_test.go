package grue

import (
	"io/ioutil"
	"path/filepath"
	"testing"
)

func TestMain(t *testing.T) {
	dat, err := ioutil.ReadFile(filepath.Join("games", "BALLYHOO.z5"))
	if err != nil {
		t.Fatal(err)
	}
	interp, err := New(dat)
	if err != nil {
		t.Fatal(err)
	}
	t.Log(interp.Step())
}

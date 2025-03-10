package temporalite

import (
	"fmt"
	"net"
)

// Modified from Temporalite which itself modified from
// https://github.com/phayes/freeport/blob/95f893ade6f232a5f1511d61735d89b1ae2df543/freeport.go

func newPortProvider() *portProvider {
	return &portProvider{}
}

type portProvider struct {
	listeners []*net.TCPListener
}

// GetFreePort asks the kernel for a free open port that is ready to use.
func (p *portProvider) GetFreePort() (int, error) {
	addr, err := net.ResolveTCPAddr("tcp", "127.0.0.1:0")
	if err != nil {
		if addr, err = net.ResolveTCPAddr("tcp6", "[::1]:0"); err != nil {
			panic(fmt.Sprintf("temporalite: failed to get free port: %v", err))
		}
	}

	l, err := net.ListenTCP("tcp", addr)
	if err != nil {
		return 0, err
	}

	p.listeners = append(p.listeners, l)

	return l.Addr().(*net.TCPAddr).Port, nil
}

func (p *portProvider) MustGetFreePort() int {
	port, err := p.GetFreePort()
	if err != nil {
		panic(err)
	}
	return port
}

func (p *portProvider) Close() error {
	for _, l := range p.listeners {
		if err := l.Close(); err != nil {
			return err
		}
	}
	return nil
}

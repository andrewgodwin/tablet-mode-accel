.PHONY: all install

all: tablet-mode-accel

tablet-mode-accel: tablet-mode-accel.go
	go build

install:
	install tablet-mode-accel /usr/local/bin
	cp tablet-mode-accel.service /etc/systemd/system/

.PHONY: all install install-chuwi

all: tablet-mode-accel

tablet-mode-accel: tablet-mode-accel.go
	go build

install:
	install tablet-mode-accel /usr/local/bin
	cp tablet-mode-accel.service /etc/systemd/system/

install-chuwi:
	install tablet-mode-accel /usr/local/bin
	cp tablet-mode-accel-chuwi.service /etc/systemd/system/tablet-mode-accel.service
	cp chuwi-minibook/60-angle-sensor.rules /etc/udev/rules.d/

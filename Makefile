PREFIX=/usr
BINDIR=$(PREFIX)/sbin
#MANDIR=$(PREFIX)/man
SYSTEMD=/etc/systemd/system

.PHONY: install
install:
	cp ./raspi-boottime-config $(BINDIR)/
	chmod +x $(BINDIR)/raspi-boottime-config
	cp raspi-boottime-config.service $(SYSTEMD)/
	systemctl enable raspi-boottime-config.service


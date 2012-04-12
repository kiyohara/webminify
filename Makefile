PREFIX?= /usr/local
INSTALL?= install
INSTALLDIR= ${INSTALL} -d
INSTALLBIN= ${INSTALL} -m 555

all:
	@echo "nop.. (now, install/uninstall only)";

uninstall:
	rm -f ${PREFIX}/bin/webminify

install:
	${INSTALLDIR} ${DESTDIR}${PREFIX}/bin
	${INSTALLBIN} webminify ${DESTDIR}${PREFIX}/bin/

.PHONY: all install uninstall

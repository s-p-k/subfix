BIN = subfix
SRC = subfix
VERSION = 0.2

PREFIX = /usr/local/bin
MANPREFIX = /usr/local/share/man

install:
	@echo installing ${BIN} in ${PREFIX}
	@mkdir -p ${PREFIX}
	@chmod +x ${BIN}
	@cp -f ${BIN} ${PREFIX}/
	@echo installing manual page to ${MANPREFIX}/man1
	@mkdir -p ${MANPREFIX}/man1
	@sed "s/VERSION/${VERSION}/g" < subfix.1 > ${MANPREFIX}/man1/subfix.1
	@chmod 644 ${MANPREFIX}/man1/subfix.1

uninstall:
	@echo removing ${BIN} from ${PREFIX}
	@rm -f ${PREFIX}/${BIN}
	@echo removing manual page from $MANPREFIX/man1
	@rm -f $MANPREFIX/man1/subfix.1

.PHONY: install uninstall

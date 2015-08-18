BIN = subfix
SRC = subfix

PREFIX = /usr/local/bin

install:
	@echo installing ${BIN} in ${PREFIX}
	@mkdir -p ${PREFIX}
	@chmod +x ${BIN}
	@cp -f ${BIN} ${PREFIX}/

uninstall:
	@echo removing ${BIN} from ${PREFIX}
	@rm -f ${PREFIX}/${BIN}

.PHONY: install uninstall

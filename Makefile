SCRIPTS = 0find 0grep 0perl 0sed 0sort 0tol 0xargs lto0

PREFIX = /usr/local

XMOD = 755

BIN = $(DESTDIR)$(PREFIX)/bin

install: $(SCRIPTS) $(BIN)
	install -m$(XMOD) ${SCRIPTS} $(BIN)

uninstall:
	for f in ${SCRIPTS}; do $(RM) $(BIN)/$$f; done

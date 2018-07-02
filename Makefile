TOPTARGETS := all clean

SUBDIRS := $(wildcard src/*)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

#install: whitepaper_en.pdf whitepaper_ru.pdf
install: src/whitepaper/whitepaper_en.pdf
	install $^ .

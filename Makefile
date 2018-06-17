RC=vimrc screenrc
i3=i3 i3status

FILES=$(RC) $(i3)

ALL=$(FILES) scripts

.PHONY: $(ALL)
install: $(ALL)

$(i3):
	ln -fs $(CURDIR)/$@/config $(HOME)/.config/$@/config
$(RC):
	ln -fs $(CURDIR)/$@ $(HOME)/.$@
scripts:
	ln -fs $(CURDIR)/scripts/* $(HOME)/bin/

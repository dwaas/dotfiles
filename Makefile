RC=vimrc screenrc
i3=i3 i3status

FILES=$(RC) $(i3)

install: $(FILES)
.PHONY: $(FILES)

$(i3):
	ln -fs $(CURDIR)/$@/config $(HOME)/.config/$@/config
$(RC):
	ln -fs $(CURDIR)/$@ $(HOME)/.$@

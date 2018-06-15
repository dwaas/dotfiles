SRC_DIR=$(shell pwd)
FILES=i3 i3status vimrc screenrc

install: $(FILES)
.PHONY: $(FILES)

i3:
	ln -fs $(SRC_DIR)/$@/config ~/.config/$@/config

i3status: i3
	ln -fs $(SRC_DIR)/$@/config ~/.config/$@/config

vimrc:
	ln -fs $(SRC_DIR)/$@ ~/.$@

screenrc:
	ln -fs $(SRC_DIR)/$@ ~/.$@

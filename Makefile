SRC_DIR=$(shell pwd)
FILES=i3 i3status

install: $(FILES)
.PHONY: $(FILES)

i3:
	ln -fs $(SRC_DIR)/i3/config ~/.config/i3/config

i3status:
	ln -fs $(SRC_DIR)/i3status/config ~/.config/i3status/config

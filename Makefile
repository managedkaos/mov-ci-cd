FILES=./*.mov

all: info sync

info:
	$(foreach file, $(FILES), @exiftool -p exif.fmt $(file))

sync:
	rsync -azvhP $(FILES) $(DESTINATION_DIR)

.PHONY: all info sync

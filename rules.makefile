$(DRECK_P7ZIP_OUTPUT_ARCHIVE_PATHS): $(DRECK_P7ZIP_INPUT_CONTENT_PATHS)
	mkdir -p $(dir $@)
	7z a -mm=Deflate -mfb=258 -mpass=15 $@ $(realpath $^)

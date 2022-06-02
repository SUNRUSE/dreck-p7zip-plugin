./plugins/other-plugin/generated/file-a.txt:
	mkdir -p $(dir $@)
	cp ./plugins/other-plugin/file-a.txt $@

./plugins/other-plugin/generated/file-b.txt:
	mkdir -p $(dir $@)
	cp ./plugins/other-plugin/file-b.txt $@

./plugins/other-plugin/generated/dreck_p7zip_output_archive_paths.txt:
	mkdir -p $(dir $@)
	echo $(DRECK_P7ZIP_OUTPUT_ARCHIVE_PATHS) > $@

# Dreck P7ZIP Plugin [![License](https://img.shields.io/github/license/sunruse/dreck-p7zip-plugin.svg)](https://github.com/sunruse/dreck-p7zip-plugin/blob/master/license) [![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)

Creates a zip archive from one or more files.

## Dependencies

- P7ZIP

This must be available on the PATH (e.g. `7z --help` prints help text when executed in a Bash terminal).

### Installing on Debian-based Linux distributions

This is available from most Debian-based Linux distributions' package managers; for example, it can be installed when running Ubuntu 20.04 LTS using the following command:

```bash
sudo apt-get install p7zip-full --yes
```

## Installation

Run the following in a Bash shell at the root of your project:

```bash
git submodule add https://github.com/sunruse/dreck-p7zip-plugin plugins/p7zip
```

## Input

This plugin includes every file in the `DRECK_P7ZIP_INPUT_CONTENT_PATHS` Make variable in the created zip archive.

## Output

This plugin writes a single zip archive to `./plugins/p7zip/generated/archive.zip` by default; this path is also appended to the `DRECK_P7ZIP_OUTPUT_ARCHIVE_PATHS` Make variable.

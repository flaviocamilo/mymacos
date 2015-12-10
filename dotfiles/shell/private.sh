#!/usr/bin/env bash

PRIVATE_SHELL_FILES_DIR="$MYPRIVATEOSX_HOME/dotfiles/shell"

[ -d "$PRIVATE_SHELL_FILES_DIR" ] && for shell_file in `find "$PRIVATE_SHELL_FILES_DIR" -type f -name "*.sh"`; do . "$shell_file"; done


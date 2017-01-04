#!/usr/bin/env bash

echo "==> Installing Atom packages..."

sudo -S -v <<< "${PASSWORD}" 2> /dev/null

apm i nuclide

apm i file-icons
apm i highlight-selected
apm i maximize-panes
apm i minimap
apm i minimap-bookmarks
apm i minimap-cursorline
apm i minimap-find-and-replace
apm i minimap-git-diff
apm i minimap-highlight-selected
apm i minimap-linter
apm i tool-bar

apm i language-babel
apm i language-docker
apm i language-swift
apm i linter
apm i linter-eslint

apm i atom-runner
apm i ctrl-dir-scroll
apm i editorconfig
apm i emmet
apm i git-plus
apm i merge-conflicts
apm i sort-lines
apm i tabs-to-spaces

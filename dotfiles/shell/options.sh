#!/usr/bin/env bash

# Case-insensitive pathname expansion
shopt -s nocaseglob

# Bash history file append mode
shopt -s histappend

# `cd` typos autocorrection
shopt -s cdspell

# Subdir autofind: `**/something` -> `./foo/bar/something`
shopt -s autocd

# Recursive globbing: `echo **/*.txt`
shopt -s globstar

. $HOMEBREW_PREFIX/etc/profile.d/z.sh

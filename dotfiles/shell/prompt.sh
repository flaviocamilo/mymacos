#!/usr/bin/env bash

export PS1='\[\033[0;37m\][\[\033[1;36m\]\u\[\033[1;37m\] at \[\033[1;32m\]\h\[\033[1;37m\] in \[\033[1;34m\]\w$(__git_ps1 "\[\033[0;37m\]:\[\033[1;31m\]%s")\[\033[0;37m\]] \[\033[1;33m\]\$\[\033[0;37m\]:\[\033[0;38m\] '

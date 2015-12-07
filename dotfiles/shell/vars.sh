#!/usr/bin/env bash

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export EDITOR='/usr/bin/vim'
export GIT_EDITOR='/usr/bin/vim'

export HOMEBREW_HOME=$(brew --repository)
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/bin:/usr/libexec:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

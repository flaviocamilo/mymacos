#!/usr/bin/env bash

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export HISTIGNORE='jrnl *'

export EDITOR='/usr/local/bin/nvim'
export GIT_EDITOR='/usr/local/bin/nvim'

export HOMEBREW_NO_ANALYTICS=1
HOMEBREW_PREFIX=$(brew --prefix)
export HOMEBREW_PREFIX
HOMEBREW_REPOSITORY=$(brew --repository)
export HOMEBREW_REPOSITORY
HOMEBREW_CELLAR=$(brew --cellar)
export HOMEBREW_CELLAR
HOMEBREW_CACHE=$(brew --cache)
export HOMEBREW_CACHE
HOMEBREW_CASKROOM="${HOMEBREW_PREFIX}/Caskroom"
export HOMEBREW_CASKROOM
JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME
GOPATH="${HOME}/.go"
export GOPATH

export PATH="${GOPATH}/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/libexec:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/share/man:/usr/share/man:/usr/X11/man"

[ -d "${HOME}/.myprivateosx" ] && export MYPRIVATEOSX_HOME="${HOME}/.myprivateosx"

#!/usr/bin/env bash

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export EDITOR='/usr/local/bin/atom --wait'
export GIT_EDITOR='/usr/local/bin/atom --wait'

HOMEBREW_PREFIX=$(brew --prefix)
export HOMEBREW_PREFIX
HOMEBREW_REPOSITORY=$(brew --repository)
export HOMEBREW_REPOSITORY
HOMEBREW_CELLAR=$(brew --cellar)
export HOMEBREW_CELLAR
HOMEBREW_CACHE=$(brew --cache)
export HOMEBREW_CACHE
JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/libexec:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
coreutils_manpath='/usr/local/opt/coreutils/libexec/gnuman'
if [[ $MANPATH' ' == ' ' ]]; then
	export MANPATH="$coreutils_manpath"
else
	[[ $coreutils_manpath != $MANPATH ]] && export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

[ -d $HOME/.myprivateosx ] && export MYPRIVATEOSX_HOME="$HOME/.myprivateosx"

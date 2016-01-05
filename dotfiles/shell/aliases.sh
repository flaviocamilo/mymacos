#!/usr/bin/env bash

alias ll='ls -hkl --color --group-directories-first --time-style="+%Y•%m•%d %T"'
alias la='ll -a'
alias grep='grep --color'
alias egrep='egrep --color'
alias b2d='brew update && brew upgrade --all && brew cleanup && brew cask cleanup && brew doctor'
alias g2d='gem update && gem cleanup'
alias bg2d='b2d && g2d'
alias finder_fix_open_with_context_menu='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

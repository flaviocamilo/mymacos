#!/usr/bin/env bash

alias ll='ls -hkl --color --group-directories-first --time-style="+%Y•%m•%d %T"'
alias la='ll -a'
alias diff='diff --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias x2d='sudo softwareupdate -i -a'
alias b2d='brew update && brew upgrade && brew_cask_upgrade && brew cleanup --force && brew cask cleanup'
alias g2d='gem update'
alias a2d='apm upgrade --no-confirm'
alias s2d='x2d && b2d && g2d && a2d && . ${HOME}/.bash_profile'
alias finder_fix_open_with_context_menu='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

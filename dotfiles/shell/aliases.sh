#!/usr/bin/env bash

alias ll='ls -hkl --color --group-directories-first --time-style="+%Y•%m•%d %T"'
alias la='ll -a'
alias grep='grep --color'
alias egrep='egrep --color'
alias s2d='sudo softwareupdate -i -a'
alias b2d='brew update && brew upgrade && brew cleanup --force'
alias c2d='brew cask update && brew_cask_upgrade && brew cask cleanup'
alias g2d='gem update && gem cleanup'
alias a2d='s2d && b2d && c2d && g2d'
alias finder_fix_open_with_context_menu='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

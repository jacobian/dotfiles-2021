# exports / shell settings / shell options

path+=~/bin

# Basic term stuff
export CLICOLOR=1
export DISPLAY=:0.0
export EDITOR="code -w"
export LC_CTYPE=en_US.UTF-8
export LESS='-r'
export PAGER=less
export QUIETLOGIN
export TERM=xterm-256color
unset MAILCHECK

# Don't expand globs when tab completing
setopt GLOB_COMPLETE

# History settings
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY       # include timestamps/etc in history
setopt APPEND_HISTORY         # append (instead of overwriting) history
setopt SHARE_HISTORY          # share history between shells
setopt HIST_EXPIRE_DUPS_FIRST # delete duplicate lines from history first
setopt HIST_FIND_NO_DUPS      # ignore duplicates when searching
setopt HIST_REDUCE_BLANKS     # removes blank lines from history
SAVEHIST=1000000              # save a lot of history
HISTSIZE=1000000              # save a lot of history

# gcloud needs this
export CLOUDSDK_PYTHON=python3

# Don't let Homebrew upgrade the world
export HOMEBREW_NO_AUTO_UPDATE=1

# https://github.com/FiloSottile/yubikey-agent
export SSH_AUTH_SOCK="$(brew --prefix)/var/run/yubikey-agent.sock"

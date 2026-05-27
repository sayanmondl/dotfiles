# ~/.bashrc

[[ $- != *i* ]] && return

shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell

HISTSIZE=10000
HISTFILESIZE=20000

HISTCONTROL=ignoredups:erasedups
HISTIGNORE="ls:ll:clear:history"

PROMPT_COMMAND="history -a; history -n"

alias grep="grep --color=auto"

alias ls="eza --icons"
alias ll="eza -lah --icons"
alias tree="eza --tree --icons"

alias cat="bat --paging=never"

alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

export LS_COLORS="di=34:ln=36:so=35:pi=33:ex=32"
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

eval "$(starship init bash)"
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
BEIGE='\[\e[38;2;245;245;220m\]'
BLUE='\[\e[38;2;0;39;77m\]'    
RESET='\[\e[0m\]'               

PS1="${BEIGE}[\u@\h ${BLUE}\W${BEIGE}]\$ ${RESET}"


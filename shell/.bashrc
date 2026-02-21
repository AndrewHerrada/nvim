#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start tmux automatically
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi
#
command -v vivid &>/dev/null && export LS_COLORS="$(vivid generate solarized-dark)"

alias ls='eza --icons --color=always'
alias la='eza --icons --color=always -la'
alias tree='eza --icons --color=always --tree'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
#alias matugen="matugen -c ~/.config/noctalia/user-templates.conf"

eval "$(starship init bash)"
export PATH="$HOME/.local/bin:$PATH"

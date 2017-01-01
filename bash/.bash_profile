source ~/.bash_colors

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

function quiet_source () {
    [[ -n "$1" ]] && [[ -s "$1" ]] && source "$1"
  }

quiet_source "${HOME}/.git-prompt.sh"

#export PS1="\u@\h:\w\$(__git_ps1)\$ "
export PS1="$(ansi_bold_color 32)\u$(ansi_bold_color 31)@$(ansi_bold_color 32)\h$(ansi_bold_color 31):$(ansi_bold_color 34)\w${color_rst}\$(__git_ps1)$(ansi_bold_color 31)🐳 ${color_rst} "
export PATH="$HOME/.exenv/bin:$PATH"
export GOPATH=~/

alias be="bundle exec"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -aGFh'

alias omfg_really_rabbitmq='launchctl unload $HOME/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist; launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist'
alias gs='git status'
alias gd='git diff'
alias gl='git log'

eval "$(exenv init -)"

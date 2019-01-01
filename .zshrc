# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

DEFAULT_USER=`whoami`

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# aliases
alias ll="ls -laHg"

# Git aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gl="git log --graph --decorate --oneline --abbrev-commit --all -n 30"
alias gp="git push origin"
alias gpf="git push origin --force"
alias gundo="git reset --soft HEAD^"

# alias dockrm="docker rm $(docker ps -a -f status=exited -q)"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# because "Homebrew's sbin was not found in your PATH"
export PATH="/usr/local/sbin:$PATH"

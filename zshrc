# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

#ZSH_THEME="seeker"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cp fbterm gnu-utils git gitignore mercurial python ruby sudo tmux vim-interaction virtualenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com


# Colors
autoload -U colors
colors
setopt prompt_subst

# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias df='df --human-readable'
alias du='du --human-readable'
alias kb='setxkbmap -layout fr-latin9'

alias begone='shred -n 25 -z -u -v'

export MANPAGER="/usr/bin/most -s"

export PATH=$HOME/bin:$PATH

export EDITOR=vim

alias ag="ag --pager=less"
alias ack="ack-grep --pager=less"
alias tmux="TERM=screen-256color-bce tmux"
export PATH=$PATH:"/usr/local/go/bin"

# OPAM configuration
. /home/jmbto/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export GOPATH=$HOME/work
export PATH="/usr/lib/ccache:$PATH"
export CCACHE_BASEDIR="/tmp"
export CCACHE_DIR="/tmp"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export PATH="$PATH:$HOME/bin:$JAVA_HOME/bin"

source /home/jmbto/.local/bin/virtualenvwrapper.sh > /dev/null
export WORKON_HOME=~/Envs
export PATH="/home/jmbto/.local/lib/python2.7/site-packages/scrapy:$PATH"
eval `opam config env`

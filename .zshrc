export PATH=/usr/local/bin:$PATH

# PATH rbenv
eval "$(rbenv init -)"

# zplug PATH
# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh

# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# oh-my-zsh themes settings
ZSH_THEME="candy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# oh my zsh plugins settings
plugins=(brew brew-cask cdd gem git rbenv vagrant zsh-syntax-highlighting zsh-completions)

# zsh-completions settings
autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'
alias gladg='git log --all --decorate --graph'
alias v='vim'
alias vi='vim'
alias r='ruby'
alias rails='bundle exec rails'
alias mss='service mysql start'
alias so='source'
alias be='bundle exec'
alias ber='bundle exec ruby'
alias rs='rails s'
alias rc='rails c'
alias bers='bundle exec rails s'
alias berc='bundle exec rails c'
alias sberc='sudo bundle exec rails c'
alias Kobito='cd ~/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/'

# code
export LANG=ja_JP.UTF-8

# color
autoload -Uz colors
colors

setopt print_eight_bit

# move without cd
setopt auto_cd

# stop noise beep
setopt no_beep

# stop noise beep(tab)
setopt nolistbeep

# cd -<tab> before currentry show
setopt auto_pushd

# history save and more
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# keybind emacs
bindkey -d
bindkey -e

# matting capital letter
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# yokuwakarann
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump brew bundler capistrano coffee cp encode64 forklift gem git history node npm nyan osx rake rbenv rsync ruby theme)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

compctl -g '~/.teamocil/*(:t:r)' teamocil

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

alias -g ...=	'../..'
alias -g ....=	'../../..'
alias -g .....=	'../../../..'

set t_Co=256

# Les tokens d'API pour TestFlight (Ici pour la team PokéCenter)
export TESTFLIGHT_API_TOKEN="amfupgUJWrljEYUTkZjDsED28ASTrXaM7e8PEWq2Gc4"
export TESTFLIGHT_TEAM_TOKEN="5c308869ffd0b811f140ee76926d01f3_MzM4MzgwMjAxNC0wMi0xMyAxNzo1MTozMC4wNjIxMzQ"

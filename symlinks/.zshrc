ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git autojump brew rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export EDITOR='vim'
export CLICOLOR=1

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

set t_Co=256

if [[ -d /usr/local/share/zsh-completions ]]; then
	fpath=($fpath /usr/local/share/zsh-completions)
fi

# Autojump 
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

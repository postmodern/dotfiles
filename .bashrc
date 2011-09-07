# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export HISTFILE=/dev/null
export HISTFILESIZE=0

export PATH="$PATH:$HOME/bin:$HOME/src/rubinius/bin"
export EDITOR="vim"
export BROWSER="firefox"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

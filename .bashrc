# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Shell ENV variables
export HISTFILE=/dev/null
export HISTFILESIZE=0
export PATH="$PATH:$HOME/bin:$HOME/src/rubinius/bin"

# Applications ENV variables
export TERMINAL="gnome-terminal"
export FILE_MANAGER="nautilus --no-desktop"
export EDITOR="vim"
export GUI_EDITOR="gvim"
export BROWSER="firefox"
export EMAIL_CLIENT="thunderbird"
export IM_CLIENT="pidgin"
export IRC_CLIENT="xchat --no-plugins"
export MUSIC_PLAYER="rhythmbox"

# Shell ENV variables
export PHP_SHELL="php -a"
export RUBY_SHELL="ripl"
export JS_SHELL="js"

# Aliases
alias term="$TERMINAL"
alias files=$FILE_MANAGER

if [[ -n "${DISPLAY}" ]]; then alias edit="$GUI_EDITOR"
else                           alias edit="$EDITOR"
fi

alias browser="$BROWSER"
alias email="$EMAIL_CLIENT"
alias im="$IM_CLIENT"
alias irc="$IRC_CLIENT"
alias music="$MUSIC_PLAYER"

alias phpi="$RUBY_SHELL"
alias rbi="$RUBY_SHELL"
alias js="$JS_SHELL"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

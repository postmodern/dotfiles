# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Shell ENV variables
export HISTFILE=/dev/null
export HISTFILESIZE=0
export PATH="$PATH:$HOME/bin"

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
export BIT_TORRENT_CLIENT="transmission-gtk"

# Shell ENV variables
export PHP_SHELL="php -a"
export JS_SHELL="js"
export RUBYCONSOLE="ripl"

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
alias torrent="$BIT_TORRENT_CLIENT"

alias phpi="$RUBY_SHELL"
alias rbi="$RUBY_SHELL"
alias js="$JS_SHELL"

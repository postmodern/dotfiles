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
export VIDEO_PLAYER="totem"
export TORRENT_CLIENT="transmission-gtk"

PACKAGE_MANAGERS=(synaptic gpk-application)

for program in ${PACKAGE_MANAGERS[*]}; do
	if [[ -x /usr/bin/$program ]]; then
		export PACKAGE_MANAGER="$program"
		break
	fi
done

# Shell ENV variables
export PHP_SHELL="php -a"
export JS_SHELL="js"
export RUBY_SHELL="ripl"

# Aliases
alias term="$TERMINAL"
alias files="$FILE_MANAGER"

if [[ -n "${DISPLAY}" ]]; then alias edit="$GUI_EDITOR"
else                           alias edit="$EDITOR"
fi

alias browser="$BROWSER"
alias email="$EMAIL_CLIENT"
alias im="$IM_CLIENT"
alias irc="$IRC_CLIENT"
alias music="$MUSIC_PLAYER"
alias torrent="$TORRENT_CLIENT"

alias phpi="$RUBY_SHELL"
alias rbi="$RUBY_SHELL"
alias js="$JS_SHELL"

function forget() {
	ssh-add -D
	kill -s HUP $(pgrep gpg-agent)
}

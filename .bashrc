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
export DOCUMENT_EDITOR="libreoffice --writer"
export SPREADSHEET_EDITOR="libreoffice --calc"
export PRESENTATION_EDITOR="libreoffice --impress"

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
alias phpi="$RUBY_SHELL"
alias rbi="$RUBY_SHELL"
alias js="$JS_SHELL"

function forget() {
	ssh-add -D
	kill -s HUP $(pgrep gpg-agent)
}

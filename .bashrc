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
export EDITOR="vim"

PACKAGE_MANAGERS=(synaptic gpk-application)

for program in ${PACKAGE_MANAGERS[*]}; do
	if [[ -x /usr/bin/$program ]]; then
		export PACKAGE_MANAGER="$program"
		break
	fi
done

# Shell ENV variables
export PYTHON_SHELL="python3"
export PHP_SHELL="php -a"
export JS_SHELL="js"
export RUBY_SHELL="irb"

# Aliases
alias forget='ssh-add -D; pkill -HUP gpg-agent'
alias stlink-openocd="openocd -f board/stm32f429discovery.cfg"
alias openocd-telnet="telnet localhost 4444"
alias openocd-gdb='arm-none-eabi-gdb -ex "tar ext :3333"'
alias st-gdb='arm-none-eabi-gdb -ex "tar ext :4242"'

if [[ -f /etc/fedora-release ]] || [[ -f /etc/redhat-version ]]; then
	alias update='sudo dnf update --enablerepo=updates-testing --security'
elif [[ -f /etc/debian_version ]]; then
	alias update='sudo apt update && apt list --upgradeable && sudo unattended-upgrade'
fi

# Ruby Aliases
alias be='bundle exec'

function __bundle_exec()
{
	local dir="$PWD/"

	until [[ -z "$dir" ]]; do
		dir="${dir%/*}"

		if [[ -f "$dir/Gemfile" ]]; then
			bundle exec $@
			return $?
		fi
	done

	command $@
	return $?
}

for cmd in rake rspec yard yard-spellcheck dead_end; do
	alias $cmd="__bundle_exec $cmd"
done

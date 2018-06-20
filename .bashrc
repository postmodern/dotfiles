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
export PYTHON_SHELL="python"
export PHP_SHELL="php -a"
export JS_SHELL="js"
export RUBY_SHELL="ripl"

# Aliases
alias forget='ssh-add -D; pkill -HUP gpg-agent'
alias stlink-openocd="openocd -f board/stm32f429discovery.cfg"
alias openocd-telnet="telnet localhost 4444"
alias openocd-gdb='arm-none-eabi-gdb -ex "tar ext :3333"'
alias st-gdb='arm-none-eabi-gdb -ex "tar ext :4242"'

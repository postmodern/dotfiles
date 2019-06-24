#!/bin/sh

if [ -d /usr/local/share/chruby ]; then
	if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
		source /usr/local/share/chruby/chruby.sh
		source /usr/local/share/chruby/auto.sh
	fi
fi

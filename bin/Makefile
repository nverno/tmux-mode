CURL ?= curl
OPTIONS_URL="https://raw.githubusercontent.com/tmux/tmux/master/options-table.c"

.PHONY: options
options:
	${CURL} --silent ${OPTIONS_URL} | ./options.awk 

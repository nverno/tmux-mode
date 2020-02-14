CURL        ?= curl
OPTIONS_URL =  "https://raw.githubusercontent.com/tmux/tmux/master/options-table.c"
OUTPUT      =  temp.el

all: ${OUTPUT}

temp.el: options commands

.PHONY: options commands
options:
	${CURL} --silent ${OPTIONS_URL} | ./options.awk > ${OUTPUT}

commands:
	tmux list-commands | ./commands.awk >> ${OUTPUT}

clean:
	${RM} temp.el

TESTS = https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf \
	https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf.local

.PHONY: test
test:
	curl -s ${TESTS} -o .tmux.conf -o .tmux.conf.local

clean:
	rm .tmux*

SHELL = /bin/bash

.PHONY: clean distclean
clean:
	$(RM) *~

distclean: clean
	$(RM) *autoloads.el *loaddefs.el TAGS *.elc

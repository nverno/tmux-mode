bind-key R source-file ~/.tmux.conf \; \
  display-message "source-file done"

%if #{==:#{host},myhost}
  set -g status-style bg=red
%endif

%if "#{==:#{host},myhost}"
  set -g status-style bg=red
%endif


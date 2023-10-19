# -*- mode: tmux -*-

# The following two produce the same output
if-shell true {
  display -p 'brace-dollar-foo: }$foo'
}
if-shell true "display -p 'brace-dollar-foo: }\$foo'"

# Braces may be enclosed inside braces, for example:
bind x if-shell "true" {
  if-shell "true" {
    display "true!"
  }
}

%if "#{==:#{host},myhost1}"
  set -g status-style bg=red
  set -g status-style bg=red
  set -g status-style bg=red
  set -g status-style bg=red

  %if #{==:#{host2},myhost1a}
    set -g status-style bg=blue
  %elif #{==:#{host2},myhost1a}
    set -g status-style bg=red
  %else
    set -g status-style bg=magenta
  %endif

%elif #{==:#{host},myhost2}
  set -g status-style bg=green
  set -g status-fg fg=blue
%elif #{==:#{host},myhost3}
  set -g status-style bg=purple
%else                                             # kasdfksd
  set -g status-style bg=blue
  set -g status-bg bg=green
%endif

%if #{==:#{host},myhost}
  set -g status-style bg=red
%else
  set -g status-style bg=green
%endif

%hidden MYVAR=42

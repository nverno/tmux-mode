# -*- mode: tmux -*-

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
           | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"

bind -n C-h if-shell "$is_vim" "send-keys C-h" "select-pane -L"
bind -n C-j if-shell \
  "$is_vim" "send-keys C-j"  "select-pane -D"
bind -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
bind -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
bind -n C-\\ \
  if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
# set -g
# set -g

bind x if-shell true {
  if-shell "true" {
    # aksdfksdf
    run ...     \
      run ...   \
      run xyx
    set -g 
  }
}

# force a reload of the config file
unbind r
bind r                       \
  source-file ~/.tmux.conf\; \
  display 'tmux reloaded'    
  run -d5 'echo "go!"'
set -g xx 




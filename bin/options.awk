#!/usr/bin/awk -f

# Scrape set/setw options from options-table.c

BEGIN {
    in_table = 0
    url = "https://raw.githubusercontent.com/tmux/tmux/master/options-table.c"
}

/^const struct options_table_entry/ { in_table = 1 }

in_table && match($0, /.name = \"([0-9A-Za-z-]+)\"/, m) {
    # not bothered to trouble of parsing scope as well
    opts[m[1]]
}

END {
    for (var in opts) {
        print var
    }
}

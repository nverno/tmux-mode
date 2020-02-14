#!/usr/bin/awk -f

# parse output from tmux list-commands

match($0, /^([a-z-]+) (\([a-z]+\))?.*/, m) {
    abbr = gsub(/[)(]/, "\"", m[2])
    cmds[m[0]] = sprintf("(\"%s\" %s \"%s\")", m[1], abbr ? m[2] : "nil", m[0])
}

END {
    print "(commands"
    for (var in cmds) 
        print cmds[var]
    print "))"
}

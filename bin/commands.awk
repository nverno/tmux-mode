#!/usr/bin/awk -f

# parse output from tmux list-commands

match($0, /^([a-z-]+) (\([a-z]+\))?.*/, m) {
    cmds[m[0]] = sprintf("(\"%s\" %s \"%s\")",
                         m[1],
                         m[2] ? sub(/[)(]/, "", m[2]) : "nil",
                         m[0])
}

END {
    print "("
    for (var in cmds) 
        print cmds[var]
    print ")"
}

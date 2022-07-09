# Expected 2 numeric arguments
if (ARGV[1] == ARGV[2]) {
    # no messages
} else {
    print status[LOG], ' expected equal arguments, but got (', ARGV[1], ') /= (', ARGV[2], ')'
}
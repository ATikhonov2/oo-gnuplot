gnuplot = "\"\"C:\\Program Files\\@\\gnuplot\\bin\\gnuplot.exe\""

commands = ''

do for [i=1:strlen(ARG1)] {
    c = ARG1[i:i]
    if (c eq '"') {
        commands = commands . '\'
    }
    commands = commands . c
}

cmd = sprintf('%s -e "%s" ', gnuplot, commands)
system( cmd )

# Let gnuplot executable be on the path.
# In PowerShell
#     [System.Environment]::SetEnvironmentVariable('PATH', 'C:\Program Files\gnuplot\bin;' + $env:Path)
# In CMD
#     set PATH=C:\Program Files\gnuplot\bin;%PATH%

# Examples:
# call 'gnuplot.gp' 'print "Hello, world!"'

commands = ''
do for [i=1:strlen(ARG1)] {
    c = ARG1[i:i]
    if (c eq '"') {
        commands = commands . '\'
    }
    commands = commands . c
}
# The double quotes before the first argument are
# essential.
cmd = sprintf('gnuplot -e "%s"', commands)
system( cmd )

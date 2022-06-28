print 'This is a script running gnuplot executable in a separate process'
print 'ARGUMENTS: ', ARGV
gnuplot = "\"\"C:\\Program Files\\@\\gnuplot\\bin\\gnuplot.exe\""
commands = "\"print \\\"hello, world!\\\"\""
print 'Gnuplot executable: ', gnuplot
cmd = sprintf("%s -e %s ", gnuplot, commands)
print 'cmd: ', cmd
print system(cmd)
system( cmd )
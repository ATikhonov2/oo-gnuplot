print 'This is a script running gnuplot executable in a separate process'
print 'ARGUMENTS: ', ARGV
gnuplot = 'C:\Program Files\@\gnuplot\bin\gnuplot.exe'
print 'Gnuplot executable: ', gnuplot
cmd = '"' . gnuplot . '"' . ' -e ' . '"' .ARG1 . '"'
print 'cmd: ', cmd
print system(cmd)
system( "\"\"C:\\Program Files\\@\\gnuplot\\bin\\gnuplot.exe\" -e \"print \\\"hello, world!\\\"\" " )
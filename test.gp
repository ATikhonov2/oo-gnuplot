# Assumed prerequisite:
# test = 'call "test.gp"'
array status = ['[ RUN    ]', \
                '[     OK ]', \
                '[ FAILED ]', \
                '[ PASSED ]']
do for [i = 1:|status|] {
    eval sprintf('%s = %i', trim(status[i][2:9]), i)
}
print sprintf('%s %s', status[RUN], ARG1)
load sprintf('%s.gp', ARG1)
print sprintf('%s %s', status[OK], ARG1)
print sprintf('%s %i of %i', status[PASSED], 1, 1)

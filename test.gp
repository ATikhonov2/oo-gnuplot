# Assumed prerequisite:
# test = 'call "test.gp"'

# Assertions
assert_eq = 'call "assert_eq.gp"'

# String prepends
array status = [              \
                '[        ]', \
                '[ RUN    ]', \
                '[     OK ]', \
                '[ FAILED ]', \
                '[ PASSED ]'  \
               ]

# Extract the names of the variables ('enumerators')
# from the string array
do for [i = 2:|status|] {
    eval sprintf('%s = %i', trim(status[i][2:9]), i)
}

# A special value
LOG = 1

# Display the name of the test script to be run
print sprintf('%s %s', status[RUN], ARG1)

# Run the test script
load sprintf('%s.gp', ARG1)

# Display the info on whether the test pass or not
print sprintf('%s %s', status[OK], ARG1)

# Show the test statistics
print sprintf('%s %i of %i', status[PASSED], 1, 1)

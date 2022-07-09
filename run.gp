tests = '\
test__1_eq_1 \
test__failed_1_eq_2 \
'
test = 'call "test.gp"'
do for [t in tests] {
    @test t
}
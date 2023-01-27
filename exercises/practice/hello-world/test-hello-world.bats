#!/usr/bin/env bats

load bats-extra

@test 'Say Hi!' {
    #[[ $BATS_RUN_SKIPPED == "true" ]] || skip

    run rexx hello-world.rexx

    assert_success
    expected='Hello, World!'
    assert_equal "$output" "$expected"
}

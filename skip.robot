*** Settings ***
Documentation       When run with `--skip skippable --skiponfailure skipfail`
...                 will produce the following results:
...                 PASSED  4
...                 FAIL    2
...                 SKIP    6

*** Test Cases ***
Test 1 Will Always Pass
    [Tags]      pass    tag2
    Log         Will pass

Test 2 Will Always Pass
    [Tags]      pass    tag2    tag3
    Log         Will pass

Test 3 Will Always Pass
    Log         Will pass

Test 4 Will Always Pass But Is Skipped
    [Tags]      skippable
    Log         Will pass

Test 5 Will Always Fail But Is Skipped
    [Tags]      skippable
    [Documentation]     This test has documentation
    Fail

Test 6 Will Always Fail But Is Skipped
    [Tags]      skippable       tag2
    Fail

Test 7 Will Always Fail But Is Skipped
    [Tags]      skippable
    Fail        Optional failure message

Test 8 Will Always Fail
    [Tags]      fail        tag2        tag3
    [Documentation]     This test has documentation
    Fail

Test 9 Will Always Fail
    [Tags]      fail
    Fail        Optional failure message

Test 10 Will Always Fail But Is Skipped On Failure
    [Tags]      skipfail
    Fail

Test 11 Will Always Fail But Is Skipped On Failure
    [Tags]      skipfail    tag2
    Fail

Test 12 Will Always Pass But Is Skipped On Failure
    [Tags]      skipfail
    [Documentation]     This test has documentation
    Log         Will Pass


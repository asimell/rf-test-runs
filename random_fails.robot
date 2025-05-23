*** Settings ***
Test Setup      Generate Random Number

*** Variables ***
${RANDOM_FAIL}      0

*** Test Cases ***

T1
    Will Test Fail

T2
    Will Test Fail

T3
    Will Test Fail

T4
    Will Test Fail

T5
    Will Test Fail

T6
    Will Test Fail

T7
    Will Test Fail

T8
    Will Test Fail

T9
    Will Test Fail

T10
    Will Test Fail


*** Keywords ***
Generate Random Number
    ${RANDOM_FAIL}=     Evaluate        random.randint(1,10)
    Set Test Variable       ${RANDOM_FAIL}

Will Test Fail
    IF      ${RANDOM_FAIL} > 5      Fail
*** Settings ***
Documentation     Basic test suite example


*** Test Cases ***
Test Case 1
    [Documentation]    This is an example test case
    GROUP    First Group
        Log    Hello, world!
    END

    GROUP   Second Group
        Log    Hello, world!
    END

Test Case 2
    [Documentation]    This is an example test case
    GROUP    First Group
        Log    Hello, world!
    END

    GROUP   Second Group
        Fail    Oh no!
    END

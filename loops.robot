*** Test Cases ***
For Loop Success
    [Tags]      for     success
    FOR     ${x}        IN RANGE        0
        Log     ${x}
    END

For Loop Failure
    [Tags]      for   failure
    FOR     ${x}        IN RANGE        4
        Log     ${x}
        Nested Keyword      ${x}
        Run keyword If     ${x}==3      Fail 
    END

For Loop Fail Skipped
    [Tags]      skipfailure     for
    FOR     ${x}        IN RANGE        4
        Log     ${x}
        Run keyword If     ${x}==3      Fail 
    END

If Success
    [Tags]      if      success
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="mikki hiiri"
        Log     ${var}
    END

If Else Success
    [Tags]      if      success
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="hessu hopo"
        Fail
    ELSE
        Nested Keyword      ${var}
        Log     ${var}
    END

If Else If Success
    [Tags]      if      success
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="hessu hopo"
        Fail
    ELSE IF     "${var}"=="mikki hiiri"
        Log     ${var}
    ELSE
        Fail
    END

If Failure
    [Tags]      if      failure
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="mikki hiiri"
        Nested Keyword      ${var}
        Fail
    END
    Log     This keyword is not run

If Else Failure
    [Tags]      if      failure
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="hessu hopo"
        Fail
    ELSE
        Nested Keyword      ${var}
        Fail     ${var}
    END

If Failure Skip
    [Tags]      skipfailure
    ${var}=     Set Variable        mikki hiiri
    IF  "${var}"=="mikki hiiri"
        Fail
    END

Nested For Loop Success
    [Tags]      for     success
    FOR     ${x}        IN RANGE        2
        FOR     ${y}        IN RANGE        2
            Log     ${x}-${y}
        END
        Nested For Loop
    END

Nested For Loop Failure
    [Tags]      for     failure
    FOR     ${x}        IN RANGE        2
        FOR     ${y}        IN RANGE        2
            Log     ${x}-${y}
        END
        Nested For Loop
        Run keyword If     ${x}==1      Fail
    END


*** Keywords ***
Nested Keyword
    [Arguments]     ${arg}
    Log     ${arg}

Nested For Loop
    FOR     ${x}        IN RANGE        2
        FOR     ${y}        IN RANGE        2
            Log     Nested ${x}-${y}
        END
    END

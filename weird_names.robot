*** Test Cases ***
Name With / Character
    Log to console    mikki hiiri

Name With % Character
    Log to console    hesus hopo

Name With !""#€%%&&/() characters
    Log to Console    aku ankka

Name with %20
    Log to console   mikki ankka

Name With / Character and Fails
    Log to console    mikki hiiri
    Fail

Name With % Character and fails
    Log to console    hesus hopo
    Fail

Name With !""#€%%&&/() characters and fails
    Log to Console    aku ankka
    Fail

Name with %20 and failure
    Log to console   mikki ankka
    Fail

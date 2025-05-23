*** Settings ***
Force Tags      simple

*** Variables ***
${VAR1}     Mikki Hiiri
${VAR2}     Aku Ankka
${VAR3}     Hessu Hopo

*** Test Cases ***

Mikki Should Be A Hiiri
    [Tags]      mikki
    Sleep   1
    Should Contain      ${VAR1}     Hiiri

Aku Should Be An Ankka
    [Tags]      aku
    Should Contain      ${VAR2}     Ankka

Hessu Should Be A Hopo
    [Tags]      hessu
    Should Contain      ${VAR3}     Hopo

Mikki Should Not Be An Ankka
    [Tags]      mikki
    Should Not Contain      ${VAR1}     Ankka

New Mikki Should Be An Ankka
    [Tags]      mikki
    ${VAR1}=        Set Variable        Mikki Ankka
    Should Contain      ${VAR1}     Ankka

Hessu Should Be A Mikki
    [Tags]      hessu
    [Documentation]     This test will fail
    Sleep   1.5
    Should Contain      ${VAR3}     mikki

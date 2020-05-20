*** Settings ***
Force Tags      R2-D2
Default Tags    Robot    C-3PO

*** Variables ***
${HOST}         human

*** Test Cases ***
No own tags
    [Documentation]    This test has tags Robot, C-3PO and R2-D2.
    No Operation

With own tags
    [Documentation]    This test has tags not_ready, Robot-v2 and R2-D2.
    [Tags]    Robot-v2    not_ready
    No Operation

    
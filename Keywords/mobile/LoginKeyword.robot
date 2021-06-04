*** Setting ***
Resource        ${EXECDIR}/Keywords/mobile/Main.robot
Variables      ${EXECDIR}/Locators/mobile/LoginPage.py

*** Keyword ***
user input username
    [Arguments]     ${username}
    Wait Until Keyword Succeeds     20s      2s
    ...     click element       ${btn_allow_permission}
    Wait Until Keyword Succeeds     20s      2s
    ...     input text      ${txt_username}     ${username}

user input password
    [Arguments]     ${password}
    Wait Until Keyword Succeeds     20s      2s
    ...     input text      ${txt_password}     ${password}

user click login button
    Wait Until Keyword Succeeds     20s      2s
    ...     click element       ${btn_login}
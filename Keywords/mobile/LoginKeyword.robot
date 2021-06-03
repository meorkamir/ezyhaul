*** Setting ***
Resource        ${EXECDIR}/Keywords/mobile/Main.robot
Variables      ${EXECDIR}/Locators/mobile/LoginPage.py

*** Keyword ***
user input username
    [Arguments]     ${username}
    input text      ${txt_username}     ${username}

user input password
    [Arguments]     ${password}
    input text      ${txt_password}     ${password}

user click login button
    click element       ${btn_login}
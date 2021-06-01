*** Setting ***
Resource        Main.robot
Variables       ../Locators/LoginPage.py

*** Keyword ***
user launch browser
    [Arguments]     ${browser}      ${url}
    Launch browser      ${browser}      ${url}

user select login as carrier
    click element       ${checkbox_login_as_carrier}
    wait until element is visible       ${btn_login}    ${TIMEOUT}

user input username
    [Arguments]     ${username}
    input text      ${txt_username}     ${username}

user input password
    [Arguments]     ${password}
    input text      ${txt_password}     ${password}

user click login button
    click element       ${btn_login}
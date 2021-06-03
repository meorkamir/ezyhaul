*** Setting ***
Resource        ${EXECDIR}/Keywords/web/Main.robot
Variables      ${EXECDIR}/Locators/web/LoginPage.py

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

verify user successfully login
#    page should not contain       Incorrect username or password
     wait until page contains       Copyright © 2021 Ezyhaul       ${TIMEOUT}
     page should contain        Copyright © 2021 Ezyhaul

# combine page action
user login into portal
    [Arguments]     ${username}     ${password}
    user select login as carrier
    user input username     ${username}
    user input password     ${password}
    user click login button
    verify user successfully login
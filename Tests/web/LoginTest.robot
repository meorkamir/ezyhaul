*** Setting ***
Resource        ${EXECDIR}/Keywords/web/LoginKeyword.robot
Resource        ${EXECDIR}/Keywords/web/MenuNavigationKeyword.robot
Resource        ${EXECDIR}/Keywords/web/MyShipmentKeyword.robot

Test setup      user launch browser     Chrome      https://demo-carrier.ezyhaul.com/login
Test teardown       close browser

*** Test cases ***
User should able to login to Ezyhaul portal
    [Tags]      Test1
    user select login as carrier
    user input username     ${username}
    user input password     ${password}
    user click login button
    verify user successfully login

User should able to view left menu navigation
    [Tags]      Test2
    user login into portal      ${username}    ${password}
    verify all menu navigation displayed correctly

User should able to search by order no
    [Tags]      Test3
    user login into portal      ${username}    ${password}
    User navigate to My Shipment page
    user search by using order no       SEZUMY-210422-001910


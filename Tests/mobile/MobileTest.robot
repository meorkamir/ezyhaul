*** Setting ***
Resource        ${EXECDIR}/Keywords/mobile/Main.robot
Resource        ${EXECDIR}/Keywords/mobile/LoginKeyword.robot

Test setup      Launch emulator
#Test teardown       Close application

*** Test cases ***
User should not able to login into facebook app
    user input username     username_here
#    user input password     123456
    user click login button
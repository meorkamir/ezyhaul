*** Setting ***
Resource        ${EXECDIR}/Keywords/Main.robot

Test setup      Launch emulator
Test teardown       Close application

*** Test cases ***
User should able to login into facebook app
    user input username
    user input password
    user click login button
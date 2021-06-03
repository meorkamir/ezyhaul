*** Setting ***
Documentation       main file for setup browser and libraries
Library         SeleniumLibrary

*** Variables ***
${TIMEOUT}      10s

*** Keyword ***
Launch browser
    [Arguments]     ${browser}      ${url}
    open browser    ${url}      ${browser}
    maximize browser window
    wait until element is visible       xpath://button[@aria-label='LOG IN']        ${TIMEOUT}


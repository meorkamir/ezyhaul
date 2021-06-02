*** Setting ***
Resource        Main.robot
Variables       ../Locators/MenuNavigation.py

*** Keyword ***
wait until menu navigation loaded
    wait until element is visible       ${menu_newOffer}        ${TIMEOUT}

user navigate to ${menu} page
    wait until menu navigation loaded
    Wait Until Keyword Succeeds     1min      3s
    ...     click element       xpath://fuse-navigation//*[contains(text(),'${menu}')]

verify all menu navigation displayed correctly
    wait until menu navigation loaded
    element should be visible       ${menu_newOffer}
    element should be visible       ${menu_myShipment}
    element should be visible       ${menu_dashboard}
    Wait Until Keyword Succeeds     1min      3s        run keywords
    ...     click element       ${menu_dashboard}//following-sibling::mat-icon      # click expend icon to make map view visible
    ...     AND     element should be visible       ${menu_mapView}
    element should be visible       ${menu_myDispatcher}
    element should be visible       ${menu_myDriver}
    element should be visible       ${menu_myTruck}


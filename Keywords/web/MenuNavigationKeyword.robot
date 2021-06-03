*** Setting ***
Resource        ${EXECDIR}/Keywords/web/Main.robot
Variables       ${EXECDIR}/Locators/web/MenuNavigation.py

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
    Wait Until Keyword Succeeds     20s      2s
    ...     click element       ${menu_dashboard}//following-sibling::mat-icon      # click expend icon to make map view visible
    Wait Until Keyword Succeeds     20s      2s
    ...     element should be visible       ${menu_mapView}
    element should be visible       ${menu_myDispatcher}
    element should be visible       ${menu_myDriver}
    element should be visible       ${menu_myTruck}

    element should be visible       ${menu_myPurchaseOrder}
    element should be visible       ${menu_myPayment}
    element should be visible       ${menu_uploadEPOD}
    element should be visible       ${menu_report}
    Wait Until Keyword Succeeds     20s      2s
    ...     click element       ${menu_report}//following-sibling::mat-icon      # click expend icon to make map view visible

    Wait Until Keyword Succeeds     20s      2s        run keywords
    ...     element should be visible       ${menu_carrierLedgerReport}
    ...     AND     element should be visible       ${menu_shipmentReport}
    ...     AND     element should be visible       ${menu_paymentStatusReport}
    element should be visible       ${menu_restApi}

